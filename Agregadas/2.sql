SELECT livros.nome, COUNT(exemplares.id) AS 'Quantidade'
FROM exemplares
JOIN livros ON livros.id = exemplares.livros_id
GROUP BY livros_id
ORDER BY COUNT(exemplares.id);
