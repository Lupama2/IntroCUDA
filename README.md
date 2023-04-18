# IntroCUDA
 Repo propio de la materia Introducción al Cálculo Numérico en Procesadores Gráficos en el Instituto Balseiro 

Clases:
Martes y Miércoles de 9 a 13 en el aula 3 de Egipcios

Usuario: ICNPG
Contraseña: gpgpu2023

Cluster
ip: 10.73.25.223
Usuario: pablo.chehade
Contraseña: 5NElCjSEafnjsaxT9r5C//


# Comandos de interés


Comandos de interés:
(0) Para acceder al cluster
ssh pablo.chehade@10.73.25.223

para hacer un log out
exit

(1) Para obtener info. del comando command
man command
info command
por ejemplo con command = nvcc

(2) Para ver los módulos disponibles
module avail

(2p) A veces no nos deja usar un módulo (nvcc por ejemplo). Para eso hay que cargar el módulo desde la terminal con
module load cuda/11.4.0

(2pp) Para correr el programa
./programa
estando en el directorio donde está el programa compilado


(3) Dirección de la materia
ls /share/apps/icnpg/clases/

(4) Copiar contenido de una carpeta a otra, en el ejemplo el "." es nuestra carpeta.
cp -r /share/apps/icnpg/clases/Cuda_Basico/ .
El "-r" es porque la copia es recursiva
(5) Para ir a otra carpeta
cd carpeta/

(6) Para ver qué carpetas hay en el directorio
ls

(7) Para condensar líneas de comando se puede usar Makefile

(8) Para compilar un .cu
nvcc hello.cu -o hola

(9) Para ejecutar
*Si ejecuto de la siguiente manera al file hola
./hola
estoy corriendo en CPU
*Si ejecuto de la siguiente manera

estoy corriendo en

(10) ¿Cómo mover archivos entre el servidor y mi pc?
scp pablo.chehade@ip:file(desde home) .

Para mover al revés
scp mi_file pablo.chehade@ip:directorio

(11) Para borrar lo que escribí en la cmd
clear

(12) Para montar la ip en mi pc uso
mkdir cluster ...

(13) Para abrir un file .cu desde el cluster
nano hello.cu

(14) Para correr programas en la GPU del cluster usar siempre gpushort que son las GPUs destinadas para la materia usar los comandos presentes en jobGPU cambiando el ejecutable del final y hacer en la cmd
qsub jobGPU

(15) Para ver los procesos en cola
qstat
Si no responde nada es porque el ejecutable que mandamos a correr ya terminó

(16) Para borrar una corrida
qdel identificador (que aparece en el qstat de todos los usuarios)

(17) qstat de todos los usuarios
qstat -u "*"
cada 2 segundos se actualiza si usamos:
qstat -u \"*\" 
watch qstat

Tmb se puede usar anaconda y se puede evitar tener que poner continuamente la contraseña con un sistema de llaves públicas y privadas.
También se puede usar MakeFile para automatizar el proceso de compilado y ejecución.