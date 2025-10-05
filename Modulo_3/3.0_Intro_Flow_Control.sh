#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 3
# Lección 3.0 Control de Flujo
#
# Ejecutar sin parámetros o con parámetro $1 con valores
# 1, 2 o 3, y en caso de $1=3, un segundo parámetro
# $2 = un numero entero (menor o mayor o igual que 20)
#
# https://www.sec2john.com
#

# flujo simple o por defecto
echo "Simple flow"
echo "Instrucción 1"
echo "Instrucción 2"
echo "..."
echo "Instrucción n"

# flujo simple con condicionales
if [[ $1 == "1" ]]
 echo "Flow con condicionales"
 echo "Instrucción 1"
 then
  echo "Instrucción escondida!"
 fi
echo "..."
echo "Instrucción n"

# flujo con bucle
if [[ $1 == "2" ]]
then
echo "Flow con condicionales y blucle"
 for i in {0..10} 
  do
   echo "bucle iteration: $i";
  done
fi

# flujo con control de salida
if [[ $1 == "3" ]]
then
echo "Flow con control de salida"
 if [[ $2 -ge 20 ]]
  then
   echo "$2 es >= que 20. Saliendo sin error...";
   exit 0
 else
   echo "$2 no es >= que 20. Saliendo con error...";
   exit 1
 fi
fi




