CREATE DATABASE entregas_express;

USE entregas_express;

CREATE TABLE paises (
id_pais INT,PRIMARY KEY(id_pais),
nome VARCHAR(45),
Latitude VARCHAR(45),
Longitude VARCHAR(45),
Idioma_oficial VARCHAR(45)
);

CREATE TABLE unidade_federativa (
cod_uf INT,PRIMARY KEY(cod_uf),
nome_uf VARCHAR(45),
abreviacao_uf CHAR(2),
id_pais INT,
FOREIGN KEY (id_pais) REFERENCES paises(id_pais)
);

CREATE TABLE municipios (
id_municipio INT,PRIMARY KEY (id_municipio),
nome VARCHAR(45),
cod_uf INT,
FOREIGN KEY (cod_uf) REFERENCES unidade_federativa(cod_uf)
);

select * from paises;
select * from municipios;
select * from unidade_federativa;
 
INSERT INTO paises VALUES (1, 'Brasil','33°4503',' 5°1620', 'Português');

INSERT INTO  unidade_federativa VALUES (42, 'Santa Catarina', 'SC',1);
INSERT INTO  unidade_federativa VALUES (33, 'Rio de Janeiro', 'RJ',1);
INSERT INTO  unidade_federativa VALUES (43, 'Rio Grande do Sul', 'RS',1);

INSERT INTO municipios VALUES (1,'Joinville',42);
INSERT INTO municipios VALUES (2,'Florianópolis',42);
INSERT INTO municipios VALUES (3,'Petrópolis',33);
INSERT INTO municipios VALUES (4,'Nova Iguaçu',33);
INSERT INTO municipios VALUES (5,'Porto Alegre',43);
INSERT INTO municipios VALUES (6,'Caxias do Sul',43);

