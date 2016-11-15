SELECT usuarios.nome, COUNT(emprestimos.usuarios_id) AS 'Quantidade de Emprestimos'
FROM emprestimos
JOIN usuarios ON usuarios.id = emprestimos.usuarios_id
GROUP BY usuarios_id
ORDER BY COUNT(emprestimos.usuarios_id);
