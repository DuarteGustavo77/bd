CREATE DATABASE bdEscolaIdiomas
USE bdEscolaIdiomas

CREATE TABLE tbAluno(
codAluno INT PRIMARY KEY IDENTITY(1,1)
, nomeAluno VARCHAR(50) NOT NULL
, dataNascAluno SMALLDATETIME 
, rgAluno VARCHAR(15) NOT NULL
, naturalidadeAluno VARCHAR(40) NOT NULL
)

CREATE TABLE tbCurso(
codCurso INT PRIMARY KEY IDENTITY(1,1)
, nomeCurso VARCHAR(40) NOT NULL
, cargaHorariaCurso VARCHAR(15) NOT NULL
, valorCurso SMALLMONEY
)

CREATE TABLE tbTurma(
codTurma INT PRIMARY KEY IDENTITY(1,1)
, nomeTurma VARCHAR(40) NOT NULL
, horarioTurma TIME 
, codCurso INT FOREIGN KEY REFERENCES tbCurso(codCurso)
)

CREATE TABLE tbMatricula(
codMatricula INT PRIMARY KEY IDENTITY(1,1)
, dataMatricula SMALLDATETIME 
, codAluno INT FOREIGN KEY REFERENCES tbAluno(codAluno)
, codTurma INT FOREIGN KEY REFERENCES tbTurma(codTurma)
)