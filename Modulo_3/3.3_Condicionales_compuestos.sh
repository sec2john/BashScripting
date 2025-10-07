#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 3
# Lección 3.3 Condicionales compuestos
#
# Ejecutar con un parámetro (Se espera un numero pero se manejan errores)
# Dicho numero será verificado como mayor que 100, multiplo de 3, si es primo, etc
#
# https://www.sec2john.com
#

# Condicion not !, si parametro $1 no es un número...
if ! (($1));
then
 echo "Error: $1 no es un número";
else
 echo "$1 + 5 = "$(( $1 + 5 ));
fi

# Si el fichero /etc/passwd se puede leer pero no escribir, imprimir un mensaje
if [ -r /etc/passwd -a ! -w /etc/passwd ];
 then
  echo "/etc/passwd se puede leer pero no escribir";
fi
 
#El equivalente anterior con [[ ... ]]
if [[ -r /etc/passwd && ! -w /etc/passwd ]];
 then
  echo "[[...]] -> /etc/passwd se puede leer pero no escribir";
fi 

# Si $1 es un número, si está entre 1 y 50, escribir un mensaje A
# o si es un número y es multiplo de 3, entonces escribir mensaje B (usar [[....]])

if (($1));
 then
  if [ $1 -ge 1 -a $1 -le 50 ];
   then
    echo "Mensaje A";
  fi
  if [[ $(( $1 % 3)) == 0 ]];
   then
    echo "Mensaje B";
   fi    
 fi

# Si $1 no es un número primo menor que 100, entonces escribir mensaje C
if (($1));
 then
  f=$(tr ' ' '\n' <<< $(factor $1) | wc -l);
  if [[ ! $f < 100 && $f -le 2 ]];
   then
    echo "Mensaje 3";
   fi
fi






