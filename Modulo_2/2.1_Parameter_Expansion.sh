#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 2
# Lección 2.1 Expansión de parámetros o variables
# 
# Ejecutar con parámetros:
# ./2.1_Parameter_Expansion.sh '' "abcdefghijklmnopqrst" "Hay 5 usos para expansiones de parámetros en bash, y 5 formas de utilizarlas" "miemail@domain.com"
# https://www.sec2john.com
#

#Si el parámetro $1 es nulo escribir un warning por pantalla
echo ${1:-"El parámetro 1 está vacío o no está definido."}

#Si el parámetro $1 es nulo asignar "John Doe" a la variable name
var1=$1
name=${var1:="John Doe"}
echo "El nombre es $name"

var2=$2
#Mostrar un substring del parámetro 2 desde la posición 3 hasta la posición 12
echo "${var2:3:12}"

#sustituir el caracter '5' por '6' una vez, y de forma global del parametro $3
var3=$3
echo ${var3/5/6} 
echo ${var3//5/6}
#sustituir "Hay" al principio de la frase por "Existen"
echo ${var3/#Hay/Existen}

#Obtener el nombre del correo 
email=$4
echo "${email%@*}"
#obtener el dominio del correo
echo "${email#*@}" 

#Devolver el email en letras mayusculas
echo "${email^^}"
#Devolver el abecedario con la primera letra maúsucula
echo "${var2^}"
#Devolver del parametro 3 la letra a en mayusculas
echo "${var3^^a}"


