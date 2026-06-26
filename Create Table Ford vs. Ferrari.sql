create table Piloto (
  id serial primary key,
  nome varchar(100) not null,
  nacionalidade varchar(50),
  status_equipe varchar(30)
);

create table Carro (
  id serial primary key,
  modelo varchar(50) not null,
  numero_chassi varchar(30) unique,
  versao varchar(20),
  motor_cilindrada decimal(4,1)
);

create table Corrida (
  id serial primary key,
  nome varchar(100) not null,
  local varchar(100),
  data date,
  distancia_km decimal(8,2),
  status varchar(20)
);

create table Participacao (
  id serial primary key,
  id_piloto int not null references Piloto(id),
  id_carro int not null references Carro(id),
  id_corrida int not null references Corrida(id),
  posicao_largada int,
  posicao_chegada int
);

create table Telemetria (
  id serial primary key,
  id_participacao int not null references Participacao(id),
  hora_registro time not null,
  velocidade_kmh decimal(6,2),
  temp_freio_c decimal(6,2),
  rpm int
);

create table Problema_Mecanico (
  id serial primary key,
  id_participacao int not null references Participacao(id),
  tipo varchar(50),
  descricao text,
  km_ocorrencia decimal(8,2),
  resolvido boolean default false
);

create table Decisao_Tecnica (
  id serial primary key,
  id_carro int not null references Carro(id),
  id_corrida int not null references Corrida(id),
  descricao text not null,
  responsavel varchar(100),
  aprovado_por varchar(100),
  data_hora timestamp
);
