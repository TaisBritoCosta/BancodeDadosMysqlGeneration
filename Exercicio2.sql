CREATE DATABASE db_lojinha;
USE db_lojinha;

CREATE TABLE tb_produtos2(
id BIGINT AUTO_INCREMENT,
nome varchar (255),
cor varchar (255),
quantidade int,
preco decimal (6,2),
marca varchar(255),
primary key (id)
);
INSERT INTO tb_produtos2(nome, cor, quantidade , preco, marca)
VALUES ("Mesa", "Preto","20", 320 , "Dalla Costa");

INSERT INTO tb_produtos2(nome, cor, quantidade , preco, marca)
VALUES ("Armario", "Preto","10",410, "Madesa");

INSERT INTO tb_produtos2(nome, cor, quantidade , preco, marca)
VALUES ("Guarda-roupa", "Branco","5",570, "Magalu");

INSERT INTO tb_produtos2(nome, cor, quantidade , preco, marca)
VALUES ("Cristaleira", "Azul","20",320,"Madesa");

INSERT INTO tb_produtos2(nome, cor, quantidade , preco, marca)
VALUES ("Geladeira", "Preto","20",320, "Pnr Móveis");

INSERT INTO tb_produtos2(nome, cor, quantidade , preco, marca)
VALUES ("Cadeira", "Preto","2",700, "Mobly");

INSERT INTO tb_produtos2(nome, cor, quantidade , preco, marca)
VALUES ("Fogão", "Branco","2",600, "Eletrolux");

INSERT INTO tb_produtos2(nome, cor, quantidade , preco, marca)
VALUES ("Escrivaninha", "Preto","20",180, "Madesa");

SELECT  * FROM tb_produtos2;
SELECT * FROM tb_produtos2 where preco > 500;
SELECT * FROM tb_produtos2 where preco < 500;

UPDATE tb_produtos2 set preco = 200 where id = 8;
