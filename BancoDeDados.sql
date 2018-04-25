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
go
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
go
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
(4, 'O homem passou a cunhar moedas e desenvolveu um avan�ado sistema financeiro.', 0),
(4, 'Na Idade dos Metais, os homens da Pr�-Hist�ria inventaram v�rias m�quinas de ferro e bronze, fato que aumentou a produtividade de objetos manufaturados.', 0),
(4, 'O desenvolvimento de t�cnicas de fundir e moldar metais (cobre, ferro e bronze) trouxe muitos avan�os na vida cotidiana do homem pr�-hist�rico.', 1),
(4, 'Embora conhecessem as t�cnicas de fundi��o de metais, os homens deste per�odo continuaram a fazer ferramentas de ossos e pedras lascadas.', 0),
---------questao 5
(5, 'A arte rupestre era composta por representa��es gr�ficas (desenhos, s�mbolos, sinais) feitas em paredes de cavernas ou pedras pelos homens do per�odo Paleol�tico.', 1),
(5, 'Tipo de arte feita na Pr�-hist�ria que se baseava na pintura de quadros e escultura em madeira.', 0),
(5, 'Pinturas feitas com sangue de animais nas paredes das primeiras igrejas, que surgiram neste per�odo.', 0),
(5, 'Estilo art�stico desenvolvido na Pr�-Hist�ria onde os artistas podiam expor suas obras de arte em pequenos museus e galerias de arte.', 0),
---------questao 6
(6, 'o desenvolvimento de rituais religiosos, da organiza��o social e das artes;', 1),
(6, 'na escultura e na escrita', 0),
(6, 'na  religi�o e na escrita', 0),
(6, 'na escrita e na cultura', 0),
---------questao 7
(7, 'em  pinturas rupestres', 1),
(7, 'nas esculturas de bronze', 0),
(7, 'nas cavernas atrav�s das plantas locais', 0),
(7, 'nas esculturas encontradas nas margens dos rios antigos', 0),
---------questao 8
(8, 'Paleol�tico', 1),
(8, 'Neol�tico', 0),
(8, 'idade dos Metais', 0),
(8, 'povos americanos', 0),
---------questao 9
(9, 'V�rias ci�ncias auxiliam o estudo, como a Antropologia, a Arqueologia e a Qu�mica.', 0),
(9, 'A Pr�-Hist�ria pode ser dividida em Paleol�tico e Neol�tico, no que se refere ao processo t�cnico de trabalhar a pedra.', 0),
(9, 'c.	O Neol�tico apresentou um desenvolvimento art�stico diferente do Paleol�tico, atrav�s dos tra�os geom�tricos do desenho e da pintura.', 0),
(9, 'd.	Os primeiros seres semelhantes ao homem foram os Australopitecus e o Homem de Java que eram bem mais adaptados que o Homem de Neanderthal.', 1),

---------------------------------------------- fase 2 -------- imeprio romano

---------questao 1
(1, 'O sistema pol�tico era a democracia e a sociedade dividia-se em: nobres, comerciantes e escravos.', 0),
(1, 'O sistema pol�tico era a monarquia e a sociedade dividia-se em: patr�cios (nobres propriet�rios de terras ) e plebeus (comerciantes, artes�os e pequenos propriet�rios).', 1),
(1, 'O sistema pol�tico era o parlamentarismo e a sociedade dividia-se em: governadores, classe m�dia e camponeses.', 0),
(1, 'O sistema pol�tico era o presidencialismo e a sociedade dividia-se em: presidente, burguesia e servos.', 0),
---------questao 2
(2, 'Pol�tica promovida pelo imperador romano para arrecadar mais impostos, atrav�s da combran�a de taxas em atividades de lazer e sobre o com�rcio de p�o.', 0),
(2, 'Pol�tica dos reis romanos para aumentar o com�rcio de p�o e outros alimentos que utilizavam o trigo como mat�ria prima.', 0),
(2, 'Distribui��o de alimentos  e divers�o como forma do imperador agradar os mais pobres, diminuindo as tens�es sociais e evitando revoltas e conflitos em Roma', 1),
(2, 'Pol�tica promovida pelos senadores romanos com objetivo de proibir o circo e a venda ilegal de p�es em Roma.', 0),
---------questao 3
(3, 'Artes pl�sticas totalmente inovadora, realiza��o de Jogos Ol�mpicos e religi�o monote�sta (antes do cristianismo).', 0),
(3, 'Esculturas e pinturas inspiradas na arte eg�pcia, realiza��o de atividades culturais para toda popula��o e aus�ncia total de religi�o', 0),
(3, 'Valoriza��o da cultura africana, desvaloriza��o total da cultura grega e religi�o baseada nos elementos da natureza.', 0),
(3, 'Luta de gladiadores, esculturas inspiradas na arte grega, exist�ncia de mitos e religi�o polite�sta (antes do cristianismo).', 1),
---------questao 4
(4, 'O Imp�rio Romano entrou em crise porque todos os soldados romanos abandonaram seus postos e foram morar em cidades da �sia e �frica.', 0),
(4, 'A crise do Imp�rio Romano foi motivada pela corrup��o, baixos investimentos no ex�rcito, crise agr�cola e presen�a dos povos germ�nicos nas regi�es de fronteiras.', 1),
(4, 'A crise do Imp�rio Romano ocorreu em fun��o da invas�o de povos africanos.', 0),
(4, 'O Imp�rio Romano entrou em crise, pois os papas passaram a governar todas as prov�ncias romanas no s�culo V', 0),
---------questao 5
(5, 'O direito romano, presente at� os dias de hoje na cultura do Ocidente, assim como o latim, que deu origem a l�ngua portuguesa, francesa, italiana e espanhola.', 0),
(5, 'A religi�o polite�sta romana que at� hoje � predominante no mundo ocidental.', 0),
(5, 'As t�cnicas de constru��o de pir�mides e a Medicina, atrav�s do processo de mumifica��o de corpos.', 0),
(5, 'A l�ngua inglesa, a democracia e a educa��o voltada para as artes e cultura.', 0),
---------questao 6
(6, 'aumento da produ��o agr�cola, uma vez que os germ�nicos eram ex�mios agricultores.', 0),
(6, 'ruraliza��o da Europa, pois a popula��o fugia das invas�es e abrigava-se nas zonas rurais do Imp�rio', 1),
(6, 'fortalecimento do paganismo na Europa, uma vez que parte dos povos germ�nicos n�o era crist�', 0),
(6, 'desagrega��o do Imp�rio Romano do Oriente a partir da conquista de Constantinopla em 476 d.C. ', 0),
---------questao 7
(7, 'As tens�es geradas pelas conquistas se refletiram nas contendas pol�ticas, criaram um clima de constantes agita��es, promovendo desordens nas cidades.', 0),
(7, 'O ex�rcito entrou em crise e deixou de ser o ex�rcito de cidad�os propriet�rios de terras.', 0),
(7, 'O imp�rio romano come�ou a sofrer a terr�vel crise do trabalho escravo, base principal de sua riqueza.', 1),
(7, 'Os soldados perderam a confian�a no Estado e tornaram-se fi�is a seus generais, partilhando com eles os esp�lios de guerra.', 0),
---------questao 8
(8, 'foi consequ�ncia da crise econ�mica e da inseguran�a provocada pelas invas�es dos b�rbaros;', 1),
(8, 'foi a causa principal da falta de escravos;', 0),
(8, 'proporcionou ao Estado a oportunidade de cobrar mais eficientemente os impostos;', 0),
(8, 'incentivou o crescimento do com�rcio;', 0),
---------questao 9
(9, 'Lucius Quinctius Cincinnatus', 1),
(9, 'Lucius Cornelius Sulla', 0),
(9, 'Lucius Papirius Cursor', 0),
(9, 'Quintus Fabius Maximus Rullianus', 0),
---------------------------------------------- fase 3 --------- periodo feudal
---------questao 1
(1, 'Ele teve in�cio ainda no Imp�rio Romano, durante o governo do imperador Nero.', 0),
(1, 'Ele come�ou no s�culo XV, com o in�cio das conquistas mar�timas de Portugal e Espanha.', 0),
(1, 'Ele teve in�cio na �frica durante o s�culo V e espalhou-se pela �sia e Europa no s�culo VI.', 0),
(1, 'Ele come�ou a se formar na Europa no s�culo V, com a invas�o do Imp�rio Romano pelos povos germ�nicos.', 1),
---------questao 2
(2, 'Preval�ncia do trabalho assalariado; poder centralizado nas m�os do monarca; uso de moedas em todos os feudos', 0),
(2, 'Economia baseada na produ��o de mercadorias industrializadas; sistema de elei��es para a escolha dos governantes; preval�ncia do trabalho servil (dos servos).', 0),
(2, 'Poder descentralizado, feudo como principal unidade pol�tica, administrativa e econ�mica; preval�ncia do trabalho servil; agricultura como base da economia.', 1),
(2, 'Economia din�mica com muito contato comercial entre os feudos; poder nas m�os dos cavaleiros medievais, divis�o de terras igualit�rias para todos do feudo.', 0),
---------questao 3
(3, 'Ela era justa, pois todos possu�am os mesmo direitos e deveres.', 0),
(3, 'Ela era din�mica, pois era muito f�cil uma pessoa passar de uma camada para outra superior.', 0),
(3, 'A maior parte da sociedade era composta por nobres (reis, senhores feudais, cavaleiros).', 0),
(3, 'Ela era hierarquizada e com pouca mobilidade social. Havia os que trabalhavam (servos camponeses), os que oravam (clero) e os que guerreavam (nobreza).', 1),
---------questao 4
(4, 'A base era a agricultura e as rela��es comerciais ocorriam, principalmente, atrav�s do sistema de trocas.', 1),
(4, 'A base era o artesanato e as rela��es comerciais ocorriam, principalmente, atrav�s do sistema monet�rio (uso de moedas).', 0),
(4, 'A economia era controlada pelos servos, que detinham quase toda a riqueza da Europa na �poca feudal', 0),
(4, 'A terra tinha pouco valor, pois o com�rcio era a base da economia feudal.', 0),
---------questao 5
(5, 'A Revolu��o Industrial do s�culo XVIII fez com que o feudalismo perde-se for�a em quase toda Europa.', 0),
(5, 'O renascimento comercial, impulsionado pelas Cruzadas, deu in�cio ao enfraquecimento do feudalismo no s�culo XII.', 1),
(5, 'A influ�ncia da Igreja Cat�lica na pol�tica foi a principal causa do enfraquecimento e fim do feudalismo', 0),
(5, 'A Reforma Protestante fez com que muitos senhores feudais abandonassem o poder, transferindo-o para os monarcas. ', 0),
---------questao 6
(6, 'A sociedade feudal era semelhante ao sistema de castas.', 0),
(6, 'Os ideais de honra e fidelidade vieram das institui��es dos hunos.', 0),
(6, 'Vil�es e servos estavam presos a v�rias obriga��es, entre elas, o pagamento anual de capita��o, talha e banalidades.', 1),
(6, 'A economia do feudo era din�mica, estando voltada para o com�rcio dos feudos vizinhos.', 0),
---------questao 7
(7, 'exist�ncia de legisla��o espec�fica a reger a vida de cada feudo', 0),
(7, 'atribui��o do poder executivo � igreja.', 0),
(7, 'rela��o direta entre posse e soberania dos feudos, fragmentando assim o poder central', 1),
(7, 'absoluta descentraliza��o administrativa', 0),
---------questao 8
(8, 'eram tentativas de os poderes eclesi�sticos controlarem as a��es da nobreza', 1),
(8, 'representaram uma pol�tica de toler�ncia religiosa com rela��o aos judeus e bizantinos.', 0),
(8, 'eram movimentos inspirados nas prega��es de S�o Francisco de Assis', 0),
(8, 'eram formas de rea��o �s a��es militares desenvolvidas na Pen�nsula Ib�rica', 0),
---------questao 9
(9, 'pelo patriarcalismo dos senhores, que deveriam defender e sustentar seus escravos', 0),
(9, 'pela predomin�ncia de uma atitude laica e humanista diante da vida e do mundo.', 0),
(9, 'pelas rela��es individualistas, geradas pelo desenvolvimento urbano e comercial', 0),
(9, 'pelo sentimento de inseguran�a e pessimismo diante de invas�es e epidemias', 1),
----------------------------------------------fase 4 ----------- Idade media
---------questao 1
(1, 'Havia democracia na Idade M�dia, pois todos podiam escolher os reis e senhores feudais.', 0),
(1, 'O poder pol�tico e econ�mico estava todo concentrado nas m�os do clero cat�lico, principalmente dos padres e monges.', 0),
(1, 'O poder era centralizado na figura do senhor feudal que, al�m do poder pol�tico, possuia os poderes econ�mico e jur�dico.', 1),
(1, 'Com a forma��o das monarquias nacionais europeias na Idade M�dia, todo poder ficou concentrado nas m�os dos monarcas (reis), sendo que os senhores feudais ficaram sem nenhum poder nesta �poca.', 0),
---------questao 2
(2, 'D�zimo (10% da produ��o), corveia (trabalho de 3 a 4 dias nas terras do senhor feudal) e imposto sobre uso da �gua e esgoto', 0),
(2, 'D�zimo (10% da produ��o), imposto sobre o uso de armas dos cavaleiros e imposto e taxa pela circula��o e uso de moedas.', 0),
(2, 'Imposto sobre a venda e compra de todas as mercadorias, imposto sobre os animais abatidos, imposto sobre o nascimento de filhos', 0),
(2, 'Corveia (trabalho de 3 a 4 dias nas terras do senhor feudal), talha (metade da produ��o) e banalidades (taxas pagas pela utiliza��o do moinho e forno do senhor feudal).', 1),
---------questao 3
(3, 'As moedas eram muito utilizadas, o artesanato era a base da economia medieval e as riquezas eram bem distribu�das entre todos os habitantes', 0),
(3, '- A base era a agricultura, prevalecia o sistema de trocas de mercadorias (as moedas eram pouco utilizadas) e as rela��es comerciais com outras regi�es e feudos era pequena.', 1),
(3, 'A pecu�ria era a base da economia, as terras tinham pouco valor econ�mico e n�o todos os integrantes da sociedade eram isentos de impostos', 0),
(3, 'O artesanato era a base da economia, os servos recebiam sal�rios dos senhores feudais e as terras estavam concentradas totalmente nas m�os da Igreja Cat�lica', 0),
---------questao 4
(4, 'V�rias igrejas crist�s e protestantes atuavam na Europa Medieval', 0),
(4, 'A Igreja Cat�lica dominava na Europa Medieval, controlando a produ��o cultural e tendo grande influ�ncia sobre a vida espiritual das pessoas', 1),
(4, 'As pessoas n�o davam import�ncia � religi�o na Idade M�dia, sendo que grande parte da popula��o era composta por ateus.', 0),
(4, 'Embora monopolizasse a vida religiosa na Idade M�dia, a Igreja Cat�lica era muito aberta aos avan�os cient�ficos e manifesta��es culturais diversas.', 0),
---------questao 5
(5, 'Na pintura, os temas religiosos predominaram, fruto da influ�ncia da Igreja Cat�lica. Na arquitetura, prevaleceram dois estilos: rom�nico e g�tico.', 1),
(5, 'Busca da perfei��o est�tica e enfoque nos temas mitol�gicos foram duas importantes caracter�sticas da arte medieval', 0),
(5, 'A arte medieval recebeu grande influ�ncia da arte eg�pcia, sendo que o principal pintor medieval foi Leonardo da Vinci.', 0),
(5, 'A pintura rupestre foi a principal caracter�stica da arte na Idade M�dia.', 0),
---------questao 6
(6, 'A sociedade feudal era semelhante ao sistema de castas', 0),
(6, 'Os ideais de honra e fidelidade vieram das institui��es dos hunos.', 0),
(6, 'Vil�es e servos estavam presos a v�rias obriga��es, entre elas o pagamento anual de  capita��o, talha e banalidades.', 1),
(6, 'A economia do feudo era din�mica, estando voltada para o com�rcio dos feudos vizinhos', 0),
---------questao 7
(7, 'polite�stas e monote�stas', 0),
(7, 'sunitas e xiitas', 1),
(7, 'crist�os e muezins', 0),
(7, 'sunitas e crist�os', 0),
---------questao 8
(8, 'S�o Paulo e S�o Boaventura', 0),
(8, 'Santo Jer�nimo e S�o Benedito', 0),
(8, 'Santo Efig�nio e S�o Jo�o Bosco', 0),
(8, 'Santo Agostinho e S�o Tom�s de Aquino', 1),
---------questao 9
(9, 'as mesquitas e a pintura impressionista', 0),
(9, 'as catedrais g�ticas e o canto gregoriano', 1),
(9, 'as sinagogas e o talmude', 0),
(9, 'o yoga e a cabala', 0)     

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
go
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
go
select * from alternativa

SELECT q.texto, a.texto FROM questao as q 
inner join alternativa as a on q.idquest = a.idquest;