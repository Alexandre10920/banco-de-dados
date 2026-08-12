-- Criar banco de dados
CREATE DATABASE papelaria;

USE papelaria;

-- Criar tabela produtos
CREATE TABLE produtos (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50),
preco DECIMAL(10.2),
quantidade INT,
ativo BOOLEAN
);

-- Inserir registros
INSERT INTO produtos (nome, preco, quantidade, ativo)
VALUES 
('Caneta Azul', 2.50, 100, TRUE),
('Lápis', 1.20, 200, TRUE),
('Caderno', 15.00, 50, TRUE),
('Borracha', 0.5, 300, TRUE);

-- Consultar dados
SELECT nome, preco FROM produtos;
