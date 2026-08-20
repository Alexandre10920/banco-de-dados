create database CineCode;

use CineCode;


create table clientes (
	id_cliente int primary key,
	nome_cliente varchar(60),
    estado varchar(45),
    regiao varchar(45),
    sexo varchar(10),
    data_nascimento date,
    data_conta date
	);
    
    create table filmes (
	id_filme int primary key,
	titulo varchar(60),
    genero varchar(45),
    duracao varchar(45),
    ano_lancamento int,
    preco_aluguel double
	);
    
    create table atore (
	id_ator int primary key,
	nome_ator varchar(60),
    sexo varchar(10),
    ano_nascimento date,
    nascionalidade varchar(20)
	);
    
    create table alugueis (
	id_aluguel varchar(45)  primary key,
	id_cliente int,
    id_filme int,
    nota double,
    data_aluguel date,
    
    foreign key (id_cliente)
		references clientes(id_cliente),
        
        foreign key (id_filme)
		references filmes(id_filme)
	);
    
    create table alugueis (
	id_protagonista int,
    id_filme int,
    id_ator int,
    
    foreign key (id_filme)
		references filmes(id_filmes),
        
        foreign key (id_ator)
		references atores(id_ator)
	);
    
    INSERT INTO clientes
(id_cliente, nome_cliente, estado, cidade, sexo, data_nascimento, data_registro)
VALUES
(1, 'Alexandre', 'SP', 'São Paulo', 'M', '2010-01-10', '2026-08-20'),
(2, 'João', 'RJ', 'Rio de Janeiro', 'M', '2008-05-15', '2026-08-20'),
(3, 'Maria', 'MG', 'Belo Horizonte', 'F', '2009-09-20', '2026-08-20');


INSERT INTO filmes
(id_filme, titulo, genero, duracao, ano_lancamento, preco_aluguel)
VALUES
(1, 'Interestelar', 'Ficção Científica', '169 min', 2014, 15.00);

INSERT INTO atores
(id_ator, nome_ator, ano_nascimento, nacionalidade, sexo)
VALUES
(1, 'Matthew McConaughey', '1969-11-04', 'Americana', 'M'),
(2, 'Anne Hathaway', '1982-11-12', 'Americana', 'F'),
(3, 'Jessica Chastain', '1977-03-24', 'Americana', 'F');


INSERT INTO atuacoes
(id_protagonista, id_filme, id_ator)
VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3);


INSERT INTO alugueis
(id_aluguel, id_cliente, id_filme, multa, data_aluguel)
VALUES
('AL001', 1, 1, 0.00, '2026-08-20'),
('AL002', 2, 1, 0.00, '2026-08-20');