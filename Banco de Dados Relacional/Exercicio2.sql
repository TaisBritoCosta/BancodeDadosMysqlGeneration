CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id bigint auto_increment,
descricao varchar (255) not null,
disponivel boolean not null,
PRIMARY KEY (id)
);

insert into tb_categorias (descricao, disponivel) values ("Pizza com borda recheada", true);
insert into tb_categorias (descricao, disponivel) values ("Pizza sem borda recheada ", true);
insert into tb_categorias (descricao, disponivel) values ("Pizza Doce", true);
insert into tb_categorias (descricao, disponivel) values ("Brotinho", true);
insert into tb_categorias (descricao, disponivel) values ("Brotinho Doce", true);

CREATE TABLE tb_pizzas(
id bigint auto_increment,
sabor varchar (255) not null,
quantidade int not null,
pedido int not null,
preco decimal (8,2) not null,
categorias_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);
INSERT INTO tb_pizzas (sabor, quantidade, pedido, preco, categorias_id) VALUES ("Marguerita", 2, 55, 49.99, 1);
INSERT INTO tb_pizzas (sabor, quantidade, pedido, preco, categorias_id) VALUES ("Champgnon", 3,57,'47.99', 1);
INSERT INTO tb_pizzas (sabor, quantidade, pedido, preco, categorias_id) VALUES ("Napolitana", 5, 36, '68.99',1);
INSERT INTO tb_pizzas (sabor, quantidade, pedido, preco, categorias_id) VALUES ("Brigadeiro", 10,87,'80.99', 4);
INSERT INTO tb_pizzas (sabor, quantidade, pedido, preco, categorias_id) VALUES ("Nutella", 9, 38, '99.99',3);
INSERT INTO tb_pizzas (sabor, quantidade, pedido, preco, categorias_id) VALUES ("Americana", 7,56, '59.99', 1);
INSERT INTO tb_pizzas (sabor,quantidade, pedido, preco, categorias_id) VALUES ("Camarao", 5, 78,'79.99', 4);


SELECT * FROM tb_pizzas WHERE preco > 45;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;
SELECT * From tb_pizzas WHERE sabor like "%M%";

SELECT tb_pizzas.sabor, tb_pizzas.preco, tb_categorias.descricao 
FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categorias_id;

SELECT tb_pizzas.sabor, tb_pizzas.preco, tb_categorias.descricao 
FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categorias_id AND tb_categorias.descricao = "Pizza com borda recheada";


