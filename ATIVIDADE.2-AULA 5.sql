CREATE DATABASE estoque_senai;

USE estoque_senai;

CREATE TABLE produtos (
id_produto INT,PRIMARY KEY(id_produto),
nome VARCHAR(45),
preco_unitario FLOAT,
id_marca INT,
FOREIGN KEY (id_marca) REFERENCES marcas(id_marca)
);

CREATE TABLE marcas (
id_marca INT,PRIMARY KEY(id_marca),
nome VARCHAR(45),
descricao VARCHAR(45)
);

INSERT INTO marcas VALUES (100,'Eudora','Cosméticos');
INSERT INTO marcas VALUES (101,'Logitech','Mouse gamer');
INSERT INTO marcas VALUES (102,'Apple','Iphone');

INSERT INTO produtos VALUES (1,'Shampoo','36.99',100);
INSERT INTO produtos VALUES (2,'Mouse Gamer G203','139.99',101);
INSERT INTO produtos VALUES (3,'Iphone 15 Pro Max','12.499',102);

select * from marcas;
select * from produtos;
