CREATE DATABASE bdEscolaIdiomas1

USE bdEscolaIdiomas

--DROP DATABASE bdEscolaIdioma
CREATE TABLE tbAluno(
	codAluno INT PRIMARY KEY IDENTITY(1,1)
	,nomeAluno VARCHAR(50)
	,rgAluno VARCHAR(12) 
	,dataNascimentoAluno SMALLDATETIME
	,naturalidadeAluno VARCHAR(2)
)
CREATE TABLE tbCurso(
	codCurso INT PRIMARY KEY IDENTITY(1,1)
	,nomeCurso VARCHAR(20)
	,cargahorariaCurso BIGINT
	,valorCurso BIGINT
)
CREATE TABLE tbTurma(
	codTurma INT PRIMARY KEY IDENTITY(1,1)
	,nomeTurma VARCHAR(20)
	,horarioTurma TIME
	,codCurso INT FOREIGN KEY REFERENCES tbCurso (codCurso)
)
CREATE TABLE tbMatricula(
	codMatricula INT PRIMARY KEY IDENTITY(1,1)
	,dataMatricula DATETIME
	,codAluno INT FOREIGN KEY REFERENCES tbAluno (codAluno)
	,codTurma INT FOREIGN KEY REFERENCES tbTurma (codTurma)
)