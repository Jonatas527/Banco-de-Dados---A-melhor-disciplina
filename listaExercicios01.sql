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


8. Liste a média de receita para cada produto:

sql
SELECT produto, AVG(receita) AS media_de_receita
FROM vendas
GROUP BY produto;


9. Encontre os produtos que geraram uma receita total superior a $10.000:

sql
SELECT produto, SUM(receita) AS receita_total
FROM vendas
GROUP BY produto
HAVING receita_total > 10000;


10. Determine os autores que têm mais de 2 livros publicados:

sql
SELECT autores.nome, COUNT(livros.id) AS numero_de_livros
FROM autores
LEFT JOIN livros ON autores.id = livros.autor_id
GROUP BY autores.nome
HAVING numero_de_livros > 2;


11. Junte as tabelas livros e autores e selecione todos os livros com seus respectivos autores:

sql
SELECT livros.titulo, autores.nome AS autor
FROM livros
INNER JOIN autores ON livros.autor_id = autores.id;


12. Liste todos os alunos e os cursos em que estão matriculados:

sql
SELECT alunos.nome, matriculas.curso
FROM alunos
LEFT JOIN matriculas ON alunos.id = matriculas.aluno_id;


13. Usando LEFT JOIN, selecione todos os autores e seus livros, incluindo autores que não têm livros publicados:

sql
SELECT autores.nome, livros.titulo
FROM autores
LEFT JOIN livros ON autores.id = livros.autor_id;


14. Com RIGHT JOIN, liste todos os cursos e alunos, mesmo que o curso não tenha nenhum aluno matriculado:

sql
SELECT alunos.nome, matriculas.curso
FROM matriculas
RIGHT JOIN alunos ON matriculas.aluno_id = alunos.id;


15. Utilizando INNER JOIN, mostre somente os alunos e cursos que possuem correspondência mútua:

sql
SELECT alunos.nome, matriculas.curso
FROM alunos
INNER JOIN matriculas ON alunos.id = matriculas.aluno_id;


16. Descubra qual autor tem a maior quantidade de livros publicados:

sql
SELECT autores.nome, COUNT(livros.id) AS numero_de_livros
FROM autores
LEFT JOIN livros ON autores.id = livros.autor_id
GROUP BY autores.nome
ORDER BY numero_de_livros DESC
LIMIT 1;


17. Determine o produto que gerou a menor receita:

sql
SELECT produto, SUM(receita) AS receita_total
FROM vendas
GROUP BY produto
ORDER BY receita_total ASC
LIMIT 1;

19. Determine o número total de matrículas para cada aluno:

sql
SELECT alunos.nome, COUNT(matriculas.id) AS numero_de_matriculas
FROM alunos
LEFT JOIN matriculas ON alunos.id = matriculas.aluno_id
GROUP BY alunos.nome;




20. Identifique o produto mais vendido com base na quantidade de transações (não na receita):

sql
SELECT produto, COUNT(*) AS quantidade_de_vendas
FROM vendas
GROUP BY produto
ORDER BY quantidade_de_vendas DESC
LIMIT 1;


