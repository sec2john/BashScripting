#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 1
# Lección 1.7 Entorno de ejecución
# 
# Crear las siguientes variables en la shell 
# antes de ejecutar este script:
# VAR1="var local" 
# export VAR2="var global"
#
# Ejecutar este script con bash y con source para
# ver las diferencias.
# https://www.sec2john.com
#

echo '$HOME: '$HOME
echo '$PATH: '$PATH
echo
echo '$VAR1: '$VAR1
echo '$VAR2: '$VAR2
echo
VAR3="Variable local solo en script"
export VAR4="Var4 exportada desde script"

