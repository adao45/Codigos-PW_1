CREATE table IF NOt EXISTS produtos(
    id integer PRIMARY KEY,
    nome varchar(64) not NULL,
    preco float(32,2) not NULL,
    quantidade integer not NULL
)

insert into produtos(nome,preco,quantidade)
values(
  'Abacate',
  1.99,
  1000
  );
  
insert into produtos(nome,preco,quantidade)
values(
  'Banana',
  2.89,
  827
  );
  
  insert into produtos(nome,preco,quantidade)
values(
  'Cenoura',
  7.25,
  600
  );
  
  insert into produtos(nome,preco,quantidade)
values(
	'Damasco',
    23.26,
  	80
  );
  
  insert into produtos(nome,preco,quantidade)
values(
	'Escarola',
  	0.89,
  	50
  ),
  (
	'aboboras',
  	0.89,
  	50
  );

BEGIN TRANSACTION
UPDATE produtos SET preco =15.99 where id=3;

BEGIN TRANSACTION
DELETE FROM produtos where id= 2


 insert into produtos(nome,preco,quantidade)
values(
	'Figo',
  	9.89,
  	50
  );
  seLECT * from produtos;