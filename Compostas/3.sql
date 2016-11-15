SELECT usuarios.nome, emprestimos.*
FROM usuarios
JOIN emprestimos ON emprestimos.usuarios_id = usuarios.id
WHERE emprestimos.data_devolucao = NULL;
