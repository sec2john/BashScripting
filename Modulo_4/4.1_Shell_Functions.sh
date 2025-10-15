#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 4
# Lección 4.1 Funciones de la shell (Shell Functions)
#
# Ejecutar:
#  Sin parametros para el primer bloque Scope
#  Con la ruta a un fichero *.sh (existente y no existente) para el resto
#
# https://www.sec2john.com
#

## Scope ##

counter=0
function increment {
 #local counter
 ((counter++))
 echo "increment: $counter" 
}

increment
echo "externo: $counter"

## Return
function validateScript() {
 [[ -f "$1" ]] && [[ "$1" =~ .sh ]] && return 0
 return 1
}

if validateScript "$1"; 
 then
  echo "$1 es un script *.sh"
 else
  echo "$1 no es un fichero *.sh válido"
fi

## Return (no numerico)
function getOwner {
 echo $(stat -c %U "$1")
}

if  validateScript "$1" 
 then 
  owner=$(getOwner "$1")
  echo "El propietario de $1 es "$owner
 fi

#Funcion recursiva
suma_recursiva() {
    local n=$1
    # Caso base: si n <= 1, devuelve 1
    if (( n <= 1 )); then
        echo 1
    else
        # Llamada recursiva: n + suma_recursiva(n - 1)
        echo $(( n + $(suma_recursiva $((n - 1))) ))
    fi
}

suma_recursiva 9