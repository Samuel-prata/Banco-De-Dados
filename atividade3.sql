create database db_escolar;
use db_escolar;

create table alunos(
registro bigint auto_increment,
nome varchar(255) not null,
sobrenome varchar(255) not null,
media decimal not null,
ano_escolar int,
primary key(registro)
);

-- inserindo valores
insert into alunos(nome, sobrenome, media, ano_escolar)
values ("Alfredo","guimarães", 5.0, 2);
insert into alunos(nome, sobrenome, media, ano_escolar)
values ("Lorenzo","Giullifi", 9.0, 1);
insert into alunos(nome, sobrenome, media, ano_escolar)
values ("Alquides","Hercules", 3.0, 3);
insert into alunos(nome, sobrenome, media, ano_escolar)
values ("Kiba","Inuzuka", 1.0, 1);
insert into alunos(nome, sobrenome, media, ano_escolar)
values ("Sakura","Haruno", 8.0, 2);
insert into alunos(nome, sobrenome, media, ano_escolar)
values ("Light","Yagami", 10.0, 3);
insert into alunos(nome, sobrenome, media, ano_escolar)
values ("Tanjiro","Yeager", 4.0, 1);
insert into alunos(nome, sobrenome, media, ano_escolar)
values ("Monkey D.","Luffy", 1.0, 3);

-- visualizar
select * from alunos;
select * from alunos where media >= 7;
select * from alunos where media < 7;

-- atualizar
update alunos set media = 7 where registro = 3;
