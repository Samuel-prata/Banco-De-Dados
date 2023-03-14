create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
categ varchar(255),
habilidade varchar(255),
primary key (id)
);

insert into tb_classe(
categ, habilidade
)values("Mago","Manipular fogo");
insert into tb_classe(
categ, habilidade
)values("Guerreiro","Força total");
insert into tb_classe(
categ, habilidade
)values("Necromante","Levantar dos mortos");
insert into tb_classe(
categ, habilidade
)values("Curandeiro","Tudo pode");
insert into tb_classe(
categ, habilidade
)values("Estrategista","The BIG EYE");

create table tb_personagens(
id bigint auto_increment,
ataque int,
defesa int,
nome varchar(255),
arma varchar(255),
classe_id bigint,
primary key(id),
foreign key (classe_id) references tb_classe(categ)
);
insert into tb_personagens(
ataque,defesa,nome,arma,classe_id
)values(100,200,"Armis","Cajado", 1);
insert into tb_personagens(
ataque,defesa,nome,arma,classe_id
)values(500,500,"Suais","Orbe", 3);
insert into tb_personagens(
ataque,defesa,nome,arma,classe_id
)values(900,100,"Viserais","Multiarmamanetos", 2);
insert into tb_personagens(
ataque,defesa,nome,arma,classe_id
)values(3000,2500,"Lewder","Anel de anúbis", 3);
insert into tb_personagens(
ataque,defesa,nome,arma,classe_id
)values(9000,1100,"Jonier","Espada", 2);
insert into tb_personagens(
ataque,defesa,nome,arma,classe_id
)values(1000,10500,"Suais","Faixas encantadas", 4);
insert into tb_personagens(
ataque,defesa,nome,arma,classe_id
)values(5000,1500,"Cadertail","Mapa geográfico", 5);

select nome, arma, categ from  tb_personagens inner join tb_classe
on tb_personagens.classe_id = tb_classe.id ;

-- personagens com ataque maior quie 2000
select * from tb_personagens where ataque > 2000;

-- personagens com ataque entre 1000 e 2000
select * from tb_personagens where ataque = 1000 and ataque < 2000;

-- escolha de personagens com a letra c no nome
select * from tb_personagens where nome like "%c%";

-- inner join com classe especifica
select nome, arma, categ from  tb_personagens inner join tb_classe 
on tb_classe.id = tb_personagens.classe_id
where classe_id = 3;