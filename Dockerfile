FROM ubuntu:latest 
#imagenes oficiales de docker

#RUN apt-get update  #actualizar el sistema
#RUN apt install -y git
#RUN apt-get install -y curl
#RUN apt-get install -y wget

#WORKDIR /home/lubuntu/entorno/

#RUN apt-get install -y apache2  
#instala el servidor de web
#RUN ls -l > /home/lubuntu/entorno/pepe.txt
#EXPOSE 80 
#puerto donde va a correr el sisetema, lo qeu yo levante

#RUN apt-get update && apt install -y git && apt get install -y curl && apt-get install -y wget

#COPY generar.sh descargar.sh descomprimir.sh procesar.sh comprimir.sh menu.sh /home/lubuntu/entorno/contenedor/
#COPY generar.sh /home/lubuntu/entorno/contenedor/

#RUN chmod 777 *
#ENV OUTPUT_DIR=/output

#CMD sh /home/lubuntu/entorno/menu.sh
#CMD ["./menu.sh"]

#FROM ubuntu:latest
 
RUN apt-get update && apt install -y git && apt-get install -y curl && apt-get install -y wget && apt-get update && apt-get install -y zip

RUN apt-get update && apt install -y imagemagick 

#RUN mkdir -p /home/app/

WORKDIR /home/lubuntu/entorno/

COPY generar.sh /home/lubuntnu/entorno/

COPY descargar.sh /home/lubuntu/entorno/
 
COPY descomprimir.sh /home/lubuntu/entorno/
 
COPY procesar.sh /home/lubuntu/entorno/
 
COPY comprimir.sh /home/lubutnu/entorno/
 
COPY menu.sh /home/lubuntu/entorno

#RUN mkdir /home/app/salida

ENV OUTPUT_DIR=/output

CMD ["/bin/bash"]

