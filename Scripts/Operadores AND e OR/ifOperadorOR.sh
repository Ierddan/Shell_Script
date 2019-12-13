#!/bin/bash

echo "Bem vindo!"

sleep 2

echo "Carros disponíveis: "
echo "[1] Celta - [2] Ferrari - [3] Lamborghini - [4] Palio - [5] Uno"

sleep 2

echo "Digite o número da opção desejada: "
read ID_CARRO

if [ "$ID_CARRO" = 1 ]; then
echo "Você optou por um veículo classe B" 
fi

if [ "$ID_CARRO" = 2 -o "$ID_CARRO" = 3 ]; then
echo "Você optou por um veículo classe A" 
fi

if [ "$ID_CARRO" = 4 -o "$ID_CARRO" = 5 ]; then
echo "Você optou por um veículo classe C."
fi

sleep 2

exit

