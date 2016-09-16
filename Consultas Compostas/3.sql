SELECT usuarios.nome, livros.nome, emprestimos.data_emprestimo FROM usuarios, livros, emprestimos, exemplares WHERE emprestimos.exemplares_id = exemplares.id AND emprestimos.usuarios_id = usuarios.id AND livros.id = exemplares.livros_id AND emprestimos.data_devolucao = NULL;
                                                      //^ os emprestimos ainda em aberto
