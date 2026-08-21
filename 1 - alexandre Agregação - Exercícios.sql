/* LISTA DE EXERCÍCIOS - AGREGAÇÃO SEM GROUP BY 
   Foco: COUNT, SUM, AVG, MIN, MAX com filtros (WHERE)
*/

-- 1. COUNT: Quantos filmes de 'Drama' existem no catálogo?
SELECT COUNT(*) AS total
FROM filmes
WHERE genero = 'Drama';

-- 2. SUM: Qual seria a receita total se alugássemos todos os filmes de 'Comédia' uma única vez?
SELECT SUM(preco_aluguel) AS receita_total
FROM filmes
WHERE genero = 'Comédia';

-- 3. AVG: Qual é a média de duração (em minutos) dos filmes do gênero 'Ficção e Fantasia'?
SELECT AVG(duracao) AS media_duracao
FROM filmes
WHERE genero = 'Ficção e Fantasia';

-- 4. MAX: Qual é o preço de aluguel mais caro entre os filmes lançados no ano de 2011?
SELECT MAX(preco_aluguel) AS preco_mais_caro
FROM filmes
WHERE ano_lancamento = 2011;

-- 5. MIN: Qual é o preço de aluguel mais barato entre os filmes do gênero 'Ação e Aventura'?
SELECT MIN(preco_aluguel) AS preco_mais_barato
FROM filmes
WHERE genero = 'Ação e Aventura';

-- 6. COUNT: Quantos clientes moram na região 'Sudeste'?
SELECT COUNT(*) AS total
FROM clientes
WHERE regiao = 'Sudeste';

-- 7. AVG: Qual é a média de preço de aluguel de todos os filmes lançados após o ano de 2010?
SELECT AVG(preco_aluguel) AS media_preco
FROM filmes
WHERE ano_lancamento > 2010;

-- 8. MIN: Qual é a data de nascimento do ator/atriz mais velho(a) registrado no banco?
SELECT MIN(data_nascimento) AS data_nascimento_mais_antiga
FROM atores;

-- 9. MAX: Qual é a data de nascimento do cliente mais jovem do sexo 'masculino'?
SELECT MAX(data_nascimento) AS data_nascimento_mais_recente
FROM clientes
WHERE sexo = 'Masculino';

-- 10. COUNT: Quantos alugueis receberam a nota máxima (10)?
SELECT COUNT(*) AS total
FROM alugueis
WHERE nota = 10;

-- 11. AVG: Qual é a média das notas dadas para o filme com id_filme = 5 (O Senhor dos Anéis)?
SELECT AVG(nota) AS media_nota
FROM alugueis
WHERE id_filme = 5
  AND nota IS NOT NULL;
  
-- 12. SUM: Quantos minutos no total levaria para assistir a todos os filmes de 'Mistério e Suspense' em sequência?
SELECT SUM(duracao) AS total_minutos
FROM filmes
WHERE genero = 'Mistério e Suspense';

-- 13. COUNT: Quantas atrizes (sexo feminino) nascidas nos EUA estão cadastradas?
SELECT COUNT(*) AS total
FROM atores
WHERE sexo = 'Feminino'
  AND nacionalidade = 'EUA';


-- 14. AVG: Qual é a média de preço dos filmes que têm duração maior que 150 minutos?
SELECT AVG(preco_aluguel) AS media_preco
FROM filmes
WHERE duracao > 150;

-- 15. COUNT: Quantos alugueis foram realizados no ano de 2018?
SELECT COUNT(*) AS total
FROM alugueis
WHERE YEAR(data_aluguel) = 2018;