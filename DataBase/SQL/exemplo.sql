BEGIN TRANSACTION

CREATE TABLE clientes(
    id INTEGER PRIMARY KEY,
    nome VARCHAR(64) NOT NULL,
    idade INTEGER,
    email VARCHAR(64) NOT NULL
);

DROP TABLE clientes;


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

SELECT nome, idade, email FROM clientes;

UPDATE clientes SET idade = 40 WHERE id=1;


--COMMIT

ROLLBACK