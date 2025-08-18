#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 1
# Lección 1.1 ¿Qué es un script en Bash?
#
# https://www.sec2john.com
#
# Script que define lñas siguientes variables:
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



