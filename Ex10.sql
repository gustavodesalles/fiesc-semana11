select 
	a.nome,
	a.fone,
	a.cpf,
	a.dtnasc,
	a.sexo,
	e.rua,
	e.numero,
	e.bairro,
	e.cidade,
	e.estado,
	e.outros,
	c.nome,
	c.semestre,
	p.nome,
	p.graduacao,
	p.fone
	from aluno a , endereco e , curso c , professor p , matricula m , disciplina d 
	where a.alunoid = m.fk_aluno_alunoid and c.cursoid = m.fk_curso_cursoid and a.alunoid = e.enderecoid and c.cursoid = d.fk_curso_cursoid and p.professorid = d.fk_professor_professorid;