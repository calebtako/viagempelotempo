-- criando base de dados
CREATE DATABASE ExemploVendas
GO

-- usando base de dados criada
USE ExemploVendas
GO

-- criando tabela de vendas
IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'venda')
   DROP TABLE venda
GO

create table venda (
	id int identity(1,1) not null,
	codigo varchar(50) not null,
	[data] datetime not null default getdate(),
	cliente varchar(1000) not null,
	constraint [pk_venda] primary key clustered (id)		
);
go

-- criando tabela de vendas
IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'item_venda')
   DROP TABLE item_venda
GO

create table item_venda (
	id int identity(1,1) not null,
	id_venda integer references venda (id) not null,
	produto varchar(1000) not null,
	quantidade integer not null,
	valor_unitario decimal(15,2) not null,
	constraint [pk_item_venda] primary key clustered (id)		
);
go