
----------------- TESTES DE VISÕES---------------

SELECT * FROM condutor_pontosCnh

SELECT  * FROM veiculos_proprietarios

SELECT  * FROM infracoes_valores



-- /TESTE PARA TRANSFERENCIA DE PROPRIEDADE/

update veiculo
set idproprietario = 3, dataaquisicao = '11/06/2018'
where renavam = '51845800730'

select * from condutor

select * from veiculo
select * from transferencia

-- TESTE PARA LICENCIAMNETO
select * from licenciamento
SELECT DATA_VENCIMENTO()



-- TESTE HISTORICO
SELECT * FROM HISTORICO('51845800730')



----------- TESTE VENCIMENTO MULTA ADICIONAR DATA + 40 DIAS E JUROS ------

				/*Data pagamento nulaa  COM UPDATE*/
insert into multa(renavam,idInfracao,idCondutor,dataInfracao,dataVencimento,valor,juros,valorFinal,pago) 
values  ('00019658893',5,8,'03/12/2018',vencimento_multa('03/12/2018'),293.47,0,0,'N');


insert into multa(renavam,idInfracao,idCondutor,dataInfracao,dataVencimento,valor,juros,valorFinal,pago) 
values  ('00019658893',3,8,'03/10/2018',vencimento_multa('03/10/2018'),293.47,0,0,'N');

select date '03/12/2018'+ 366

-- ### Dentro da data
update multa
set datapagamento = '07/06/2019'
where idmulta = 12;

-- ### FORA da data
update multa
set datapagamento = '20/10/2019', idcondutor = 5
where idmulta = 29;
			  
			   /*Data pagamento NÃO  nulaa  COM INSERT*/
insert into multa(renavam,idInfracao,idCondutor,dataInfracao,dataVencimento,valor,juros,valorFinal,pago) 
values  ('51845800730',1,8,'02/09/2019',vencimento_multa('02/09/2019'),293.47,0,0,'N');

SELECT * from multa
 select * from condutor
SELECT idcadastro,nome, situacaocnh from condutor where situacaocnh = 'S'


----------------- TESTES DE VISÕES---------------

SELECT * FROM condutor_pontosCnh

SELECT  * FROM veiculos_proprietarios

SELECT  * FROM infracoes_valores


insert into veiculo (select calculo_renavam(),'ABC9999',2015,1,6,1,1,'01/01/2015','01/01/2015',9000);

select * from veiculo



