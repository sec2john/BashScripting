#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 3
# Lección 3.1 Evaluación de condicionales en Bash
#
# Ejecutar de las siguientes maneras:
# Param $1=1
#	$2 = path a un fichero
# Param $1=2
#       $2= string
#       $3= segundo string
# Param $1=3
#       $2= entero
#       $3= segundo entero
# https://www.sec2john.com
#

if [[ $1 == 1 ]] 
 then
  echo "test sobre fichero $2"
   test -a $2 && echo "$2 existe" || echo "$2 no existe"
   [ -d $2 ] && echo "$2 es un directorio" || echo "$2 no es un directorio"
   [[ -f $2 ]] && echo "$2 es un fichero regular" || echo "$2 no es un fichero regular"
   test -w $2 && echo "$2 puede escribirse" || echo "$2 no puede escribirse"    
 fi
 
if [[ $1 == 2 ]]
 then
  echo "test sobre strings"
  [ -z $2 ] && echo "El string $2 tiene longitud 0" || echo "El string $2 tiene longitud distinta de 0"
  [ -n $2 ] && echo "El string $2 tiene longitud > 0" || echo "El string $2 tiene longitud 0"
  if [[ -n $3 ]]
   then
    [ $2 == $3 ] && echo "El string $2 y $3 son iguales" || echo "El string $2 y $3 no son iguales."
    [ $2 != $3 ] && echo "El string $2 y $3 no son iguales" || echo "El string $2 y $3 son iguales."
    [[ $2 < $3 ]] && echo "El string $2 es > que $3 lexicograficamente" || echo "El string $2 es < $3 lexicograficamente."
    [[ $2 > $3 ]] && echo "El string $2 es < que $3 lexicograficamente" || echo "El string $2 es > $3 lexicograficamente."
   fi
fi

if [[ $1 == 3 ]]
 then
  echo "test sobre números enteros"
  [ $2 -eq $3 ] && echo "$2 es igual que $3" || echo "$2 no es igual que $3"
  [ $2 -ne $3 ] && echo "$2 no es igual que $3" || echo "$2 es igual que $3"
  [ $2 -lt $3 ] && echo "$2 es menor que $3" || echo "$2 no es menor que $3"
  [ $2 -le $3 ] && echo "$2 es menor o igual que $3" || echo "$2 no es menor o igual que $3"
  [ $2 -gt $3 ] && echo "$2 es mayor que $3" || echo "$2 no es mayor que $3"
  [ $2 -ge $3 ] && echo "$2 es mayor o igual que $3" || echo "$2 no es mayor o igual que $3"
fi








