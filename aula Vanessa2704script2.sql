/* sintaxe básica do select
select <colunas>
from <tabela>
where <condições/linhas>
*/
 -- selecionar todas as colunas de uma tabela + todas as linhas (registros)
select * from empregado;

-- buscar na tabela empregado o nome e endereço dos empregados que possuem salario maior que 2000
select nome, endereco from empregado
where salario >2000.00;

/* sintaxe básica insert
insert into <nome da tabela>
(<nome da coluna1>, <nome da coluna2>, ...)
 values (<constante 1>, <constante 2>, ...)
 */

-- inserindo dados na tabela departamento
insert into departamento
(COD_DEPTO, NOME)
values (101, 'Alpha');
 
 select * from departamento;
 
 -- quando quero inserir dados em todas as colunas da tabela, não precisa indicar as colunas, 
 -- pode colocar direto os valores
 
 insert into departamento
 values (102, 'Beta');
 
 desc departamento; -- desc = describe
 
 insert into empregado
 (nome, sobrenome, cpf, endereco, salario, cod_depto)
 values ('fulana', 'silva', '123456789', 'Rua Tal', 2000.00 , 101);
 -- se quiser cadastrar mais de um ao mesmo tempo, é só fazer dois parenteses com valores, separados por virgula
 
 desc empregado;
 
 
 
 
