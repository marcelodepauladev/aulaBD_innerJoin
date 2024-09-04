use escola;
/* 26) SELECIONE NOME E RG DOS ALUNOS NASCIDOS ENTRE OS 
       ANOS 1930 E 1935 (INCLUSIVE).						*/
       
SELECT 	a.ID "Código",
		a.NOME "Aluno",
        r.NUMERO "RG"
FROM alunos a INNER JOIN rgs r
ON (a.RG=r.ID)
WHERE DATA_NASCIMENTO >= '1930-01-01' AND DATA_NASCIMENTO <= '1935-01-01';

USE escola;
/* 28) MOSTRE O NOME, CPF E O PAI DOS ALUNOS QUE MORAM EM 
       CASA E BAIRROS QUE SÃO JARDINS.						*/
	
SELECT 	A.ID "Código",
		A.NOME "Aluno",
		C.NUMERO "CPF",
        P.NOME "Pai"
FROM ALUNOS A INNER JOIN CPFS C
ON (A.CPF=C.ID) 
INNER JOIN PAIS P
ON (A.PAI=P.ID)
WHERE COMPLEMENTO = 'Casa' AND BAIRRO LIKE 'JARDIM%';







