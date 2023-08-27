use sucos_vendas;
select cpf, Nome, Endereco_1, Endereco_2, 
		Bairro, Cidade, Estado, CEP, Data_de_Nascimento,
        Idade, sexo, Limite_de_Credito,
        Volume_de_compra, Primeira_Compra  from Tabela_de_clientes;


alter table tabela_de_clientes drop column idade;
select * from tabela_de_produtos;

select * from tabela_de_produtos where codigo_do_produto = '544931';

insert into Tabela_de_produtos(codigo_do_produto, Nome_do_produto, embalagem, 
			tamanho, Sabor, Preco_de_Lista) values
            ('912001', 'Diet- 600ml -Guaraná','Garrafa', '600ml', 'Guaraná', 5.300),
            ('912002', 'Diet- 600ml -Laranja','Garrafa', '600ml', 'Guaraná', 5.300),
            ('912003', 'Diet- 600ml -Uva','Garrafa', '600ml', 'Guaraná', 5.300),
            ('912004', 'Diet- 600ml -Guaraná','Garrafa', '600ml', 'Guaraná', 5.300);
            
update tabela_de_produtos set sabor = 'cítricos' where sabor = 'Lima/Limão';

select * from tabela_de_clientes;

select * from Tabela_de_clientes where idade>= 30;

update tabela_de_produtos set sabor = 'Uva' where codigo_do_Produto= '912003';
										 
select
	timestampdiff(year,1989-10-05, 2023-08-26) as idade
    from 
    Tabela_de_clientes;





