##### Selecionar todos os usuários #####

SELECT * FROM usuarios;

##### Selecionar os livros da área de computação #####

SELECT * FROM livros WHERE tema LIKE 'computação';

##### Selecionar os exemplares que foram lançados após 1990 #####

SELECT * FROM exemplares WHERE ano_publicacao > 1990;

##### Selecionar as datas de empréstimo e devolução dos empréstimos que foram completados #####

SELECT data_emprestimo,data_devolucao FROM emprestimos WHERE data_devolucao != 'null';
