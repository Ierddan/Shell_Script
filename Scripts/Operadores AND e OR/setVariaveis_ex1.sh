#!/bin/bash

echo "Bem vindo!"

MEDMANHA="CARLOS"
MEDTARDE="JOSÉ"
MEDNOITE="JOÃO"

echo "Bem vindo!"

echo "Digite o turno que deseja para sua consulta (MANHA, TARDE OU NOITE):"
read TURNO

# -o = OR
# -a = AND

if [ "$TURNO" = "MANHA" -o "$TURNO" = "manha" ]; then
echo  "Médico(a) " $MEDMANHA " é o(a) único(a) a atender no turno da " $TURNO
fi

if [ "$TURNO" = "TARDE" -o "$TURNO" = "tarde" ]; then
echo  "Médico(a) " $MEDTARDE " é o(a) único(a) a atender no turno da " $TURNO
fi

if [ "$TURNO" = "NOITE" -o "$TURNO" = "noite" ]; then
echo "Médico(a) " $MEDNOITE " é o(a) único(a a atender no turno da " $TURNO
fi

sleep 2

echo "Sua consulta foi agendada."
sleep 4 

exit

