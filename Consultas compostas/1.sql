SELECT livros.nome, exemplares.edicao, exemplares.ano_publicacao, livros.tema FROM exemplares
    JOIN livros ON exemplares.livros_id = livros.id;
