# Questão 1
create database LETSCODE;
create database LETSCODE_DEL;

# Questão 2
alter database LETSCODE rename to TURMA889; 

# Questão 3
drop database LETSCODE_DEL;

# Questão 4
create table ALUNOS (
	ID			INTEGER,
	matricula	INTEGER,
	nome		VARCHAR,
	estado		VARCHAR,
	formaca		VARCHAR
);

# Questão 5
alter table ALUNOS rename column estado to uf;

# Questão 6
alter table ALUNOS add column email varchar;
alter table ALUNOS add column telefone varchar;

# Questão 7
alter table ALUNOS alter column email type varchar(100);

# Questão 8
alter table ALUNOS drop column ID;

# Questão 9
drop table ALUNOS;

# Questão 10
# A coluna matrícula já que ela é uma tabela
# unica para o aluno. Então pode-se ter algo para
# identificar o aluno sem ter que utilizar mais memória
alter table ALUNOS
	add constraint PK_ALUNOS
	primary key (matricula);