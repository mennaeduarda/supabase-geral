insert into Piloto (nome, nacionalidade, status_equipe)
values
('Ken Miles', 'Britânico', 'Ford/Shelby'),
('Carroll Shelby', 'Americano', 'Ford/Shelby'),
('Bruce McLaren', 'Neozelandês', 'Ford'),
('Chris Amon', 'Neozelandês', 'Ford'),
('Denny Hulme', 'Neozelandês', 'Ford');

select * from Piloto;

insert into Carro (modelo, numero_chassi, versao, motor_cilindrada)
values
('Ford GT40', 'GT40-MK1-001', 'MkI', 4.7),
('Ford GT40', 'GT40-MK2-001', 'MkII', 7.0),
('Ferrari 330 P3', '330P3-001', 'P3', 4.0),
('Shelby Cobra', 'COBRA-001', '289', 4.7);

select * from Carro;

insert into Corrida (nome, local, data, distancia_km, status)
values
('24 Horas de Daytona', 'Daytona, EUA', '1966-02-06', 24.00, 'Concluída'),
('12 Horas de Sebring', 'Sebring, EUA', '1966-03-26', 12.00, 'Concluída'),
('24 Horas de Le Mans', 'Le Mans, França', '1966-06-18', 24.00, 'Concluída');

select * from Corrida;

insert into Participacao (id_piloto, id_carro, id_corrida, posicao_largada, posicao_chegada)
values
(1, 2, 1, 1, 1),
(1, 2, 2, 1, 1),
(1, 2, 3, 2, 2),
(5, 2, 3, 2, 2),
(3, 2, 3, 4, 1),
(4, 2, 3, 4, 1);

select * from Participacao;

insert into Telemetria (id_participacao, hora_registro, velocidade_kmh, temp_freio_c, rpm)
values
(1, '10:15:00', 310.50, 420.00, 6800),
(2, '11:40:00', 295.30, 405.00, 6500),
(3, '14:20:00', 320.80, 430.00, 7000),
(5, '15:00:00', 318.10, 428.00, 6950);

select * from Telemetria;

insert into Problema_Mecanico (id_participacao, tipo, descricao, km_ocorrencia, resolvido)
values
(3, 'Porta', 'Problema no fechamento da porta durante a corrida', 120.50, true),
(3, 'Freio', 'Desgaste elevado no sistema de freios', 210.00, true),
(1, 'Motor', 'Oscilação de desempenho em alta rotação', 85.00, true);

select * from Problema_Mecanico;

insert into Problema_Mecanico (id_participacao, tipo, descricao, km_ocorrencia, resolvido)
values
(3, 'Porta', 'Problema no fechamento da porta durante a corrida', 120.50, true),
(3, 'Freio', 'Desgaste elevado no sistema de freios', 210.00, true),
(1, 'Motor', 'Oscilação de desempenho em alta rotação', 85.00, true);

select * from Problema_Mecanico;
