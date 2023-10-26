CREATE DATABASE Livrary;

USE Livrary;

CREATE TABLE livros (
id_livro INT,Primary key(id_livro),
titulo VARCHAR(45),
lancamento INT, 
id_editora INT,
foreign key(id_editora) REFERENCES editoras(id_editora)
);

CREATE TABLE editoras (
id_editora INT,PRIMARY KEY(id_editora),
nome VARCHAR(45),
cnpj CHAR(14)

);

INSERT INTO editoras VALUES (1,"Intriseca", "05660045000106");

INSERT INTO  livros VALUES (100, "Uma breve história do tempo", 1988, 1);

select * from editoras;
select * from livros;

INSERT INTO  livros VALUES (101, "O livro das fobias e manias", 2023, 1);
INSERT INTO  livros VALUES (102, "Trader ou Investidor ?", 2023, 1);

INSERT INTO editoras VALUES (2,"Atlas", "61080370000766");
INSERT INTO  livros VALUES (1, "ADMINISTRAÇÃO", 2022, 2);
INSERT INTO  livros VALUES (2, "Employee Experience", 2021, 2);

#Cadastre pelo menos mais um livro de uma editora diferente de sua preferência
INSERT INTO editoras VALUES (3,"Darkside","17285159000100");
INSERT INTO  livros VALUES (3, "Alice No País Das Maravilhas", 2019, 3);

#Consulte todos os livros que são da editora Atlas. (busque pelo id)
select * from livros where id_editora=2;

#Consulte os livros que são da editora Intrinseca ou Atlas
select * from livros where (id_editora=1) or (id_editora=2);












