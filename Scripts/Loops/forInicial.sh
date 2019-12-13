#!/bin/bash

#Definindo criação do arquivo na 
log= `> $HOME/Documents/Log_Remoto/log_REMOTO.txt`
echo "Inicio da execução: `date +%d-%m-%y_%H:%M:%S`" >> $HOME/Documents/Log_Remoto/log_REMOTO.txt

for ((increment=2;increment>1;increment++));do
	sleep 60
	echo "Valor do increment " $increment
	
	COMANDO=$(cat $HOME/Documents/comandos/comandos.txt)
	
	if [ $COMANDO = "STATUS" ]; then
		echo "Aguardando comando de execução. `date +%d-%m-%y_%H:%M:%S`" >> $log
		COMANDO=$""
		echo > $HOME/Documents/comandos/comandos.txt
	fi
	
	if [ -n "$COMANDO" ]; then
	$COMANDO&
	echo > $HOME/Documents/comandos/comandos.txt
	echo "Executado " $COMANDO "Increment " $increment " `date +%d-%m-%y_%H:%M:%S`" >> $log
	fi
	
done

