use master
go

create database viagempelotempo;
go

use viagempelotempo;
go

create table fase
(
	idfase int primary key identity(1,1),
	nome varchar(100),
	descricao varchar(500)
);

create table questao
(
	idquest int primary key identity(1,1),
	texto varchar(1000),
	idfase int references fase
);

create table alternativa
(
	idalternativa int primary key identity(1,1),
	idquest int references questao,
	texto varchar(1000),
	correta bit
);

create table jogador
(
	idjogador int primary key identity(1,1),
	nomeusuario varchar(100),
	senha varchar(50),
	nick varchar(50),
	email varchar(200),
	imagem image,
	administrador bit default 0
	--ranqsemana int, --default max(ranqsemana)+1,
	--ranqmes int --default max(ranqmes)+1
);

create table resposta
(
	idjogador int references jogador,
	idquestao int references questao,
	idalternativa int references alternativa,
	hora_inicio datetime not null,
	hora_fim datetime not null,
	constraint pk_resposta primary key (idjogador, idquestao, idalternativa)
);