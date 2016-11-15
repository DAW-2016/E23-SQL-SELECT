SELECT livros.nome, exemplares.edicao, exemplares.ano_publicacao, livros.tema
FROM exemplares
JOIN livros ON livros.id = exemplares.livros_id;
