create database db_escola;

use db_escola;

create table tb_estudantes(
-- criando primary key
id bigint auto_increment,
nome varchar(255),
idade int,
sexo varchar(255),
curso varchar(255),
turma int, 
nota int,
primary key(id)
);

insert into tb_estudantes(nome, idade, sexo, curso, turma, nota) values ("Mario Gomes", 28, "Masculino", "Desenvolvedor Java Fullstack Jr.", 26, 10);
insert into tb_estudantes(nome, idade, sexo, curso, turma, nota) values ("Armando ", 26, "Masculino", "Desenvolvedor Java Fullstack Jr.", 26, 10);
insert into tb_estudantes(nome, idade, sexo, curso, turma, nota) values ("NMarilia Silvestre", 22, "Feminino", "Desenvolvedora Java Fullstack Jr.", 26, 10);
insert into tb_estudantes(nome, idade, sexo, curso, turma, nota) values ("Juarez", 16,"Masculino", "Desenvolvedor Java Fullstack Jr.", 26, 10);
insert into tb_estudantes(nome, idade, sexo, curso, turma, nota) values ("Mteus Ferreira", 90, "Masculino", "Desenvolvedor Java Fullstack Jr.", 26, 4);
insert into tb_estudantes(nome, idade, sexo, curso, turma, nota) values ("PatriciaFelicia", 30, "Feminino", "Desenvolvedora Java Fullstack Jr.", 26, 6);
insert into tb_estudantes(nome, idade, sexo, curso, turma, nota) values ("Julio Marques", 40, "Masculino", "Desenvolvedor Java Fullstack Jr.", 26, 5);
insert into tb_estudantes(nome, idade, sexo, curso, turma, nota) values ("Marta Silvia", 29, "Feminino", "Desenvolvedora Java Fullstack Jr.", 26, 0);


select * from tb_estudantes where nota > 7;

select * from tb_estudantes where nota < 7;


update tb_estudantes set nota = 5 where id = 8;

select * from tb_estudantes;