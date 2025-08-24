#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 1
# Lección 1.6 ¿Tuberías (Pipes)
#
# https://www.sec2john.com
#

archivo=$1

echo "Análisis del archivo: $archivo"

# 1. Contar cuántas líneas tiene
echo "Número de líneas:"
wc -l < "$archivo"

# 2. Contar cuántas veces aparece la palabra 'error' (sin importar mayúsculas)
echo
echo "Número de veces que aparece 'error':"
grep -i "error" "$archivo" | wc -l

# 3. Mostrar las 5 palabras más usadas
echo
echo "Las 5 palabras más frecuentes:"
tr -s ' ' '\n' < "$archivo" | tr -d '[:punct:]' | tr '[:upper:]' '[:lower:]' | \
    sort | uniq -c | sort -nr | head -5

# 4. Guardar todas las líneas que contienen 'warning' en un archivo aparte
grep -i "warning" "$archivo" > /tmp/warnings.txt
echo
echo "Se han guardado todas las líneas con 'warning' en /tmp/warnings.txt" 
