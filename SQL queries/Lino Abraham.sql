/*lista de contadores con precios más económicos.*/
select nombre, apellido, correo from Contador
join Oferta_Laboral on Empresa_id
where sueldo < 1500

/*Lista de contadores con edad mayor de 35 años.*/
select nombre, apellido, fecha_nac, telefono from Contador
select*from contador where fecha_nac <=v 1987 
