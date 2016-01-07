#!/bin/bash
# Este script se usa automatizar el proceso del cálculo de las cobertura.

for archivo in "Resultados caracterizador"/*.txt
do
    numeros=$(echo $archivo | grep -o '[0-9]\+-[0-9]\+')
    alfa=$(echo $numeros | cut -d'-' -f1)
    beta=$(echo $numeros | cut -d'-' -f2)
    echo "$archivo: $alfa - $beta"
    echo "$archivo" >> "Resultados caracterizador"/Calculo_coberturas_corregido.txt
    sbcl --script Cobertura.lisp "$archivo" $alfa $beta >> "Resultados caracterizador"/Calculo_coberturas_corregido.txt
done
