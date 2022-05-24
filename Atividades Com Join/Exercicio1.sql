CREATE DATABASE db_generationGameOnline;
use db_generationGameOnline;

create table tb_classe(
id bigint auto_increment,
descricao varchar(255) not null, 
ativo boolean not null,
primary key (id)
);

INSERT INTO tb_classe (descricao, ativo) values ("Lutador", true);
INSERT INTO tb_classe (descricao, ativo) values ("Barbaro", true);
INSERT INTO tb_classe (descricao, ativo) values ("Xamã", true);
INSERT INTO tb_classe (descricao, ativo) values ("Feiticeiro", true);
INSERT INTO tb_classe (descricao, ativo) values ("Paladino", true);

CREATE TABLE tb_personagens(
id bigint auto_increment,
nome varchar (255) not null,
idade int,
ataque double (6,2)not null,
defesa double(6,2)not null,
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe(id)
);
insert into tb_personagens (nome, idade, defesa, ataque, classe_id) values ("Ophior",6, 4000, 1400, 1);
insert into tb_personagens (nome, idade, defesa, ataque, classe_id) values ("Chodeis",4, 3000, 1900, 3);
insert into tb_personagens (nome, idade, defesa, ataque, classe_id) values ("Olozor",6, 2300, 500, 4);
insert into tb_personagens (nome, idade, defesa, ataque, classe_id) values ("Grijahr",10, 3200, 900, 2);
insert into tb_personagens (nome, idade, defesa, ataque, classe_id) values ("Azadium",3, 1100, 1800, 5);
insert into tb_personagens (nome, idade, defesa, ataque, classe_id) values ("Ataz",8, 1800, 2300, 2);
insert into tb_personagens (nome, idade, defesa, ataque, classe_id) values ("Olozorr",2, 600, 1600, 1);
insert into tb_personagens (nome, idade, defesa, ataque, classe_id) values ("Ushan",4, 4000, 2000, 3);

select * from tb_personagens where ataque > 2000;

select * from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where nome like "C%";

select tb_personagens.nome, tb_personagens.ataque, tb_classe.descricao 
from tb_personagens inner join tb_classe on tb_classe.id = tb_personagens.classe_id;

select tb_personagens.nome, tb_classe.descricao 
from tb_personagens inner join tb_classe on tb_classe.id = tb_personagens.classe_id and tb_classe.descricao = "Xamã";



