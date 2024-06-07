drop table produtos;

CREATE table IF NOt EXISTS produtos(
    id integer PRIMARY KEY,
    nome varchar(64) not NULL,
    preco float(32,2) not NULL,
    quantidade integer not NULL
);

insert into produtos(nome,preco,quantidade) values('Abacate', 1.99, 1000);  
insert into produtos(nome,preco,quantidade) values('Banana', 2.89, 827);  
insert into produtos(nome,preco,quantidade) values('Cenoura', 7.25, 600);
Insert into produtos(nome,preco,quantidade) values('Damasco', 23.26, 80);  
insert into produtos(nome,preco,quantidade) Values('Escarola', 0.89, 50);

 
CREATE TABLE if not EXISTS clientes(
    id INTEGER PRIMARY KEY,
    nome VARCHAR(64) NOT NULL,
    CPF INTEGER NOT NULL UNIQUE,
    celular integer not NULL unique,
    Rua varchar(64) not NULL,
    Numero varchar(10) not NULL,
    idade INTEGER,
    email VARCHAR(64) UNIQUE NOT NULL
);

insert into clientes(nome, cpf, celular, Rua, Numero, idade, email)values('Pedro Pedreira', 0029872599, 42991251819, 'Das Pamanhas', 45, 80, 'pedropedreira@yahoo.com.br');
insert into clientes(nome, cpf, celular, rua, numero, idade, email)values('Pedrita Pedreira', 0029872235, 42991251256, 'Das Mangueiras', 18, 78, 'pedrritapedreira@yahoo.com.br');
insert into clientes(nome, cpf, celular, rua, numero, idade, email)values('Juventina dos Santos', 1529872235, 42981251256,'Salvadori', 15, 27,'jdossanntos@yahoo.com.br');
insert into clientes(nome, cpf, celular, rua, numero, idade, email)values('Washington da Silva', 15789126791, 42981183565, 'Macabeiras', '985A', 16, 'wdasilva@yahoo.com.br');

select * FROM clientes

BEGIN TRANSACTION
UPDATE produtos SET preco =15.99 where id=3;

--commit
ROLLBACK

BEGIN TRANSACTION
DELETE FROM produtos where id= 2
--commit
ROLLBACK

