SELECT livros.nome, exemplares.edicao, bibliotecas.nome
FROM exemplares
JOIN livros ON livros.id = exemplares.livros_id
JOIN bibliotecas ON bibliotecas.id = exemplares.bibliotecas_id
WHERE livros.tema LIKE 'Computação';
