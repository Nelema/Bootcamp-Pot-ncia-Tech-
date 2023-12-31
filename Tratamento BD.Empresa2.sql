use empresa;
-- QUANTOS EMPREGADOS DO SEXO MASCULINO?
select * From EMPREGADO;

select  count(PNOME) FROM EMPREGADO
WHERE SEXO = 'M';

-- RESPOSTA: 5 (CINCO EMPREGADOS DO SEXO MASCULINO)

-- QUANTOS EMPREGADOS DO SEXO FEMININO?

select * From EMPREGADO;

select  count(PNOME) FROM EMPREGADO
WHERE SEXO = 'F';


-- RESPOSTA: 3 (TRES EMPREGADOS DO SEXO FEMININO)

select * FROM DEPARTAMENTO;
-- Qual o maior salário, o menor salário e a média de 
-- salários na relação EMPREGADO por supervisor, para 
-- médias salariais superiores a 30000?

SELECT MIN(salario), MAX(salario), AVG(salario)
FROM EMPREGADO, PNOME, UNOME 
GROUP BY SUPERSSN
HAVING AVG(salario) > 30000;

-- MIN = 25.000
-- MAX = 250.000
-- MEDIA = 63.250
SELECT *FROM TRABALHA_EM;

SELECT PJNOME, PNUMERO, PLOCALIZACAO
FROM PROJETO 
WHERE DNUM = 5;



