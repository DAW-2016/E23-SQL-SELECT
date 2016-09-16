SELECT livros.nome, COUNT(exemplares.id) FROM livros
    JOIN exemplares ON livros.id = exemplares.livros_id
    GROUP BY exemplares.livros_id
        ORDER BY COUNT(exemplares.id);
