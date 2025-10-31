#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 4
# Lección 4.5 Named Pipes (FIFOs)
#
# Este script debe invocarse en dos shells distintas
# uno como productor y el otro como consumidor.
# param "1": script consumidor
# param "2": script productor
#
# https://www.sec2john.com
#

fifo="/tmp/canal_datos"

#crear la pipe si no existe
[[ -p "$fifo" ]] || mkfifo "$fifo"


if [[ $1 == 1 ]]; 
 then
  #consumidor
  echo "Script consumidor inicializado..."
  echo
  
 for i in {1..5}; 
  do
   while read linea; do
    echo "Consumiendo $linea"
   done < "$fifo"
  done
 
 fi
 
if [[ $1 == 2 ]];
 then
  #productor
  echo "Script productor inicializado..."
  echo

  for i in {1..10}; do
  echo "Produciendo dato..."
  echo "Dato $i" > "$fifo"
  sleep $(( ( $RANDOM % 10 ) + 1 ))
done
 fi
