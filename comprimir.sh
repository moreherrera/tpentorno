#!/bin/bash
#guarda en fotos.txt la lista de nombres de las fotos
ls fotos > fotos.txt
echo "lista de los nombres de las fotos: "
cat fotos.txt

#guarda los nombres validos de fotos.txt en nombre_validos
grep -Ew ^[A-Z][a-z]+ fotos.txt > nombres_validos
echo "los nombres validos son: "
cat nombres_validos

#guarda los nombres que terminan en "a" de fotos.txt en nombres_a
grep a$ fotos.txt > nombres_a
echo "los nombres que terminan en a son: "
cat nombres_a

#crear un archivo zip. /* àra guardar cada elemento que este en fotos
zip archivos_generados.zip fotos.txt nombres_a nombres_validos fotos/*


