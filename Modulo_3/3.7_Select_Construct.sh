#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 3
# Lección 3.7 Constructo Select
#
# 
#
# https://www.sec2john.com
#

# Select simple
echo "Select simple. Seleccionar un medio de transporte"

select medio in "bicicleta" "coche" "bus" "avion" "exit"; 
 do
  echo "Has escogido $medio."
  #Si "exit" salir del bucle. AÑADIR exit a lista de opciones
  [[ $medio = "exit" ]] && break;
 done

# Select + Case
echo
echo "Select + case:"
select opcion in Analizar Copiar Salir; do
    case $opcion in
        Analizar)
            echo "Analizando el directorio..."
            ;;
        Copiar)
            echo "Copiando ficheros del directorio..."
            ;;
        Salir)
            echo "Saliendo..."
            break
            ;;
        *)
            echo "Opción inválida, inténtalo de nuevo."
            ;;
    esac
done


echo
echo "Select + case (0 para salir)"
select opt in *;
 do
  [[ -z $opt ]] && break;
  
  echo "Has escogido $opt."
  echo "Contiene $(wc -l < $opt) líneas."
  echo "Contiene $(wc -w < $opt) palabras."
  echo "Contiene $(wc -c < $opt) caracteres."
  
  if [[ $(wc -l < $opt) > 65 ]];
   then
   echo "Warning: El numero de lineas es demasiado alto."
   echo "Se recomienda reducir lineas y asi reducir la complejidad." 
  fi
 done

echo "Fin de script."