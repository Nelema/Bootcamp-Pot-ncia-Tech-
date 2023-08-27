use sucos_vendas;

select * from tabela_de_produtos;
SELECT EMBALAGEM, PRECO_DE_LISTA FROM tabela_de_produtos;

-- Qual é o preço mais caro de cada tipo de embalagem (PET, garrafa e lata):

SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) as MAIOR_PRECO FROM tabela_de_produtos GROUP BY EMBALAGEM;
-- Quantidade de produtos que existem com cada tipo de embalagem: 

SELECT EMBALAGEM, COUNT(*) as CONTADOR FROM tabela_de_produtos GROUP BY EMBALAGEM;

-- A ordem das embalagens começará do maior para o menor (no caso, de "PET"  e "GARRAFA"), dentre os itens de cada tipo de embalagem, os nomes dos produtos estarão organizados em ordem alfabética, pois o ASC foi usado no segundo critério, "NOME_DO_PRODUTO".

SELECT * FROM tabela_de_produtos ORDER BY EMBALAGEM DESC, NOME_DO_PRODUTO ASC;

 -- Preciso saber o maior e o menor preço por embalagem.

SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) as MAIOR_PRECO, 
MIN(PRECO_DE_LISTA) as MENOR_PRECO FROM tabela_de_produtos 
GROUP BY EMBALAGEM;

-- selecionar apenas os produtos cuja SOMA dos preços de lista seja menor ou igual a R$80,00:

SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) as MAIOR_PRECO, 
MIN(PRECO_DE_LISTA) as MENOR_PRECO FROM tabela_de_produtos 
GROUP BY EMBALAGEM
HAVING SUM(PRECO_DE_LISTA) <= 80;

-- Qual o Maior preço e o menor preço?
SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) as MAIOR_PRECO, 
MIN(PRECO_DE_LISTA) as MENOR_PRECO FROM tabela_de_produtos 
GROUP BY EMBALAGEM
HAVING SUM(PRECO_DE_LISTA) <= 80 AND MAX(PRECO_DE_LISTA) >= 3;

-- Quantidade de Cada Embalagem?

SELECT EMBALAGEM, COUNT(*) AS CONTADOR FROM tabela_de_produtos GROUP BY EMBALAGEM;



-- 
