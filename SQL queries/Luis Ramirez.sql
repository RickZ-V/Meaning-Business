/*Cantidad de contadores casados que tienen su contrato pendiente y que su tipo de pago es a través de tarjeta de débito.*/
select count(Con.id)
from Contador Con
join Contrato C on Con.id = C.Contador_id
join Tipo_de_pago Tdp on C.Tipo_de_pago_id = Tdp.id
where C.Estado='pendiente' and Tdp.id=3

/*Cantidad de Empresas con una estructura jurídica S.A. con un sueldo mayor a 3000 y con un horario de 8 o 9 horas.*/
select count(E.id)
from Empresa E
join Estructura_juridica Ej on E.Estructura_juridica_id = Ej.id
join Oferta_Laboral OL on E.id = OL.Empresa_id
where Ej.id=1 and OL.horario='horas-9' and Ol.sueldo > 3000
  or Ej.id=1 and OL.horario='horas-8' and Ol.sueldo > 3000