-- 1. Buscar o nome e ano dos filmes
SELECT
	Nome,
	Ano
FROM
	Filmes

-- 2. Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT 
	Nome, 
	Ano
FROM
	Filmes
ORDER BY
	Ano ASC

-- 3. Buscar pelo filme De Volta Para o Futuro, trazendo nome, ano e a duração
SELECT 
	Nome,
	Ano,
	Duracao
FROM
	Filmes
WHERE
	Nome = 'De Volta para o Futuro'

-- 4. Buscar os filmes lançandos em 1997
SELECT
	*
FROM
	Filmes
WHERE
	Ano = 1997

-- 5. Buscar os filmes lançados após o ano 200
SELECT
	*
FROM
	Filmes
WHERE
	Ano >= 2000

-- 6. Buscar os filmes com a duracao maior que 100 e menor que 150, ordenado pela duracao em ordem crescente
SELECT
	*
FROM
	Filmes
WHERE 
	Duracao > 100 AND Duracao < 150
ORDER BY
	Duracao ASC

-- 7. Buscar a quantidade de filmes lançadas no ano, agrupando por ano ordenado pela duracao em ordem descrescentre
SELECT
	Ano,
	COUNT(*) Quantidade
FROM
	Filmes
GROUP BY
	ANO
ORDER BY
	COUNT(*) DESC

-- 8. Buscar os atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT
	*
FROM
	Atores
WHERE
	Genero = 'M'

-- 9. Buscar os atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT
	*
FROM
	Atores
WHERE
	Genero = 'F'
ORDER BY
	PrimeiroNome ASC

-- 10. Buscar o nome do filme e o gênero
SELECT
	Nome,
	Genero
FROM
	FilmesGenero
INNER JOIN
	Filmes ON IdFilme = Filmes.Id
INNER JOIN
	Generos ON IdGenero = Generos.Id

-- 11. Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT
	Nome,
	Genero
FROM
	FilmesGenero
INNER JOIN
	Filmes ON IdFilme = Filmes.Id
INNER JOIN
	Generos ON IdGenero = Generos.Id
WHERE
	Generos.Genero = 'Mistério'

-- 12. Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT
	Nome,
	PrimeiroNome,
	UltimoNome,
	Papel
FROM
	ElencoFilme
INNER JOIN
	Filmes ON IdFilme = Filmes.Id
INNER JOIN
	Atores ON IdAtor = Atores.Id
