select 
	c.nome,
	c.semestre,
	p.nome,
	p.graduacao,
	p.fone
	from curso c , professor p , disciplina d 
	where c.cursoid = d.fk_curso_cursoid and p.professorid = d.fk_professor_professorid;