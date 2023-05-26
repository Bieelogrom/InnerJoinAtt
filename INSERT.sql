USE bdEscolaIdiomas

SET IDENTITY_INSERT tbAluno ON

INSERT INTO tbAluno( codAluno,nomeAluno,dataNascimentoAluno,rgAluno,naturalidadeAluno)
VALUES('1','Paulo Santos','2000-03-10','822821220','SP')
	 ,('2','Maria da Gloria','1998-10-03','452331230','SP')
	 ,('3','Pedro Nogueira da Silva','1999-04-04','235332119','SP')
	 ,('4','Gilson Barros Silva','1995-09-09','34221111x','PE')
	 ,('5','Mariana Barbosa Santos ','2001-10-10','542221229','RJ')
	 ,('6','Alessandro Pereira','2003-10-11','244024549','ES')
	 ,('7','Aline Melo','2001-10-08','883650123','RJ')
	 
SET IDENTITY_INSERT tbAluno OFF

SET IDENTITY_INSERT tbCurso ON

INSERT INTO tbCurso( codCurso,nomeCurso,cargahorariaCurso,valorCurso)
VALUES('1','Inglês',2000,356.00)
	 ,('2','Alemão',3000,478.00)
	 ,('3','Espanhol',4000,500.00)

	 
SET IDENTITY_INSERT tbCurso OFF

SET IDENTITY_INSERT tbTurma ON

INSERT INTO tbTurma( codTurma,nomeTurma,codCurso,horarioTurma)
VALUES('1','1|A','1','12:00:00')
	 ,('2','1|C','3','18:00:00')
	 ,('3','1|B','1','18:00:00')
	 ,('4','1AA','2','19:00:00')

	 
SET IDENTITY_INSERT tbTurma OFF

SET IDENTITY_INSERT tbMatricula ON

INSERT INTO tbMatricula( codMatricula,dataMatricula,codAluno,codTurma)
VALUES('1','2015-10-03','1','1')
	 ,('2','2014-05-04','2','1')
	 ,('3','2014-05-04','2','4')
	 ,('4','2012-05-03','3','2')
	 ,('5','2016-03-03','1','3')
	 ,('6','2015-05-07','4','2')
	 ,('7','2015-07-05','4','3')

	 
SET IDENTITY_INSERT tbMatricula OFF

SELECT * FROM tbAluno
SELECT * FROM tbCurso
SELECT * FROM tbTurma
SELECT * FROM tbMatricula