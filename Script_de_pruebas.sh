#!/bin/bash
# Este script es para determinar los mejores valores de alfa y beta para la
# caracterización de las frases

while read linea
do
    alfa=$(echo $linea | cut -f1 -d' ')
    beta=$(echo $linea | cut -f2 -d' ')
    echo "================================================================================"
    echo "alfa: $alfa y beta: $beta"
    sbcl --script "Script_caracterizador.lisp" $alfa $beta
done < "$1"
