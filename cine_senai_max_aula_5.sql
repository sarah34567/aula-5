-- Excluindo banco de dados
DROP DATABASE cine_senai_max;

-- Criando banco de dados
create database cine_senai_max;

-- Ativando banco de dados
use cine_senai_max;

-- Criando tabela filmes
CREATE TABLE filmes (
	id_filme int,
    titulo VARCHAR(60),
    genero VARCHAR(45),
    duracao int,
    ano_lancamento INT,
    preco_aluguel DOUBLE,
    primary key(id_filme)
);

-- Criando tabela atores
CREATE TABLE atores (
	id_ator INT,
    nome_ator VARCHAR(60),
    ano_nascimento INT,
    nacionalidade VARCHAR(20),
    sexo VARCHAR(10),
    PRIMARY KEY(id_ator)
);

-- Crie aqui a tabela de atuações
CREATE TABLE atuacoes (
    id_filme INT,
    id_ator INT,
    FOREIGN KEY (id_filme) REFERENCES filmes(id_filme),
    FOREIGN KEY (id_ator) REFERENCES atores(id_ator)
);

drop table atuacoes;
#Cadastrando um filme
INSERT INTO filmes  VALUES(80,'Carandiru', 'Drama', 145, 2003, 4.99);
select * from filmes where id_filme=80;

#Cadastrando os atores
INSERT INTO atores VALUES (150, 'Rodrigo Santoro', 1975, 'Brasileiro', 'Masculino');
INSERT INTO atores VALUES (151, 'Wagner Moura', 1976, 'Brasileiro', 'Masculino');

#Cadastros na tabela atuacoes
INSERT INTO atuacoes VALUES (80,150);
INSERT INTO atuacoes VALUES (80,151);

SELECT * FROM ATUACOES;
SELECT * FROM FILMES;
SELECT * FROM ATORES;
DELETE FROM atuacoes WHERE id_ator = 83 and id_filme=153;

DESCRIBE filmes;
DESCRIBE atores;
DESCRIBE atuacoes;

INSERT INTO filmes  VALUES(81,'O Homem do Futuro', 'Ficção científica e Comedia', 106, 2011,  4.64);
INSERT INTO atuacoes VALUES (81,151);

INSERT INTO filmes  VALUES(82,'Minha mãe é uma peça:O filme', ' Comedia', 85, 2013,  4.64);
INSERT INTO filmes  VALUES(83,'Minha mãe é uma peça 2', ' Comedia', 120, 2016,  4.64);
INSERT INTO filmes  VALUES(84,'Minha mãe é uma peça 3', ' Comedia', 105, 2019,  4.64);

INSERT INTO atores VALUES (152, 'Paulo Gustavo', 1978, 'Brasileiro', 'Masculino');
INSERT INTO atores VALUES (153, 'Mariana Xavier', 1980, 'Brasileira', 'Feminino');
INSERT INTO atores VALUES (154, 'Rodrigo Pandolfo', 1984, 'Brasileiro', 'Masculino');

INSERT INTO atuacoes VALUES (82,152);
INSERT INTO atuacoes VALUES (82,153);
INSERT INTO atuacoes VALUES (82,154);


INSERT INTO atuacoes VALUES (83,152);
INSERT INTO atuacoes VALUES (83,153);
INSERT INTO atuacoes VALUES (83,154);

INSERT INTO atuacoes VALUES (84,152);
INSERT INTO atuacoes VALUES (84,153);
INSERT INTO atuacoes VALUES (84,154);


SELECT a.nome_ator, f.titulo, at.id_filme, at.id_ator
FROM atuacoes AS at
INNER JOIN filmes AS f ON at.id_filme = f.id_filme
INNER JOIN atores AS a ON at.id_ator = a.id_ator;



