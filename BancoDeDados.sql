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
go
insert into fase values
('Pré historia', 'Primeiro periodo historico do mundo.'),
('Imperio romano', 'Um dos maiores imperios já existentes na historia.'),
('Periodo feudal', 'Caracterizado pela divisão de terras.'),
('Idade media', 'Tambem chamado de idade das trevas.')

select * from fase
go
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
('“Já se afirmou ser a Pré-História uma continuação da História Natural, havendo uma analogia entre a evolução orgânica e o progresso da cultura”.Sobre a Pré-História, qual das alternativas a seguir é incorreta?', 1),
('Qual das alternativas abaixo apresenta aspectos históricos da política e sociedade no período da Monarquia Romana?', 2),
('O que foi a política do pão-e-circo durante o Império Romano?', 2),
('Qual das alternativas abaixo apresenta aspectos importantes da cultura e religião romana?', 2),
('Sobre a crise do Império Romano, é verdadeiro afirmar que:', 2),
('Qual das alternativas abaixo apresenta aspectos do legado romano para as civilizações posteriores?', 2),
('Aponte uma consequência direta que resultou do processo de invasão germânica:', 2),
('Na história de Roma, o século III da era cristã é considerado o século das crises. Foi nesse período que:', 2),
(' Sobre a ruralização da economia ocorrida durante a crise do Império Romano, podemos afirmar que:', 2),
(' Qual dos seguintes é mais conhecido, enquanto ditador, pelas proscrições a que recorreu?', 2),
('Sobre a origem do Feudalismo, é correto afirmar:', 3),
('Qual das alternativas abaixo apresenta características importantes do feudalismo?', 3),
('Sobre a sociedade feudal é correto afirmar que:', 3),
('Qual das alternativas abaixo apresenta importantes características da economia feudal?', 3),
('Qual das alternativas abaixo apresenta causas do enfraquecimento do feudalismo na Europa?', 3),
('Uma das características a ser reconhecida no feudalismo europeu é:', 3),
('Podemos definir o feudalismo, do ponto de vista econômico, como um sistema baseado na produção, tendente à autossuficiência, sendo a agricultura seu principal setor. Politicamente o feudalismo caracterizava-se pela:', 3),
('Sobre a Paz de Deus e a Trégua de Deus, estabelecidas a', 3),
('. No âmbito da vida sociocultural, a sociedade feudal', 3),
('Sobre a o sistema político-econômico na Idade Média (século V ao XV) é correto afirmar que:', 4),
('Qual das alternativas abaixo aponta apenas os principais impostos e taxas que os servos deviam aos senhores feudais na Idade Média?', 4),
('Sobre a economia medieval é correto afirmar que:', 4),
('Qual das alternativas abaixo aponta características da religião na Idade Média?', 4),
('Sobre a arte na Idade Média é correto afirmar que:', 4),
('Uma das características a ser reconhecida no feudalismo europeu é:', 4),
('Entre intelectuais católicos da Idade Média, dois tiveram grande destaque: um, no período da Alta Idade Média, e o outro, na Baixa Idade Média. Foram eles:', 4),
('Entre as grandes contribuições culturais que a Igreja Católica legou para a humanidade, está a arte sacra. Entre os principais exemplos de arte sacra, podemos destacar:', 4),
('O islamismo, ideologia difundida a partir da Alta Idade Média, em que o poder político confunde-se com o poder religioso, era dotado de certa heterogeneidade, o que pode ser constatado na existência de seitas rivais como:', 4)
go
create table alternativa
(
	idalternativa int primary key identity(1,1),
	idquest int references questao,
	texto varchar(1000),
	correta bit
);
insert into alternativa values
-------------------------- fase 1 ----------------- pre historia
---------questao 1
(1, 'O período em que os Dinossauros dominaram o planeta.', 0),
(1, 'O período anterior ao surgimento da escrita.', 1),
(1, 'O período que vai do surgimento da escrita até o início da civilização grega. ', 0),
(1, 'O período em que o ser humano vivia em cavernas, caçava com pedaços de pedras e ossos e escrevia textos em blocos de pedras', 0),
---------questao 2
(2, 'Os homens praticavam a agricultura e domesticavam animais.', 0),
(2, 'Os homens viviam em casas, organizadas em vilas, o poder ficava nas mãos de um chefe.', 0),
(2, 'Os homens faziam artefatos (ferramentas, armas, utensílios domésticos) de ferro e construíam suas casas de madeira e argila.', 0),
(2, 'Os homens habitavam cavernas, viviam da caça de animais e coleta de vegetais, usavam instrumentos feitos com ossos e pedras lascadas.', 1),
---------questao 3
(3, 'O ser humano vivia em cavernas, caçava com pedaços de pedras e ossos e escrevia textos em blocos de argila.', 0),
(3, 'A religião estava bem desenvolvida e organizada, assim como o sistema político baseado na democracia.', 0),
(3, 'Neste período ocorreu a sedentarização com a prática da agricultura e a domesticação de animais.', 1),
(3, 'Os seres humanos não falavam, apenas emitiam ruídos para se comunicarem.', 0),
---------questao 4
(4, '', 0),
(4, '', 0),
(4, '', 0),
(4, '', 0),
---------questao 5
(5, '', 0),
(5, '', 0),
(5, '', 0),
(5, '', 0),
---------questao 6
(6, '', 0),
(6, '', 0),
(6, '', 0),
(6, '', 0),
---------questao 7
(7, '', 0),
(7, '', 0),
(7, '', 0),
(7, '', 0),
---------questao 8
(8, '', 0),
(8, '', 0),
(8, '', 0),
(8, '', 0),
---------questao 9
(9, '', 0),
(9, '', 0),
(9, '', 0),
(9, '', 0),
---------------------------------------------- fase 2 -------- imeprio romano

---------questao 1
(1, '', 0),
(1, '', 0),
(1, '', 0),
(1, '', 0),
---------questao 2
(2, '', 0),
(2, '', 0),
(2, '', 0),
(2, '', 0),
---------questao 3
(3, '', 0),
(3, '', 0),
(3, '', 0),
(3, '', 0),
---------questao 4
(4, '', 0),
(4, '', 0),
(4, '', 0),
(4, '', 0),
---------questao 5
(5, '', 0),
(5, '', 0),
(5, '', 0),
(5, '', 0),
---------questao 6
(6, '', 0),
(6, '', 0),
(6, '', 0),
(6, '', 0),
---------questao 7
(7, '', 0),
(7, '', 0),
(7, '', 0),
(7, '', 0),
---------questao 8
(8, '', 0),
(8, '', 0),
(8, '', 0),
(8, '', 0),
---------questao 9
(9, '', 0),
(9, '', 0),
(9, '', 0),
(9, '', 0),
---------------------------------------------- fase 3 --------- periodo feudal
---------questao 1
(1, '', 0),
(1, '', 0),
(1, '', 0),
(1, '', 0),
---------questao 2
(2, '', 0),
(2, '', 0),
(2, '', 0),
(2, '', 0),
---------questao 3
(3, '', 0),
(3, '', 0),
(3, '', 0),
(3, '', 0),
---------questao 4
(4, '', 0),
(4, '', 0),
(4, '', 0),
(4, '', 0),
---------questao 5
(5, '', 0),
(5, '', 0),
(5, '', 0),
(5, '', 0),
---------questao 6
(6, '', 0),
(6, '', 0),
(6, '', 0),
(6, '', 0),
---------questao 7
(7, '', 0),
(7, '', 0),
(7, '', 0),
(7, '', 0),
---------questao 8
(8, '', 0),
(8, '', 0),
(8, '', 0),
(8, '', 0),
---------questao 9
(9, '', 0),
(9, '', 0),
(9, '', 0),
(9, '', 0),
----------------------------------------------fase 4 ----------- Idade media
---------questao 1
(1, '', 0),
(1, '', 0),
(1, '', 0),
(1, '', 0),
---------questao 2
(2, '', 0),
(2, '', 0),
(2, '', 0),
(2, '', 0),
---------questao 3
(3, '', 0),
(3, '', 0),
(3, '', 0),
(3, '', 0),
---------questao 4
(4, '', 0),
(4, '', 0),
(4, '', 0),
(4, '', 0),
---------questao 5
(5, '', 0),
(5, '', 0),
(5, '', 0),
(5, '', 0),
---------questao 6
(6, '', 0),
(6, '', 0),
(6, '', 0),
(6, '', 0),
---------questao 7
(7, '', 0),
(7, '', 0),
(7, '', 0),
(7, '', 0),
---------questao 8
(8, '', 0),
(8, '', 0),
(8, '', 0),
(8, '', 0),
---------questao 9
(9, '', 0),
(9, '', 0),
(9, '', 0),
(9, '', 0)     

go
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
go
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