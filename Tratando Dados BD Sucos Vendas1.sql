use sucos_vendas;
select  * from tabela_de_produtos;
-- Ao executar esse script na tabela o valor "PET" está escrito
-- com letras maiúsculas. O que será que acontece se eu fizer a consulta
-- usando letras minúsculas? o MySQL não distingue entre letras maiúsculas 
-- e minúsculas, ele fará a busca da mesma forma.
SELECT * FROM tabela_de_produtos WHERE EMBALAGEM = 'PET';

-- Na tabela existe um produto com esse Valor Preço_de Lista (19,50), ao rodar
-- o comando ele retorna zerado como ele é um dado tipo (float), significa que 
-- não é um número exato, mas com muitas casas decimais, não corresponde 
-- exatamente a condição solicitada, como resolver?

SELECT * FROM tabela_de_produtos WHERE PRECO_DE_LISTA = 19.51;

SELECT * FROM tabela_de_produtos WHERE PRECO_DE_LISTA BETWEEN 19.50 AND 19.52;

-- Filtro Atendendo a duas condições (OR)ou uma delas.

SELECT * FROM tabela_de_produtos WHERE SABOR = 'Manga' or tamanho = '470ml';

-- Filtro Atendendo uma única condição deve ser guaraná e tamanho igual a 600ml.

SELECT * FROM tabela_de_produtos WHERE SABOR = 'Guaraná' AND TAMANHO = '600ml';

-- para fazer a seleção inversa, uma consulta de todos os registros exceto os que têm sabor guaraná e tamanho 600ml ao mesmo tempo:

SELECT * FROM tabela_de_produtos WHERE NOT (SABOR = 'Guaraná' AND TAMANHO = '600ml');

-- Será que tenho Suco guaraná em outro tamanho(ml)?

SELECT * FROM tabela_de_produtos WHERE SABOR = 'Guaraná' AND NOT (TAMANHO = '600ml');
