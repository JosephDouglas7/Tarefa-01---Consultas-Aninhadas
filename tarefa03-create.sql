Select nome, dt_nasc
From funcionario
Where funcionario >=21 (Select nome,dt_nasc 
From funcionario, departamento   
Where funcionario != cod_gerente  
)
 
