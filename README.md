## SQL: Query SQL

**Desenvolvimento de Aplicações Web - COLTEC/MG**

**João Eduardo Montandon**

### Sistema de Biblioteca 

Dado o banco de dados de um sistema bibliotecário -- representado pelo script abaixo -- implemente as seguintes *queries* de consultas aos dados:

#### Consultas Simples

1. Selecionar todos os usuários
2. Selecionar os livros da área de computação
3. Selecionar os exemplares que foram lançados após 1990
4. Selecionar as datas de empréstimo e devolução dos empréstimos que foram completados

#### Consultas Compostas

1. Selecionar os exemplares existentes (nome, edição, publicação e tema)
2. Selecionar os exemplares (nome, edição e biblioteca) dos livros da Computação
3. Selecionar os empréstimos em aberto junto do nome dos usuários que fizeram tais empréstimos
4. Selecionar os nomes dos livros, usuários e bibliotecas para cada um dos empréstimos concluídos


```
CREATE TABLE `bibliotecas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO `bibliotecas` VALUES (1,'COLTEC',NULL),(2,'ICEx',NULL),(3,'FAFICH',NULL),(4,'Central',NULL);

CREATE TABLE `emprestimos` (
  `exemplares_id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `bibliotecas_id` int(11) NOT NULL,
  `data_emprestimo` date NOT NULL,
  `data_devolucao` date DEFAULT NULL,
  PRIMARY KEY (`exemplares_id`,`usuarios_id`,`bibliotecas_id`),
  KEY `fk_exemplares_has_usuarios_usuarios1_idx` (`usuarios_id`),
  KEY `fk_exemplares_has_usuarios_exemplares1_idx` (`exemplares_id`),
  KEY `fk_emprestimos_bibliotecas1_idx` (`bibliotecas_id`),
  CONSTRAINT `fk_exemplares_has_usuarios_exemplares1` FOREIGN KEY (`exemplares_id`) REFERENCES `exemplares` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_exemplares_has_usuarios_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_emprestimos_bibliotecas1` FOREIGN KEY (`bibliotecas_id`) REFERENCES `bibliotecas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `exemplares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `livros_id` int(11) NOT NULL,
  `bibliotecas_id` int(11) NOT NULL,
  `edicao` int(11) NOT NULL,
  `ano_publicacao` int(11) NOT NULL,
  `num_paginas` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_exemplares_livros1_idx` (`livros_id`),
  KEY `fk_exemplares_bibliotecas1_idx` (`bibliotecas_id`),
  CONSTRAINT `fk_exemplares_bibliotecas1` FOREIGN KEY (`bibliotecas_id`) REFERENCES `bibliotecas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_exemplares_livros1` FOREIGN KEY (`livros_id`) REFERENCES `livros` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO `exemplares` VALUES (1,3,1,3,2010,1000),(2,3,2,3,2010,1000),(3,3,2,2,2006,900),(4,5,4,1,1800,300),(5,5,1,35,1995,300),(6,5,3,35,1995,300),(7,5,3,35,1995,300),(8,4,1,2,1986,700),(9,4,2,2,1986,700),(10,4,2,4,2012,800),(11,4,2,4,2012,800),(12,4,4,4,2012,800);

CREATE TABLE `livros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ISBN` varchar(20) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `autor` varchar(45) NOT NULL,
  `tema` varchar(45) NOT NULL,
  `editora` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO `livros` VALUES (3,'8535236996','Algoritmos. Teoria e Prática','Thomas H. Cormen','Computação','Elsevier'),(4,'8588639246','Compiladores. Princípios, Técnicas e Ferramentas','Alfred V. Aho','Computação','Pearson'),(5,'B00A384W6C','O Príncipe','Nicolau Maquiavel','Política','Universo dos Livros');

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `curso` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO `usuarios` VALUES (1,'João','jemaf@bu.ufmg.br','Ciência da Computação'),(2,'Pedro','pedro@bu.ufmg.br','História'),(3,'Hudson','hudson@bu.ufmg.br','Ciência da Computação'),(4,'Maria','maria@bu.ufmg.br','Direito'),(5,'Claudia','claudia@bu.ufmg.br','Biologia');
```
