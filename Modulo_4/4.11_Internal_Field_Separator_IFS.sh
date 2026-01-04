#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 4
# Lección 4.11 Internal Field Separator (IFS)
#
# Ejecutar directamente, es demostrativo y requiere leer el código de este script
# 
# https://www.sec2john.com
#

echo "Contenido por defecto de IFS: "
echo "$IFS" | od -c # Impresión en octal
printf '%q\n' "$IFS" #%q imprime caracteres no imprimibles con su representación POSIX 

echo
echo "Ejemplo de modificación de la variable IFS:"
texto="uno dos tres:cuatro"
echo "texto = "$texto "son tres argumentos: 'uno' 'dos' y 'tres:cuatro'"
IFS=:
echo "IFS=$IFS"
echo "texto = "$texto "!ojo, son 2 argumentos, 'uno dos tres' y 'cuatro'"

echo
echo
echo "Casos donde se emplea la separación de campos:"

echo
echo "Expandes variables sin comillas. " 
IFS=:
echo "IFS=$IFS"
echo 'echo $texto'
echo $texto #expande la variable, luego realiza el word splitting por IFS, sigue expandiendo si fuera necesario... ejecuta el comando.
echo 'echo "$texto"'
echo "$texto" #expande la variable, no realiza el word splitting (esta enttre comillas dobles), etc...

echo
echo "Comando integrado read "
IFS=\ 
echo "IFS=$IFS (espacio)"
echo "Introduce un string con tres espacios: p.ej: ('aaaa bbbb cccc') "
read -r a b c
echo -e "a = $a\nb = $b\nc = $c" 

IFS=: 
echo "IFS=$IFS"
echo "Introduce un string con espacios y : p.ej: ('aaaaa bbbbb:cccc') "
read -r a b c
echo -e "a = $a\nb = $b\nc = $c" 

#exceso de campos:
echo "Introduce un string con 4 separadores '$IFS': p.ej: ('aaaaa:bbbbb:cccc:dddd:eeee') "
read -r a b c
echo -e "a = $a\nb = $b\nc= $c"

echo
echo "Expansión de \$\*"
IFS=\ 
echo "IFS=$IFS (espacio)"

echo 'set -- x y "z zz"'
set -- x y "z zz"
echo '$*'" = "$*
IFS=:
echo "IFS=$IFS"
echo '$*'" = "$*
#y con comillas
echo '$*'" = $*"

echo
echo "Sustitución de comandos (_command substitution_)"
IFS=:
echo "IFS=$IFS"
echo 'for x in $(echo "a:b:c"); do'
echo '    echo "$x"'
echo 'done'
echo
echo "resultado:"
for x in $(echo "a:b:c"); do
    echo "$x"
done

echo
echo 'Expansión de arrays con *'
IFS=,
echo "IFS=$IFS"
echo 'arr=(a b c)'
arr=(a b c)
echo 'echo "${arr[*]}"'
echo "${arr[*]}"
echo 'echo "${arr[@]}"'
echo "${arr[@]}"

echo
echo 'Bucle for'

IFS=\ 
echo "IFS=$IFS (espacio)"
lista="a:b:c d:e"
echo 'lista="a:b:c d:e"'
echo 'for x in $lista; do'
echo '    echo "[$x]"'
echo 'done'
echo
echo "resultado:"
for x in $lista; do
    echo "[$x]"
done
echo

IFS=: 
echo "IFS=$IFS"
lista="a:b:c d:e"
echo 'lista="a:b:c d:e"'
echo 'for x in $lista; do'
echo '    echo "[$x]"'
echo 'done'
echo
echo "resultado:"
for x in $lista; do
    echo "[$x]"
done
echo

echo
echo 'Bucle while'
echo

IFS=\ 
echo "IFS=$IFS (espacio)"
echo 
echo "Creado fichero temporal en /tmp/123test.txt"
cat << EOF >/tmp/123test.txt
uno dos tres
cuatro:cinco:seis
  línea con espacios al inicio
línea\ con\ barras
EOF

cat << EOF

while read line; do
    echo "[\$line]"
done </tmp/123test.txt
EOF

echo
echo "resultado:"
while read line; do
    echo "[$line]"
done </tmp/123test.txt

echo 'Bucle while SEGURO'
cat << EOF

while IFS= read -r line; do
    echo "[\$line]"
done < /tmp/123test.txt
EOF

echo
echo "resultado:"
while IFS= read -r line; do
    echo "[$line]"
done < /tmp/123test.txt

