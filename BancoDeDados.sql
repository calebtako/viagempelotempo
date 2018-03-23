create database viagempelotempo;
use viagempelotempo;

create table Fase
(
idFase int primary key identity(1,1),
nome varchar(100),
numerojogadores int ,
descricao varchar(500)
)

create table questao
(
idquest int primary key identity(1,1),
texto varchar(500),
IdFase int references Fase
)

create table alternativa
(
idresp int primary key identity(1,1),
texto varchar(500),
certa bit,
idquest int references questao
)

create table Jogador
(
imagem image,
idusuario int primary key identity(1,1),
nomeusuario varchar(24),
senha varchar(25),
nick varchar(20),
email varchar(150),
ranqsemana int,
ranqmes int
)

create table administrador
(
imagem image,
idusuario int primary key identity(1,1),
nomeusuario varchar(24),
senha varchar(25),
nick varchar(20),
email varchar(150),
ranqsemana int,
ranqmes int,
codadm int
)

create table resposta
(
idquestao int references questao,
idresp int references alternativa,
idusuario int references jogador,
constraint pk_quest_alt_usuar primary key (idquestao, idresp, idusuario)
)