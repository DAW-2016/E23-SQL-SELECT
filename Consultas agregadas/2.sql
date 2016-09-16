SELECT livros.nome, COUNT(exemplares.livros_id) FROM livros
JOIN exemplares ON exemplares.livros_id = livros.id
GROUP BY exemplares.livros_id;



/!!!!!!!! DÚVIDA !!!!!!!!!
