#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 4
# Lección 4.7 Descriptores de ficheros (FD's)
#
# Script que altera la salida estandar y de errores por defecto
# a dos ficheros /tmp/out.log y /tmp/error.log. Utiliza un tercer canal
# para guardar ambas salidas en un fichero /tmp/all.log 
# y utiliza un subproceso cuya salida estandar y de errores 
# se almacena en un fichero /tmp/process.out
# 
# https://www.sec2john.com
#

#Alteramos la salida estandar y de errores con redireccion con exec
exec 1> >(tee -a /tmp/out.log /tmp/all.log)
exec 2> >(tee -a /tmp/error.log /tmp/all.log >&2)

#Salidas de test para probar que se envian donde deben:

echo "Salida estandar 1"
echo "Salida estandar 2"
echo "Salida de error 1" >&2
echo "Salida de error 2" >&2

exec 3>/tmp/process.out

{
 echo "inicio subproceso"
 echo "Error!" >&2
 ls nofile 
} >&3 2>&1

#Extra: Hacer que el script no muestra NADA por pantalla
#Al iniciop del script alterar tee asi:
# exec 1> >(tee -a /tmp/out.log /tmp/all.log >/dev/null)
# exec 2> >(tee -a /tmp/error.log /tmp/all.log >/dev/null)