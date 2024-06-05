BEGIN TRANSACTION

CREATE TABLE if not EXISTS clientes(
    id INTEGER PRIMARY KEY,
    nome VARCHAR(64) NOT NULL,
    idade INTEGER,
    email VARCHAR(64) UNIQUE NOT NULL
);

DROP table clientes;

insert into clientes(nome, idade, email)
values(
  'Pedro Pedreira',
  99,
  'pedropedreira@yahoo.com.br'
  );
  
  insert into clientes(nome, idade, email)
values(
  'Maria Pedreira',
  98,
  'mariadreira@yahoo.com.br'
  );
  
  insert into clientes(nome, idade, email)
values(
  'Julinha Pedreira',
  75,
  'julinhapedreira@yahoo.com.br'
  );
  
  INSERT INTO clientes(nome, idade, email)
values(
    'Adão',
    45,
    'adao@gmail.com'
);

INSERT INTO clientes(nome, idade, email)
values(
    'Viviane',
    43,
    'vivi@gmail.com'
);

INSERT INTO clientes(nome, idade, email)
values(
    'Chrystian',
    27,
    'chrystian@gmail.com'
);
  
 UPDATE clientes SET idade = 40  
 
  UPDATE clientes SET idade = 99 WHERE id= 1;
  UPDATE clientes SET idade = 98 WHERE id= 2;
  UPDATE clientes SET idade = 75 WHERE id= 3;
  UPDATE clientes SET idade = 45 WHERE id= 4;
  UPDATE clientes SET idade = 42 WHERE id= 5;
  UPDATE clientes SET idade = 27 WHERE id= 6
  
  
  
  --COMMIT

ROLLBACK
  
  
  BEGIN TRANSACTION
  DELETE FROM clientes where id=1
  
  
  alter TABLE clientes add column biografia varchar(300);
  
  UPDATE clientes SET biografia = 'milionario' WHERE id= 1;
  UPDATE clientes SET biografia = 'contador' WHERE id= 2;
  UPDATE clientes SET biografia = 'administrador' WHERE id= 3;
  UPDATE clientes SET biografia = 'publicitario' WHERE id= 4;
  UPDATE clientes SET biografia = 'preparador fisico' WHERE id= 5;
  UPDATE clientes SET biografia = 'professor' WHERE id= 6
  
  
  
  
  select * from clientes

  SELECT nome,idade,email,biografia from clientes WHERE idade>=90