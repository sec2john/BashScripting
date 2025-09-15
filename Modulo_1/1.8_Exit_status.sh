#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 1
# Lección 1.8 Exit Status o estados de salida
# 
# Ejecutar con un parámetro a un directorio del sistema 
# (accesible, no accesible y que no sea un directorio)
# https://www.sec2john.com
#

# Validacion de param $1
if [ -d "$1" ]; then
    echo "El directorio '$1' existe"
else
    echo "El directorio '$1' no existe"
    exit 25   # salimos con error
fi

echo "Intentamos entrar (cd) al directorio $1"
cd $1 2>/dev/null

#condicionales básicos
if [ $? == 0 ]; 
  then
	echo "Éxito: He podido acceder."
  else
	echo "Fallo: No he podido acceder."
	exit 26
fi

#Alternativa al anterior
# cambiar "if [ $? == 0 ]" por "cd "$1" 2>/dev/null; " directamente (funciona igual)
