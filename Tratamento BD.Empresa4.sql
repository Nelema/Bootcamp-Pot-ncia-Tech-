-- Quantas pessoas trabalham em cada projeto 

use empresa;

select PNUMERO, PNOME, count(*) 
from projeto, empregado
Where PNUMERO
group by PJNOME, PNOME;


select * from empregado;
select *from departamento;

select Pnome, Minicial, Unome, ssn from empregado 
join departamento on dnumero;

select Pnome, Minicial, Unome, ssn from empregado 
join departamento on GERSSN;