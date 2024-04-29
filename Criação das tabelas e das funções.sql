CREATE TABLE Aluno (
    ID_Aluno INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Data_de_Nascimento DATE,
    Email VARCHAR(100)
);

-- Tabela Curso
CREATE TABLE Curso (
    ID_Curso INT AUTO_INCREMENT PRIMARY KEY,
    Nome_do_Curso VARCHAR(100),
    Descricao VARCHAR(255),
    Quantidade_Alunos INT
);


CREATE TABLE Professor (
    ID_Professor INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Idade INT,
    Email VARCHAR(100)
);


CREATE TABLE Aluno_Curso (
    ID_Aluno INT,
    ID_Curso INT,
    PRIMARY KEY (ID_Aluno, ID_Curso),
    FOREIGN KEY (ID_Aluno) REFERENCES Aluno(ID_Aluno),
    FOREIGN KEY (ID_Curso) REFERENCES Curso(ID_Curso)
);

DELIMITER //
CREATE PROCEDURE InserirCurso (
    IN nomeCurso VARCHAR(100),
    IN descricaoCurso VARCHAR(255),
    IN qtdAlunos INT
)
BEGIN
    INSERT INTO Curso (Nome_do_Curso, Descricao, Quantidade_Alunos) 
    VALUES (nomeCurso, descricaoCurso, qtdAlunos);
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE SelecionarCursos ()
BEGIN
    SELECT * FROM Curso;
END //
DELIMITER ;