#!/bin/bash

archivo=fotos.zip

#verifica que el archivo existe y lllos descomprime  en un archivo
#que se llama "fotos"
if [ -f $archivo ]; then
  unzip $archivo -d fotos
  echo "archivo descomprimido"
else
  echo "el archivo no existe"
fi
