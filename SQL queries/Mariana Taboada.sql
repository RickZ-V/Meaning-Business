/*Listar los nombres y apellidos de las personas de acuerdo al rol dado como 		un dato que fueron recomendados por las empresas con 3 años de trabajo.*/
create function f_rol_recomendados(@rol varchar(200)) 	returns table
return
select distinct nombre, apellido
from Contador C
join Curriculum C2 on C.Curriculum_id = C2.id
join Experiencia_Laboral EL on C2.Experiencia_Laboral_id 	= EL.id
where Rol=@rol and detalle='realizo exelente servicio' 	and datediff(year,fecha_inicio,fecha_final)=3
select * from dbo.f_rol_recomendados('contador')

/*Contadores que se encuentren solteros y tengan un título dado como dato*/
create function f_contadores_titulo(@titulo varchar(200)) returns table
return select distinct nombre, estado_civil, TITULO
      from Contador C
Join Curriculum C2 on C.Curriculum_id = C2.id
join FormacionAcademica FA on C2.FormacionAcademica_id = FA.id
where FA.TITULO=@titulo and C.estado_civil='soltero'
select * from dbo.f_contadores_titulo ('Consultor contable')

/*Cantidad de empresa que ofrezca un sueldo menor de 8000 soles y su rango de horario no sea menor que 10 horas*/
select count(E.id)
from Empresa E
join Oferta_Laboral OL on E.id = OL.Empresa_id
where OL.horario > 'horas-10' and Ol.sueldo < 8000
