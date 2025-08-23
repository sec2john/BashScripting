#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 1
# Lección 1.5 Redirecciones de E/S simples
#
# https://www.sec2john.com
#

echo "Linea 1" > /tmp/output.txt
echo $HOME > /tmp/output.txt
uname -a > /tmp/output.txt

echo "Linea 1" >> /tmp/output.txt
echo $HOME >> /tmp/output.txt
uname -a >> /tmp/output.txt

wc -w < /etc/passwd

echo "Errores a /tmp/err.txt"
ls /noxiste 2> /tmp/err.txt

#0 stdin
#1 stdout
#2 stderr
echo "Linea 2" 1> /tmp/output.txt
wc -w 0< /etc/passwd

#~ bash 1.5_Redirecciones_simples.sh < /etc/passwd
cat /dev/stdin