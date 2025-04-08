 Select nome 
      From funcionarios  
      Where salario > (Select cod_gerente 
             From funcionario 
             Where codigo = (Select cod_gerente  
             From departamento 
             Where codigo = 2
)
); 
