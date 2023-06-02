-- Criar o banco de dados
CREATE DATABASE MeuBancoDeDados;

-- Usar o banco de dados
USE MeuBancoDeDados;

-- Criar a tabela "Usuarios"
CREATE TABLE Usuarios (
  ID INT PRIMARY KEY,
  Nome VARCHAR(50),
  Email VARCHAR(100)
);

-- Criar a tabela "Pedidos"
CREATE TABLE Pedidos (
  ID INT PRIMARY KEY,
  UsuarioID INT,
  Produto VARCHAR(50),
  Quantidade INT,
  FOREIGN KEY (UsuarioID) REFERENCES Usuarios(ID)
);

-- Criar o trigger
CREATE TRIGGER AuditTrigger
AFTER INSERT, SELECT, DELETE, UPDATE ON Usuarios
FOR EACH ROW
BEGIN
  -- Ação do trigger aqui
  -- Exemplo: Registro das alterações em uma tabela de log
  INSERT INTO Log (Tabela, Operacao) VALUES ('Usuarios', 'Alteração realizada');
END;
