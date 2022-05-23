CREATE DATABASE db_empresa;

USE db_empresa;

CREATE TABLE tb_funcionarios(
id bigint auto_increment,
nome varchar(255),
idade int,
matricula varchar(255),
cargo varchar(255),
salario decimal(8,2),
primary key (id)
);
INSERT INTO tb_funcionarios (nome, idade, matricula, cargo, salario) values ("Tais ", 23, "TI", "Desenvolvedor Full Stack.", 3500.00);
INSERT INTO tb_funcionarios (nome, idade, matricula, cargo, salario) values ("Julia ", 27, "TI", "Engenheiro de Sofware.", 5500.00);
INSERT INTO tb_funcionarios (nome, idade, matricula, cargo, salario) values ("Vitoria ", 19, "TI", "Analista.", 3500.00);
INSERT INTO tb_funcionarios (nome, idade, matricula, cargo, salario) values ("Larissa ", 18, "TI", "Aprendiz Full Stack.", 1700.00);
INSERT INTO tb_funcionarios (nome, idade, matricula, cargo, salario) values ("Letícia ", 27, "TI", "Analista de  ados", 2200.00);


SELECT  * FROM tb_funcionarios;

SELECT * FROM tb_funcionarios where salario > 2000;
SELECT * FROM tb_funcionarios where salario < 2000;

UPDATE tb_funcionarios set salario = 1500 where id =4;


