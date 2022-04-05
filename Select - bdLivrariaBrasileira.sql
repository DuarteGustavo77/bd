USE bdLivrariaBrasileira
SELECT*FROM bdLivrariaBrasileira

--a) O total de livros que come�am com a letra P
SELECT nomeLivro FROM tbLivro
WHERE  nomeLivro LIKE 'P%'

--b) O maior n�mero de p�ginas entre todos os livros
SELECT MAX (numPagina)AS 'Maior numero de paginas' FROM bdLivrariaBrasileira

--c) O menor n�mero de p�ginas entre todos os livros
SELECT MIN (numPagina)AS 'Menor numero de paginas' FROM bdLivrariaBrasileira

--d) A m�dia de p�ginas entre todos os livros
SELECT AVG (numPagina) FROM tbLivro

--e) A soma do n�mero de p�ginas dos livros de editora c�digo 01
SELECT SUM (numPagina) FROM tbLivro
WHERE codEditora = 1

--f) A soma dos n�meros de p�ginas dos livros que come�am com a letra A
SELECT SUM (numPagina) FROM tbLivro
WHERE nomeLivro LIKE 'A%'

--g) A m�dia dos n�meros de p�ginas dos livros que sejam do autor c�digo 03
SELECT AVG (numPagina) FROM tbLivro
WHERE codAutor = 3

--h) A quantidade de livros da editora de c�digo 04
SELECT COUNT (codLivro) FROM tbLivro
WHERE codEditora = 4

--i) A m�dia do n�mero de p�ginas dos livros que tenham a palavra �estrela� em seu nome
SELECT AVG (numPagina) FROM tbLivro
WHERE nomeLivro LIKE '%Estrela%'

--j) A quantidade de livros que tenham a palavra �poema� em seu nome
SELECT COUNT (codLivro) FROM tbLivro
WHERE nomeLivro LIKE '%Poema%'

--k) A quantidade de livros agrupado pelo nome do g�nero
SELECT COUNT tblivro.nomeLivro, 
tbGenero.nomeGenero FROM tbLivro
CROSS JOIN tbGenero

--l) A soma das p�ginas agrupada pelo nome do autor
SELECT SUM tbLivro.numPaginas, 
tbAutor.nomeAutor FROM tbLivro
CROSS JOIN tbAutor

--m) A m�dia de p�ginas agrupada pelo nome do autor em ordem alfab�tica (de A a Z)


--n) A quantidade de livros agrupada pelo nome da editora em ordem alfab�tica inversa (de Z a A)


--o) A soma de p�ginas dos livros agrupados pelo nome do autor que sejam de autores cujo nome comece com a letra �C�
SELECT SUM tbLivro.numPaginas, 
tbAutor.nomeAutor FROM tbLivro
CROSS JOIN tbAutor
WHERE nomeAutor LIKE 'C%'

--p) A quantidade de livros agrupados pelo nome do autor, cujo nome do autor seja �Machado de Assis� ou �Cora Coralina� ou �Graciliano Ramos� ou �Clarice Lispector�
SELECT COUNT tbLivro.nomeLivro,
tbAutor.nomeAutor FROM tbLivro
CROSS JOIN tbAutor
WHERE nomeAutor LIKE '%Machado de Assis%' OR '%Cora Coralina%' OR '%Graciliano Ramos%' OR '%Clarice Lispector%'

--q) A soma das p�ginas dos livros agrupadas pelo nome da editora cujo n�mero de p�ginas esteja entre 200 e 500 (inclusive)
SELECT SUM tbLivro.numPaginas, 
tbEditora.nomeEditora FROM tbLivro
CROSS JOIN tbEditora
WHERE numPaginas BETWEEN '200' AND '500'

--r) O nome dos livros ao lado do nome das editoras e do nome dos autores
SELECT tbLivro.nomeLivro,
tbEditora.NomeEditora, tbAutor.nomeAutor FROM tbLivro
CROSS JOIN tbAutor, tbEditora

--s) O nome dos livros ao lado do nome do autor somente daqueles cujo nome da editora for �Cia das Letras�
SELECT tbLivro.nomeLivro, 
tbAutor.nomeAutor FROM tbLivro
CROSS JOIN tbAutor, tbEditora
WHERE nomeEditora LIKE '%Cia das Letras%'

--t) O nome dos livros ao lado dos nomes dos autores, somente dos livros que n�o forem do autor ��rico Ver�ssimo�
SELECT tbLivro.nomeLivro,
tbAutor.nomeAutor FROM tbLivro
CROSS JOIN tbAutor
WHERE EXISTS(SELECT nomeAutor) '%�rico Ver�ssimo%' 

--u) Os nomes dos autores ao lado dos nomes dos livros, inclusive daqueles que n�o tem livros cadastrados


--v) Os nomes dos autores ao lado dos nomes dos livros, inclusive daqueles que n�o tem autores cadastrados


--w) O nome dos autores ao lado dos nomes dos livros, indiferente do autor ter ou n�o livro publicado, e indiferente do livro pertencer a algum autor


--x) A editora �tica ir� publicar todos os t�tulos dessa livraria. Criar um select que associe os nomes de todos os livros ao lado do nome da editora �tica


--y) Somente os nomes dos autores que n�o tem livros cadastrados


--z) Os nomes dos g�neros que n�o possuem nenhum livro cadastrado