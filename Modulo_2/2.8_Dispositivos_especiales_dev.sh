#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 2
# Lección 2.8 Dispositivos especiales /dev/std* (Special devices)
# https://www.sec2john.com
# 

# 1. Mostrar un mensaje de error que salga por stderr en lugar de stdout 
echo "Mensaje de error!" > /dev/stderr
#echo "Mensaje de error!" >&2
#¿Cómo sabemos que sale por stderr?
# Ejecutar tal que asi: ./2.8_Dispositivos_especiales_dev.sh 2>/tmp/out

# 2. Leer la entrada estándar (stdin) 
#    y guardarlas en un fichero temporal.
#    Pista: usa cat y redirección hacia /tmp/out

echo "Introduce una palabra por linea (ctrl + D para terminar)"
cat /dev/stdin > /tmp/out
echo

# 3. Ordenar el contenido del fichero temporal y mandarlo a stdout.
#    Pista: usa sort.
echo "fichero ordenado:"
sort /tmp/out > /dev/stdout

# 4. Provoca un error y haz que salga por panmtalla en lugar de el fichero temporal
# de errores.
ls nofile 2>/dev/stdout













