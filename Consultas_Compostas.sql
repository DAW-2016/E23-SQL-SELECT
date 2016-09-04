##### Selecionar os exemplares existentes (nome, edição, publicação e tema) #####

SELECT livros.id,exemplares.livros_id,livros.nome,exemplares.edicao,exemplares.ano_publicacao,livros.tema FROM livros
JOIN exemplares ON livros.id = exemplares.livros_id;

##### Selecionar os exemplares (nome, edição e biblioteca) dos livros da Computação #####

SELECT livros.nome, exemplares.edicao, bibliotecas.nome FROM livros
JOIN exemplares ON  livros.ID = exemplares.livros_id
JOIN bibliotecas ON exemplares.bibliotecas_id = bibliotecas.id
WHERE livros.tema LIKE 'Computação';

##### Selecionar os empréstimos em aberto junto do nome dos usuários que fizeram tais empréstimos #####

SELECT usuarios.nome, emprestimos.* FROM usuarios
JOIN emprestimos ON usuarios.id = emprestimos.usuarios_id
WHERE emprestimos.data_devolucao != 'null';

##### Selecionar os nomes dos livros, usuários e bibliotecas para cada um dos empréstimos concluídos #####

SELECT livros.nome, usuarios.nome, bibliotecas.nome FROM usuarios
JOIN emprestimos ON usuarios.id = emprestimos.usuarios_id
JOIN exemplares ON exemplares.id = emprestimos.exemplares_id
JOIN bibliotecas ON bibliotecas.id = exemplares.bibliotecas_id
JOIN livros ON livros.id = exemplares.livros_id
WHERE emprestimos.data_devolucao != 'null';
