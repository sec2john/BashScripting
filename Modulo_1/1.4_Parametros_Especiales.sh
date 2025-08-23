#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 1
# Lección 1.4 Variables Especiales
#
# https://www.sec2john.com
#
# Script que recibe parámetros posicionales y
#	Mostramos el número de ellos
#	Expandimos todos ellos con $* y $@
#		Warning de uso!
#	Exponemos el pid del script
#	Exponemos el nombre del script en ejecucion
#	Exit status de comandos
#		Exit status del propio script
#

echo "Número de argumentos: "$#

#Estados de salida de Comandos en este script
#cat noexisto.txt
#echo $?
#ls -ld /etc/
#echo $?
#Estados de salida del propio script
#exit 0
#exit 5

#echo "PID del script? subshell?:  "$$

#echo "Nombre del script? "$0

#echo "Listado de parámetros: \$* "$*
#echo "Listado de parámetros: \$@ "$@

#echo "Listado de parámetros: \"\$*\" $*"
#echo "Listado de parámetros: \"\$@\" $@"

#echo ""
#echo "\$*"
#echo
#printf "[%s]\n" $*
#echo "\$@"
#echo
#printf "[%s]\n" $@
#echo
#echo "\"\$*\""
#printf "[%s]\n" "$*"
#echo
#echo "\"\$@\""
#printf "[%s]\n" "$@"
#echo


