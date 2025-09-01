#!/bin/bash
# Esse script recebe dois valores e mostra qual a relacao entre eles

# Pega os parâmetros
NUM1=$1
NUM2=$2

# Substitui vírgula por ponto, se houver
NUM1=${NUM1/,/.}
NUM2=${NUM2/,/.}

# Compara usando bc
if (( $(echo "$NUM1 < $NUM2" | bc -l) )); then
    echo "$NUM1 é menor que $NUM2"
elif (( $(echo "$NUM1 > $NUM2" | bc -l) )); then
    echo "$NUM1 é maior que $NUM2"
else
    echo "$NUM1 é igual a $NUM2"
fi

