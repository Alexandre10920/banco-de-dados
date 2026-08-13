create database GigaByteDBAlexandre;
use GigaByteDBAlexandre;

create table produtos (sku varchar(20) primary key,
 nome_produto varchar(100) not null,
 categoria varchar(50),
 preco decimal(10,2) not null,
 quantidade_estoque int not null default 0);

-- Relatório 1 (Marketing): "Flash Sale"
select * from produtos where categoria = 'Hardware' and quantidade_estoque > 0 order by preco asc limit 3;

-- Relatório 2 (Compras): "Auditoria de Estoque"
select nome_produto, sku from produtos where quantidade_estoque = 0;

-- Relatório 3 (Marketing): "Itens de Luxo"
select * from produtos order by preco desc limit 2;

-- Relatório 4 (Busca): "Itens Específicos"

select * from produtos where nome_produto like '%Placa%';

-- Relatório 5 (Finanças): "Produtos Mais Caros por Categoria"

select * from produtos where categoria = 'Periféricos' order by preco desc limit 3;