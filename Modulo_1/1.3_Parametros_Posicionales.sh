#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 1
# Lección 1.3 Parámetros Posicionales
#
# https://www.sec2john.com
#
# Script que recibe los siguientes valores como parámetros posicionales:
#	nombre (String)
#	edad (entero como solo lectura) intentar reasignar
#	dinero (entero positivo)
# Los siguientes valores se calculan a aprtir de los anteriores
#	nickname (nombre concatenado con "123")
#	ganancia (dinero + tip) Imprimir como dólares "$..."
#
# Orden de parámetros: nombre edad dinero
#
nombre=$1
echo $1

declare -i -r edad=$2
echo $edad

nickname=${nombre}123
echo $nickname

declare -i dinero=$3
declare -i -r tip=20
declare -i ganancia=$dinero+$tip

echo "$"$ganancia
echo

#echo 'reseting $name:'
#set $1 John
#echo $1

#echo "shifting one position"
#shift
#echo $1
#shift 
#echo $1

echo "Parámetro numero 10: ${10}"



