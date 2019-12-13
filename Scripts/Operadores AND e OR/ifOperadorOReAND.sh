#!/bin/bash

echo "Bem vindo!"

echo "Por favor, nos informe se o PC1 está ligado (S/N): "
read PC1

echo "Por favor, nos informe se o PC2 está ligado (S/N): "
read PC2



if [ "$PC1" = "S" -a "$PC2" = "S" ]; then
echo "Valor 15."
fi

if [ "$PC1" = "S" -a "$PC2" = "N" ]; then
echo "Valor 5."
fi

if [ "$PC1" = "N" -a "$PC2" = "S" ]; then
echo "Valor 10."
fi

if [ "$PC1" = "N" -a "$PC2" = "N" ]; then
echo "Valor 0."
fi
	
sleep 3

exit