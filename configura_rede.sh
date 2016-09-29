#!/bin/bash

# Escrito por Daniel Mendes e Franklin Moraes.
# Serve para ativar o dhcp na placa de rede designada e modificar o nome do computador.

# Interage com o usuário solicitando o nome da interface de rede.
echo "Qual o nome da sua interface de rede?"
# Efetue a leitura da informação passada pelo usuário.
read interface
# Força o uso do DHCP na interface informada.
sudo dhclient $interface

# Espaçamento.
echo ""
# Interage com o usuário solicitando o nome para o computador rede.
echo "Digite seu nome_sobrenome para renomear o computador:"
# Efetue a leitura da informação passada pelo usuário.
read nome
# Uso da informação passada para atualizar nome do computador.
sudo hostname $nome


 
