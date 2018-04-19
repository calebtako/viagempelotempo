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
('Pr� historia', 'Primeiro periodo historico do mundo.'),
('Imperio romano', 'Um dos maiores imperios j� existentes na historia.'),
('Periodo feudal', 'Caracterizado pela divis�o de terras.'),
('Idade media', 'Tambem chamado de idade das trevas.')

select * from fase

create table questao
(
	idquest int primary key identity(1,1),
	texto varchar(1000),
	idfase int references fase
);

insert into questao values
('A Pr�-Hist�ria pode ser definida como: ', 1),
('Qual das alternativas abaixo apresenta as principais caracter�sticas do per�odo da Pr�-Hist�ria conhecido como Paleol�tico?', 1),
('Qual das alternativas abaixo apresenta importantes caracter�sticas do per�odo da Pr�-Hist�ria conhecido como Neol�tico?', 1),
('Qual das alternativas abaixo apresenta importantes caracter�sticas do per�odo da Pr�-Hist�ria conhecido como Idade dos Metais?', 1),
('No Paleol�tico (Idade da Pedra Lascada) destacou-se a arte rupestre. Qual das alternativas abaixo explica o que era a arte rupestre?', 1),
('Entre as principais mudan�as ocorridas no per�odo Neol�tico podemos destacar:', 1),
('As marcas da presen�a humana no Per�odo Paleol�tico podem ser vistas at� hoje:', 1),
('Nesse per�odo, os grupos humanos viviam em estado natural, ou seja, integrados � natureza: coletavam frutos, gr�os, ra�zes, pescavam e ca�avam animais:', 1),
('�J� se afirmou ser a Pr�-Hist�ria uma continua��o da Hist�ria Natural, havendo uma analogia entre a evolu��o org�nica e o progresso da cultura�.
Sobre a Pr�-Hist�ria, qual das alternativas a seguir � incorreta?', 1),


('Qual das alternativas abaixo apresenta aspectos hist�ricos da pol�tica e sociedade no per�odo da Monarquia Romana?' 2),
('O que foi a pol�tica do p�o-e-circo durante o Imp�rio Romano?' 2),
('Qual das alternativas abaixo apresenta aspectos importantes da cultura e religi�o romana?' 2),
('Sobre a crise do Imp�rio Romano, � verdadeiro afirmar que:' 2),
('Qual das alternativas abaixo apresenta aspectos do legado romano para as civiliza��es posteriores?' 2),
('Aponte uma consequ�ncia direta que resultou do processo de invas�o germ�nica:' 2),
('Na hist�ria de Roma, o s�culo III da era crist� � considerado o s�culo das crises. Foi nesse per�odo que:' 2),
(' Sobre a ruraliza��o da economia ocorrida durante a crise do Imp�rio Romano, podemos afirmar que:' 2),
(' Qual dos seguintes � mais conhecido, enquanto ditador, pelas proscri��es a que recorreu?' 2),


('', 3),
('', 3),
('', 3),
('', 3),
('', 3),
('', 3),
('', 3),
('', 3),
('', 3),

('', 4),
('', 4),
('', 4),
('', 4),
('', 4),
('', 4),
('', 4),
('', 4),
('', 4),

drop table alternativa
(
	idalternativa int primary key identity(1,1),
	idquest int references questao,
	texto varchar(1000),
	correta bit
);
insert into alternativa values
(1, 'Pr� historia', 1),
(1, 'Pr� historia', 1),
(1, 'Pr� historia', 1),
(1, 'Pr� historia', 1),
(1, 'Pr� historia', 1),
(1, 'Pr� historia', 1),
(1, 'Pr� historia', 1),
(1, 'Pr� historia', 1),
(1, 'Pr� historia', 1),
(1, 'Pr� historia', 1),
(1, 'Pr� historia', 1),
(1, 'Pr� historia', 1),
(1, 'Pr� historia', 1),
(1, 'Pr� historia', 1),
(1, 'Pr� historia', 1),
(1, 'Pr� historia', 1),
(1, 'Pr� historia', 1),
(1, 'Pr� historia', 1),
(1, 'Pr� historia', 1),
(1, 'Pr� historia', 1),
(1, 'Pr� historia', 1),
(1, 'Pr� historia', 1),
(1, 'Pr� historia', 1),
(1, 'Pr� historia', 1),
(1, 'Pr� historia', 1),
(1, 'Pr� historia', 1),
(1, 'Pr� historia', 1),
(1, 'Pr� historia', 1),
(1, 'Pr� historia', 1),
(1, 'Pr� historia', 1),
(1, 'Pr� historia', 1),
(1, 'Pr� historia', 1),
(1, 'Pr� historia', 1),
(1, 'Pr� historia', 1),
(1, 'Pr� historia', 1),
(1, 'Pr� historia', 1),


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