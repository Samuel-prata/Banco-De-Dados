create database db_produt;
USE  db_produt;

CREATE TABLE produtos(
rotulo int auto_increment,
nome varchar(255) not null,
quant bigint,
preco decimal not null,
made varchar(10),
primary key (rotulo)
);

-- inserir valores
insert into produtos(nome, quant, preco, made)
values("Notebook", 1000, 2100.00, "Brazil");
insert into produtos(nome, quant, preco, made)
values("Placa de vídeo", 500, 800.00, "China");
insert into produtos(nome, quant, preco, made)
values("Cooler", 1000, 200.00, "Brazil");
insert into produtos(nome, quant, preco, made)
values("Processador", 1000, 980.00, "China");
insert into produtos(nome, quant, preco, made)
values("Pasta térmica", 1000, 20.00, "Brazil");
insert into produtos(nome, quant, preco, made)
values("Monitor", 20, 1100.00, "Brazil");
insert into produtos(nome, quant, preco, made)
values("Teclado", 1000, 210.00, "Brazil");
insert into produtos(nome, quant, preco, made)
values("Mouse", 1000, 70.00, "Brazil");
-- visualizar
select * from produtos;
select nome, quant, preco from produtos where preco > 500.00;
select nome, quant, preco from produtos where preco < 500.00;

-- atualizar

update produtos set quant = 10 where rotulo = 5;
