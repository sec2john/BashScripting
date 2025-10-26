#!/usr/bin/env bash
#       ____        ___     __     __
#      / __/__ ____|_  |__ / /__  / /  ___
#     _\ \/ -_) __/ __// // / _ \/ _ \/ _
#    /___/\__/\__/____/\___/\___/_//_/_//_/
#
# Modulo 4
# Lección 4.8 Procesos en background
#
# Ejecutar con aprametro $1=1 para ejemplo simple, 
# $1=2 para ejemplo complejo
# 
# https://www.sec2john.com
#

if [[ $1 == 1 ]]; then
 #Iniciando tareas
 ping -c 5 google.com >/dev/null &
 pid1=$!

 sleep 10 &
 pid2=$!

 sleep 15 &
 pid3=$!

 for pid in $pid1 $pid2 $pid3; do
  wait "$pid" && echo "Proceso $pid OK" || echo "Proceso $pid con errores"
 done

 echo "Todas las tareas finalizadas."
fi


if [[ $1 == 2 ]]; then

for job in {A..E}; do
    sleep $((RANDOM % 5)) &  # tarea aleatoria
    echo "Lanzado job $job con PID $!"
    pids[$!]=$job
done

# Monitorizar conforme terminan
for pid in "${!pids[@]}"; do
    if wait "$pid"; then
        echo "️ Job ${pids[$pid]} (PID $pid) terminado con éxito"
    else
        echo " Job ${pids[$pid]} (PID $pid) falló"
    fi
done

fi