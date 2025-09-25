#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 2
# Lección 2.4 Expansión aritmética
# 
# Ejecutar con dos parámetros numéricos.
# https://www.sec2john.com
#

x=$1
y=$2
echo "Suma: $((x+y))"
echo "Resta: $((x-y))"
echo "Producto: $((x*y))"
echo "División: $((x/y))"
echo "Resto: $((x%y))"
echo "Exponente: $((x**y))"

#Post increment
echo "x++ $((x++))"
echo $x
#Pre increment
echo "++x $((++x))"
echo $x





