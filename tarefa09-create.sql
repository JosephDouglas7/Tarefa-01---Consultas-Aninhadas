Create View empresa
Select cod_responsavel,salario,cod_gerente
From atividade, departamento 
Group by atividade;

Select cod_responsavel, salario , cod_gerente
From atividade Inner join departamento
            On atividade >= gerente
Where atividade > (
                    Select salario
                    From departamento
                   Where cod_gerente = (
                           Select nome, salario 
                           From departamento, funcionario 
                           Where funcionario >= cod_gerente    
                          )
);
