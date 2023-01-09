--Foi utilizado o DBeaver para transformar o .csv em uma tabela com o nome atividade

select "Município (Municípios)" from atividade where "Área (ha)" > 200000;

select "Município (Municípios)", "Estado sigla" from atividade where "Área (ha)" > 150000;

select "Município (Municípios)", "Espécie florestal" from atividade where "Área (ha)" > 30000;

create view questao5View as
	select * from atividade;
select * from questao5View;

create materialized view questao5Materialized as select * from atividade;
select * from questao5Materialized;

--Utilizando o dbeaver para executar o script e verificar o tempo, os dois tem o mesmo tempo total mas a view
--Não materializada retorna 1 row a cada ms diferente da materializada que retorna todas.