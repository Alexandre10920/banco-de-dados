drop database db_cineverse;
CREATE DATABASE db_cineverse;

USE db_cineverse;

CREATE TABLE midias (
	id_midia INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	genero VARCHAR(50),
	ano_lancamento INT,
	tipo VARCHAR(10)          
);

SELECT titulo, ano_lancamento
FROM midias
ORDER BY ano_lancamento DESC;

SELECT COUNT(*) AS quantidade
FROM midias
WHERE ano_lancamento = 1994;

SELECT *FROM midias
WHERE tipo = 'Filme'
AND genero LIKE '%Ficção Científica%';
  
SELECT *FROM midias
WHERE tipo = 'Série'
AND genero LIKE '%Crime%'
AND genero LIKE '%Drama%';

SELECT *
FROM midias
WHERE titulo LIKE 'O Senhor dos%';

SELECT *
FROM midias
WHERE tipo = 'Filme'
AND ano_lancamento < 1990;
  
UPDATE midias
SET genero = 'Comédia, Sitcom'
WHERE titulo = 'Friends';

UPDATE midias
SET genero = 'Animação, Musical'
WHERE titulo = 'O Rei Leão'
AND ano_lancamento = 1994;

DELETE FROM midias
WHERE titulo = 'Titanic';

DELETE FROM midias
WHERE ano_lancamento < 1985;

SELECT id_midia, titulo, tipo
FROM midias;