select * from aluno a 
inner join endereco e on e.enderecoid = a.alunoid;

select * from aluno a where lower(a.nome) like '%a%'