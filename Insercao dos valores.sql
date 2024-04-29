
INSERT INTO Professor (Nome, Idade, Email) VALUES ('Rafaela Oliveira', 40, 'rafaela.oliveira@yahoo.com');
INSERT INTO Professor (Nome, Idade, Email) VALUES ('Paulo Costa', 37, 'paulo.costa@hotmail.com');
INSERT INTO Professor (Nome, Idade, Email) VALUES ('Camila Santos', 45, 'camila.santos@hotmail.com');
INSERT INTO Professor (Nome, Idade, Email) VALUES ('Gabriel Lima', 33, 'gabriel.lima@gmail.com');

INSERT INTO Curso (Nome_do_Curso, Descricao, Quantidade_Alunos) VALUES ('Introdução à Inteligência Artificial', 'Curso introdutório sobre conceitos e técnicas de inteligência artificial', 40);
INSERT INTO Curso (Nome_do_Curso, Descricao, Quantidade_Alunos) VALUES ('Desenvolvimento de Aplicativos Móveis', 'Curso prático de desenvolvimento de aplicativos para dispositivos móveis', 28);
INSERT INTO Curso (Nome_do_Curso, Descricao, Quantidade_Alunos) VALUES ('Gestão de Projetos', 'Curso sobre metodologias e ferramentas para gestão eficaz de projetos', 22);
INSERT INTO Curso (Nome_do_Curso, Descricao, Quantidade_Alunos) VALUES ('Machine Learning Avançado', 'Curso avançado sobre algoritmos e aplicações de machine learning', 30);


INSERT INTO Aluno (Nome, Data_de_Nascimento, Email) VALUES ('João Paulo', '2000-05-15', 'joao.silva@unif.com');
INSERT INTO Aluno (Nome, Data_de_Nascimento, Email) VALUES ('Maria Rita', '1999-08-22', 'maria.oliveira@unif.com');
INSERT INTO Aluno (Nome, Data_de_Nascimento, Email) VALUES ('Gustavo Santos', '2001-03-10', 'pedro.santos@unif.com');
INSERT INTO Aluno (Nome, Data_de_Nascimento, Email) VALUES ('Ana Senna', '2002-11-30', 'ana.souza@unif.com');

INSERT INTO aluno_curso (ID_Aluno, ID_Curso) VALUES (1,1);
INSERT INTO aluno_curso (ID_Aluno, ID_Curso) VALUES (2,2);
INSERT INTO aluno_curso (ID_Aluno, ID_Curso) VALUES (3,3);
INSERT INTO aluno_curso (ID_Aluno, ID_Curso) VALUES (4,4);