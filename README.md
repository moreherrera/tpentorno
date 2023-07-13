# Trabajo Práctico - Entorno de Programacion - TUIA
# Integrantes
Juana Zorzolo Rubio.
Morena Herrera.

"Aqui encontrara instrucciones sobre como ejecutar docker"

Aplicación de Procesamiento de Imágenes

Esta aplicación de procesamiento de fotos está diseñada para realizar diferentes tareas como descargar, procesar, comprimir y descomprimir a partir de un menu.

# Modo de uso con Docker
Pasos:
-Instalar Docker en tu sistema.
-Clonar o descargar este repositorio en tu máquina local.
-Abrir una terminal y navegar hasta el directorio raíz de la aplicación.
-Ejecutar el siguiente comando para construir la imagen Docker:
sudo docker build -t imagen
-Ejecuta el sigueinte comando para hacer correr el contenedor basado en la imagen. Luego, se abrirá directamente el Menú de opciones.
sudo docker run -it -v /home/lubuntu/entorno/contenedor:/contenedor imagen
