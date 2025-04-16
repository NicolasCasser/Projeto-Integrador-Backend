DROP DATABASE IF EXISTS proconnect;
CREATE DATABASE proconnect;
USE proconnect;

-- Tabela de usuários
CREATE TABLE usuarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL
);

-- Tabela de perfis com as ideias
CREATE TABLE perfil (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    titulo VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE cliente (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    descricao TEXT NOT NULL
);

INSERT INTO usuarios(nome, email, senha) VALUE ( "Teste", "teste@gmail.com", 1234567);
INSERT INTO perfil (nome, titulo, descricao) VALUE ("João Pedro", "Página de Cadastro", "Preciso de um desenvolvedor para criar uma página de cadastro simples em React.");
INSERT INTO perfil (nome, titulo, descricao)  VALUE ("Carlos Souza", "E-commerce de Roupas", "Preciso de um desenvolvedor para criar uma plataforma de e-commerce para vender roupas online. A plataforma deve ter integração com métodos de pagamento e funcionalidade de carrinho de compras."),
  ("Ana Oliveira", "Aplicativo de To-Do List", "Busco um desenvolvedor para criar um aplicativo simples de lista de tarefas (To-Do List). O app deve permitir que o usuário adicione, edite, marque como concluída e exclua tarefas.");