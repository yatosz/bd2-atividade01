create table Equipe (id serial constraint pk_equipe primary key, nome varchar(100));
go
create table Campeonato (id serial constraint pk_campeonato primary key, nome varchar(100));
go
create table EquipeCampeonato (
  id serial constraint pk_equipeCampeonato primary key,
  idEquipe integer,
  idCampeonato integer,
  posicao integer
);
go
create table Cidade (id serial constraint pk_cidade primary key, nome varchar(100));
go
create table tecnico (
  id serial constraint pk_equipe primary key,
  cpf varchar(100),
  nome varchar(50),
  idEquipe int constraint pk_tecnico_equipe foreign key references equipe(id),
  dataNascimento date
);
go

create table jogadorBrasileiro (
  id serial constraint pk_jogadorBrasileiro primary key,
  cpf varchar(14),
  nome varchar(50),
  posicao varchar(50),
  idEquipe int constraint pk_jogadorBrasileiro_equipe foreign key references equipe(id),
  salario decimal(15,2)
);

create table jogadorEstrangeiro (
  id serial constraint pk_jogadorBrasileiro primary key,
  passaporte varchar(50),
  nome varchar(50),
  posicao varchar(50),
  idEquipe int constraint pk_jogadorBrasileiro_equipe foreign key references equipe(id),
  paisOrigem varchar(50),
  salario decimal(15,2)
);

create table paisesTecnicos (
  	idTecnico int constraint fk_paisesTecnicos_tecnico references tecnico,
  	pais varchar(50),
  	primary key (idTecnico)
 );
Paulo Henrique
moschenhenrique@hotmail.com

		insert into scientist (id, firstname, lastname) values (1, 'albert', 'einstein');
		insert into scientist (id, firstname, lastname) values (2, 'isaac', 'newton');
		insert into scientist (id, firstname, lastname) values (3, 'marie', 'curie');
		select * from scientist;