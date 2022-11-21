/*Cantidad de Contadores que su contrato haya culminado y que su tipo de pago sea a través de cheques.*/
select count(Con.id)
from Contador Con
join Contrato C on Con.id = C.Contador_id
join Tipo_de_pago Tdp on C.Tipo_de_pago_id = Tdp.id
where C.Estado='finalizado' and Tdp.id=4

/*Cantidad de contadores que estén libres y que su estado civil sea soltero*/
select Con.nombre, Con.apellido,Con.estado_civil, count(Con.id) cantidad
from Contador Con
where Con.disponibilidad='libre' and Con.estado_civil='soltero'
group by Con.nombre, Con.apellido, Con.estado_civil
order by count(Con.id)

/*Cantidad de empresa que ofrezca un sueldo mayor a 4000 soles y su rango de 		horario no sea menor que 8 horas.*/
select count(E.id)
from Empresa E
join Oferta_Laboral OL on E.id = OL.Empresa_id
where OL.horario > 'horas-8' and Ol.sueldo > 4000
