SELECT usuarios.nome, emprestimos.* FROM emprestimos
    JOIN usuarios ON usuarios.id = emprestimos.usuarios_id;
