CREATE DATABASE atividades_alter;

USE atividades_alter;

/* ============================================================
   TABELAS BASE PARA OS EXERCÍCIOS DE ALTER TABLE
   (NÃO ALTERE ESSA PARTE)
   ============================================================ */

CREATE TABLE pacientes (
    id_paciente VARCHAR(100),
    nome INT,
    data_nascimento VARCHAR(8),
    altura VARCHAR(5),         
    peso BOOLEAN               
);


CREATE TABLE veiculos_empresa (
    id_veiculo TEXT,
    placa DATE,
    modelo INT,
    ano VARCHAR(10),
    valor BOOLEAN 
);

CREATE TABLE contas_bancarias (
    numero_conta DATE,
    titular BOOLEAN, 
    saldo VARCHAR(15),    
    limite INT,        
    ativa VARCHAR(10)       
);

CREATE TABLE turmas (
    id_turma VARCHAR(20),
    nome BOOLEAN,
    carga_horaria VARCHAR(5), 
    sala INT,
    turno INT
);

CREATE TABLE reservas_sala (
    id_reserva VARCHAR(50),
    id_turma DATE,          
    data_reserva INT,       
    hora_inicio VARCHAR(10),
    observacao BOOLEAN      
);

alter table pacientes
modify column id_paciente int;

alter table pacientes
modify column nome varchar(100);

alter table pacientes
modify column data_nascimento date;

alter table pacientes
add column telefone varchar(20);

alter table pacientes
change column altura altura_metros decimal(4,2);

alter table veiculos_empresa
modify column placa CHAR(7);

alter table veiculos_empresa
modify column valor DECIMAL(10,2);

alter table veiculos_empresa
add column cor VARCHAR(30);

alter table veiculos_empresa
change column modelo modelo_veiculo  VARCHAR(60);

alter table contas_bancarias
modify column numero_conta CHAR(10);

alter table contas_bancarias
modify column saldo DECIMAL(10,2);

alter table contas_bancarias
add column data_abertura DATE;

alter table turmas
change column nome nome_turma VARCHAR(80);

alter table turmas
add column modalidade ENUM('presencial','online');

alter table reservas_sala
modify column data_reserva DATE;

alter table reservas_sala
modify column hora_inicio TIME;

alter table reservas_sala
drop column observacao;
