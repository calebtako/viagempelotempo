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
go
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
go
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
(4, 'O homem passou a cunhar moedas e desenvolveu um avançado sistema financeiro.', 0),
(4, 'Na Idade dos Metais, os homens da Pré-História inventaram várias máquinas de ferro e bronze, fato que aumentou a produtividade de objetos manufaturados.', 0),
(4, 'O desenvolvimento de técnicas de fundir e moldar metais (cobre, ferro e bronze) trouxe muitos avanços na vida cotidiana do homem pré-histórico.', 1),
(4, 'Embora conhecessem as técnicas de fundição de metais, os homens deste período continuaram a fazer ferramentas de ossos e pedras lascadas.', 0),
---------questao 5
(5, 'A arte rupestre era composta por representações gráficas (desenhos, símbolos, sinais) feitas em paredes de cavernas ou pedras pelos homens do período Paleolítico.', 1),
(5, 'Tipo de arte feita na Pré-história que se baseava na pintura de quadros e escultura em madeira.', 0),
(5, 'Pinturas feitas com sangue de animais nas paredes das primeiras igrejas, que surgiram neste período.', 0),
(5, 'Estilo artístico desenvolvido na Pré-História onde os artistas podiam expor suas obras de arte em pequenos museus e galerias de arte.', 0),
---------questao 6
(6, 'o desenvolvimento de rituais religiosos, da organização social e das artes;', 1),
(6, 'na escultura e na escrita', 0),
(6, 'na  religião e na escrita', 0),
(6, 'na escrita e na cultura', 0),
---------questao 7
(7, 'em  pinturas rupestres', 1),
(7, 'nas esculturas de bronze', 0),
(7, 'nas cavernas através das plantas locais', 0),
(7, 'nas esculturas encontradas nas margens dos rios antigos', 0),
---------questao 8
(8, 'Paleolítico', 1),
(8, 'Neolítico', 0),
(8, 'idade dos Metais', 0),
(8, 'povos americanos', 0),
---------questao 9
(9, 'Várias ciências auxiliam o estudo, como a Antropologia, a Arqueologia e a Química.', 0),
(9, 'A Pré-História pode ser dividida em Paleolítico e Neolítico, no que se refere ao processo técnico de trabalhar a pedra.', 0),
(9, 'c.	O Neolítico apresentou um desenvolvimento artístico diferente do Paleolítico, através dos traços geométricos do desenho e da pintura.', 0),
(9, 'd.	Os primeiros seres semelhantes ao homem foram os Australopitecus e o Homem de Java que eram bem mais adaptados que o Homem de Neanderthal.', 1),

---------------------------------------------- fase 2 -------- imeprio romano

---------questao 1
(1, 'O sistema político era a democracia e a sociedade dividia-se em: nobres, comerciantes e escravos.', 0),
(1, 'O sistema político era a monarquia e a sociedade dividia-se em: patrícios (nobres proprietários de terras ) e plebeus (comerciantes, artesãos e pequenos proprietários).', 1),
(1, 'O sistema político era o parlamentarismo e a sociedade dividia-se em: governadores, classe média e camponeses.', 0),
(1, 'O sistema político era o presidencialismo e a sociedade dividia-se em: presidente, burguesia e servos.', 0),
---------questao 2
(2, 'Política promovida pelo imperador romano para arrecadar mais impostos, através da combrança de taxas em atividades de lazer e sobre o comércio de pão.', 0),
(2, 'Política dos reis romanos para aumentar o comércio de pão e outros alimentos que utilizavam o trigo como matéria prima.', 0),
(2, 'Distribuição de alimentos  e diversão como forma do imperador agradar os mais pobres, diminuindo as tensões sociais e evitando revoltas e conflitos em Roma', 1),
(2, 'Política promovida pelos senadores romanos com objetivo de proibir o circo e a venda ilegal de pães em Roma.', 0),
---------questao 3
(3, 'Artes plásticas totalmente inovadora, realização de Jogos Olímpicos e religião monoteísta (antes do cristianismo).', 0),
(3, 'Esculturas e pinturas inspiradas na arte egípcia, realização de atividades culturais para toda população e ausência total de religião', 0),
(3, 'Valorização da cultura africana, desvalorização total da cultura grega e religião baseada nos elementos da natureza.', 0),
(3, 'Luta de gladiadores, esculturas inspiradas na arte grega, existência de mitos e religião politeísta (antes do cristianismo).', 1),
---------questao 4
(4, 'O Império Romano entrou em crise porque todos os soldados romanos abandonaram seus postos e foram morar em cidades da Ásia e África.', 0),
(4, 'A crise do Império Romano foi motivada pela corrupção, baixos investimentos no exército, crise agrícola e presença dos povos germânicos nas regiões de fronteiras.', 1),
(4, 'A crise do Império Romano ocorreu em função da invasão de povos africanos.', 0),
(4, 'O Império Romano entrou em crise, pois os papas passaram a governar todas as províncias romanas no século V', 0),
---------questao 5
(5, 'O direito romano, presente até os dias de hoje na cultura do Ocidente, assim como o latim, que deu origem a língua portuguesa, francesa, italiana e espanhola.', 0),
(5, 'A religião politeísta romana que até hoje é predominante no mundo ocidental.', 0),
(5, 'As técnicas de construção de pirâmides e a Medicina, através do processo de mumificação de corpos.', 0),
(5, 'A língua inglesa, a democracia e a educação voltada para as artes e cultura.', 0),
---------questao 6
(6, 'aumento da produção agrícola, uma vez que os germânicos eram exímios agricultores.', 0),
(6, 'ruralização da Europa, pois a população fugia das invasões e abrigava-se nas zonas rurais do Império', 1),
(6, 'fortalecimento do paganismo na Europa, uma vez que parte dos povos germânicos não era cristã', 0),
(6, 'desagregação do Império Romano do Oriente a partir da conquista de Constantinopla em 476 d.C. ', 0),
---------questao 7
(7, 'As tensões geradas pelas conquistas se refletiram nas contendas políticas, criaram um clima de constantes agitações, promovendo desordens nas cidades.', 0),
(7, 'O exército entrou em crise e deixou de ser o exército de cidadãos proprietários de terras.', 0),
(7, 'O império romano começou a sofrer a terrível crise do trabalho escravo, base principal de sua riqueza.', 1),
(7, 'Os soldados perderam a confiança no Estado e tornaram-se fiéis a seus generais, partilhando com eles os espólios de guerra.', 0),
---------questao 8
(8, 'foi consequência da crise econômica e da insegurança provocada pelas invasões dos bárbaros;', 1),
(8, 'foi a causa principal da falta de escravos;', 0),
(8, 'proporcionou ao Estado a oportunidade de cobrar mais eficientemente os impostos;', 0),
(8, 'incentivou o crescimento do comércio;', 0),
---------questao 9
(9, 'Lucius Quinctius Cincinnatus', 1),
(9, 'Lucius Cornelius Sulla', 0),
(9, 'Lucius Papirius Cursor', 0),
(9, 'Quintus Fabius Maximus Rullianus', 0),
---------------------------------------------- fase 3 --------- periodo feudal
---------questao 1
(1, 'Ele teve início ainda no Império Romano, durante o governo do imperador Nero.', 0),
(1, 'Ele começou no século XV, com o início das conquistas marítimas de Portugal e Espanha.', 0),
(1, 'Ele teve início na África durante o século V e espalhou-se pela Ásia e Europa no século VI.', 0),
(1, 'Ele começou a se formar na Europa no século V, com a invasão do Império Romano pelos povos germânicos.', 1),
---------questao 2
(2, 'Prevalência do trabalho assalariado; poder centralizado nas mãos do monarca; uso de moedas em todos os feudos', 0),
(2, 'Economia baseada na produção de mercadorias industrializadas; sistema de eleições para a escolha dos governantes; prevalência do trabalho servil (dos servos).', 0),
(2, 'Poder descentralizado, feudo como principal unidade política, administrativa e econômica; prevalência do trabalho servil; agricultura como base da economia.', 1),
(2, 'Economia dinâmica com muito contato comercial entre os feudos; poder nas mãos dos cavaleiros medievais, divisão de terras igualitárias para todos do feudo.', 0),
---------questao 3
(3, 'Ela era justa, pois todos possuíam os mesmo direitos e deveres.', 0),
(3, 'Ela era dinâmica, pois era muito fácil uma pessoa passar de uma camada para outra superior.', 0),
(3, 'A maior parte da sociedade era composta por nobres (reis, senhores feudais, cavaleiros).', 0),
(3, 'Ela era hierarquizada e com pouca mobilidade social. Havia os que trabalhavam (servos camponeses), os que oravam (clero) e os que guerreavam (nobreza).', 1),
---------questao 4
(4, 'A base era a agricultura e as relações comerciais ocorriam, principalmente, através do sistema de trocas.', 1),
(4, 'A base era o artesanato e as relações comerciais ocorriam, principalmente, através do sistema monetário (uso de moedas).', 0),
(4, 'A economia era controlada pelos servos, que detinham quase toda a riqueza da Europa na época feudal', 0),
(4, 'A terra tinha pouco valor, pois o comércio era a base da economia feudal.', 0),
---------questao 5
(5, 'A Revolução Industrial do século XVIII fez com que o feudalismo perde-se força em quase toda Europa.', 0),
(5, 'O renascimento comercial, impulsionado pelas Cruzadas, deu início ao enfraquecimento do feudalismo no século XII.', 1),
(5, 'A influência da Igreja Católica na política foi a principal causa do enfraquecimento e fim do feudalismo', 0),
(5, 'A Reforma Protestante fez com que muitos senhores feudais abandonassem o poder, transferindo-o para os monarcas. ', 0),
---------questao 6
(6, 'A sociedade feudal era semelhante ao sistema de castas.', 0),
(6, 'Os ideais de honra e fidelidade vieram das instituições dos hunos.', 0),
(6, 'Vilões e servos estavam presos a várias obrigações, entre elas, o pagamento anual de capitação, talha e banalidades.', 1),
(6, 'A economia do feudo era dinâmica, estando voltada para o comércio dos feudos vizinhos.', 0),
---------questao 7
(7, 'existência de legislação específica a reger a vida de cada feudo', 0),
(7, 'atribuição do poder executivo à igreja.', 0),
(7, 'relação direta entre posse e soberania dos feudos, fragmentando assim o poder central', 1),
(7, 'absoluta descentralização administrativa', 0),
---------questao 8
(8, 'eram tentativas de os poderes eclesiásticos controlarem as ações da nobreza', 1),
(8, 'representaram uma política de tolerância religiosa com relação aos judeus e bizantinos.', 0),
(8, 'eram movimentos inspirados nas pregações de São Francisco de Assis', 0),
(8, 'eram formas de reação às ações militares desenvolvidas na Península Ibérica', 0),
---------questao 9
(9, 'pelo patriarcalismo dos senhores, que deveriam defender e sustentar seus escravos', 0),
(9, 'pela predominância de uma atitude laica e humanista diante da vida e do mundo.', 0),
(9, 'pelas relações individualistas, geradas pelo desenvolvimento urbano e comercial', 0),
(9, 'pelo sentimento de insegurança e pessimismo diante de invasões e epidemias', 1),
----------------------------------------------fase 4 ----------- Idade media
---------questao 1
(1, 'Havia democracia na Idade Média, pois todos podiam escolher os reis e senhores feudais.', 0),
(1, 'O poder político e econômico estava todo concentrado nas mãos do clero católico, principalmente dos padres e monges.', 0),
(1, 'O poder era centralizado na figura do senhor feudal que, além do poder político, possuia os poderes econômico e jurídico.', 1),
(1, 'Com a formação das monarquias nacionais europeias na Idade Média, todo poder ficou concentrado nas mãos dos monarcas (reis), sendo que os senhores feudais ficaram sem nenhum poder nesta época.', 0),
---------questao 2
(2, 'Dízimo (10% da produção), corveia (trabalho de 3 a 4 dias nas terras do senhor feudal) e imposto sobre uso da água e esgoto', 0),
(2, 'Dízimo (10% da produção), imposto sobre o uso de armas dos cavaleiros e imposto e taxa pela circulação e uso de moedas.', 0),
(2, 'Imposto sobre a venda e compra de todas as mercadorias, imposto sobre os animais abatidos, imposto sobre o nascimento de filhos', 0),
(2, 'Corveia (trabalho de 3 a 4 dias nas terras do senhor feudal), talha (metade da produção) e banalidades (taxas pagas pela utilização do moinho e forno do senhor feudal).', 1),
---------questao 3
(3, 'As moedas eram muito utilizadas, o artesanato era a base da economia medieval e as riquezas eram bem distribuídas entre todos os habitantes', 0),
(3, '- A base era a agricultura, prevalecia o sistema de trocas de mercadorias (as moedas eram pouco utilizadas) e as relações comerciais com outras regiões e feudos era pequena.', 1),
(3, 'A pecuária era a base da economia, as terras tinham pouco valor econômico e não todos os integrantes da sociedade eram isentos de impostos', 0),
(3, 'O artesanato era a base da economia, os servos recebiam salários dos senhores feudais e as terras estavam concentradas totalmente nas mãos da Igreja Católica', 0),
---------questao 4
(4, 'Várias igrejas cristãs e protestantes atuavam na Europa Medieval', 0),
(4, 'A Igreja Católica dominava na Europa Medieval, controlando a produção cultural e tendo grande influência sobre a vida espiritual das pessoas', 1),
(4, 'As pessoas não davam importância à religião na Idade Média, sendo que grande parte da população era composta por ateus.', 0),
(4, 'Embora monopolizasse a vida religiosa na Idade Média, a Igreja Católica era muito aberta aos avanços científicos e manifestações culturais diversas.', 0),
---------questao 5
(5, 'Na pintura, os temas religiosos predominaram, fruto da influência da Igreja Católica. Na arquitetura, prevaleceram dois estilos: românico e gótico.', 1),
(5, 'Busca da perfeição estética e enfoque nos temas mitológicos foram duas importantes características da arte medieval', 0),
(5, 'A arte medieval recebeu grande influência da arte egípcia, sendo que o principal pintor medieval foi Leonardo da Vinci.', 0),
(5, 'A pintura rupestre foi a principal característica da arte na Idade Média.', 0),
---------questao 6
(6, 'A sociedade feudal era semelhante ao sistema de castas', 0),
(6, 'Os ideais de honra e fidelidade vieram das instituições dos hunos.', 0),
(6, 'Vilões e servos estavam presos a várias obrigações, entre elas o pagamento anual de  capitação, talha e banalidades.', 1),
(6, 'A economia do feudo era dinâmica, estando voltada para o comércio dos feudos vizinhos', 0),
---------questao 7
(7, 'politeístas e monoteístas', 0),
(7, 'sunitas e xiitas', 1),
(7, 'cristãos e muezins', 0),
(7, 'sunitas e cristãos', 0),
---------questao 8
(8, 'São Paulo e São Boaventura', 0),
(8, 'Santo Jerônimo e São Benedito', 0),
(8, 'Santo Efigênio e São João Bosco', 0),
(8, 'Santo Agostinho e São Tomás de Aquino', 1),
---------questao 9
(9, 'as mesquitas e a pintura impressionista', 0),
(9, 'as catedrais góticas e o canto gregoriano', 1),
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