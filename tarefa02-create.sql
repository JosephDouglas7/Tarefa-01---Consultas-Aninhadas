Create table pessoas( 
      codigo INT PRIMARY KEY, 
      Nome NVARCHAR(50), 
      Idade INT 
); 

Insert into pessoas(codigo,nome,idade)  
Values 
     (1,”zé”,18), 
     (2,”she”,62), 
     (3,”horse”,65), 
     (4,”feijao”,18);  

Alter table pessoas 
Add constraint CHK_Idade check (idade = 18); 

Select Nome 
From pessoas 
Where idade not in (62,65);
