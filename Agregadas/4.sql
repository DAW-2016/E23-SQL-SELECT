SELECT livros.nome, COUNT(exemplares.id) AS 'Quantidade'
FROM exemplares
JOIN livros ON livros.id = exemplares.livros_id
GROUP BY livros_id HAVING COUNT(exemplares.id) > 2
ORDER BY COUNT(exemplares.id);
