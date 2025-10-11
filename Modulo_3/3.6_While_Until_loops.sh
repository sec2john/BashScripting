#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 3
# Lección 3.0 Bucles While y Until
#
# Ejecutar directamente
#
# https://www.sec2john.com
#

# Bucle con contador
limit=5
count=0
echo "while con contador"
while [[ $count -lt $limit ]];
 do
    echo "Cuenta es: $count"
    ((count++))
 done

#equivalente con until
count=0
echo "repeat con contador"
until [[ $count -eq $limit ]];
 do
     echo "Cuenta es: $count"
     ((count++))
 done



# Bucle para leer un fichero
echo "while lectura de fichero"
while read line;
 do
    echo
    echo "Esta linea: ${line:0:15}... tiene $(echo $line | wc -c) caracteres."
    read -p "Pulse intro para continuar..."#</dev/tty
 done < /etc/passwd
 
# Bucle para leer un fichero
echo "until lectura de fichero"
until ! read line;
 do 
   :
   #echo "..."
 done < /etc/passwd



# Bucle 
# Bucle para leer un fichero
echo "while con condicion un comando"

testFile="/tmp/test"
touch $testFile
while (( $(wc -l < "$testFile") < 5 )); #tiene q usarse < para que la salida sea solo el numero de lineas
 do
    echo
    echo "El fichero aún tiene menos de 5 líneas. Tiene "$(wc -l < "$testFile")" líneas."
    sleep 2
 done
echo "Fin de script."




