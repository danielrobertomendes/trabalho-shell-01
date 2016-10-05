#!/bin/bash
#Script que tem o intuito de ler um arquivo de texto especificado pelo usuário e contar as palavras contidas nele em outro arquivo.
#Daniel Roberto Mendes | Franklin Vinicius Moraes
#Solicita para o usuário o arquivo de texto a ser lido
echo "Informe a referencia absoluta do arquivo que deseja ler."
#Efetua a leitura do arquivo de texto
read arquivoPLer
#LÊ O ARQUIVO | QUEBRA A LINHA DE TODAS AS PALAVRAS | ORGANIZA POR ORDEM ALFABETICA (SEM CASE SENSITIVE) | TRÁ APENAS PALAVRAS COM TRES CARACTERES 
#| RETIRA OS PONTOS DAS PALAVRAS | FAZ A CONTAGEM DOS REPETIDOS (SEM CASE SENSITIVE) | ORGANIZA NOVAMENTE, MAS POR NUMEROS DECRESCENTES 
#| MOSTRA AS 15 PALAVRAS MAIS USADAS | MANDA PARA saida.txt
cat $arquivoPLer | xargs -n 1 | sort -f | grep ... | egrep -o '\w+' | uniq -c -i | sort -n -r | head -n 15 >> ResultadoDaPesquisa.txt
