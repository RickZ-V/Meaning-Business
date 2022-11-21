/*listar los nombres y apellidos de los contadores además el rol que tuvieron en sus experiencias laborales conjuntamente con el detalle que destacaron en esa labor.*/
SELECT C.nombre,C.apellido,EL.rol, EL.detalle
from Contador C
join Curriculum C2 on C.id = C2.Contador_id
join Experiencia_Laboral EL on C2.id = EL.Curriculum_id

/*listar los nombres de los empresarios y sus empresas con la cantidad de ofertas laborales que hace en cada uno de ellos.*/
select E.nombre ,E2.nombre ,count(OL.id) cantidad
from Empresario E
join Empresa E2 on E.id = E2.Empresario_id
join Oferta_Laboral OL on E2.id = OL.Empresa_id
group by E.nombre ,E2.nombre
order by count(OL.id)

/*Listar los id de los contratos conjuntamente con el tipo de pago que sea realiza en efectivo*/
select C.Id , Tdp.nombre
from Contrato C
join Tipo_de_pago Tdp on Tdp.id = C.Tipo_de_pago_id
where Tdp.nombre =  'Efectivo'
