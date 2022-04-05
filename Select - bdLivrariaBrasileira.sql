USE bdLivrariaBrasileira
SELECT*FROM bdLivrariaBrasileira

--a) O total de livros que começam com a letra P
SELECT nomeLivro FROM tbLivro
WHERE  nomeLivro LIKE 'P%'

--b) O maior número de páginas entre todos os livros
SELECT MAX (numPagina)AS 'Maior numero de paginas' FROM bdLivrariaBrasileira

--c) O menor número de páginas entre todos os livros
SELECT MIN (numPagina)AS 'Menor numero de paginas' FROM bdLivrariaBrasileira

--d) A média de páginas entre todos os livros
SELECT AVG (numPagina) FROM tbLivro

--e) A soma do número de páginas dos livros de editora código 01
SELECT SUM (numPagina) FROM tbLivro
WHERE codEditora = 1

--f) A soma dos números de páginas dos livros que começam com a letra A
SELECT SUM (numPagina) FROM tbLivro
WHERE nomeLivro LIKE 'A%'

--g) A média dos números de páginas dos livros que sejam do autor código 03
SELECT AVG (numPagina) FROM tbLivro
WHERE codAutor = 3

--h) A quantidade de livros da editora de código 04
SELECT COUNT (codLivro) FROM tbLivro
WHERE codEditora = 4

--i) A média do número de páginas dos livros que tenham a palavra “estrela” em seu nome
SELECT AVG (numPagina) FROM tbLivro
WHERE nomeLivro LIKE '%Estrela%'

--j) A quantidade de livros que tenham a palavra “poema” em seu nome
SELECT COUNT (codLivro) FROM tbLivro
WHERE nomeLivro LIKE '%Poema%'

--k) A quantidade de livros agrupado pelo nome do gênero
SELECT COUNT tblivro.nomeLivro, 
tbGenero.nomeGenero FROM tbLivro
CROSS JOIN tbGenero

--l) A soma das páginas agrupada pelo nome do autor
SELECT SUM tbLivro.numPaginas, 
tbAutor.nomeAutor FROM tbLivro
CROSS JOIN tbAutor

--m) A média de páginas agrupada pelo nome do autor em ordem alfabética (de A a Z)


--n) A quantidade de livros agrupada pelo nome da editora em ordem alfabética inversa (de Z a A)


--o) A soma de páginas dos livros agrupados pelo nome do autor que sejam de autores cujo nome comece com a letra “C”
SELECT SUM tbLivro.numPaginas, 
tbAutor.nomeAutor FROM tbLivro
CROSS JOIN tbAutor
WHERE nomeAutor LIKE 'C%'

--p) A quantidade de livros agrupados pelo nome do autor, cujo nome do autor seja “Machado de Assis” ou “Cora Coralina” ou “Graciliano Ramos” ou “Clarice Lispector”
SELECT COUNT tbLivro.nomeLivro,
tbAutor.nomeAutor FROM tbLivro
CROSS JOIN tbAutor
WHERE nomeAutor LIKE '%Machado de Assis%' OR '%Cora Coralina%' OR '%Graciliano Ramos%' OR '%Clarice Lispector%'

--q) A soma das páginas dos livros agrupadas pelo nome da editora cujo número de páginas esteja entre 200 e 500 (inclusive)
SELECT SUM tbLivro.numPaginas, 
tbEditora.nomeEditora FROM tbLivro
CROSS JOIN tbEditora
WHERE numPaginas BETWEEN '200' AND '500'

--r) O nome dos livros ao lado do nome das editoras e do nome dos autores
SELECT tbLivro.nomeLivro,
tbEditora.NomeEditora, tbAutor.nomeAutor FROM tbLivro
CROSS JOIN tbAutor, tbEditora

--s) O nome dos livros ao lado do nome do autor somente daqueles cujo nome da editora for “Cia das Letras”
SELECT tbLivro.nomeLivro, 
tbAutor.nomeAutor FROM tbLivro
CROSS JOIN tbAutor, tbEditora
WHERE nomeEditora LIKE '%Cia das Letras%'

--t) O nome dos livros ao lado dos nomes dos autores, somente dos livros que não forem do autor “Érico Veríssimo”
SELECT tbLivro.nomeLivro,
tbAutor.nomeAutor FROM tbLivro
CROSS JOIN tbAutor
WHERE EXISTS(SELECT nomeAutor) '%Érico Veríssimo%' 

--u) Os nomes dos autores ao lado dos nomes dos livros, inclusive daqueles que não tem livros cadastrados


--v) Os nomes dos autores ao lado dos nomes dos livros, inclusive daqueles que não tem autores cadastrados


--w) O nome dos autores ao lado dos nomes dos livros, indiferente do autor ter ou não livro publicado, e indiferente do livro pertencer a algum autor


--x) A editora Ática irá publicar todos os títulos dessa livraria. Criar um select que associe os nomes de todos os livros ao lado do nome da editora Ática


--y) Somente os nomes dos autores que não tem livros cadastrados


--z) Os nomes dos gêneros que não possuem nenhum livro cadastrado