# Questão 1
create database CINEMA;

create table FILMES (
	ID			INTEGER,
	NOME		VARCHAR,
	CATEGORIA	VARCHAR,
	DURACAO		INTEGER,
	LANCAMENTO	DATE
);

# Questão 2
insert into FILMES values (6, 'Avatar: O Caminho da Água', 'Ação', 192, '2022-12-15');

# Questão 3
insert into FILMES values
	(1, 'Como eu era Antes de Você', 'drama', 110, '2016-06-16'),
	(2, 'Para Sempre', 'romance', 104, '2012-06-07'),
	(3, 'Arremessando Alto', 'drama', 117, '2022-06-03'),
	(4, 'King Richard: Criando Campeãs', 'drama', 144, '2021-12-02'),
	(5, 'No Ritmo do Coração', 'drama', 111, '2021-09-23');
	
# Questão 4
delete from FILMES where ID = 6;

# Questão 5
alter table FILMES add column VERIFICAR BOOL;
update FILMES set VERIFICAR = true where CATEGORIA = 'drama'

# Questão 6
select id, nome, categoria from FILMES 
	where ID in (1, 2)
	order by ID;
	
# Questão 7
select nome from FILMES 
	where ID != 3
	order by ID;
	
# Questão 8
select id, nome, categoria, duracao, lancamento from FILMES where ID = 2;