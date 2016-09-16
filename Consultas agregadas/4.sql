SELECT livros.nome AS 'Nome dos livros' FROM livros
    JOIN exemplares ON livros.id = exemplares.livros_id
    GROUP BY livros.id
        HAVING COUNT(exemplares.livros_id) > 3;
