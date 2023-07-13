FROM ubuntu:latest 
 
RUN apt-get update && apt install -y git && apt-get install -y curl && apt-get install -y wget && apt-get update && apt-get install -y zip

RUN apt-get update && apt install -y imagemagick 

RUN mkdir -p /home/contenedor

WORKDIR /home/contenedor/

COPY generar.sh /home/contenedor/

COPY descargar.sh /home/contenedor/
 
COPY descomprimir.sh /home/contenedor/
 
COPY procesar.sh /home/contenedor/
 
COPY comprimir.sh /home/contenedor/
 
COPY menu.sh /home/contenedor/

ENV OUTPUT_DIR=/output

CMD ["/bin/bash", "/home/contenedor/menu.sh"]

