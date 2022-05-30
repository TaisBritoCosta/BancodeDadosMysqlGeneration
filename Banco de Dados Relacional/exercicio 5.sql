CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias(
id bigint auto_increment,
descricao varchar (255) NOT NULL,
ativo boolean NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias(descricao, ativo) VALUES ("Mercenaria", true);
INSERT INTO tb_categorias(descricao, ativo) VALUES ("Hidraulica", true);
INSERT INTO tb_categorias(descricao, ativo) VALUES ("Decoração", true);
INSERT INTO tb_categorias(descricao, ativo) VALUES ("Eletrica", true);
INSERT INTO tb_categorias(descricao, ativo) VALUES ("Revestimentos",true);

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
valor DECIMAL (6,2),
quantidade int NOT NULL,
qtdEstoque VARCHAR (255) NOT NULL,
cor VARCHAR (255) NOT NULL,
categorias_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY  (categorias_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_produtos (nome, valor, quantidade, qtdEstoque, cor,categorias_id) VALUES ("Pia",150.00, 2, 25,"Branco",3);
INSERT INTO tb_produtos (nome, valor, quantidade, qtdEstoque, cor, categorias_id) VALUES ("Vaso sanitário",79.99, 1, 30 , "Cinza", 3);
INSERT INTO tb_produtos (nome, valor, quantidade, qtdEstoque, cor, categorias_id) VALUES ("Lâmpada",89.90,3, 50, "Branco",4);
INSERT INTO tb_produtos (nome, valor, quantidade, qtdEstoque, cor, categorias_id) VALUES ("Extensão",45.00, 4,130 ,"Preto", 4);
INSERT INTO tb_produtos (nome, valor, quantidade, qtdEstoque, cor, categorias_id) VALUES ("Corrediça",25.00, 7, 30,"Cinza",1);
INSERT INTO tb_produtos (nome, valor, quantidade, qtdEstoque, cor, categorias_id) VALUES ("Aquecedores", 150.99,1, 34,"Preto",2);
INSERT INTO tb_produtos (nome, valor, quantidade, qtdEstoque, cor, categorias_id) VALUES ("Cerâmica",79.99,5 ,88, "Avelã", 5);
INSERT INTO tb_produtos (nome, valor, quantidade, qtdEstoque, cor, categorias_id) VALUES ("Ralo",35.00, 3,62, "Preto", 2);


SELECT * FROM tb_produtos WHERE valor > 100;
SELECT * FROM tb_produtos WHERE valor BETWEEN 70 AND 150.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id and tb_categorias.descricao = "Hidraulica";