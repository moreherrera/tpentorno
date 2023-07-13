#/bin/bash

#verifica que la cantidad de argumentos sea igual a 1
if [ $# -ne 1 ]; then
   echo "error"
   exit 1
fi

cant=$1

#abre el link
wget dict.csv https://raw.githubusercontent.com/adalessandro/EdP-2023-TP-Final/main/dict.csv

#
while IFS="," read -r nombre _; do
	nombres+=("$nombre")
done < dict.csv

#
for ((i=1; i<=cant; i++))
do
 nombre_foto=${nombres[$RANDOM % ${#nombres[@]}]}
 wget -O $nombre_foto https://source.unsplash.com/random/900%C3%98800/?person
 sleep 3s
 zip fotos $nombre_foto
done

#guarda la suma de verificacion de fotos.zip en un txt
sha256sum fotos.zip > sumverif.txt
