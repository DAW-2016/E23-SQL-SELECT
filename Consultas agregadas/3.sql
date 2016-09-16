SELECT usuarios.nome, livros.nome, COUNT(exemprestimos.usuarios_id) FROM usuarios, livros, emprestimos, exemplares
JOIN exemplares ON exemplares.livros_id = livros.id AND usuarios.id = emprestimos.usuarios_id
GROUP BY usuarios.nome;
