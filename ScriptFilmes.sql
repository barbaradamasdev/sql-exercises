--1 - Buscar o nome e ano dos filmes
select nome, ano from filmes

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select nome, ano, duracao from filmes
order by ano

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select nome, ano, duracao from filmes
where nome = 'De Volta para o Futuro'

--4 - Buscar os filmes lançados em 1997
select nome, ano, duracao from filmes
where ano = 1997

--5 - Buscar os filmes lançados APÓS o ano 2000
select nome, ano, duracao from filmes
where ano > 2000

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select nome, ano, duracao from filmes
where duracao > 100 AND duracao < 150
order by duracao

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT ano, COUNT(ano) AS quantidade
FROM filmes
GROUP BY ano
ORDER BY quantidade DESC;

--8 - Buscar os Atores do gênero masculino
select id, primeiroNome, ultimoNome, genero from atores

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select id, primeiroNome, ultimoNome, genero from atores
where genero = 'F'
order by primeiroNome

--10 - Buscar o nome do filme e o gênero
select nome, genero from filmes
inner join generos on filmes.id = generos.id

--11 - Buscar o nome do filme e o gênero do tipo "Mistério"
select nome, genero from filmes
inner join generos on genero = 'Mistério'

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select filmes.nome, atores.primeironome, atores.ultimonome, elencofilme.papel 
from elencofilme
inner join atores on elencofilme.idator = atores.id
inner join filmes on elencofilme.idfilme = filmes.id