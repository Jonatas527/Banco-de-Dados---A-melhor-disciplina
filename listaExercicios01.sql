lista 1

1. Selecione todos os títulos de livros na tabela livros:

sql
SELECT titulo FROM livros;


2. Selecione todos os nomes de autores nascidos antes de 1900:

sql
SELECT nome FROM autores WHERE YEAR(nascimento) < 1900;

3. Liste todos os livros escritos por 'J.K. Rowling':

sql
SELECT livros.titulo
FROM livros
INNER JOIN autores ON livros.autor_id = autores.id
WHERE autores.nome = 'J.K. Rowling';

4. Encontre todos os alunos matriculados em 'Engenharia de Software':

sql
SELECT alunos.nome
FROM alunos
INNER JOIN matriculas ON alunos.id = matriculas.aluno_id
WHERE matriculas.curso = 'Engenharia de Software';

5. Calcule a receita total gerada por cada produto:

sql
SELECT produto, SUM(receita) AS receita_total
FROM vendas
GROUP BY produto;

6. Determine o número total de livros por autor:

sql
SELECT autores.nome, COUNT(livros.id) AS numero_de_livros
FROM autores
LEFT JOIN livros ON autores.id = livros.autor_id
GROUP BY autores.nome;

7. Agrupe os alunos por curso e conte quantos alunos estão matriculados em cada curso:

sql
SELECT curso, COUNT(aluno_id) AS numero_de_alunos
FROM matriculas
GROUP BY curso;


