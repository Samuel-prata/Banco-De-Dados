use db_rh;

CREATE TABLE rh_colaboradores(
	id	 bigint auto_increment,
    nome varchar(255) not null,
    sobrenome varchar(255) not null,
    cpf varchar(11) not null,
    salario decimal not null,
    
    PRIMARY KEY (id)
);

-- inserindo valores
INSERT INTO rh_colaboradores(nome, sobrenome, cpf, salario)
values("Frederico", "Nascimento", "234512", 2500.00);

INSERT INTO rh_colaboradores(nome, sobrenome, cpf, salario)
values("Jambolão", "Almeida", "453123", 5000.00);

INSERT INTO rh_colaboradores(nome, sobrenome, cpf, salario)
values("Geraldo", "Uzumaki", "098123", 800.00);

INSERT INTO rh_colaboradores(nome, sobrenome, cpf, salario)
values("Josefina", "Uchiha", "159357", 15000.00);

INSERT INTO rh_colaboradores(nome, sobrenome, cpf, salario)
values("Abigail", "Nascimento", "909012", 1500.00);

-- VISUALIZAR
 SELECT * FROM rh_colaboradores;
 
SELECT id, nome, salario FROM rh_colaboradores WHERE salario < 2000.00;
SELECT id, nome, salario FROM rh_colaboradores WHERE salario > 2000.00;

-- ATUALIZAÇÃO
UPDATE rh_colaboradores SET salario =  1212.00 WHERE id = 3;  