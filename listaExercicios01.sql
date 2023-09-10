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




