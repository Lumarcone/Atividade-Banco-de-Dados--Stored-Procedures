use escola;
-- Tabela com info dos alunos
CREATE TABLE Alunos (
    Aluno_ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Sobrenome varchar (100),
    Email VARCHAR(100),
    Telefone VARCHAR(20),
    Data_nasc DATE
);
-- Tabela com as info dos cursos
CREATE TABLE Cursos (
    ID_Cursos INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Descricao TEXT,
    Professor_ID INT,
    FOREIGN KEY (Professor_ID) REFERENCES Professores(ID_professores)
);

-- Tabela para infos dos professores
CREATE TABLE Professores (
    ID_professores INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Email VARCHAR(100),
    Telefone VARCHAR(20)
);
 -- -- -- criando procedure sobre para Cursos 
DELIMITER $

CREATE PROCEDURE  Insert_Curso (
    IN p_Nome VARCHAR(100),
    IN p_Descricao TEXT,
    IN p_Professor_ID INT
)
BEGIN
    INSERT INTO Cursos (Nome, Descricao, Professor_ID) VALUES (p_Nome, p_Descricao, p_Professor_ID);
END$
delimiter ;


-- inserindo valores 
call Insert_Curso('Matemática Avançada', 'Curso avançado abordando tópicos como cálculo diferencial e integral, álgebra linear e geometria analítica.', 1);
call Insert_Curso('Desenvolvimento Web com Django', 'Aprenda a desenvolver aplicações web utilizando o framework Django em Python.', 2);
call Insert_Curso('Inglês Avançado para Negócios', 'Desenvolva suas habilidades de comunicação em inglês focadas em contextos empresariais e profissionais.', 3);
call Insert_Curso('História Moderna', 'Estudo dos principais eventos e transformações históricas do período moderno.', 4);
call Insert_Curso('Finanças Pessoais', 'Aprenda a gerenciar suas finanças pessoais de forma eficaz e planejar seu futuro financeiro.', 5);

select*from Cursos;
-- -- criando procedure sobre Professores -- -- --
DELIMITER $
create procedure Insert_Professores(
	IN p_nome varchar (100),
    IN p_email varchar (100),
    IN p_telefone varchar (20)
)
BEGIN
INSERT INTO Professores (Nome, Email, Telefone) Values (p_nome, p_email, p_telefone);
end$ delimiter ;

call Insert_Professores('Prof. Gabriel', 'gabriel.prof@email.com', '(11) 11111-1111');
call Insert_Professores('Prof. Marina', 'marina.prof@email.com', '(11) 22222-2222'); 
call Insert_Professores('Prof. Rafael', 'rafael.prof@email.com', '(11) 33333-3333');
call Insert_Professores('Prof. Isabela', 'isabela.prof@email.com', '(11) 44444-4444');
call Insert_Professores('Prof. Lucas', 'lucas.prof@email.com', '(11) 55555-5555'); 



select*from Professores;
 
-- -- -- -- -- -- criando procedure sobre Alunos e verificando se o email ja existe no banco -- -- -- -- -- --

DELIMITER $
CREATE PROCEDURE Insert_Aluno (
    IN p_Nome VARCHAR(100),
    IN p_Sobrenome VARCHAR(100),
    IN p_Email varchar (100),
    IN p_Telefone VARCHAR(20),
    IN p_Data_nasc DATE
)
BEGIN
    DECLARE e_Email VARCHAR(100);
    DECLARE i INT DEFAULT 0;

    SET e_Email = lower( CONCAT(p_Nome, '.', p_Sobrenome));

    -- Verificar se o e-mail já existe na tabela
    WHILE EXISTS (SELECT 1 FROM Alunos WHERE Email = e_Email) DO
        SET i = i + 1;
        SET e_Email = CONCAT(LOWER(REPLACE(p_Nome, ' ', '.')), '.', LOWER(REPLACE(p_Sobrenome, ' ', '.')), i);
    END WHILE;

    -- Inserir o aluno na tabela
    INSERT INTO Alunos (Nome, Sobrenome, Email, Telefone, Data_nasc) VALUES (p_Nome, p_Sobrenome, p_Email, p_Telefone, p_Data_nasc);
END$ DELIMITER ;
call Insert_Aluno('João', 'Silva', 'joao.silva@email.com', '(11) 98765-4321', '2000-05-10');
call Insert_Aluno('Maria','Santos', 'maria.santos@email.com', '(11) 87654-3210', '1999-08-15');
call Insert_Aluno('Pedro','Souza', 'pedro.souza@email.com', '(11) 76543-2109', '2001-02-20');
call Insert_Aluno('Ana',' Oliveira', 'ana.oliveira@email.com', '(11) 65432-1098', '2002-11-25');
call Insert_Aluno('Gabriela','Martins', 'gabriela.martins@email.com', '(11) 43210-9876', '2003-07-12');


select*from Alunos; 