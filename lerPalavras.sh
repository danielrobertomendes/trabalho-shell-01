#!/bin/bash

# Escrito por Daniel Mendes | Franklin Moraes.
# Serve para contar a quantidade de palavras repetidas em arquivos.

echo "Informe a referencia absoluta do arquivo que deseja ler."
read arquivoPLer

# Usa o arquivo lido para os comandos.
# LÊ O ARQUIVO | QUEBRA A LINHA DE TODAS AS PALAVRAS | ORGANIZA POR ORDEM ALFABETICA (SEM CASE SENSITIVE) | TRÁ APENAS PALAVRAS COM TRES CARACTERES 
#| RETIRA OS PONTOS DAS PALAVRAS | FAZ A CONTAGEM DOS REPETIDOS (SEM CASE SENSITIVE) | ORGANIZA NOVAMENTE, MAS POR NUMEROS DECRESCENTES 
#| MOSTRA AS 15 PALAVRAS MAIS USADAS | MANDA PARA saida.txt
cat $arquivoPLer | xargs -n 1 | sort -f | grep ... | grep -o '\w+' | uniq -c -i | sort -n -r | head -n 15 >> saida.txt

