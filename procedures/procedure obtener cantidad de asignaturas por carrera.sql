
delimiter //

create procedure cant_asignaturas (in IDcarrera INT)
begin

select count(*)
from asignatura
where Carrera_id like IDcarrera;

end //


