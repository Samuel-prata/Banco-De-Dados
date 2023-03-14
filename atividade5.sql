create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
sabor varchar(50),
tamanho varchar (50),
primary key (id)

);

drop table tb_categoria ;
insert into tb_categoria(
sabor
)value("Doce");
insert into tb_categoria(
sabor
)value("Salgado");

insert into tb_categoria(
tamanho
)value("Normal");
insert into tb_categoria(
tamanho
)value("Gigante");

create table tb_pizza(
id bigint auto_increment,
sabor varchar(50),
valor decimal,
quantidade int,
entrega char,
categoria bigint,
primary key (id),
foreign key (categoria) references tb_categoria(id)
);

ALTER TABLE tb_pizza add constraint fk_tamanho foreign key (tam) references tb_categoria(id);



insert into tb_pizza(
sabor, valor, quantidade, entrega, categoria, tam
)values("Atum", 48.0, 1, 'n', 2, 4);

select*from tb_categoria;
select*from tb_pizza;

SELECT * FROM tb_pizza INNER JOIN Tb_categoria
ON tb_pizza.categoria = tb_categoria.id;
