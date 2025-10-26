#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 4
# Lección 4.10 Co-procesos
#
# Ejecutar directamente
# 
# https://www.sec2john.com
#

coproc CALC { bc -l; }

echo "Introduzca una expresion matematica (Ej: 4+12*2)"
read expresion

echo "$expresion" >&"${CALC[1]}" 
read resultado <&"${CALC[0]}"

echo "Resultado: $resultado"

# Cerrar descriptores cuando termines
exec {CALC[1]}>&- {CALC[0]}<&-
 


