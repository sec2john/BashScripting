#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 4
# Lección 4.4 Here Document y Here String
#
# Ejecutar:
# param "1": heredoc básico
# param "2": heredoc con expansiones
# param "3": heredoc evitando expansiones
# param "4": heredoc sin identaciones
# param "5" y param 2 opcional: heredoc creando archivo de configuración
# https://www.sec2john.com
#

## Ejemplo ##

if [[ $1 == 1 ]]; then

cat <<EOF
this is
my line
another line
my line 2
my line 3
...
EOF

fi


if [[ $1 == 2 ]]; then

var=1234
cat <<EOF
Valor = $var
echo "Son las $(date +%H:%M)"
EOF

fi



if [[ $1 == 3 ]]; then

var=1234
cat <<'EOF'
Valor = $var
echo "Son las $(date +%H:%M)"
EOF

fi


if [[ $1 == 4 ]]; then

cat <<-EOF
	Esta linea está tabulada
		Pero es aceptada de igual forma
        Esta línea está precedida por espacios
EOF

fi


if [[ $1 == 5 ]]; then

cat <<EOF > /tmp/config
#archivo de configuracion de prueba
user=$USER
dir=$PWD
extra_param="$2"
log="/var/log/app.log"
EOF

fi