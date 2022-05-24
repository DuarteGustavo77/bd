use bdEscolaIdiomas

--crie uma visão "Preço-baixo" que exiba o codigo,nome curso, carga horaria e valor do curso de todos os cursos que tenha preço inferior a 300 reais
CREATE VIEW vwPreço_Baixo AS
SELECT codCurso'codigo', nomeCurso'nome', cargaHorariaCurso'carga horaria', valorCurso'preço' FROM tbCurso
WHERE valorCurso<'300'

--usando a visão "preço- baixo" mostre todos os cursos ordenados por carga horaria
SELECT nomeCurso FROM tbCurso
ORDER BY cargaHorariaCurso

--crie uma visão "quant_Aluno_Curso" que exiba o curso e a quantidade de alunos por turma
CREATE VIEW vwQuant_Aluno_Curso AS
SELECT codCurso'codigo', nomeCurso'nome', COUNT(tbTurma.codAluno) FROM tbCurso
INNER JOIN tbAluno ON codCurso.tbAluno = tbCurso.codCurso
GROUP BY codAluno



--usando a visão "quant_Aluno_Curso" exiba a turma com maior numeros de alunos



--crie uma visão "Curso_quant_Turma" que exiba o curso e a quantidade de turmas
CREATE VIEW vwCurso_Qtde_Turmas AS
SELECT COUNT(tbTurma.codCurso) as qtde, nomeCurso FROM tbTurma
INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
GROUP BY nomeCurso


--usando a visão "Curso_quant_Turma" exiba o curso com menor numeros de turmas
SELECT MIN(qtde) FROM vwCurso_Qtde_Turmas
SELECT nomeCurso FROM vwCurso_Qtde_Turmas WHERE qtde = 1