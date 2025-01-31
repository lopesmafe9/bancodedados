CREATE DATABASE biblioteca_db;
USE biblioteca_db;

CREATE TABLE livro (
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(255),
	autor VARCHAR (255),
	ano_publicacao INTEGER,
	isbn VARCHAR(255)
);

CREATE TABLE membro (
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(255),
	endereco VARCHAR (255),
	email VARCHAR(255),
	telefone VARCHAR(255)
);

CREATE TABLE emprestimo (
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
	id_livro INTEGER,
	id_membro INTEGER,
	data_emprestimo DATE,
    data_devolucao DATE,
    
    FOREIGN KEY (id_livro) REFERENCES livro(id),
    FOREIGN KEY (id_membro) REFERENCES membro(id)
    );
