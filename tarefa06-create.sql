Select f.nome, f.salario, d.descrição AS departamento_descrição
From funcionario Left Join departamento
On departamento = cod_depto;
