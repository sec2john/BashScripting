#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 4
# Lección 4.2 Arrays Indexados
# Escribir un script que lea líneas de un fichero en un array
# Añada dos lineas más al final del mismo con una firma y 
# las procese en orden inverso (añadiendo el número de línea + la linea)
#
# Ejecutar con un parámetro $1 que sea la ruta a un fichero legible
#
# https://www.sec2john.com
#


#Validación de entrada

[[ -f "$1" ]] || { echo "fichero no válido."; exit 1; }

readarray -t lineas < "$1"
lineas+=( "Sec2John" "File reversed by" )

echo "Número de líneas ${#lineas[@]}"
echo
echo "Procesamiento:"

for (( i=$((${#lineas[@]} - 1)); i>=0; i--))
 do
 	echo "$i: ${lineas[$i]}";
 done 

echo
echo "Fin de script"
 

