import sqlite3 

connection = sqlite3.connect('./Banco.db')

cursor = connection.cursor()

cursor.execute ('CREATE table IF NOt EXISTS produtos(id integer PRIMARY KEY, nome varchar(64) not NULL, preco float(32,2) not NULL, quantidade integer not NULL);');

#cursor.execute('INSERT INTO produtos(nome, preco, quantidade) VALUES (?,?,?)',('Abacate', 1.99, 1000));
#cursor.execute('INSERT INTO produtos(nome, preco, quantidade) VALUES (?,?,?)',('Banana', 2.89, 827));
#cursor.execute('INSERT INTO produtos(nome, preco, quantidade) VALUES (?,?,?)',('Cenoura', 7.25, 600));

#connection.commit();

command = cursor.execute('SELECT * FROM produtos');
result =command.fetchall();

print (result);