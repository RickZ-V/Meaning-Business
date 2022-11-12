/*Listar los nombre y apellidos de los contadores recomendados de empresas 	con 6 años de trayectoria.*/
select Ct.nombre, Ct.apellido, count(Ct.id) cantidad, Ct.trayectoria
from Contador Ct
where Ct.id=1 and Ct.trayectoria='6'
group by Ct.nombre,Ct.apellido, , Ct.trayectoria
order by count(Con.id)

/*Contadores que no tengan hijos que tengan disponibilidad para viajar por 2 semanas y sepan 2  idiomas.*/
select Ct.nombre, Ct.apellido, Ct.familia, count(Ct.id) cantidad, Ct.idioma
from Contador Ct
where Ct.disponibilidad_viaje='disponible'
and Ct.familia='sin hijos'
where Ct.id=1 and Ct.idioma='2'
group by Ct.nombre,Ct.apellido, Ct.familia , Ct.idioma
order by count(Con.id)
