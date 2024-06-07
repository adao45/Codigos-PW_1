#Importação das bibliotecas
import sqlite3
import os

#Declaração das variáveis
inputMenu= int(-1)




connection = sqlite3.connect('Store.db');
cursor = connection.cursor()

#Repetição para criação do menu
while(inputMenu!=0):
    print('Digite 1 para a inserção de um produto');
    print('Digite 2 para visualizar todos os produtos');
    print('Digite 3 para procurar um produto');
    print('digite 4 para atualizar um produto');
    print('Digite 5 para excluir um produto');
    print('Digite 0 para encerrar')

input ('\nDigite enter para continuar..');
os.system('cls')
