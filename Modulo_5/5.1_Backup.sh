#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 5 
# Script "Backup"
# Se pide un script que haga lo siguiente:
# * Recibe uno o varios parámetros con rutas a directorios del sistema. deben ser ficheros legibles  (Requieren validación)
# * Se debe crear un archivo comprimido con los ficheros parámetro respetando su estructura.
# * El comprimido debe almacenarse en /var/local/backups (Previamente creado como root) y con el formato de nombre "USERNAME-date.bck"
# * Si este directorio no está vacío debe eliminarse el fichero o ficheros que allí haya.
#
# https://www.sec2john.com
#

# funcion de validación
# devuelve 0 si el fichero cumple los requisitos, 1 si no
validate_param () {
  if [[ -f "$1" ]] && [[ -r "$1" ]];
    then
      return 0
    else
      return 1
  fi

}

declare -a files
count=0
# Validación de parámetros
while [[ -n "$1" ]] ; 
 do
  if validate_param "$1"; 
   then
     echo " [+] File valid: '$1'"
     files[count]="$1"
     (( count++ ))
   else
     echo " [-] File not valid: '$1'"
   fi
  shift
 done

backupDir="/var/local/backup"
#sudo mkdir /var/local/backup
#sudo chmod o+rwx /var/local/backup

#check backupfolder
if ! [[ -d "$backupDir" && -r "$backupDir" && -w "$backupDir" && -x "$backupDir" ]]; then
  echo "backup Dir no accesible/legible/escribible: $backupDir. Saliendo..." >&2
  exit 1
fi

if [[ $(\ls $backupDir | wc -l) -gt 0 ]];
 then
  echo "Folder not empty"
  $(rm "$backupDir/"*)
  [[ $! != 0 ]] || { echo " Couldn't remove files in $backupDir. Exiting..."; exit 1; }
fi

  echo "Folder empty."
  bckname=$USER-$(date "+%F").bck
  #iteramos array y comprimimos
  #zip $backupDir/$bckname  fileA fileB ... fileN
  echo "zipping $backupDir/$bckname ..."
  zip "$backupDir/$bckname" "${files[@]}" 1>/dev/null
  [[ $! != 0 ]] || { echo " Couldn't zip files. Exiting..."; exit 1; }

echo "End of script"
