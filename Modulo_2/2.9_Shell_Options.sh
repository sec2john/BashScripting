#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 2
# Lección 2.9 Opciones de la shell - Shell options (Shopt)
# https://www.sec2john.com
#

ls -l ~/*rc
shopt -s dotglob
ls -l ~/*rc
shopt -u dotglob

echo *.java
shopt -s nullglob
echo *.java
shopt -u nullglob

echo *.java
#shopt -s failglob
echo "ficheros *java?"
echo *.java
shopt -u failglob

echo ~/**
read
shopt -s globstar
echo ~/**
read
echo ~/**/





















