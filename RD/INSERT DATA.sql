insert into Empresario(id, nombre, apellidos, telefono, correo)
values
    (01,'Juan','Porras',925589026,'juanporras@gmail.com'),
    (02,'Daniel','Mendoza',923423345,'danielmendoza@gmail.com'),
    (03,'Luis','Torres',934657123,'luistorres@gmail.com'),
    (04,'Alberto','Coronel',945343453,'albertocoronel@gmail.com')


insert into Estructura_juridica(id, nombre, detalle)
values
    (001,'S.A','Sociedades Anónimas'),
    (002,'S.A.C','Sociedad Anónima Cerrada'),
    (003,'S.A.A','Sociedad Anónima Abierta'),
    (004,'S.R.L','Sociedad Comercial de Responsabilidad Limitada')


insert into Empresa(id, nombre, telefono, Estructura_juridica_id, hubicacion, Empresario_id)
values
    (0001 ,'IKEA',9235461 , 001,'Brasil',01 ),
    (0002 ,'Fantaplaya ',53840108 , 003,'Noruega',01),
    (0003 ,'Mocostar',764565423 , 002,'Francia',04),
    (0004 ,'Responsaje',23434324 , 004,'Cuba',02),
    (0005 ,'Perado',634323433 , 001,'Italia',01),
    (0006 ,'Frencia',234235354 , 004,'Malawi',03),
    (0007 ,'Mármolchar',234342342 , 003,'Argelia',01),
    (0008 ,'Frágino',123123435 , 002,'Senegal',03),
    (0009 ,'Cerar',234345656 , 001,'Gibraltar',02),
    (0010 ,'Desadivelo',342343434 , 003,'Sudáfrica',01),
    (0011 ,'Prepriva',565675676 , 001,'Serbia',04),
    (0012 ,'portar',23254545, 002,'Egipto',02)

insert into Oferta_Laboral(id, Empresa_id, rol, fecha_inicio, fecha_final, horario, sueldo, disponibilidad)
values
    (232446 ,0001,'contador','03-01-2022','21-12-2023','horas-8',2000,'activo'),
    (456354 ,0002,'contador','23-02-2021','12-12-2025','horas-9',3000,'activo'),
    (234553 ,0003,'contador','29-06-2022','14-12-2024','horas-10',1231,'activo'),
    (325434 ,0004,'contador','13-09-2022','17-10-2028','horas-9',4123,'activo'),
    (685656 ,0005,'contador','23-12-2022','29-09-2023','horas-8',3421,'activo'),
    (435346 ,0006,'contador','30-11-2022','24-01-2025','horas-7',2334,'activo'),
    (234523 ,0007,'contador','12-04-2022','16-12-2023','horas-8',4352,'activo'),
    (123234 ,0008,'contador','01-02-2022','19-04-2024','horas-9',8674,'activo'),
    (768756 ,0009,'contador','11-06-2022','26-03-2026','horas-12',3243,'activo'),
    (435467 ,0010,'contador','09-11-2022','11-01-2023','horas-7',1234,'activo'),
    (766786 ,0011,'contador','03-12-2022','19-08-2025','horas-9',6756,'activo'),
    (231345 ,0012,'contador','03-10-2022','19-02-2026','horas-8',2344,'activo')


insert into Formacion_Complementaria (ID, CURSO, FECHA, ESTADO)
values
     (000001,'Contabilidad','20-08-2011','finalizado'),
     (000002,'ANÁLISIS Y PRESENTACIÓN DE DATOS CON POWER BI','12-03-2016','pendiente'),
     (000003,'GESTIÓN DE PROPIEDADES Y MANEJO DE AIRBNB ','16-02-2019','pendiente'),
     (000004,'GESTIÓN COMERCIAL','22-01-2014','finalizado'),
     (000005,'MARKETING DIGITAL','30-09-2018','pendiente'),
     (000006,'CONTABILIDAD Y FINANZAS','14-10-2012','finalizado')


insert into FormacionAcademica(ID, TITULO, FECHA_EGRESADO, UNIVERSIDAD)
values
     (00001,'Contador público','20-02-2005','Universidad Nacional Mayor de San Marcos'),
     (00002,'Contador privado','12-12-2012','Universidad Nacional de San Cristóbal de Huamanga'),
     (00003,'Consultor contable','23-11-2011','Universidad Nacional de San Antonio Abad del Cusco'),
     (00004,'Contador fiscal','02-06-2015','Universidad Nacional Agraria La Molina'),
     (00005,'Contador gubernamental','05-03-2000','Universidad Nacional Jorge Basadre Grohmann'),
     (00006,'Contador público','03-01-2009','Universidad Nacional Tecnológica de San Juan de Lurigancho')

insert into Experiencia_Laboral(id, rol, nombre_empresa, detalle, fecha_inicio, fecha_final)
values
     (34334,'contador','ZURA','realizo exelente servicio','23-02-2011','26-11-2011'),
     (43423,'asistente','ZURICH','realizo exelente servicio','25-03-2015','23-10-2017'),
     (23345,'secretario','TAURUS','realizo exelente servicio','14-01-2014','27-12-2015'),
     (12334,'contador','ZARAGOZA','realizo exelente servicio','12-04-2011','20-12-2011'),
     (45654,'asistente','ARTESCO','realizo exelente servicio','05-06-2018','12-11-2020'),
     (34554,'contador','PUMA','realizo exelente servicio','08-01-2015','11-12-2018')

insert into Curriculum(id, descripcion, FormacionAcademica_id, Experiencia_Laboral_id, Formacion_Complementaria_id)
values
     (231231,'detalle de la informacion del contador',00001 ,34334,000001),
     (234342,'detalle de la informacion del contador',00002,43423,000002),
     (545463,'detalle de la informacion del contador',00003,23345,000003),
     (324343,'detalle de la informacion del contador',00004,12334,000004),
     (324354,'detalle de la informacion del contador',00005,45654,000005),
     (123243,'detalle de la informacion del contador',00006,34554,000006)

insert into Contador(id, disponibilidad, nombre, apellido, fecha_nac, estado_civil, telefono, correo, Curriculum_id)
values
      (71543791 ,'libre','Adil','Seco','03-01-2000','casado',924323432,'adilseco@gmail.com',231231),
      (34534544 ,'libre','Chloe','Reyes','11-02-1954','soltero',967675665,'Chloe@gmail.com',234342),
      (23434345 ,'libre','Judith','Rovira','23-09-1938','soltero',956456546,'Judith@gmail.com',545463),
      (12312324 ,'libre','Alejandro','Marrero','27-11-2000','casado',923424343,'Alejandro@gmail.com',324343),
      (45654523 ,'libre','Bryan','Vicente','12-12-1988','soltero',934522344,'Bryan@gmail.com',324354),
      (12324343 ,'libre','Max','Zaragoza','30-05-1990','casado',923423434,'Max@gmail.com',123243)

insert into Tipo_de_pago(id, nombre)
values
    (0001,'Efectivo'),
    (0002,'Cheques'),
    (0003,'Tarjeta de débito'),
    (0004,'Tarjeta de crédito'),
    (0005,'Pago móvil'),
    (0006,'Transferencia bancaria electrónica')


insert into Contrato(id, oferta_laboral_id, estado, fecha, tipo_de_pago_id, contador_id)
values
    (24345,232446,'pendiente','25-12-2022',0003,71543791),
    (45344,234553,'finalizado','10-02-2022',0006,34534544),
    (34544,123234,'pendiente','21-08-2022',0004,23434345),
    (78674,685656,'finalizado','01-01-2022',0002,12312324),
    (34235,234523,'pendiente','23-10-2022',0001,45654523),
    (12312,768756,'finalizado','05-02-2022',0005,12324343)