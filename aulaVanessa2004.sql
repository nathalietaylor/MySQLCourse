-- criar um banco de dadoss
-- create dadabase <nomedobanco>
create database Teste;
-- acessando banco de dados criado
use Teste;
-- criar tabela
create table Pai (
COD_PAI INT NOT NULL,
NOME varchar (30) not null
);

-- alterar a tabela e incluir a restrição de integridade de chave
alter table pai
add constraint PK_Pai primary key (COD_PAI);
-- alter altera colunas, mas não linhas

-- criar tabela Filho
CREATE TABLE FILHO (
	COD_FILHO INT NOT NULL PRIMARY KEY,
    NOME VARCHAR (30) NOT NULL,
    COD_PAI INT NOT NULL,
    CONSTRAINT FK_PAI FOREIGN KEY (COD_PAI) REFERENCES PAI (COD_PAI)
);

-- para ver tabela e descriçoes
show tables;

desc Filho;

-- incluir coluna data de nascimento na tabela filho
alter table Filho
add dataNasc date;

-- alterar tipo de dado em um atributo
alter table filho
modify dataNasc int;

-- alterar nome de tabela
alter table filho
rename filhos;

-- alterar nome de atributo
alter table Filhos
change column dataNasc DN date;

-- apagar coluna
alter table filhos
drop column datanasc;

-- apagar tabela
drop table filhos;

-- apagar banco de dados
drop database teste