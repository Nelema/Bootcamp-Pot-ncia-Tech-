
use sucos_vendas;
-- tabela de vendedores e a de notas fiscais( Campo em Comum 'MATRÍCULA', principalmente o mesmo conteúdo): 
-- Preciso de todos os campos da Tabela de Vendedores e informações das Notas Fiscais

select * from tabela_de_vendedores;
select * from notas_fiscais;

SELECT * FROM tabela_de_vendedores A
INNER JOIN notas_fiscais B
ON A.MATRICULA = B.MATRICULA;

-- Quantas Notas Fiscais cada Vendedor emitiu?

SELECT A.MATRICULA, A.NOME, COUNT(*) FROM
tabela_de_vendedores A
INNER JOIN notas_fiscais B
ON A.MATRICULA = B.MATRICULA
GROUP BY A.MATRICULA, A.NOME;

-- Resultado:
-- Matrícula 	Nome        			Count
-- 00235		Márcio Almeida Silva 	29389
-- 00236		Cláudia Morais			29375
-- 00237		Roberta Martins			29113

-- Quais são os Bairros que se localizam os escritórios dos Vendedores?

SELECT DISTINCT BAIRRO FROM tabela_de_vendedores;
-- (Tijuca, Jardins, Copacabana, Santo Amaro)

select * from Tabela_de_clientes;

-- Quais Clientes que começam com a Letra 'A'.

SELECT * FROM tabela_de_clientes WHERE Nome LIKE "A%";

-- Quais são os Clientes que pertencem a esses Bairros?

SELECT * FROM tabela_de_clientes WHERE BAIRRO 
IN (SELECT DISTINCT BAIRRO FROM tabela_de_vendedores);


SELECT DISTINCT A.CPF, A.NOME, B.CPF FROM tabela_de_clientes A
LEFT JOIN notas_fiscais B ON A.CPF = B.CPF;

SELECT DISTINCT A.CPF, A.NOME, B.CPF FROM tabela_de_clientes A
LEFT JOIN notas_fiscais B ON A.CPF = B.CPF
WHERE B.CPF IS NULL;

-- Cliente com CPF 95939180787, Nome Fábio Carvalho, não emitiu Nota Fiscal.

-- Precisamos de uma Lista dos Clientes e CPFs.

SELECT CONCAT(NOME, ' (', CPF, ') ') AS RESULTADO FROM TABELA_DE_CLIENTES;

-- Listas dos Clientes e Endereço completo.

SELECT NOME, CONCAT(ENDERECO_1, ' ', BAIRRO, ' ', CIDADE, ' ', ESTADO) AS COMPLETO
FROM tabela_de_clientes;

-- Datas que ocorreram vendas: dia, mês e ano que foram emitidas Notas Fiscais

SELECT DISTINCT DATA_VENDA FROM NOTAS_FISCAIS;

-- Para completar a consulta precisamos do dia da semana, mês e o Ano descritos.
SELECT DISTINCT DATA_VENDA,DAYNAME(DATA_VENDA)	AS DIA,
						MONTHNAME(DATA_VENDA) AS MES,
                        YEAR(DATA_VENDA) AS ANO FROM NOTAS_FISCAIS;

-- Qual o faturamento? usando Round para arredondar as casas decimais definidas para( duas casas).

SELECT NUMERO, QUANTIDADE, PRECO, ROUND(QUANTIDADE * PRECO, 2) AS FATURAMENTO
 FROM ITENS_NOTAS_FISCAIS;

SELECT CONCAT('O dia de hoje é: ', 
DATE_FORMAT(CURRENT_TIMESTAMP(),'%d/%m/%Y') ) AS RESULTADO;
-- O dia de Hoje é: 27/08/2023.



