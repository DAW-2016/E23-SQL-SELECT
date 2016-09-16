SELECT usuarios.nome, COUNT(emprestimos.usuarios_id) FROM usuarios
    JOIN emprestimos ON usuarios.id = emprestimos.usuarios_id
    GROUP BY emprestimos.usuarios_id
        ORDER BY COUNT(emprestimos.usuarios_id);
