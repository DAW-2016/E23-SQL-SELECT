SELECT livros.nome, usuarios.nome, bibliotecas.nome FROM usuarios
    JOIN emprestimos ON usuarios.id = emprestimos.usuarios_id
    JOIN exemplares ON exemplares.id = emprestimos.exemplares_id
    JOIN bibliotecas ON bibliotecas.id = exemplares.bibliotecas_id
    JOIN livros ON livros.id = exemplares.livros_id
        WHERE emprestimos.data_devolucao < NOW();
