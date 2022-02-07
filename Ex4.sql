insert into aluno(AlunoId, Nome, Fone, Cpf, DtNasc, Sexo) values (1, 'Gustavo', '867-5309', '123.456.789-01','31/07/2000', 'm');
insert into aluno(AlunoId, Nome, Fone, Cpf, DtNasc, Sexo) values (2, 'Gustavo', '867-5309', '123.456.789-01','31/07/2000', 'm');
insert into aluno(AlunoId, Nome, Fone, Cpf, DtNasc, Sexo) values (3, 'Gustavo', '867-5309', '123.456.789-01','31/07/2000', 'm');
insert into aluno(AlunoId, Nome, Fone, Cpf, DtNasc, Sexo) values (4, 'Gustavo', '867-5309', '123.456.789-01','31/07/2000', 'm');
insert into aluno(AlunoId, Nome, Fone, Cpf, DtNasc, Sexo) values (5, 'Gustavo', '867-5309', '123.456.789-01','31/07/2000', 'm');

update aluno 
	set nome = 'Alice',
		fone = '867-5308',
		cpf = '852.194.710-07',
		dtnasc = '30/06/2001',
		sexo = 'f'
	where alunoid = 2;

update aluno 
	set nome = 'Bob',
		fone = '968-5417',
		cpf = '738.892.460-44',
		dtnasc = '28/05/2002'
	where alunoid = 3;

update aluno 
	set nome = 'Charlie',
		fone = '597-4302',
		cpf = '238.607.260-64',
		dtnasc = '16/09/1999'
	where alunoid = 4;

update aluno 
	set nome = 'Diane',
		fone = '859-2164',
		cpf = '600.726.110-73',
		dtnasc = '02/11/2000',
		sexo = 'f'
	where alunoid = 5;

insert into endereco(enderecoid, rua, numero, bairro, cidade, estado, outros, fk_aluno_alunoid) values (1, 'Rua Augusta', 23, 'Jardins', 'São Paulo', 'SP', '', 1);
insert into endereco(enderecoid, rua, numero, bairro, cidade, estado, outros, fk_aluno_alunoid) values (2, 'Rua Augusto', 42, 'Centro', 'São Caetano do Sul', 'SP', '', 2);
insert into endereco(enderecoid, rua, numero, bairro, cidade, estado, outros, fk_aluno_alunoid) values (3, 'Rua Auguste', 151, 'Liberdade', 'Belém', 'PA', '', 3);
insert into endereco(enderecoid, rua, numero, bairro, cidade, estado, outros, fk_aluno_alunoid) values (4, 'Rua Augustinho', 386, 'Jurerê', 'Florianópolis', 'SC', '', 4);
insert into endereco(enderecoid, rua, numero, bairro, cidade, estado, outros, fk_aluno_alunoid) values (5, 'Rua Guta', 493, 'Juvevê', 'Curitiba', 'PR', '', 5);

insert into curso(cursoid, nome, semestre) values (1, 'SQL', 1);
insert into curso(cursoid, nome, semestre) values (2, 'C', 1);
insert into curso(cursoid, nome, semestre) values (3, 'Java', 4);
insert into curso(cursoid, nome, semestre) values (4, 'Python', 3);
insert into curso(cursoid, nome, semestre) values (5, 'Ruby', 3);

insert into professor(professorid, nome, graduacao, fone) values (1, 'Raimundo', 'PhD', '555-1234');
insert into professor(professorid, nome, graduacao, fone) values (2, 'Raimundo', 'PhD', '555-1234');
insert into professor(professorid, nome, graduacao, fone) values (3, 'Raimundo', 'PhD', '555-1234');
insert into professor(professorid, nome, graduacao, fone) values (4, 'Raimundo', 'PhD', '555-1234');
insert into professor(professorid, nome, graduacao, fone) values (5, 'Raimundo', 'PhD', '555-1234');

update professor 
	set nome = 'Oak',
		graduacao = 'PhD em Matemática'
	where professorid = 1;
	
update professor 
	set nome = 'Elm',
		graduacao = 'PhD em Engenharia Elétrica',
		fone = '555-2345'
	where professorid = 2;
	
update professor 
	set nome = 'Birch',
		graduacao = 'PhD em Biologia',
		fone = '555-3456'
	where professorid = 3;
	
update professor 
	set nome = 'Rowan',
		graduacao = 'PhD em Física',
		fone = '555-4567'
	where professorid = 4;
	
update professor 
	set nome = 'Juniper',
		graduacao = 'PhD em Química',
		fone = '555-5678'
	where professorid = 5;