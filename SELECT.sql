USE bdEscolaIdiomas

--Apresentar os nomes dos alunos ao lado do nome dos cursos que eles fazem:
SELECT nomeAluno AS 'nome do aluno', nomeCurso
FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso;

--Apresentar a quantidade de alunos matriculados por nome do curso:
SELECT nomeCurso AS 'nome do curso', COUNT(*) as 'quantidade de Alunos Matriculados'
FROM tbCurso
INNER JOIN tbTurma ON tbCurso.codCurso = tbTurma.codCurso
INNER JOIN tbMatricula ON tbTurma.codTurma = tbMatricula.codTurma
GROUP BY nomeCurso;

--Apresentar a quantidade de alunos matriculados por nome da turma:
SELECT nomeTurma 'nome da turma', COUNT(*) as 'quantidade de alunos matriculados'
FROM tbTurma
INNER JOIN tbMatricula ON tbTurma.codTurma = tbMatricula.codTurma
GROUP BY nomeTurma;

--Apresentar a quantidade de alunos que fizeram matrícula em maio de 2016:
SELECT COUNT(*) as quantidadeAlunosMatriculados
FROM tbMatricula
WHERE MONTH(dataMatricula) = 5 AND YEAR(dataMatricula) = 2016;

--Apresentar o nome dos alunos em ordem alfabética ao lado do nome das turmas em que estão matriculados:
SELECT tbAluno.nomeAluno AS 'nome do aluno', tbTurma.nomeTurma AS 'nome da turma'
FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
ORDER BY tbAluno.nomeAluno;


--Apresentar o nome dos cursos e os horários em que eles são oferecidos:
SELECT nomeCurso AS 'nome do curso', horarioTurma AS 'horário da turma'
FROM tbCurso
INNER JOIN tbTurma ON tbCurso.codCurso = tbTurma.codCurso;

--Apresentar a quantidade de alunos nascidos por estado
SELECT naturalidadeAluno AS 'naturalidade do aluno', COUNT(*) as quantidadeAlunosNascidos
FROM tbAluno
GROUP BY naturalidadeAluno;

--Apresentar o nome dos alunos ao lado da data de matrícula no formato dd/mm/aaaa:
SELECT nomeAluno AS 'nome do aluno', CONVERT(varchar(10), dataMatricula, 103) as dataMatriculaFormatada
FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno;

--Apresentar os alunos cujo nome comece com A e que estejam matriculados no curso de inglês:
SELECT nomeAluno AS 'nome do aluno', nomeCurso AS 'nome do curso'
FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
WHERE tbAluno.nomeAluno LIKE 'A%' AND tbCurso.nomeCurso = 'Inglês';

--Apresentar a quantidade de matrículas feitas no ano de 2016:
SELECT COUNT(*) AS 'quantidade de Matriculas'
FROM tbMatricula
WHERE YEAR(dataMatricula) = 2016;