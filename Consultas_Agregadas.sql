##### Selecionar a quantidade de livros cadastrados #####

SELECT count(id) FROM livros;

##### Selecionar a quantidade de exemplares por livro, ordenados pela quantidade de exemplares #####

SELECT livros.nome,count(exemplares.id) AS exemplares FROM exemplares JOIN livros ON livros.id = exemplares.livros_id GROUP BY livros_id ORDER BY count(exemplares.id);

##### Selecionar o número de empréstimos feito por usuário, ordenados pela quantidade de empréstimos #####

SELECT usuarios.nome,count(emprestimos.usuarios_id) AS emprestimos FROM emprestimos JOIN usuarios ON usuarios.id = emprestimos.usuarios_id GROUP BY usuarios_id ORDER BY count(emprestimos.usuarios_id);

##### Selecionar os livros com pelo menos 3 exemplares #####

SELECT livros.nome,count(exemplares.id) AS exemplares FROM exemplares JOIN livros ON livros.id = exemplares.livros_id GROUP BY livros_id HAVING (count(exemplares.id)) >= 3 ORDER BY count(exemplares.id);
