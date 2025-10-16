#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 3
# Lección 3.2 if-then-else
# Recibir la edad por parámetro y comunicar la categoría 
# correspondiente: bebé, niño, adolescente, adulto, abuelo
# Ejecutar con un parámetro numérico entre 0 y 100
#
# https://www.sec2john.com
#

# Comprobar si el parámetro es numerico y lo asigna a "edad"
(( $1 )) && edad=$1 || { echo "Se esperaba un parámetro >0"; exit 1; }


if [ $edad -le 2 ];
 then
  echo "Bebé";
 elif [ $edad -le 12 ]
  then echo "Niño";
 elif [ $edad -le 17 ]
  then echo "Adolescente";
 elif [ $edad -le 65 ]
  then echo "Adulto";
 else 
  echo "Abuelo";
fi
  






