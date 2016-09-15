SELECT livros.nome, exemplares.edicao, bibliotecas.nome FROM exemplares
    JOIN livros ON exemplares.livros_id = livros.id
    JOIN bibliotecas ON exemplares.bibliotecas_id = bibliotecas.id
        WHERE livros.tema LIKE '%Computação%';
