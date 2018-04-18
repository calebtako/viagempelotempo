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

insert into fase values
('Pré historia', 'Primeiro periodo historico do mundo.');

create table questao
(
	idquest int primary key identity(1,1),
	texto varchar(1000),
	idfase int references fase
);

insert into questao values
('periodo bem oko', 1);

create table alternativa
(
	idalternativa int primary key identity(1,1),
	idquest int references questao,
	texto varchar(1000),
	correta bit
);
insert into alternativa values
(1, 'Pré historia', 1),
(1, 'Pré historia', 1),
(1, 'Pré historia', 1),
(1, 'Pré historia', 1),
(1, 'Pré historia', 1),
(1, 'Pré historia', 1),
(1, 'Pré historia', 1),
(1, 'Pré historia', 1),
(1, 'Pré historia', 1),
(1, 'Pré historia', 1),
(1, 'Pré historia', 1),
(1, 'Pré historia', 1),
(1, 'Pré historia', 1),
(1, 'Pré historia', 1),
(1, 'Pré historia', 1),
(1, 'Pré historia', 1),
(1, 'Pré historia', 1),
(1, 'Pré historia', 1),
(1, 'Pré historia', 1),
(1, 'Pré historia', 1),
(1, 'Pré historia', 1),
(1, 'Pré historia', 1),
(1, 'Pré historia', 1),
(1, 'Pré historia', 1),
(1, 'Pré historia', 1),
(1, 'Pré historia', 1),
(1, 'Pré historia', 1),
(1, 'Pré historia', 1),
(1, 'Pré historia', 1),
(1, 'Pré historia', 1),
(1, 'Pré historia', 1),
(1, 'Pré historia', 1),
(1, 'Pré historia', 1),
(1, 'Pré historia', 1),
(1, 'Pré historia', 1),
(1, 'Pré historia', 1),


create table jogador
(
	idjogador int primary key identity(1,1),
	nomeusuario varchar(100),
	senha varchar(50),
	nick varchar(50),
	email varchar(200),
	imagem image default 'C:\Users\Aluno\Documents\GitHub\viagempelotempo\ViagemPeloTempo\ViagemPeloTempo\fonts\imagens\defalt.jpg',
	administrador bit default 0

	--ranqsemana int, --default max(ranqsemana)+1,
	--ranqmes int --default max(ranqmes)+1
);
insert into jogador values
('123', '123', '123', 'email', 'C:\Users\Aluno\Documents\GitHub\viagempelotempo\ViagemPeloTempo\ViagemPeloTempo\fonts\imagens\defalt.jpg', 0);

create table resposta
(
	idjogador int references jogador,
	idquestao int references questao,
	idalternativa int references alternativa,
	hora_inicio datetime not null,
	hora_fim datetime not null,
	constraint pk_resposta primary key (idjogador, idquestao, idalternativa)
);

select * from alternativa

SELECT q.texto, a.texto FROM questao as q 
inner join alternativa as a on q.idquest = a.idquest;