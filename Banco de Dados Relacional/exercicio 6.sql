CREATE  DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
descricao varchar (255) NOT NULL,
ativo boolean NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categoria (descricao, ativo) VALUES ("Java", true);
INSERT INTO tb_categoria (descricao, ativo) VALUES ("C++", true);
INSERT INTO tb_categoria (descricao, ativo) VALUES ("Javascript", true);
INSERT INTO tb_categoria (descricao, ativo) VALUES ("Engenheiro de software", true);
INSERT INTO tb_categoria (descricao, ativo) VALUES ("Ads", true);

CREATE TABLE tb_curso(
id BIGINT AUTO_INCREMENT,
curso varchar (255) NOT NULL,
preco decimal(6,2) NOT NULL,
qthoras int NOT NULL,
dtcompra date,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);
insert into tb_curso (curso, preco, qthoras, dtcompra, categoria_id) values ("Javascript Basico", 826, 44, '2015-06-03', 3);
insert into tb_curso (curso, preco, qthoras, dtcompra, categoria_id) values ("C++ Intermediario", 610, 98, '2014-08-08', 2);
insert into tb_curso (curso, preco, qthoras, dtcompra, categoria_id) values ("Curso de Ads  do Básico Ao Avançado", 750, 110, '2021-07-21', 5);
insert into tb_curso (curso, preco, qthoras, dtcompra, categoria_id) values ("Introdução ao C++ ",510, 48, '2021-07-21', 2);
insert into tb_curso (curso, preco, qthoras, dtcompra, categoria_id) values ("Engenheiro de software Avançado", 525, 24, '2019-09-23', 4);
insert into tb_curso (curso, preco, qthoras, dtcompra, categoria_id) values ("Java Básico", 580, 10, '2020-09-25', 1);
insert into tb_curso (curso, preco, qthoras, dtcompra, categoria_id) values ("Javascript do básico avançado", 890, 17, '2021-01-16', 2);
insert into tb_curso (curso, preco, qthoras, dtcompra, categoria_id) values ("Ads Completo ", 1000, 13, '2016-12-23', 5);

select * from tb_curso where preco > 500;

select * from tb_curso where preco between 600 and 1000;

select * from tb_curso where produto like "%J%";

select tb_curso.curso, tb_curso.preco, tb_categoria.descricao 
from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;

select tb_curso.curso, tb_curso.preco, tb_categoria.descricao 
from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id and tb_categoria.descricao = "Ads";
