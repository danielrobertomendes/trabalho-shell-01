#!/bin/bash
#Daniel Roberto Mendes | Franklin Vinicius Moraes
#Script com o intuito de verificar o sistema operacional e sua versão sem copiar o script par a outra máquina
echo "Informações sobre o sistema remoto."
#O usuário escreve o endereço da máquina desejada para ver informações
echo "Informe o host:"
#A escrita do usuário esta setada para a variavel "host" 
read host
#O usuário escreve o usuário da máquina desejada para ver informações
echo "Informe o usuário:"
#A escrita do usuário esta setada para a variavel "user"
read user
#O usuário escrevea porta SSH da máquina desejada para ver informações
echo "Informe a porta SSH:"
#A escrita do usuário esta setada para a variavel "port"
read port
#Comando de acesso e solicitação da informação
sudo ssh $host -l $user -p $port uname -a


