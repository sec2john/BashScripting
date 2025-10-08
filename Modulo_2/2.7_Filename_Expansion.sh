#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 2
# Lección 2.7 Expansión de nombre de ficheros (Filename Expansion) 
# Prueba de las expansiones *, ? y [...]
#
# Ejecutar sin parámetros
# https://www.sec2john.com
#

# Creamos un directorio temporal de prueba con varios ficheros vacíos
globFolder="/tmp/globbing"
mkdir -p "$globFolder"
touch "$globFolder/file"{1..10}
touch "$globFolder/image."{png,jpg,jpeg}
touch "$globFolder/image"{01..10}.{png,jpg}
touch "$globFolder/MayuS"{1..5}".txt"
touch "$globFolder/fichero con espacios"

echo " > Ficheros creados."

# Comenzar el script aqui:

# listar con ls todos los ficheros del directorio globFolder que empiecen por "file"
echo
echo "$globFolder/file..."
ls -l "$globFolder/file"*

# listar con ls todos los ficheros del directorio globFolder 
# que tengan extensión "jpg"
echo
echo "$globFolder/...jpg"
ls -l "$globFolder/"*".jpg"

# listar con ls todos los ficheros del directorio globFolder
# que sean archivos "file" con un solo digito
echo
echo "$globFolder/file1..9"
ls -l "$globFolder/file"?

# listar con ls todos los ficheros del directorio globFolder
# que contengan jpg o jpeg en su extensión
echo
echo "$globFolder/*.jp[e]g"
ls -l "$globFolder/"*".jp"*"g"

# listar con ls todos los ficheros del directorio globFolder
# que tenga del "05" al "09" en su nombre
echo
echo "$globFolder/*05..09*"
ls -l "$globFolder/"*[0][5-9]*

# listar con ls todos los ficheros del directorio globFolder
# que contengan un número en su nombre
echo
echo "$globFolder/..123.."
ls -l "$globFolder/"*[0123456789]*
#ls -l "$globFolder/"*[0-9]*
#ls -l "$globFolder/"*[[:digit:]]*

# listar con ls todos los ficheros del directorio globFolder
# que empiezan por file y NO contengan el numero 1 o 6 en su nombre
echo
echo "$globFolder/..!1,6.."
ls -l "$globFolder/file"[^16]

# listar con ls todos los ficheros del directorio globFolder
# que tengan al menos una letra mayuscula en su nombre
echo
echo "$globFolder/..Mayus¿?.."
#ls -l "$globFolder/"*[[:upper:]]*
ls -l "$globFolder/"*[[:space:]]*
