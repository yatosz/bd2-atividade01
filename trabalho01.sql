create table Equipe (id serial constraint pk_equipe primary key, nome varchar(100));

create table Campeonato (id serial constraint pk_campeonato primary key, nome varchar(100));

create table EquipeCampeonato (
  id serial constraint pk_equipeCampeonato primary key,
  idEquipe integer constraint fk_equipeCampeonato_equipe references Equipe(id),
  idCampeonato integer constraint fk_equipeCampeonato_campeonato references Campeonato(id),
  posicao integer
);

create table Cidade (id serial constraint pk_cidade primary key, nome varchar(100));
create table tecnico (
  id serial constraint pk_tecnico primary key,
  cpf varchar(100),
  nome varchar(50),
  idEquipe int constraint pk_tecnico_equipe references equipe(id),
  dataNascimento date
);

create table jogadorBrasileiro (
  id serial constraint pk_jogadorBrasileiro primary key,
  cpf varchar(14),
  nome varchar(50),
  posicao varchar(50),
  idEquipe int constraint pk_jogadorBrasileiro_equipe references equipe(id),
  salario decimal(15,2)
);

create table jogadorEstrangeiro (
  id serial constraint pk_jogadorEstrangeiro primary key,
  passaporte varchar(50),
  nome varchar(50),
  posicao varchar(50),
  idEquipe int constraint pk_jogadorBrasileiro_equipe references equipe(id),
  paisOrigem varchar(50),
  salario decimal(15,2)
);

create table paisesTecnicos (
  	idTecnico int constraint fk_paisesTecnicos_tecnico references tecnico primary key,
  	pais varchar(50)
);
insert into Equipe(nome) values('palmeiras');
insert into tecnico(cpf, nome, idequipe, datanascimento) values('1234567890123','Steven', 1, '2000-01-01');
insert into paisesTecnicos(idTecnico, pais) values(1, 'Brasil');