

use empresa;

show tables;

select * from empregado;

-- A Empresa contratou mais 5 (cinco) Empregados:


insert into empregado values('Carmem','R', 'Scherer', 345678912,'1985-03-09','Rua Cristal-68-Eldorado-SP','F', 25000,null, null),
							('Jaqueline','L', 'Menezes', 678912345,'1991-04-10','Rua de Baixo-130-Guaporé-SC','F', 25000,null, null),
                            ('Silvia','N', 'Teles', 895678912,'1995-03-10','Av Verde-32-Colina-SP','F', 25000,null, null), 
                            ('Manoel','I', 'Leal', 123678912,'1998-09-20','Rua da Lagoa-29-Serrinha-SC','M', 25000,null, null),
                            ('Luiz','U', 'Rodrigues', 985678912,'1995-02-09','Rua Alegre-68-Eldorado-SP','M', 25000,null, null); 
                            
 -- Alterar o salário da empregada Vera Santos SSN  número 999887777 de 250000 para 25000.                           
 
 update empregado set salario = 25000
 where SSN = '999887777';
 
 
 select * from departamento;
 
 select all GERSSN from DEPARTAMENTO
 where DNUMERO = 4 ;
 
 -- Qual é a localização 
  
 Select DLOCALIZACAO From DEPTO_LOCALIZACOES
 WHERE DNUMERO =4;
 
 -- select DNOME from DEPARTAMENTO
 -- WHERE DNUMERO = 4;
 
 -- select * from Projeto;
 
 -- drop schema eccommerce;
 use empresa;
 
 alter table EMPREGADO modify column ENDERECO varchar(300) not null;
 
 select  * from empregado;
 
 -- Adicionar Coluna na Tabela TRABALHA_EM COM NOME DO EMPREGADO
 
 -- alter table TRABALHA_EM add NEMPREGADO varchar(10); 

 -- alter table TRABALHA_EM  modify column NEMPREGADO  varchar(30);
 
 -- alter table PROJETO add DATA_INIC date; 
 
 
 
    
    
    

    
 
 
