CREATE DATABASE cidade_dos_vegetais;

USE cidade_dos_vegetais;

CREATE TABLE tb_categorias(
id bigint auto_increment,
descricao varchar (255) NOT NULL,
ativo boolean NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias(descricao, ativo) VALUES ("Legumes", true);
INSERT INTO tb_categorias(descricao, ativo) VALUES ("Frutas", true);
INSERT INTO tb_categorias(descricao, ativo) VALUES ("Mercearia", true);
INSERT INTO tb_categorias(descricao, ativo) VALUES ("Rotisseria", true);
INSERT INTO tb_categorias(descricao, ativo) VALUES ("Suco Natural",true);

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
valor DECIMAL (6,2),
quantidade int NOT NULL,
dtvencimento DATE,
categorias_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY  (categorias_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_produtos (nome, valor, quantidade, dtvencimento, categorias_id) VALUES ("Batata",52.99, 25, "2022-07-23", 2);
INSERT INTO tb_produtos (nome, valor, quantidade, dtvencimento, categorias_id) VALUES ("Cebola",79.99, 34, "2022-08-02", 5);
INSERT INTO tb_produtos (nome, valor, quantidade, dtvencimento, categorias_id) VALUES ("Abacaxi",89.90, 55, "2022-06-15",3);
INSERT INTO tb_produtos (nome, valor, quantidade, dtvencimento, categorias_id) VALUES ("Abobrinha",122.00, 60, "2022-06-15", 2);
INSERT INTO tb_produtos (nome, valor, quantidade, dtvencimento, categorias_id) VALUES ("Coco Verde", 153.00, 77,"2022-09-25",1);
INSERT INTO tb_produtos (nome, valor, quantidade, dtvencimento, categorias_id) VALUES ("Melancia", 126.99, 34,"2022-05-12",5);
INSERT INTO tb_produtos (nome, valor, quantidade, dtvencimento, categorias_id) VALUES ("Cenoura",138, 88, "2022-02-09", 5);
INSERT INTO tb_produtos (nome, valor, quantidade, dtvencimento, categorias_id) VALUES ("Beterraba",149,99, "2022-10-29", 3);


SELECT * FROM tb_produtos WHERE valor > 50;
SELECT * FROM tb_produtos WHERE valor BETWEEN 50 AND 150.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id and tb_categorias.descricao = "Mercearia";