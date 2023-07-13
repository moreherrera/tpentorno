# Trabajo Práctico - Entorno de Programación - TUIA - Com2
Esta aplicación de procesamiento de fotos está diseñada para realizar diferentes tareas como descargar, procesar, comprimir y descomprimir a partir de un menu.

# Integrantes
Juana Zorzolo Rubio.

Morena Herrera.

# Modo de uso de Docker
"Aqui encontrará instrucciones sobre cómo ejecutar docker"

Pasos:

-Instalar Docker en tu sistema.

-Abrir una terminal y navegar hasta la carpeta donde se quiere clonar este repositorio.

-Clonar este repositorio en tu máquina local con el siguiente comando:

**git clone https://github.com/moreherrera/tpentorno**

-Ejecutar el siguiente comando para construir la imagen Docker:

**sudo docker build -t imagen**

-Ejecuta el siguiente comando para hacer correr el contenedor basado en la imagen. Luego, se abrirá directamente el Menú de opciones.

**sudo docker run -it -v $(pwd):/home/contenedor imagen14**
