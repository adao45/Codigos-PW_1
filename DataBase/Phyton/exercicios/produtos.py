import sqlite3

#Conecta com banco de dados
connection = sqlite3.connect('Store.db');
cursor = connection.cursor() #possibilita que o comando seja executado

#as aspas server para quebrar as linhas
cursor.execute('''
    CREATE TABLE IF NOT EXISTS products(
               id INTEGER PRIMARY KEY,
               name VARCHAR(32) UNIQUE NOT NULL,
               price FLOAT NOT NULL,
               quantity INTEGER NOT NULL);

''')

#connection.close();

def create(name:str,price:int,quantity:int):
    try:

        cursor.execute('INSERT INTO products (name,price,quantity) VALUES (?,?,?)', (name, price, quantity));
        connection.commit();    
        return{'code':201, 'message': 'product Created'};
    except:
        return {'code':500, 'message': 'Internal Error'};
                


def finBy():
    pass;

def select():

    try:
        products=[];
        cursor.execute('SELECT name,price,quantity FROM products')
        products=cursor.fetchall();
 
        return {'code':200, 'data':products};
    except:
        return {'code':500,'data': 'internal Error'}



def update():
    pass;

def delete():
    pass;
    