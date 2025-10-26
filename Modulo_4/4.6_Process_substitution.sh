#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 4
# Lección 4.6 Sustitución de Procesos (Process Substitution)
#
# Ejecutar con dos directorios como parámetros $1 y $2
# El script compara los ficheros regulares contenidos 
# en dos directorios parámetro.
#
# https://www.sec2john.com
#

if [[ $# -ne 2 ]]; then
    echo "Error. Se esperaban dos parámetros <dir1> <dir2>"
    exit 1
fi

dir1=$1
dir2=$2

if [[ ! -d "$dir1" || ! -d "$dir2" ]];
 then
  echo "Alguno de los parámetros NO es un directorio. Saliendo"
  exit 1
 fi

echo "Iniciando comparación"

diff --color=always \
  <(cd "$dir1" && find . -type f | sort) \
  <(cd "$dir2" && find . -type f | sort)
  
echo 
echo "Fin."