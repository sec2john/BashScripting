#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 2
# Lección 2.5 Sustitución de comandos
# Obtiene la fecha en formato YYYY-MM-DD con date.
# Cree un archivo reporte-FECHA.txt en /tmp
# Dentro del archivo escriba el número de ficheros regulares en el /home
#
# Ejecutar sin parámetros
# https://www.sec2john.com
#

#obtenemos fecha en formato indicado en variable "fecha"
fecha=$(date +%y-%m-%d)

#búsqueda recursiva de ficheros en home del usuario actual
# y redireccionado a /tmp/reporte-FECHA.txt
echo $(find ~/ -type f | wc -l) > /tmp/reporte-$(echo $fecha).txt

#tambien:
#echo $(find ~/ -type f | wc -l) > /tmp/reporte-$fecha.txt

#y con backticks:
#echo `find ~/ -type f | wc -l` > /tmp/reporte-`echo $fecha`.txt
























