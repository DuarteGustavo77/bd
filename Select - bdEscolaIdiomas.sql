USE bdEscolaIdiomas

SELECT*FROM bdEscolaIdiomas

--1 Apresentar os nomes dos alunos ao lado do nome dos cursos que eles fazem
    SELECT nomeAluno FROM tbAluno
    INNER JOIN = tbCurso ON tbCurso.nomeCurso = tbAluno.codAluno

--2 Apresentar a quantidadede alunos matriculados por nome do curso
    SELECT COUNT(codAluno) FROM tbMatricula
    INNER JOIN = tbMatricula ON tbMatricula.codTurma = tbTurma.codCurso

--3 Apresentar a quantidadede alunos matriculados por nome da turma 
    SELECT COUNT(codAluno) FROM tbMatricula
    INNER JOIN = tbMatricula ON tbMatricula.codTurma = tbTurma.nomeTurma

--4 Apresentar a quantidadede alunos que fizeram matricula em maio de 2016
    SELECT COUNT(codAluno) FROM tbMatricula
    WHERE dataMatricula BETWEEN '01/05/2016' AND '31/05/2016'

--5 Apresentar o nome dos alunos em ordem alfabética ao lado do nome das turmas em que estão matriculados 
    SELECT 

--6 Apresentar o nome dos cursos e os horários em que eles são oferecidos
    SELECT nomeCurso FROM tbCurso
    INNER JOIN = tbTurma ON tbTurma.codCurso = tbTurma.horarioTurma

--7)Apresentar a quantidade de alunos nascidos por estado 
    SELECT COUNT(codAluno) FROM tbAluno
    WHERE naturalidadeAluno

--8)Apresentar o nome dos alunos ao lado da data de matrícula no formato dd/mm/aaaa


--9)Apresentar os alunos cujo nome comece com 'A' e que estejam matriculados no curso de inglês


--10)Apresentaraquantidadedematriculasfeitasnoanode2016