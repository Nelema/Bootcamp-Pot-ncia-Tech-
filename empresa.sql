use empresa;
CREATE  TABLE EMPREGADO(
PNOME varchar(255) NOT NULL,
MINICIAL char(1),
UNOME varchar(255) NOT NULL,
SSN integer PRIMARY KEY,
DATANASC date,
ENDERECO varchar (255),
SEXO char(2),
SALARIO numeric NOT NULL check( SALARIO > 0),
SUPERSSN integer,
constraint SUPERVISOR foreign key(SUPERSSN) references EMPREGADO(SSN),
DNO integer check(DNO > 0)
);

CREATE TABLE DEPARTAMENTO(
DNOME varchar (255) NOT NULL,
DNUMERO integer primary key check (DNUMERO > 0),
GERSSN integer,
constraint gerente foreign key (GERSSN) references EMPREGADO (SSN),
GERDATAINICIO date
);
CREATE TABLE DEPTO_LOCALIZACOES(
DNUMERO integer,
DLOCALIZACAO varchar(255),
PRIMARY KEY(DNUMERO, DLOCALIZACAO),
CONSTRAINT numerodepartamento FOREIGN KEY
(DNUMERO) REFERENCES DEPARTAMENTO (DNUMERO)
);
CREATE TABLE PROJETO(
PJNOME varchar(255),
PNUMERO integer PRIMARY KEY,
PLOCALIZACAO varchar(255),
DNUM integer,
CONSTRAINT numerodepartamento1 FOREIGN KEY 
(DNUM) REFERENCES DEPARTAMENTO (DNUMERO)
);
CREATE TABLE TRABALHA_EM(
ESSN integer,
PNO integer,
PRIMARY KEY (ESSN, PNO),
HORAS real,
CONSTRAINT numeroprojeto FOREIGN KEY (PNO) 
REFERENCES PROJETO (PNUMERO)
);
CREATE TABLE DEPENDENTE(
ESSN integer,
NOME_DEPENDENTE varchar(255),
SEXO char(1) CHECK (SEXO IN ('F', 'M')),
DATANASC date,
PARENTESCO varchar(255),
PRIMARY KEY (ESSN, NOME_DEPENDENTE),
CONSTRAINT SSNempregado FOREIGN KEY (ESSN)
REFERENCES EMPREGADO (SSN)
);

-- show tables;

-- insert into EMPREGADO (PNOME, MINICIAL, UNOME, SSN, DATANASC,
 -- ENDERECO, SEXO, SALARIO, SUPERSSN, DNO) VALUES('Regis','B','Silva',
 -- 123456789,'1965-01-09','Rua Verde-132,Paraiso,RS','M',30000,null,null);
 
 -- desc table empregado;
 
insert into EMPREGADO (PNOME, MINICIAL, UNOME, SSN, DATANASC,
 ENDERECO, SEXO, SALARIO, SUPERSSN, DNO) VALUES('Lucas','T','Pires',
 333445555,'1955-12-08','Rua Linda-638,Vale,RS','M',40000,null,null),
 ('Vera','J','Santos',999887777,'1968-01-08','Rua Estreita-638,Vale,RS',
 'F',250000,null,null),('Jane','S','Motta',987654321,'1985-06-02',
 'Av Bello-200,Serra,RS','F',43000,null,null),('Carlos','K','Ruas',
 666884444,'1962-09-15','Rua Verde-975,Vale,RS','M',38000,null,null),
('Joyce','A','Silva', 453453453,'1972-07-31','Rua Limpa-638,Vale,RS','F',25000,null,null),
('João','V','Pires',987987987,'1969-03-29','Rua da Fonte-980,Vale,RS','M',25000,null,null),
('Julio','E','Borges', 888665555,'1937-11-10','Rua do Centro-450,Vale,RS','M',55000,null,null);


insert into DEPARTAMENTO(DNOME, DNUMERO, GERSSN, GERDATAINICIO) VALUES(
'Pesquisa', 5, 333445555, '1988-05-22'),
('Administracao', 4, 987654321,'1995-01-01'),
('Sede Administrativa', 1, 888665555,'1981-06-19');



insert into DEPTO_LOCALIZACOES(DNUMERO,DLOCALIZACAO) VALUES
( 1 , 'Centro'),
( 4, 'Leste'),
(5, 'Sul'),
(5,'Norte'),
( 4, 'Centro');



insert into PROJETO(PJNOME, PNUMERO, PLOCALIZACAO,DNUM) VALUES
('ProdutoX', 1, 'SUL', 5),
('ProdutoY', 2, 'Norte', 5),
('ProdutoZ', 3, 'Centro',5),
('Automatização', 10,'Leste',4),
('Reorganização', 20, 'centro',1),
('Novos Benefícios', 30,'Leste',4);



insert into TRABALHA_EM(ESSN, PNO, HORAS) VALUES
(123456789, 1, 32.5),
(123456789, 2,  7.5),
(666884444, 3, 40.0),
(453453453, 1, 20.0),					
(453453453,	2, 20.0),
(333445555,	2, 10.0),
(333445555, 3, 10.0),
(333445555,10, 10.0),
(333445555,20, 10.0),
(999887777,30, 30.0),
(999887777,10, 10.0),
(987987987,10, 35.0),
(987987987,30,  5.0),
(987954321,30, 20.0),
(987954321,20, 15.0),
(888665555,20, null);



insert into DEPENDENTE(ESSN, NOME_DEPENDENTE, SEXO, DATANASC, PARENTESCO)VALUES
(333445555, 'Alice', 'F', '1996-04-05', 'FILHA'),
(333445555, 'Pedro', 'M', '1983-10-25',	'FILHO'),
(333445555, 'Joy', 'F', '1958-05-03', 'CÔNJUGE'),
(987654321, 'Tereza','F', '1942-02-28', 'CÔNJUGE'),
(123456789, 'Miguel','M', '1988-01-04', 'FILHO'),
(123456789, 'Alice', 'F', '1989-12-30', 'FILHA'),
(123456789, 'Elizabete','F', '1967-05-05', 'CONJUGE');