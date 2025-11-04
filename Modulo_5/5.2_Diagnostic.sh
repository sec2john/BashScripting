#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 5 Script "Diagnostic"
# Crea una herramienta de diagnóstico de una maquina (basada en debian) en red pasada por parámetro (ip - requieren validación)
# * La máquina está previamente configurada por ssh con autenticación por clave privada ssh
# * Se debe establecer un canal de comunicación para enviar y recibir comandos mediante ssh
# * Crear un menú que permita de cada vez seleccionar una de las siguientes opciones al usuario:
#	* UPTIME
#	* LOAD
#	* MEMORY
#	* DISK
#	* BLOCK DEVICES
#	* PROC TOP(5)
#	* LISTENING PORTS
#	* LAST REBOOT
#	* OS RELEASE
#	* INSTALLED PACKAGES (top 50)
#	* Exit (Salir) exit 0
# * Se ejecutan los comandos en la máquina remota y se muestran por salida estandar. 
# * Se logan los resultados remotos en un fichero externo /tmp/diagnostic.log
# * Capturar la interrupción cntrl + c con una señal que la anule y diga "Para salir utilice el menu "EXIT""
# 
# https://www.sec2john.com
#

## CONFIG ##
rUser="debian"
#Marca de final de escritura
MARK="__CMD_DONE_MARK__"

#log
:>/tmp/diagnostic.log
exec 3>/tmp/diagnostic.log

#Check de parámetro. Se espera un único parámetro tipo IPv4
if [[ -n $1 ]] && [[ $1 =~ ^[0-9.]+$ ]] 
 then
   echo " [+] Máquina remota: $1"   
 else
   echo " [-] Se esperaba un parámetro IPv4 de la máquina remota."; 
   exit 1; 
fi

#Si Ok, Establecemos la conexión a la maquina por ssh mediante coproc.
# aunque el parámetro no sea valido lo testaremos con el comando ssh
echo
echo " [+] Estableciendo conexión remota..."
coproc SSH_SESSION { ssh -T "$rUser"@"$1"; }
echo " [+] Conexión establecida."
echo " [+] Abriendo menú."
echo

#Creamos una acción de escritura y lectura en 2 funciones
function writeSSH() {
 echo "$1" >&"${SSH_SESSION[1]}"
 sleep 2
 echo "echo $MARK" >&"${SSH_SESSION[1]}"
}

function readSSH() {
  while IFS= read -r -t 2 line; do
   [[ "$line" == "$MARK" ]] && break
   echo "$line" | tee >(cat >&3)
  done <&"${SSH_SESSION[0]}"
}

function cleanUp() {
  echo " [+] Limpiando temporales..."
  #cerramos coproc
  eval "exec ${SSH_SESSION[0]}<&-"
  eval "exec ${SSH_SESSION[1]}>&-"
  #wait "$SSH_SESSION_PID"
}

trap 'echo " [+] Para salir utilice el menu EXIT "' SIGINT

#Creamos el menú mediante un select
PS3="Escoge una opción: "
select option in "UPTIME" "LOAD" "MEMORY" "DISK" "BLOCK_DEVICES" "PROC" "PORTS" "LAST_REBOOT" "OS_RELEASE" "EXIT";
 do
   case "$option" in
    UPTIME)
        echo "UPTIME..." | tee >(cat >&3)
        writeSSH "uptime"
        readSSH
        ;;
    LOAD)
	echo "LOAD" | tee >(cat >&3)
        writeSSH "cat /proc/loadavg"
        readSSH 
        ;;
    MEMORY)
        echo "MEMORY" | tee >(cat >&3)
        writeSSH "free -h"
        readSSH    
        ;;
    DISK)
        echo "DISK" | tee >(cat >&3)
        writeSSH "df -hT"
        readSSH
        ;;
    BLOCK_DEVICES)
        echo "BLOCK_DEVICES" | tee >(cat >&3)
        writeSSH "lsblk -o NAME,SIZE,TYPE,MOUNTPOINT"
        readSSH
        ;;
    PROC)
        echo "PROC (top 10, sort by %CPU)" | tee >(cat >&3)
        writeSSH "ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -10"
        readSSH
        ;;
    PORTS)
        echo "LISTENING PORTS" | tee >(cat >&3)
        writeSSH "ss -tunelp"
        readSSH
        ;;
    LAST_REBOOT)
        echo "LAST_REBOOT" | tee >(cat >&3)
        writeSSH "who -b"
        readSSH
        ;;
    OS_RELEASE)
        echo "OS RELEASE" | tee >(cat >&3)
        writeSSH "cat /etc/os-release 2>/dev/null"
        readSSH
        ;;
    EXIT)
        cleanUp
        echo " [+] Goodbye"
        exit 0
        ;;
    *)
       echo "Opción inválida, inténtalo de nuevo."
      ;;
   esac
done
