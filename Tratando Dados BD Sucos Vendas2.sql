use sucos_vendas;

select * from tabela_de_clientes;

-- Nem sempre o nome original da coluna é o nome que queremos que seja retornado
-- pela consulta. Por isso, podemos criar Alias (Apelidos) para os campos escrevendo algo após o comando AS

select CPF as INDENTIFICADOR, NOME AS CLIENTE FROM tabela_de_clientes;

-- preciso dos quatro primeiros registros.
 
 SELECT * FROM tabela_de_clientes LIMIT 4;
 
-- Importante lembrar que as tabelas do MySQL se iniciam no índice 0. O retorno 
-- correto de SELECT * FROM tabela LIMIT 2,3 seria o seguinte:
 
 SELECT NOME AS CLIENTE FROM tabela_de_clientes LIMIT 2,3;
  -- CLIENTE
 -- César Teixeira (0)
 -- Marcos Nougeuira(1)
--  Eduardo Jorge(2)
 
 -- Não há nenhum critério na ordem desses dados. Se rodar uma consulta com o ORDER BY especificando a coluna em questão, os nomes aparecem do menor para o maior( não está em ordem alfabética e sim do menor para o maior):

 SELECT * FROM tabela_de_clientes ORDER BY NOME;
 
 -- Direcionando a ordenação.
--  Alfabeticamente(Z a A) Decrescente

SELECT ESTADO, LIMITE_DE_CREDITO FROM tabela_de_clientes;

-- saber o total de limite de crédito de cada estado.

SELECT ESTADO, SUM(LIMITE_DE_CREDITO) as LIMITE_TOTAL FROM tabela_de_clientes GROUP BY ESTADO;
