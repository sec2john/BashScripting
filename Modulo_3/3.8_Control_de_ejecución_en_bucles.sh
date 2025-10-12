#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 3
# Lección 3.8 Control de flujo en bucles
#
# Ejecutar con un parámetro numerico $1
#
# https://www.sec2john.com
#

# break
v=$1
for ((i=1;i<1000; i++));
 do
  echo "$i"  
  if [[ $i == $v ]];
   then
    echo "Valor encontrado!"
    break
   fi
 done

# break en bucle anidado
for ((i=1;i<10; i++));
 do
  for ((j=10; j>0; j++));
   do
     echo "i:$i j:$j"
     if [[ $(($j/$i)) == 31 ]];
      then
       echo "Valores encontrados!"
       break
     fi
  done
done

# continue (saltar valores multiplos de 3)
for ((i=0;i<50; i++));
 do
  echo "$i"
  if [[ $(( $i%3 )) == 0 ]];
   then
    echo "Saltamos el valor $i"
    continue 
   fi
 done


return 155
exit 0