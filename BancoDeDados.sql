use master
go

create database viagempelotempo;
go

use viagempelotempo;
go

create table fase
(
	idfase int primary key identity(1,1),
	nome varchar(100)
);
go
insert into fase values
('Pré historia'),
('Idade Antiga'),
('Idade media '),
('Idade moderna'),
('Idade contemporanea')


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
----fase 1
('A Pré-História pode ser definida como: ', 1),
('Qual das alternativas abaixo apresenta as principais características do período da Pré-História conhecido como Paleolítico?', 1),
('Qual das alternativas abaixo apresenta importantes características do período da Pré-História conhecido como Neolítico?', 1),
('Qual das alternativas abaixo apresenta importantes características do período da Pré-História conhecido como Idade dos Metais?', 1),
('No Paleolítico (Idade da Pedra Lascada) destacou-se a arte rupestre. Qual das alternativas abaixo explica o que era a arte rupestre?', 1),
('Entre as principais mudanças ocorridas no período Neolítico podemos destacar:', 1),
('As marcas da presença humana no Período Paleolítico podem ser vistas até hoje:', 1),
('Nesse período, os grupos humanos viviam em estado natural, ou seja, integrados à natureza: coletavam frutos, grãos, raízes, pescavam e caçavam animais:', 1),
('“Já se afirmou ser a Pré-História uma continuação da História Natural, havendo uma analogia entre a evolução orgânica e o progresso da cultura”.Sobre a Pré-História, qual das alternativas a seguir é incorreta?', 1),
------fase 2
('Sobre a o sistema político-econômico na Idade Média (século V ao XV) é correto afirmar que', 2),
('Qual das alternativas abaixo aponta apenas os principais impostos e taxas que os servos deviam aos senhores feudais na Idade Média?', 2),
(' Sobre a economia medieval é correto afirmar que:', 2),
('Qual das alternativas abaixo aponta características da religião na Idade Média?', 2),
('Sobre a arte na Idade Média é correto afirmar que ', 2),
('Em relação à economia do Antigo Egito é correto afirmar que:', 2),
(' Dentre os povos da Antiguidade Oriental, um se destacou como de exímios navegadores e excelentes comerciantes. Eram os fenícios, cuja principal contribuição legada às civilizações posteriores foi o (a):', 2),
(' Na Antiguidade, durante o reinado de Ciro I (559-529 a.C.), os persas construíram um vasto império e governaram diferentes povos, adotando uma política que respeitava as diferenças culturais e religiosas. Esse modo de proceder está exemplificado no fato de
a.incorporarem a cultura sumeriana, especialmente os registros da nova Iíngua semítica em caracteres cuneiformes.
', 2),
(' "Quando diminuiu a ameaça persa, o ódio ao imperialismo ateniense cresceu particularmente entre os espartanos e seus aliados, que criaram (...) uma força militar terrestre, e se decidiram pela guerra por sentirem sua independência ameaçada pelo imperialismo de Atenas. A guerra representou o suicídio da Grécia das pólis independentes".
(Flavio de Campos e Renan Garcia Miranda, "Oficina de História - história integrada")
O texto apresenta:', 2),

------fase 3
('Sobre a o sistema político-econômico na Idade Média (século V ao XV) é correto afirmar que:', 3),
('Qual das alternativas abaixo aponta apenas os principais impostos e taxas que os servos deviam aos senhores feudais na Idade Média?', 3),
('Sobre a economia medieval é correto afirmar que:', 3),
('Qual das alternativas abaixo aponta características da religião na Idade Média?', 3),
('Sobre a arte na Idade Média é correto afirmar que:', 3),
('Uma das características a ser reconhecida no feudalismo europeu é:', 3),
('O islamismo, ideologia difundida a partir da Alta Idade Média, em que o poder político confunde-se com o poder religioso, era dotado de certa heterogeneidade, o que pode ser constatado na existência de seitas rivais como:', 3),
('Entre intelectuais católicos da Idade Média, dois tiveram grande destaque: um, no período da Alta Idade Média, e o outro, na Baixa Idade Média. Foram eles:', 3),
('Entre as grandes contribuições culturais que a Igreja Católica legou para a humanidade, está a arte sacra. Entre os principais exemplos de arte sacra, podemos destacar:', 3),
----fase 4
('O Absolutismo como forma de governo esteve presente na península Ibérica, na França e na Inglaterra, tendo impactado e influenciado as maiores economias de seu tempo. Seus pensadores mais conhecidos e suas teorias foram:',4),
('Acerca do Absolutismo na Inglaterra, NÃO é possível afirmar que:',4),
('A França no século XVI viveu mergulhada em uma instabilidade que envolvia aspecfitos políticos e religiosos, como foi exemplo o infame massacre da Noite de São Bartolofimeu, em 1572. Com a intenção de pacificar o país, o rei Henrique IV promulgou o Edito de Nantes pelo qual:',4),
('As reformas protestantes do princípio do século XVI, entre outros fatores, reagiam contra a. o pensamento humanista e permitiram uma ampla revisão administrativa e doutrinária da Igreja Católica',4),
('É comum referir-se ao calvinismo como a religião do capitalismo, pois essa crença a acreditava que o comércio das coisas sagradas, como os cargos eclesiásticos e as indulgências, traria benefícios para os fiéis e para a sociedade.',4),
('Se um homem não trabalhar, também não comerá.
Estas palavras de São Paulo, o Apóstolo, são mais condizentes com a ética do',4),
('Acerca do projeto de expansão marítima dos portugueses, que resultou na chegada às terras americanas no século XVI, é INCORRETO afirmar que',4),
('Em meio a grave conflito diplomático, em 1494, foi assinado o famoso Tratado de Tordesilhas para "dividir o mundo descoberto ou por descobrir" entre Portugal e Espanha. A partilha do mundo ultramarino, assegurada com esse acordo, garantia a Coroa portuguesa:',4),
('"O acúmulo de capitais, a modernização da agricultura, a disponibilidade de mão de obra e de recursos naturais e a força do puritanismo ajudam a explicar o pioneirismo da _________ na Revolução lndustrial".
BOULOS Jr, p.421
Das opções abaixo listadas, o país que melhor preenche o espaço acima é:',4),

-----fase 5
('A I Guerra Mundial (1914-1918) provocou mudanças importantes no mapa político da Europa. Entre essas, é correto apontar a',5),
('As relações internacionais no entre-guerras (1918-1939) foram marcadas por uma tentativa de criar um órgão internacional que teria como uma de suas funções evitar um novo conflito mundial. Essa organização ficou conhecida como:',5),
('obre a Segunda Revolução Industrial é INCORRETO afirmar que:',5),
('Sobre o Periodo Napoleônico é correto afirmar que:',5),
('Em 1804, Napoleão Bonaparte recebeu o título de Imperador, mediante um plebiscito. Durante sua cerimônia de coroação, ele retirou do Papa a coroa e colocou-a em sua cabeça com as próprias mãos. Esse gesto ousado representou',5),
('A ascensão de Napoleão Bonaparte ao poder na França representou:',5),
('Durante a década de 1930, enquanto a Alemanha, sob liderança nazista, armava-se e preparava-se para a Guerra, outros países aderiam à "política de apaziguamento", que',5),
('Espesso e perigoso, o Muro de Berlim separou bairros, cortou cemitérios ao meio e fechou entradas de igrejas. Existiu por 28 anos, durante os quais se estima que 125 pessoas morreram ao tentar transpô-Io. Sobre o Muro de Berlim, é correto afirmar que',5),
('Inúmeras foram as consequências da Crise de 29. Dos itens a seguir, assinale o que NÃO está relacionado a ela:',5)

go

select * from questao
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

---------------------------------------------- fase 2 -------- Idade antiga

---------questao 1
(10, '- Havia democracia na Idade Média, pois todos podiam escolher os reis e senhores feudais.', 0),
(10, 'O poder político e econômico estava todo concentrado nas mãos do clero católico, principalmente dos padres e monges.', 0),
(10, 'O poder era centralizado na figura do senhor feudal que, além do poder político, possuia os poderes econômico e jurídico.', 1),
(10, 'Com a formação das monarquias nacionais europeias na Idade Média, todo poder ficou concentrado nas mãos dos monarcas (reis), sendo que os senhores feudais ficaram sem nenhum poder nesta época.', 0),
---------questao 2
(11, 'Dízimo (10% da produção), corveia (trabalho de 3 a 4 dias nas terras do senhor feudal) e imposto sobre uso da água e esgoto', 0),
(11, 'Dízimo (10% da produção), imposto sobre o uso de armas dos cavaleiros e imposto e taxa pela circulação e uso de moedas.', 0),
(11, 'Imposto sobre a venda e compra de todas as mercadorias, imposto sobre os animais abatidos, imposto sobre o nascimento de filhos.', 0),
(11, 'Corveia (trabalho de 3 a 4 dias nas terras do senhor feudal), talha (metade da produção) e banalidades (taxas pagas pela utilização do moinho e forno do senhor feudal).', 1),
---------questao 3
(12, 'As moedas eram muito utilizadas, o artesanato era a base da economia medieval e as riquezas eram bem distribuídas entre todos os habitantes.', 0),
(12, 'A base era a agricultura, prevalecia o sistema de trocas de mercadorias (as moedas eram pouco utilizadas) e as relações comerciais com outras regiões e feudos era pequena.', 1),
(12, 'A pecuária era a base da economia, as terras tinham pouco valor econômico e não todos os integrantes da sociedade eram isentos de impostos.', 0),
(12, 'O artesanato era a base da economia, os servos recebiam salários dos senhores feudais e as terras estavam concentradas totalmente nas mãos da Igreja Católica.', 0),
---------questao 4
(13, 'Várias igrejas cristãs e protestantes atuavam na Europa Medieval.', 0),
(13, 'A Igreja Católica dominava na Europa Medieval, controlando a produção cultural e tendo grande influência sobre a vida espiritual das pessoas.', 1),
(13, 'As pessoas não davam importância à religião na Idade Média, sendo que grande parte da população era composta por ateus', 0),
(13, 'Embora monopolizasse a vida religiosa na Idade Média, a Igreja Católica era muito aberta aos avanços científicos e manifestações culturais diversas.', 0),
---------questao 5
(14, 'Na pintura, os temas religiosos predominaram, fruto da influência da Igreja Católica. Na arquitetura, prevaleceram dois estilos: românico e gótico.', 0),
(14, 'Busca da perfeição estética e enfoque nos temas mitológicos foram duas importantes características da arte medieval.', 0),
(14, 'A arte medieval recebeu grande influência da arte egípcia, sendo que o principal pintor medieval foi Leonardo da Vinci.', 0),
(14, 'A pintura rupestre foi a principal característica da arte na Idade Média.', 0),
---------questao 6
(15, 'por sua proximidade com o Mar Mediterrâneo era muito desenvolvido o comércio marítimo.', 0),
(15, 'o comércio de manufaturas egípcias abastecia outros povos do Mar Mediterrâneo.', 0),
(15, 'a agricultura dependia, em grande parte, das cheias do Rio Nilo.', 1),
(15, 'a criação de gado e a mineração eram os setores econômicos mais importantes. ', 0),
---------questao 7
(16, 'alfabeto fonético.', 1),
(16, 'organização estatal centralizada.', 0),
(16, '.formação de um exército e de uma marinha de guerra profissionais.', 0),
(16, 'religião monoteísta.', 0),
---------questao 8
(17, 'incorporarem a cultura sumeriana, especialmente os registros da nova Iíngua semítica em caracteres cuneiformes', 0),
(17, 'arregimentarem entre os caldeus, após a conquista da Babilônia, os sátrapas, administradores encarregados das províncias imperiais.', 0),
(17, 'libertarem os judeus cativos na Babilônia, que retornaram à Palestina e reconstruíram o templo de Salomão e o culto a Iavé.', 1),
(17, 'difundirem no Egito o culto de Ahura-Mazda, que, integrando-se às ideias religiosas egípcias, deu origem ao maniqueísmo.', 0),
---------questao 9
(18, 'as Guerras Médicas', 0),
(18, 'a Guerra do Peloponeso.', 1),
(18, 'a Guerra de Tróia. ', 0),
(18, 'a Primeira Guerra Púnica.', 0),
---------------------------------------------- fase 3 --------- Idade media
  
---------questao 1
(19, 'Havia democracia na Idade Média, pois todos podiam escolher os reis e senhores feudais.', 0),
(19, 'O poder político e econômico estava todo concentrado nas mãos do clero católico, principalmente dos padres e monges.', 0),
(19, 'O poder era centralizado na figura do senhor feudal que, além do poder político, possuia os poderes econômico e jurídico.', 1),
(19, 'Com a formação das monarquias nacionais europeias na Idade Média, todo poder ficou concentrado nas mãos dos monarcas (reis), sendo que os senhores feudais ficaram sem nenhum poder nesta época.', 0),
---------questao 2
(20, 'Dízimo (10% da produção), corveia (trabalho de 3 a 4 dias nas terras do senhor feudal) e imposto sobre uso da água e esgoto', 0),
(20, 'Dízimo (10% da produção), imposto sobre o uso de armas dos cavaleiros e imposto e taxa pela circulação e uso de moedas.', 0),
(20, 'Imposto sobre a venda e compra de todas as mercadorias, imposto sobre os animais abatidos, imposto sobre o nascimento de filhos', 0),
(20, 'Corveia (trabalho de 3 a 4 dias nas terras do senhor feudal), talha (metade da produção) e banalidades (taxas pagas pela utilização do moinho e forno do senhor feudal).', 1),
---------questao 3
(21, 'As moedas eram muito utilizadas, o artesanato era a base da economia medieval e as riquezas eram bem distribuídas entre todos os habitantes', 0),
(21, '- A base era a agricultura, prevalecia o sistema de trocas de mercadorias (as moedas eram pouco utilizadas) e as relações comerciais com outras regiões e feudos era pequena.', 1),
(21, 'A pecuária era a base da economia, as terras tinham pouco valor econômico e não todos os integrantes da sociedade eram isentos de impostos', 0),
(21, 'O artesanato era a base da economia, os servos recebiam salários dos senhores feudais e as terras estavam concentradas totalmente nas mãos da Igreja Católica', 0),
---------questao 4
(22, 'Várias igrejas cristãs e protestantes atuavam na Europa Medieval', 0),
(22, 'A Igreja Católica dominava na Europa Medieval, controlando a produção cultural e tendo grande influência sobre a vida espiritual das pessoas', 1),
(22, 'As pessoas não davam importância à religião na Idade Média, sendo que grande parte da população era composta por ateus.', 0),
(22, 'Embora monopolizasse a vida religiosa na Idade Média, a Igreja Católica era muito aberta aos avanços científicos e manifestações culturais diversas.', 0),
---------questao 5
(23, 'Na pintura, os temas religiosos predominaram, fruto da influência da Igreja Católica. Na arquitetura, prevaleceram dois estilos: românico e gótico.', 1),
(23, 'Busca da perfeição estética e enfoque nos temas mitológicos foram duas importantes características da arte medieval', 0),
(23, 'A arte medieval recebeu grande influência da arte egípcia, sendo que o principal pintor medieval foi Leonardo da Vinci.', 0),
(23, 'A pintura rupestre foi a principal característica da arte na Idade Média.', 0),
---------questao 6
(24, 'A sociedade feudal era semelhante ao sistema de castas', 0),
(24, 'Os ideais de honra e fidelidade vieram das instituições dos hunos.', 0),
(24, 'Vilões e servos estavam presos a várias obrigações, entre elas o pagamento anual de  capitação, talha e banalidades.', 1),
(24, 'A economia do feudo era dinâmica, estando voltada para o comércio dos feudos vizinhos', 0),
---------questao 7
(25, 'politeístas e monoteístas', 0),
(25, 'sunitas e xiitas', 1),
(25, 'cristãos e muezins', 0),
(25, 'sunitas e cristãos', 0),
---------questao 8
(26, 'São Paulo e São Boaventura', 0),
(26, 'Santo Jerônimo e São Benedito', 0),
(26, 'Santo Efigênio e São João Bosco', 0),
(26, 'Santo Agostinho e São Tomás de Aquino', 1),
---------questao 9
(27, 'as mesquitas e a pintura impressionista', 0),
(27, 'as catedrais góticas e o canto gregoriano', 1),
(27, 'as sinagogas e o talmude', 0),
(27, 'o yoga e a cabala', 0),
----------------------------------------------fase 4 ----------- Idade moderna
---------questao 1
(28, 'Havia democracia na Idade Média, pois todos podiam escolher os reis e senhores feudais.', 0),
(28, 'O poder político e econômico estava todo concentrado nas mãos do clero católico, principalmente dos padres e monges.', 0),
(28, 'O poder era centralizado na figura do senhor feudal que, além do poder político, possuia os poderes econômico e jurídico.', 1),
(28, 'Com a formação das monarquias nacionais europeias na Idade Média, todo poder ficou concentrado nas mãos dos monarcas (reis), sendo que os senhores feudais ficaram sem nenhum poder nesta época.', 0),
---------questao 2
(29, 'Dízimo (10% da produção), corveia (trabalho de 3 a 4 dias nas terras do senhor feudal) e imposto sobre uso da água e esgoto', 0),
(29, 'Dízimo (10% da produção), imposto sobre o uso de armas dos cavaleiros e imposto e taxa pela circulação e uso de moedas.', 0),
(29, 'Imposto sobre a venda e compra de todas as mercadorias, imposto sobre os animais abatidos, imposto sobre o nascimento de filhos', 0),
(29, 'Corveia (trabalho de 3 a 4 dias nas terras do senhor feudal), talha (metade da produção) e banalidades (taxas pagas pela utilização do moinho e forno do senhor feudal).', 1),
---------questao 3
(30, 'As moedas eram muito utilizadas, o artesanato era a base da economia medieval e as riquezas eram bem distribuídas entre todos os habitantes', 0),
(30, '- A base era a agricultura, prevalecia o sistema de trocas de mercadorias (as moedas eram pouco utilizadas) e as relações comerciais com outras regiões e feudos era pequena.', 1),
(30, 'A pecuária era a base da economia, as terras tinham pouco valor econômico e não todos os integrantes da sociedade eram isentos de impostos', 0),
(30, 'O artesanato era a base da economia, os servos recebiam salários dos senhores feudais e as terras estavam concentradas totalmente nas mãos da Igreja Católica', 0),
---------questao 4
(31, 'Várias igrejas cristãs e protestantes atuavam na Europa Medieval', 0),
(31, 'A Igreja Católica dominava na Europa Medieval, controlando a produção cultural e tendo grande influência sobre a vida espiritual das pessoas', 1),
(31, 'As pessoas não davam importância à religião na Idade Média, sendo que grande parte da população era composta por ateus.', 0),
(31, 'Embora monopolizasse a vida religiosa na Idade Média, a Igreja Católica era muito aberta aos avanços científicos e manifestações culturais diversas.', 0),
---------questao 5
(32, 'Na pintura, os temas religiosos predominaram, fruto da influência da Igreja Católica. Na arquitetura, prevaleceram dois estilos: românico e gótico.', 1),
(32, 'Busca da perfeição estética e enfoque nos temas mitológicos foram duas importantes características da arte medieval', 0),
(32, 'A arte medieval recebeu grande influência da arte egípcia, sendo que o principal pintor medieval foi Leonardo da Vinci.', 0),
(32, 'A pintura rupestre foi a principal característica da arte na Idade Média.', 0),
---------questao 6
(33, 'A sociedade feudal era semelhante ao sistema de castas', 0),
(33, 'Os ideais de honra e fidelidade vieram das instituições dos hunos.', 0),
(33, 'Vilões e servos estavam presos a várias obrigações, entre elas o pagamento anual de  capitação, talha e banalidades.', 1),
(33, 'A economia do feudo era dinâmica, estando voltada para o comércio dos feudos vizinhos', 0),
---------questao 7
(34, 'politeístas e monoteístas', 0),
(34, 'sunitas e xiitas', 1),
(34, 'cristãos e muezins', 0),
(34, 'sunitas e cristãos', 0),
---------questao 8
(35, 'São Paulo e São Boaventura', 0),
(35, 'Santo Jerônimo e São Benedito', 0),
(35, 'Santo Efigênio e São João Bosco', 0),
(35, 'Santo Agostinho e São Tomás de Aquino', 1),
---------questao 9
(36, 'as mesquitas e a pintura impressionista', 0),
(36, 'as catedrais góticas e o canto gregoriano', 1),
(36, 'as sinagogas e o talmude', 0),
(36, 'o yoga e a cabala', 0),

---------------------------------fase 5-----------idade comtemporanea
---------questao 1
(37, 'Havia democracia na Idade Média, pois todos podiam escolher os reis e senhores feudais.', 0),
(37, 'O poder político e econômico estava todo concentrado nas mãos do clero católico, principalmente dos padres e monges.', 0),
(37, 'O poder era centralizado na figura do senhor feudal que, além do poder político, possuia os poderes econômico e jurídico.', 1),
(37, 'Com a formação das monarquias nacionais europeias na Idade Média, todo poder ficou concentrado nas mãos dos monarcas (reis), sendo que os senhores feudais ficaram sem nenhum poder nesta época.', 0),
---------questao 2
(38, 'Dízimo (10% da produção), corveia (trabalho de 3 a 4 dias nas terras do senhor feudal) e imposto sobre uso da água e esgoto', 0),
(38, 'Dízimo (10% da produção), imposto sobre o uso de armas dos cavaleiros e imposto e taxa pela circulação e uso de moedas.', 0),
(38, 'Imposto sobre a venda e compra de todas as mercadorias, imposto sobre os animais abatidos, imposto sobre o nascimento de filhos', 0),
(38, 'Corveia (trabalho de 3 a 4 dias nas terras do senhor feudal), talha (metade da produção) e banalidades (taxas pagas pela utilização do moinho e forno do senhor feudal).', 1),
---------questao 3
(39, 'As moedas eram muito utilizadas, o artesanato era a base da economia medieval e as riquezas eram bem distribuídas entre todos os habitantes', 0),
(39, '- A base era a agricultura, prevalecia o sistema de trocas de mercadorias (as moedas eram pouco utilizadas) e as relações comerciais com outras regiões e feudos era pequena.', 1),
(39, 'A pecuária era a base da economia, as terras tinham pouco valor econômico e não todos os integrantes da sociedade eram isentos de impostos', 0),
(39, 'O artesanato era a base da economia, os servos recebiam salários dos senhores feudais e as terras estavam concentradas totalmente nas mãos da Igreja Católica', 0),
---------questao 4
(40, 'Várias igrejas cristãs e protestantes atuavam na Europa Medieval', 0),
(40, 'A Igreja Católica dominava na Europa Medieval, controlando a produção cultural e tendo grande influência sobre a vida espiritual das pessoas', 1),
(40, 'As pessoas não davam importância à religião na Idade Média, sendo que grande parte da população era composta por ateus.', 0),
(40, 'Embora monopolizasse a vida religiosa na Idade Média, a Igreja Católica era muito aberta aos avanços científicos e manifestações culturais diversas.', 0),
---------questao 5
(41, 'Na pintura, os temas religiosos predominaram, fruto da influência da Igreja Católica. Na arquitetura, prevaleceram dois estilos: românico e gótico.', 1),
(41, 'Busca da perfeição estética e enfoque nos temas mitológicos foram duas importantes características da arte medieval', 0),
(41, 'A arte medieval recebeu grande influência da arte egípcia, sendo que o principal pintor medieval foi Leonardo da Vinci.', 0),
(41, 'A pintura rupestre foi a principal característica da arte na Idade Média.', 0),
---------questao 6
(42, 'A sociedade feudal era semelhante ao sistema de castas', 0),
(42, 'Os ideais de honra e fidelidade vieram das instituições dos hunos.', 0),
(42, 'Vilões e servos estavam presos a várias obrigações, entre elas o pagamento anual de  capitação, talha e banalidades.', 1),
(42, 'A economia do feudo era dinâmica, estando voltada para o comércio dos feudos vizinhos', 0),
---------questao 7
(43, 'politeístas e monoteístas', 0),
(43, 'sunitas e xiitas', 1),
(43, 'cristãos e muezins', 0),
(43, 'sunitas e cristãos', 0),
---------questao 8
(44, 'São Paulo e São Boaventura', 0),
(44, 'Santo Jerônimo e São Benedito', 0),
(44, 'Santo Efigênio e São João Bosco', 0),
(44, 'Santo Agostinho e São Tomás de Aquino', 1),
---------questao 9
(45, 'as mesquitas e a pintura impressionista', 0),
(45, 'as catedrais góticas e o canto gregoriano', 1),
(45, 'as sinagogas e o talmude', 0),
(45, 'o yoga e a cabala', 0)   
  
select * from alternativa
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
