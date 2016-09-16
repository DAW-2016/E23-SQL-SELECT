SELECT livros.nome FROM livros
JOIN exemplares ON exemplares.livros_id = livros.id
GROUP BY livros.nome
HAVING COUNT(exemplares.livros_id) > 3;
