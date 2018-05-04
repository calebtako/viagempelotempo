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

go
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
(21, '-A base era a agricultura, prevalecia o sistema de trocas de mercadorias (as moedas eram pouco utilizadas) e as relações comerciais com outras regiões e feudos era pequena.', 1),
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
(28, 'Nicolau Maquiavel e sua teoria de que o indivíduo estava subordinado ao Estado; Thomas Hobbes, criador da teoria do Contrato; Jacques Bossuet e Jean Bodin, que defenderam que o Rei era um representante divino.', 1),
(28, 'Nicolau Maquiavel e a teoria do Contrato; Thomas Hobbes e a teoria da supremacia do Rei como representante divino; Jacques Bossuet e Jean Bodin, que defenderam a subordinação do indivíduo ao Estado.', 0),
(28, 'Maquiavel, Jacques Bossuet e Jean Bodin, cujas teorias só se diferenciaram na aplicabilidade teológica, bem como Thomas Hobbes, que preconizou o indivíduo como senhor de seus direitos.', 0),
(28, 'Maquiavel e Thomas Hobbes, que conceberam o Contrato Social, Jacques Bossuet, que estabeleceu o conceito de individualismo primordial, e Jean Bodin, que defendeu a primazia da esfera governamental.', 0),
---------questao 2
(29, 'Fortaleceu-se com a criação da Igreja Anglicana.', 0),
(29, 'Foi iniciado por Henrique VIII, da dinastia Tudor, e consolidado no longo reinado de sua filha Elizabeth I.', 0),
(29, 'O rei reinava mas não governava, a exemplo do que ocorreu durante toda a modernidade.', 1),
(29, 'Foi consequência da Guerra das Duas Rosas, que eliminou milhares de nobres e facilitou a consolidação da monarquia centralizada.', 0),
---------questao 3
(30, '.foi concedida liberdade de culto aos protestantes, bem como o direito de conservar algumas praças de guerra para sua defesa.', 1),
(30, 'o rei renunciou ao protestantismo e se fez batizar católico.', 0),
(30, 'revogou a liberdade de culto permitida aos franceses e impôs o catolicismo.', 0),
(30, 'o rei obteve o direito de nomear bispos e cardeais o que permitiu que a dinastia Bourbon pudesse exercer influência sobre a Igreja Católica.', 0),
---------questao 4
(31, 'o pensamento humanista e permitiram uma ampla revisão administrativa e doutrinária da Igreja Católica.', 0),
(31, 'a valorização, pela Igreja Católica, das atividades mercantis, do lucro e da ascensão da burguesia.', 0),
(31, 'as missões evangelizadoras, desenvolvidas pela Igreja Católica na América e na Ásia.', 0),
(31, 'a venda de indulgências e a autoridade do Papa, líder supremo da Igreja Católica.', 1),
---------questao 5
(32, 'a acreditava que o comércio das coisas sagradas, como os cargos eclesiásticos e as indulgências, traria benefícios para os fiéis e para a sociedade.', 0),
(32, 'defendia que o trabalho deveria ser valorizado, que o comércio não deveria ser condenado, além de concordar com a cobrança de juros.', 1),
(32, '.apresentava doutrina que relacionava a salvação eterna do fiel com a frequência aos cultos, com a presença da fé e das obras de caridade.', 0),
(32, 'preconizava o comércio como uma atividade voltada para o sagrado; assim, grande parte do lucro obtido deveria ser doado para os templos religiosos.', 0),
---------questao 6
(33, 'catolicismo medieval.', 0),
(33, 'protestantismo luterano.', 0),
(33, 'protestantismo calvinista.', 1),
(33, 'catolicismo da Contrarrefoma', 0),
---------questao 7
(34, 'atendia aos interesses de diversos grupos sociais e instituições, visto que era oferecida uma saída para a retração econômica que Portugal vivenciava.', 0),
(34, 'conquistou o apoio dos segmentos médios da sociedade portuguesa que, desejosos de encontrar novas fontes de renda, pretendiam mudar-se para as novas terras.', 1),
(34, 'recebeu o apoio financeiro da nobreza e da burguesia, interessadas na exploração de outras terras e na expansão do comércio.', 0),
(34, 'recebeu o apoio da Igreja que sonhava em conquistar novos fieis e empreender seu trabalho de catequese em territórios virgens', 0),
---------questao 8
(35, 'a conquista de Ceuta no norte da África, ponto comercial importante, visando ao abastecimento de produtos para o mercado português.', 0),
(35, 'a posse do Atlântico afro-brasileiro, dando continuidade a expansão lusa incentivada pelo rei D. João II, concretizada no reinado de D. Manuel.', 1),
(35, 'o controle sobre todo o continente sul-americano, onde os portugueses esperavam encontrar os metais preciosos, antes dos espanhóis.', 0),
(35, 'o desbravamento da região amazônica através de expedições, já que os portugueses acreditavam encontrar ali o tão sonhado Eldorado.', 0),
---------questao 9
(36, 'Alemanha', 0),
(36, 'Holanda', 0),
(36, 'Itália', 0),
(36, 'Inglaterra', 1),

---------------------------------fase 5-----------idade comtemporanea
---------questao 1
(37, 'devolução da Alsácia-Lorena, então com a Alemanha, para a França e a concessão de uma saída para o mar para a Polônia, criando o chamado Corredor Polonês.', 1),
(37, 'perda, pela Itália, da região de Trieste para a Iugoslávia, e a cessão, pela França, da região basca para a Espanha.', 0),
(37, 'anexação do norte da Bélgica pela França e o reconhecimento da independência da Grécia.', 0),
(37, 'incorporação de Montenegro ao território grego e a fragmentação do Reino Unido, com a independência do País de Gales.', 0),
---------questao 2
(38, 'Organização dos Estados Americanos (OEA).', 0),
(38, 'Sociedade das Nações ou Liga das Nações.', 1),
(38, 'Organização das Nações Unidas (ONU).', 0),
(38, 'Organização do Tratado do Atlântico Norte (OTAN)', 0),
---------questao 3
(39, 'implementou nas indústrias as linhas de montagens, esteiras rolantes e o método de racionalização da produção em massa, chamado de fordismo.', 0),
(39, 'possibilitou o desenvolvimento de grandes indústrias e concentrações econômicas, que culminaram nos "holdings", trustes e cartéis.', 0),
(39, 'a utilização da energia elétrica e do petróleo possibilitaram a intensificação do desenvolvimento tecnológico, permitindo a sua produção em grande escala.', 0),
(39, 'caracterizou-se pelos avanços ultra-rápidos, que resultaram na obsolescência também veloz especialmente na microeIetrônica, na robótica industrial, na química fina e na biotecnologia.', 1),
---------questao 4
(40, 'as campanhas napoleônicas apoiaram o movimento denominado Conjura dos Iguais e disseminaram os ideais do proletariado revolucionário francês.', 0),
(40, 'de uma maneira geral, pode ser apontado como o momento em que se consolidaram as instituições burguesas na França.', 1),
(40, 'Portugal, tradicional aliado da França, foi um dos primeiros países a aderir ao Bloqueio Continental em troca da ajuda na transferência da família real para a colônia Brasil', 0),
(40, 'o império foi marcado pelos acordos de paz com a Inglaterra. que via na França uma aliada na propaganda da mentalidade capitalista burguesa.', 0),
---------questao 5
(41, 'o rompimento entre a Igreja Católica Romana e o novo Estado Revolucionário Francês.', 0),
(41, 'que Napoleão estava assumindo todas as responsabilidades do Poder Moderador na França.', 0),
(41, 'que Napoleão, símbolo máximo da força da burguesia, considerava-se mais importante que a tradição da Igreja.', 1),
(41, 'a criação de uma religião de Estado, tendo como figura central o Imperador, a exemplo do Anglicanismo inglês.', 0),
---------questao 6
(42, 'a adoção de uma política de reconciliação, assegurando a paz interna e canalizando o furor revolucionário para as campanhas externas.', 1),
(42, 'o estabelecimento de um governo popular, garantindo a efetiva participação das massas na condução das coisas públicas.', 0),
(42, 'a busca de um equilíbrio de poder no continente europeu, através da celebração de uma série de alianças com as principais potências.', 0),
(42, 'o fim da política isolacionista até então mantida pelo governo francês, que possa a interferir diretamente nas questões europeias.', 0),
---------questao 7
(43, 'foi um pacote de ajuda econômica destinado a apoiar os países ameaçados pelo nazismo.', 0),
(43, 'consistia em ceder territórios à Alemanha a fIm de evitar a guerra.', 1),
(43, 'objetivava apoiar, financeiramente, o movimento comunista internacional para neutralizar o poder nazista.', 0),
(43, 'foi um acordo de não agressão pactuado entre germanos e soviéticos e apoiado pela maioria dos países europeus.', 0),
---------questao 8
(44, 'na noite de 29 de novembro de 1947, o governo da Alemanha Oriental conduziu sua construção.', 0),
(44, 'apesar de todo o aparato de segurança que ele continha, não impediu a fuga em massa de seus cidadãos.', 0),
(44, 'tornou-se o maior símbolo da Guerra Fria, pois dividia uma cidade nos dois sistemas econômico-ideológicos existentes.', 1),
(44, 'por ocasião do bloqueio ocorrido à cidade de Berlim (junho de 1948 a maio de 1949), seus acessos foram fechados.', 0),
---------questao 9
(45, 'vitória dos democratas com a eleição de Franklin Roosevelt para o governo dos Estados Unidos;', 0),
(45, 'agravamento da crise na Alemanha, facilitando a ascensão do nazismo ao poder;', 0),
(45, 'retração do comércio internacional e da produção industrial;', 0),
(45, 'crescimento econômico soviético em função da aplicação da NEP.', 1)   
  
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
