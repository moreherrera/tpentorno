#/bin/bash

#verifica que la cantidad de argumentos sea igual a 1
if [ $# -ne 1 ]; then
   echo "error"
   exit 1
fi

cant=$1
nombres=()

#abre el link
wget dict.csv https://raw.githubusercontent.com/adalessandro/EdP-2023-TP-Final/main/dict.csv

#IFS permite delimitar lo que va leyendo del archivo dict.csv. Luego lo lee y almacena en nombres
while IFS="," read -r nombre _; do
	nombres+=("$nombre")
done < dict.csv #redireccion de entrada a dict.csv

#para que decargue las fotos de a una
for ((i=1; i<=cant; i++))
do
 nombre_foto=${nombres[$RANDOM % ${#nombres[@]}]} #lee los nombres y elegie uno al azar
 wget -O $nombre_foto https://source.unsplash.com/random/900%C3%98800/?person #descarga una foto del link y e asigna una nombre
 sleep 3s
 zip fotos $nombre_foto
done

#guarda la suma de verificacion de fotos.zip en un txt
sha256sum fotos.zip > sumverif.txt
