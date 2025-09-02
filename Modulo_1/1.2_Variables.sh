#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 1
# Lección 1.2 Variables
#
# https://www.sec2john.com
#
# Script que define las siguientes variables:
#	nombre (String)
#	edad (entero como solo lectura) intentar reasignar
#	nickname (nombre concatenado con "123")
#	ganancia (dinero + tip) Imprimir como dólares "$..."
#

nombre="Sec2John"
echo $nombre

declare -i -r edad=35
echo $edad
edad=$edad-10

nickname=${nombre}123
echo $nickname

declare -i dinero=100
declare -i tip=20
declare -i ganancia=$dinero+$tip

echo \$$ganancia
#o tambien: 
#echo "$"$ganancia

#readonly var
readonly saludo="Bienvenido "
#declare -r saludo="Bienvenido "
saludo="Adios " #dará error de variable de solo lectura.
#uso
echo $saludo$nombre"!!"

#unset
#declare dying="unset me"
#declare -p dying
#unset dying
#declare -p dying

#unset de variable de solo lectura: Dará error
#unset edad


