-- criação do banco
CREATE DATABASE empresa_tech;
USE empresa_tech;

-- tabela setores
CREATE TABLE setores (
id_setor INT PRIMARY KEY AUTO_INCREMENT,
nome_setor VARCHAR(50),
localizacao VARCHAR(30)
);

-- tabela funcionarios
CREATE TABLE funcionarios (
id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
nome_funcionario VARCHAR(80),
salario DECIMAL(8,2),
data_admissao DATE,
id_setor INT
);

-- inserindo setores
INSERT INTO setores (nome_setor, localizacao) VALUES
('Administrativo', '1º andar'),
('Financeiro', '2º andar'),
('Produção', 'Galpão A'),
('Limpeza' , 'Térreo');

select * from setores;

-- inserindo funcionários
INSERT INTO funcionarios (nome_funcionario, salario, data_admissao, id_setor) VALUES
('Carlos Silva', 3500.00, '2022-03-01', 1),
('Maria Souza', 4100.00, '2021-08-10', 2),
('João Lima', 2800.00, '2023-02-20', 3),
('Fernanda Alves', '3200', '2024-01-15', 4);

-- consulta
SELECT * FROM funcionarios
