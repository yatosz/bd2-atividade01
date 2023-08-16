create table equipe (
	id serial constraint pk_equipe primary key, 
	nome varchar(100)
);

create table campeonato (
	id serial constraint pk_campeonato primary key, 
	nome varchar(100)
);

create table equipeCampeonato (
  id serial constraint pk_equipeCampeonato primary key,
  idEquipe integer constraint fk_equipeCampeonato_equipe references Equipe(id),
  idCampeonato integer constraint fk_equipeCampeonato_campeonato references Campeonato(id),
  posicao integer
);

create table cidade (
	id serial constraint pk_cidade primary key, 
	nome varchar(100)
);

create table tecnico (
  id serial constraint pk_tecnico primary key,
  cpf varchar(100),
  nome varchar(50),
  idEquipe int constraint fk_tecnico_equipe references equipe(id),
  dataNascimento date
);

create table jogadorBrasileiro (
  id serial constraint pk_jogadorBrasileiro primary key,
  cpf varchar(14),
  nome varchar(50),
  posicao varchar(50),
  idEquipe int constraint fk_jogadorBrasileiro_equipe references equipe(id),
  salario decimal(15,2)
);

create table jogadorEstrangeiro (
  id serial constraint pk_jogadorEstrangeiro primary key,
  passaporte varchar(50),
  nome varchar(50),
  posicao varchar(50),
  idEquipe int constraint fk_jogadorBrasileiro_equipe references equipe(id),
  paisOrigem varchar(50),
  salario decimal(15,2)
);

create table paisesTecnicos (
  	idTecnico int constraint pk_fk_paisesTecnicos_tecnico references tecnico(id) primary key,
  	pais varchar(50)
);