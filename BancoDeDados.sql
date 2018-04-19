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
('Pré historia', 'Primeiro periodo historico do mundo.'),
('Imperio romano', 'Um dos maiores imperios já existentes na historia.'),
('Periodo feudal', 'Caracterizado pela divisão de terras.'),
('Idade media', 'Tambem chamado de idade das trevas.')

select * from fase

create table questao
(
	idquest int primary key identity(1,1),
	texto varchar(1000),
	idfase int references fase
);

insert into questao values
('A Pré-História pode ser definida como: ', 1),
('Qual das alternativas abaixo apresenta as principais características do período da Pré-História conhecido como Paleolítico?', 1),
('Qual das alternativas abaixo apresenta importantes características do período da Pré-História conhecido como Neolítico?', 1),
('Qual das alternativas abaixo apresenta importantes características do período da Pré-História conhecido como Idade dos Metais?', 1),
('No Paleolítico (Idade da Pedra Lascada) destacou-se a arte rupestre. Qual das alternativas abaixo explica o que era a arte rupestre?', 1),
('Entre as principais mudanças ocorridas no período Neolítico podemos destacar:', 1),
('As marcas da presença humana no Período Paleolítico podem ser vistas até hoje:', 1),
('Nesse período, os grupos humanos viviam em estado natural, ou seja, integrados à natureza: coletavam frutos, grãos, raízes, pescavam e caçavam animais:', 1),
('“Já se afirmou ser a Pré-História uma continuação da História Natural, havendo uma analogia entre a evolução orgânica e o progresso da cultura”.
Sobre a Pré-História, qual das alternativas a seguir é incorreta?', 1),


('Pré historia', 2),
('Pré historia', 2),
('Pré historia', 2),
('Pré historia', 2),
('Pré historia', 2),
('Pré historia', 2),
('Pré historia', 2),
('Pré historia', 2),
('Pré historia', 2),


('Pré historia', 3),
('Pré historia', 3),
('Pré historia', 3),
('Pré historia', 3),
('Pré historia', 3),
('Pré historia', 3),
('Pré historia', 3),
('Pré historia', 3),
('Pré historia', 3),

('Pré historia', 4),
('Pré historia', 4),
('Pré historia', 4),
('Pré historia', 4),
('Pré historia', 4),
('Pré historia', 4),
('Pré historia', 4),
('Pré historia', 4),
('Pré historia', 4),

drop table alternativa
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

drop table resposta
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