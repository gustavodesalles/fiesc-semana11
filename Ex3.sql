/* brModelo: */

CREATE TABLE Aluno (
    AlunoId INTEGER PRIMARY KEY,
    Nome VARCHAR,
    Fone VARCHAR,
    Cpf VARCHAR,
    DtNasc DATE,
    Sexo CHAR
);

/* brModelo: */

CREATE TABLE Endereco (
    EnderecoId INTEGER PRIMARY KEY,
    Rua VARCHAR,
    Numero INTEGER,
    Bairro VARCHAR,
    Cidade VARCHAR,
    Estado VARCHAR,
    Outros VARCHAR,
    fk_Aluno_AlunoId INTEGER
);
 
ALTER TABLE Endereco ADD CONSTRAINT FK_Endereco_2
    FOREIGN KEY (fk_Aluno_AlunoId)
    REFERENCES Aluno (AlunoId)
    ON DELETE CASCADE;
    
/* brModelo: */

CREATE TABLE Matricula (
    fk_Curso_CursoId INTEGER,
    fk_Aluno_AlunoId INTEGER,
    MatriculaId INTEGER PRIMARY KEY,
    DataMatricula DATE
);

/* brModelo: */

CREATE TABLE Curso (
    CursoId INTEGER PRIMARY KEY,
    Nome VARCHAR,
    Semestre VARCHAR
);

alter table curso 
	alter column Semestre type INTEGER;

alter table curso add constraint unico unique (CursoId);
 
ALTER TABLE Matricula ADD CONSTRAINT FK_Matricula_1
    FOREIGN KEY (fk_Curso_CursoId)
    REFERENCES Curso (CursoId)
    ON DELETE SET NULL;
 
ALTER TABLE Matricula ADD CONSTRAINT FK_Matricula_2
    FOREIGN KEY (fk_Aluno_AlunoId)
    REFERENCES Aluno (AlunoId)
    ON DELETE SET NULL;
    
/* brModelo: */

CREATE TABLE Professor (
    ProfessorId INTEGER PRIMARY KEY,
    Nome VARCHAR,
    Graduacao VARCHAR,
    Fone VARCHAR
);

/* brModelo: */

CREATE TABLE Disciplina (
    fk_Professor_ProfessorId INTEGER,
    fk_Curso_CursoId INTEGER,
    DisciplinaId INTEGER PRIMARY KEY,
    Nome VARCHAR
);
 
ALTER TABLE Disciplina ADD CONSTRAINT FK_Disciplina_1
    FOREIGN KEY (fk_Professor_ProfessorId)
    REFERENCES Professor (ProfessorId)
    ON DELETE RESTRICT;
 
ALTER TABLE Disciplina ADD CONSTRAINT FK_Disciplina_2
    FOREIGN KEY (fk_Curso_CursoId)
    REFERENCES Curso (CursoId)
    ON DELETE RESTRICT;

   alter table aluno add constraint unico_a unique (AlunoId);
   alter table disciplina add constraint unico_d unique (DisciplinaId);
   alter table endereco add constraint unico_e unique (EnderecoId);
   alter table matricula add constraint unico_m unique (MatriculaId);
   alter table professor add constraint unico_p unique (ProfessorId);