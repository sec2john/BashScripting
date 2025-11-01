#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 4
# Lección 4.9 Señales (Signals)
#
# Ejecutar con $1=1 para primer ejemplo, 
# $1=2 $2="path a un fichero" para el segundo
# 
# https://www.sec2john.com
#

if [[ $1 == 1 ]]; then

cleanup() {
 echo "realizando limpieza antes de salir..."
 #rm tempfile ... 
 exit 0
}

trap cleanup SIGINT SIGTERM

echo "PID: $$"
#Simulamos un proceso
while true; 
 do
   echo "Procesando..." 
   sleep 2
 done
 
fi;

if [[ $1 == 2 ]]; then

trap 'echo "Estado actual: procesadas $count líneas"' SIGUSR1

echo "PID: $$"
count=0
while read -r line; do
    ((count++))
    sleep 3
done < "$2"

fi
