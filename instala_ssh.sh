#!/bin/bash

# Escrito por Daniel Mendes e Franklin Moraes.
# Serve para instalar o OpenSSH-Server e modificar sua porta padrão.

# Interage com o usuário informando o que será efetuado.
echo "Instalando OpenSSH Server."

# Comando para instalar o OpenSSH.
sudo apt-get install openssh-server

# Interage com o usuário informando o que será efetuado.
echo "Modificar porta padrão do SSH para 1000."

# Entra no diretório do arquivo de configuração do OpenSSH.
cd /etc/ssh/

# Modifica a porta padrão 22 para a porta 1000.
sudo echo "$(sed 's/Port 22/Port 1000/g' /etc/ssh/sshd_config)" > /etc/ssh/sshd_config


