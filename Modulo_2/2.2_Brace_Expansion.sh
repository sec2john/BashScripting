#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 2
# Lección 2.2 Brace expansion o expansión de llaves
# 
# Ejecutar directamente
# https://www.sec2john.com
#

# creamos estructura de ficheros en tmp
mkdir -p /tmp/test/folder_{a,b,c,d}/
#creamos ficheros
touch /tmp/test/folder_{a,b,c,d}/{1..5}.{txt,c,py}

#creamos /tmp/test2 con solamente subdirectorios a y b
mkdir -p /tmp/test2/folder_{a,b}/

#trasladamos a /tmp/test2 los direcotios a y b
mv /tmp/test/folder_{a,b} /tmp/test2/

#eliminamos los *.txt impares de cada directorio
rm /tmp/test2/folder_{a,b}/{1..5..2}.txt


