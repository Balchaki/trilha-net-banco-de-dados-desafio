--1. Buscando nome e ano dos filmes cadastrados

SELECT 
	f.Nome, f.Ano 
FROM Filmes f 

--2. Buscando o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT 
	f.Nome, f.Ano 
FROM Filmes f 
ORDER BY f.Ano 

--3. Buscando pelo filme de volta para o futuro, trazendo o nome, ano e a duração

SELECT 
 f.Nome, f.Ano, f.Duracao 
FROM Filmes f 
WHERE f.Nome = upper('de volta para o futuro')

--4. Buscando os filmes lançados em 1997
SELECT 
 f.Nome, f.Ano, f.Duracao 
FROM Filmes f 
WHERE f.Ano = 1997

--5. Buscando os filmes lançados APÓS o ano 2000

SELECT 
 f.Nome, f.Ano, f.Duracao 
FROM Filmes f 
WHERE f.Ano > 2000

--6. Buscando os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT 
 f.Nome, f.Ano, f.Duracao 
FROM Filmes f 
WHERE f.Duracao > 100 AND f.Duracao < 150
ORDER BY f.Duracao 

--7. Buscando a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT
	f.Ano,
	COUNT(1) AS Quantidade
FROM
	Filmes f
GROUP BY
	f.Ano
ORDER BY
	Quantidade DESC
	
--8. Buscando os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

SELECT 
	a.PrimeiroNome,
	a.UltimoNome
FROM
	Atores a 
WHERE 
	a.Genero = 'M'
	
--9. Buscando os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
	
SELECT 
	a.PrimeiroNome,
	a.UltimoNome
FROM
	Atores a 
WHERE 
	a.Genero = 'F'
ORDER BY PrimeiroNome 

--10. Buscando o nome do filme e o gênero

SELECT 
	f.Nome,
	g.Genero
FROM
	Filmes f
JOIN 
	FilmesGenero fg ON
	fg.IdFilme = f.Id
JOIN Generos g ON
	fg.IdGenero = g.Id
	
--11. Buscando o nome do filme e o gênero do tipo "Mistério"

SELECT 
	f.Nome,
	g.Genero
FROM
	Filmes f
JOIN 
	FilmesGenero fg ON
	fg.IdFilme = f.Id
JOIN Generos g ON
	fg.IdGenero = g.Id
WHERE 
	g.Genero = 	'Mistério'
--12. Buscando o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
	
SELECT 
	f.Nome,
	a.PrimeiroNome,
	a.UltimoNome,
	ef.Papel 
FROM
	Filmes f
JOIN 
	ElencoFilme ef  ON
	ef.IdFilme = f.Id
JOIN Atores a   ON
	ef.IdAtor = a.Id 