#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 3
# Lección 3.5 Bucle For
#
# Ejecutar sin parámetros o con parámetro $1 con valores
# 1, 2 o 3, y en caso de $1=3, un segundo parámetro
# $2 = un numero entero (menor o mayor o igual que 20)
#
# https://www.sec2john.com
#

# bucle for definido
for v in verde rojo azul; 
 do
  echo "Procesando color $v..." 
 done

echo
# bucle for expansion de llaves
for v in "file_"{a..c}{1..3};
 do
  echo "Procesando fichero $v..."
 done

echo
# bucle for expansion de llaves numerica
for v in {1..100};
 do
  echo -n "$v "
 done

echo
echo
# bucle for con ficheros del directorio actual
for v in *.sh;
 do
  echo "Lección $v"
 done

echo
# bucle for con un comando
echo "Usuarios del sistema:"
for v in $(awk -F ':' '{print $1}' /etc/passwd);
 do
  echo -n " $v"
 done

echo
echo
echo "for notación c/java"
for ((v=70; v<=99; v++)); do
  echo -n "$v "
done
echo

echo
echo "Tablas de multiplicar"
for ((v=1; v<=10; v++)); do
  for ((w=10; w>=1; w--)); do
      echo "Mult. de $v*$w: "$(($v*$w))
  done
done

echo