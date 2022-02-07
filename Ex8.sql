select * from aluno a 
	left join endereco e on a.alunoid = e.enderecoid 
order by a.nome;