#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 4
# Lección 4.3 Arrays Asociativos
#
# Crea un script que use un array asociativo para 
# mapear códigos de error numéricos a sus descripciones 
# (por ejemplo: 1 → Permiso denegado, 
# 2 → Archivo no encontrado, etc.)
# Permite al usuario introducir un número (parámetro $1)
# y muestra su significado.
# 
# Si se proporciona parámetro $2, se agrega al diccionario
# como primer paso
# 
# https://www.sec2john.com
#

declare -A errores=(
[1]="Permiso denegado"
[2]="Fichero no encontrado"
[3]="Parámetros erróneos"
[4]="Internal server error"
[5]="Too many arguments"
[6]="Parameter too long"
[7]="Unexpected error"
[8]="Class cast exception"
)

if [ -n "$2" ];
 then
  errores[9]="$2"
 fi

(( $1 )) && option=$1 || { echo "Parámetro inválido. Se esparaba un número"; exit 1; }

[[ -v errores[$option] ]] && echo "Error seleccionado: ${errores[$option]}" || { echo "No existe descripción para el error $option."; exit 1; }










