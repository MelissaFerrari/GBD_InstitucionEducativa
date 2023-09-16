Use institucioneducativa;

create view estudiantes_por_asignatura as 
select * from Asignatura Asi
inner join AlumnoAsignatura Alu
	on Asi.id = Alu.Asignatura_id

