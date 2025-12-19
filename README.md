# Bash Scripting Profesional – Scripts del curso

Repositorio oficial de scripts asociados al curso Bash Scripting Profesional de [Sec2John](https://sec2john.com/)

Aquí encontrarás un script por lección, diseñado para acompañar y reforzar los conceptos explicados en cada vídeo mediante ejemplos reales y ejecutables en sistemas Linux.

# ¿Para quién es este repositorio?

Este repositorio es útil para dos perfiles distintos:

## Alumnos del curso

* Acceso directo a los scripts usados en cada lección
* Material de apoyo para experimentar, modificar y profundizar
* Referencia práctica a largo plazo

## Usuarios que llegan sin conocer el curso

* Ejemplos reales de Bash scripting, organizados por nivel
* Scripts que ilustran cómo funciona Bash por dentro
* Punto de entrada para entender el enfoque del curso

⚠️ Nota: los scripts no sustituyen al curso. Están pensados como apoyo práctico y referencia, no como tutorial autocontenido.

## Scripts

### Módulo 1 – Fundamentos de Bash
Scripts orientados a entender qué es Bash, cómo se ejecutan los scripts y cómo fluye la información entre procesos.

* 1.1_HelloWorld.sh – Primer script Bash y estructura básica
* 1.2_Variables.sh – Variables y asignación en Bash
* 1.3_Parametros_Posicionales.sh – Uso de $1, $2, …
* 1.4_Parametros_Especiales.sh – Parámetros especiales ( $?, $$, $@, etc. )
* 1.5_Redirecciones_simples.sh – Redirecciones de entrada y salida
* 1.6_Tuberias_pipes.sh – Comunicación entre procesos con pipes
* 1.7_Entorno_de_ejecucion.sh – Entorno de ejecución y formas de lanzar scripts
* 1.8_Exit_status.sh – Estados de salida y control de errores

### Módulo 2 – Expansiones y funcionamiento interno de Bash
Este módulo explica qué hace Bash antes de ejecutar un comando, uno de los puntos más ignorados y más importantes del lenguaje.

* 2.1_Parameter_Expansion.sh – Expansión de parámetros y variables
* 2.2_Brace_Expansion.sh – Brace expansion ({})
* 2.3_Tilde_Expansion.sh – Expansión de la tilde (~)
* 2.4_Arithmetic_Expansion.sh – Expansión aritmética
* 2.5_Command_Substitution.sh – Sustitución de comandos
* 2.6_Word_Splitting.sh – Separación de palabras
* 2.7_Filename_Expansion.sh – Globbing y expansión de nombres de fichero
* 2.8_Dispositivos_especiales_dev.sh – Dispositivos especiales (/dev/stdin, /dev/stdout, /dev/stderr)
* 2.9_Shell_Options.sh – Opciones del shell (shopt)

### Módulo 3 – Control de flujo en scripts Bash
Cómo Bash decide qué ejecutar, cuándo y bajo qué condiciones.

* 3.0_Intro_Flow_Control.sh – Introducción al control de flujo
* 3.1_Evaluación_Condicionales.sh – Evaluación de condiciones (test, [ ], [[ ]])
* 3.2_If_then_else.sh – Condicionales if, then, else
* 3.3_Condicionales_compuestos.sh – Condiciones complejas y compuestas
* 3.4_Case_construct.sh – Constructo case
* 3.5_For_loop.sh – Bucles for
* 3.6_While_Until_loops.sh – Bucles while y until
* 3.7_Select_Construct.sh – Menús interactivos con select
* 3.8_Control_de_ejecución_en_bucles.sh – break, continue, return
* 3.9_Agrupaciones_y_listas_de_comandos.sh – Agrupaciones y listas de comandos

### Módulo 4 – Scripting avanzado en Bash
Uso avanzado del shell para crear scripts modulares, reutilizables y robustos.

* 4.1_Shell_Functions.sh – Funciones en Bash
* 4.2_Arrays_Indexados.sh – Arrays indexados
* 4.3_Arrays_Asociativos.sh – Arrays asociativos
* 4.4_Here_Document_y_Here_String.sh – Here-documents y here-strings
* 4.5_Named_Pipes_FIFOs.sh – Named Pipes (FIFOs)
* 4.6_Process_substitution.sh – Subshells y sustitución de procesos
* 4.7_File_Descriptors.sh – Manejo avanzado de descriptores de fichero
* 4.8_Background_processes.sh – Procesos en background y control de jobs
* 4.9_Señales.sh – Señales y manejo con trap
* 4.10_Co-procesos.sh – Coprocesos (coproc)

### Módulo 5 – Escenarios completos
Scripts que integran múltiples conceptos del curso en casos reales.

* 5.1_Backup.sh – Script completo de backup de directorios
* 5.2_Diagnostic.sh – Diagnóstico de un sistema en red

## Cómo usar este repositorio
### Requisitos
* Sistema Linux
* Bash 5.x (el curso se basa en Bash 5.1.16)

Comprueba tu versión:
```bash
bash --version
```
Clona el repositorio:
```bash
git clone https://github.com/sec2john/BashScripting.git
cd BashScripting
```

* Lee el script antes de ejecutarlo
* Ejecútalo en una shell controlada
* Modifícalo y observa cómo cambia el comportamiento

💡 Bash se aprende interactuando con la shell, no solo leyendo código.

## Advertencias importantes
* Algunos scripts están pensados para entornos de prueba
* Léelos antes de ejecutarlos
* No ejecutes scripts que no entiendas en sistemas productivos

Este repositorio tiene fines formativos y está bajo licencia GPLv3.

## Sobre el curso
Bash Scripting Profesional es un curso orientado a perfiles técnicos que quieren:
* Entender Bash en profundidad
* Escribir scripts robustos
* Administrar sistemas Linux con criterio

Si has llegado aquí desde fuera del curso y te interesa el enfoque, puedes encontrar más información en la academia [LionX Security](https://lionxsecurity.es/course/3/).
