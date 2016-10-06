#!/bin/bash
#Daniel Roberto Mendes | Franklin Vinicuis Moraes
#Este script primeiramente instala o software OpenSSh Server, após a instalação efetua um backup dp arquivo sshd_config e modifica a porta de comunicação 22 para 10000 dentro do  arquivo de configuração do SSH

echo "Instalando OpenSSH Server."
#Comando de instalação do openssh-server
sudo apt-get install openssh-server 
echo"Backup arquivo sshd_config ORIGINAL"
#Comando de cópia do arquivo sshd_config
sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bkp
echo "Modificar porta padrão do SSH para 10000."
cd /etc/ssh/
sudo echo "$(sed 's/Port 22/Port 10000/g' /etc/ssh/sshd_config)" > /etc/ssh/sshd_config
sudo echo "/etc/ssh/init.d/sshd restart"
