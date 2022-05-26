CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id bigint auto_increment,
fabricante varchar (255),
descricao varchar (255),
PRIMARY KEY (id)
);

INSERT INTO tb_categorias(fabricante, descricao) VALUES ("Neo Quimica", "Genérico");
INSERT INTO tb_categorias(fabricante, descricao) VALUES ("Aché", "Genérico");
INSERT INTO tb_categorias(fabricante, descricao) VALUES ("Eurofarma", "Similar");
INSERT INTO tb_categorias(fabricante, descricao) VALUES ("Medley", "Referência");

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
tipo VARCHAR (255) NOT NULL,
preco DECIMAL (6,2),
disponivel boolean,
categorias_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY  (categorias_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_produtos (nome, tipo,preco, disponivel, categorias_id) VALUES ("Ibuprofeno","Liquido", 29.99, true, 2 );
INSERT INTO tb_produtos (nome, tipo, preco, disponivel, categorias_id) VALUES ("Meloxican","Comprimido", 39.99, false, 1);
INSERT INTO tb_produtos (nome, tipo, preco, disponivel, categorias_id) VALUES ("Escitalopran","Comprimido", 99.99, true, 4 );
INSERT INTO tb_produtos (nome, tipo, preco, disponivel, categorias_id) VALUES ("Buscofen","Comprimido", 24.99, true,3);
INSERT INTO tb_produtos (nome, tipo, preco, disponivel, categorias_id) VALUES ("Advil","Comprimido", 17.99, true, 2 );
INSERT INTO tb_produtos (nome, tipo, preco, disponivel, categorias_id) VALUES ("Ibuprofeno","Liquido", 29.99, true, 4);
INSERT INTO tb_produtos (nome, tipo, preco, disponivel, categorias_id) VALUES ("Luftal","Liquido", 14.99, true, 1);
INSERT INTO tb_produtos (nome, tipo, preco, disponivel, categorias_id) VALUES ("Dipirona","Liquido", 10.99, true, 3);

SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos where preco BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id;
SELECT * FROM tb_produtos INNER JOIN tb_categorias on tb_produtos.categorias_id = tb_categorias.id and tb_categorias.fabricante = "Medley";

