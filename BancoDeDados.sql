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
('Pr� historia', 'Primeiro periodo historico do mundo.'),
('Imperio romano', 'Um dos maiores imperios j� existentes na historia.'),
('Periodo feudal', 'Caracterizado pela divis�o de terras.'),
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
('A Pr�-Hist�ria pode ser definida como: ', 1),
('Qual das alternativas abaixo apresenta as principais caracter�sticas do per�odo da Pr�-Hist�ria conhecido como Paleol�tico?', 1),
('Qual das alternativas abaixo apresenta importantes caracter�sticas do per�odo da Pr�-Hist�ria conhecido como Neol�tico?', 1),
('Qual das alternativas abaixo apresenta importantes caracter�sticas do per�odo da Pr�-Hist�ria conhecido como Idade dos Metais?', 1),
('No Paleol�tico (Idade da Pedra Lascada) destacou-se a arte rupestre. Qual das alternativas abaixo explica o que era a arte rupestre?', 1),
('Entre as principais mudan�as ocorridas no per�odo Neol�tico podemos destacar:', 1),
('As marcas da presen�a humana no Per�odo Paleol�tico podem ser vistas at� hoje:', 1),
('Nesse per�odo, os grupos humanos viviam em estado natural, ou seja, integrados � natureza: coletavam frutos, gr�os, ra�zes, pescavam e ca�avam animais:', 1),
('�J� se afirmou ser a Pr�-Hist�ria uma continua��o da Hist�ria Natural, havendo uma analogia entre a evolu��o org�nica e o progresso da cultura�.Sobre a Pr�-Hist�ria, qual das alternativas a seguir � incorreta?', 1),
('Qual das alternativas abaixo apresenta aspectos hist�ricos da pol�tica e sociedade no per�odo da Monarquia Romana?', 2),
('O que foi a pol�tica do p�o-e-circo durante o Imp�rio Romano?', 2),
('Qual das alternativas abaixo apresenta aspectos importantes da cultura e religi�o romana?', 2),
('Sobre a crise do Imp�rio Romano, � verdadeiro afirmar que:', 2),
('Qual das alternativas abaixo apresenta aspectos do legado romano para as civiliza��es posteriores?', 2),
('Aponte uma consequ�ncia direta que resultou do processo de invas�o germ�nica:', 2),
('Na hist�ria de Roma, o s�culo III da era crist� � considerado o s�culo das crises. Foi nesse per�odo que:', 2),
(' Sobre a ruraliza��o da economia ocorrida durante a crise do Imp�rio Romano, podemos afirmar que:', 2),
(' Qual dos seguintes � mais conhecido, enquanto ditador, pelas proscri��es a que recorreu?', 2),
('Sobre a origem do Feudalismo, � correto afirmar:', 3),
('Qual das alternativas abaixo apresenta caracter�sticas importantes do feudalismo?', 3),
('Sobre a sociedade feudal � correto afirmar que:', 3),
('Qual das alternativas abaixo apresenta importantes caracter�sticas da economia feudal?', 3),
('Qual das alternativas abaixo apresenta causas do enfraquecimento do feudalismo na Europa?', 3),
('Uma das caracter�sticas a ser reconhecida no feudalismo europeu �:', 3),
('Podemos definir o feudalismo, do ponto de vista econ�mico, como um sistema baseado na produ��o, tendente � autossufici�ncia, sendo a agricultura seu principal setor. Politicamente o feudalismo caracterizava-se pela:', 3),
('Sobre a Paz de Deus e a Tr�gua de Deus, estabelecidas a', 3),
('. No �mbito da vida sociocultural, a sociedade feudal', 3),
('Sobre a o sistema pol�tico-econ�mico na Idade M�dia (s�culo V ao XV) � correto afirmar que:', 4),
('Qual das alternativas abaixo aponta apenas os principais impostos e taxas que os servos deviam aos senhores feudais na Idade M�dia?', 4),
('Sobre a economia medieval � correto afirmar que:', 4),
('Qual das alternativas abaixo aponta caracter�sticas da religi�o na Idade M�dia?', 4),
('Sobre a arte na Idade M�dia � correto afirmar que:', 4),
('Uma das caracter�sticas a ser reconhecida no feudalismo europeu �:', 4),
('Entre intelectuais cat�licos da Idade M�dia, dois tiveram grande destaque: um, no per�odo da Alta Idade M�dia, e o outro, na Baixa Idade M�dia. Foram eles:', 4),
('Entre as grandes contribui��es culturais que a Igreja Cat�lica legou para a humanidade, est� a arte sacra. Entre os principais exemplos de arte sacra, podemos destacar:', 4),
('O islamismo, ideologia difundida a partir da Alta Idade M�dia, em que o poder pol�tico confunde-se com o poder religioso, era dotado de certa heterogeneidade, o que pode ser constatado na exist�ncia de seitas rivais como:', 4)
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
(1, 'O per�odo em que os Dinossauros dominaram o planeta.', 0),
(1, 'O per�odo anterior ao surgimento da escrita.', 1),
(1, 'O per�odo que vai do surgimento da escrita at� o in�cio da civiliza��o grega. ', 0),
(1, 'O per�odo em que o ser humano vivia em cavernas, ca�ava com peda�os de pedras e ossos e escrevia textos em blocos de pedras', 0),
---------questao 2
(2, 'Os homens praticavam a agricultura e domesticavam animais.', 0),
(2, 'Os homens viviam em casas, organizadas em vilas, o poder ficava nas m�os de um chefe.', 0),
(2, 'Os homens faziam artefatos (ferramentas, armas, utens�lios dom�sticos) de ferro e constru�am suas casas de madeira e argila.', 0),
(2, 'Os homens habitavam cavernas, viviam da ca�a de animais e coleta de vegetais, usavam instrumentos feitos com ossos e pedras lascadas.', 1),
---------questao 3
(3, 'O ser humano vivia em cavernas, ca�ava com peda�os de pedras e ossos e escrevia textos em blocos de argila.', 0),
(3, 'A religi�o estava bem desenvolvida e organizada, assim como o sistema pol�tico baseado na democracia.', 0),
(3, 'Neste per�odo ocorreu a sedentariza��o com a pr�tica da agricultura e a domestica��o de animais.', 1),
(3, 'Os seres humanos n�o falavam, apenas emitiam ru�dos para se comunicarem.', 0),
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