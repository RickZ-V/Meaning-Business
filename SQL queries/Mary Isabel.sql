/*Lista de contadores que culminaron sus estudios de una universidad*/
create function f_buscar_contador_x_universidad(@Universidad nvarchar(100))
   returns table
       return
       select distinct apellido +','+nombre as Nombre_del_contador
       from Contador Co
           join Curriculum Cu on Co.Curriculum_id = Cu.id
           join FormacionAcademica FA on Cu.FormacionAcademica_id = FA.id
       where Universidad=@Universidad

/*Lista de empresas y sueldos en un determinado rango*/
create function f_buscar_x_sueldo(@sueldo_minimo int,@sueldo_maximo int)
   returns table
   return
   select distinct nombre,sueldo
   from Empresa E
       join Oferta_Laboral OL on E.id = OL.Empresa_id
   where sueldo<=@sueldo_maximo and sueldo>=@sueldo_minimo and disponibilidad='activo'
   
/*Tabla de contadores por meses de experiencia*/
create function f_mayor_experiencia_laboral(@rol nvarchar(20)) returns table
   return
   select distinct datediff(month,fecha_inicio,fecha_final) as [meses de experiencia], nombre,apellido,telefono,correo
   from [Experiencia_Laboral] EL
      join Curriculum Cu on EL.id = Cu.Experiencia_Laboral_id
      join Contador Co on Cu.id = Co.Curriculum_id
   where Rol=@rol and detalle='realizo exelente servicio'
select * from dbo.f_mayor_experiencia_laboral('contador')
