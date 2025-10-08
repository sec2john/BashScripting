#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 3
# Lección 3.4 Constructo Case 
#
# Ejecutar con un parámetro cualquiera. La ayuda indica
# qué parámetros son los esperados.
#
# https://www.sec2john.com
#

echo "Analizando parámetro \$1: $1"

case $1 in
 hora)
       echo "La hora es: $(date +%H:%M)"
       ;;
 lineas)
       echo "/etc/passwd tiene $(wc -l /etc/passwd)"
       ;;
 *.sh) echo -n "Se trata de un fichero *.sh";
       [[ -x $1 ]] && echo -n " ejecutable";
       [[ -r $1 ]] && echo -n " legible";
       [[ -w $1 ]] && echo -n " modificable";
       echo
       ;;
 *) echo "No entiendo la orden $1";
    echo "Solo se acepta 'hora', 'lineas' o un fichero con extensión sh";
    ;;
esac


echo
echo "Segundo case más complejo:"

file="$1"

case "$file" in
  # 1️⃣ Si es imagen, entra aquí
  *.jpg | *.jpeg | *.png)
      echo "Imagen detectada"
      ;;&  # sigue evaluando los siguientes patrones, por si coincide también
  # 2️⃣ Si además es .jpg o .jpeg, procesa metadatos EXIF
  *.jpg | *.jpeg)
      echo "Extraer metadatos EXIF..."
      ;;   # ejecuta este bloque y luego continúa con el siguiente patrón sin comparar
  # 3️⃣ Si es PNG (u otro) comprime
  *.png)
      echo "Comprimir imagen PNG..."
      ;;  # vuelve a comparar con el siguiente patrón (por si cumple otra regla)
  # 4️⃣ Si es PDF, otra categoría
  *.pdf)
      echo "Documento PDF detectado"
      ;&
  size)
      echo "Tamaño del fichero: ...Kb"
      ;;
  # 5️⃣ Cualquier otro caso
  *)
      echo "Tipo desconocido"
     ;;
esac

