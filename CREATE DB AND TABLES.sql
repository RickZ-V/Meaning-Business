create database MEANING_BUSSINES_TF
use MEANING_BUSSINES_TF

-- tables
-- Table: Contador
CREATE TABLE Contador (
    id int  NOT NULL,
    disponibilidad varchar(50)  NOT NULL,
    nombre varchar(100)  NOT NULL,
    apellido varchar(100)  NOT NULL,
    fecha_nac date  NOT NULL,
    estado_civil varchar(200)  NOT NULL,
    telefono int  NOT NULL,
    correo varchar(100)  NOT NULL,
    Curriculum_id int  NOT NULL,
    CONSTRAINT Contador_pk PRIMARY KEY  (id)
);

-- Table: Contrato
CREATE TABLE Contrato (
    Id int  NOT NULL,
    Estado varchar(50)  NOT NULL,
    fecha date  NOT NULL,
    Tipo_de_pago_id int  NOT NULL,
    Oferta_Laboral_id int  NOT NULL,
    Contador_id int  NOT NULL,
    CONSTRAINT Contrato_pk PRIMARY KEY  (Id)
);

-- Table: Curriculum
CREATE TABLE Curriculum (
    id int  NOT NULL,
    descripcion varchar(200)  NOT NULL,
    FormacionAcademica_id int  NOT NULL,
    Experiencia_Laboral_id int  NOT NULL,
    Formacion_Complementaria_id int  NOT NULL,
    CONSTRAINT Curriculum_pk PRIMARY KEY  (id)
);

-- Table: Empresa
CREATE TABLE Empresa (
    id int  NOT NULL,
    nombre varchar(200)  NOT NULL,
    telefono int  NOT NULL,
    Estructura_juridica_id int  NOT NULL,
    hubicacion varchar(200)  NOT NULL,
    Empresario_id int  NOT NULL,
    CONSTRAINT Empresa_pk PRIMARY KEY  (id)
);

-- Table: Empresario
CREATE TABLE Empresario (
    id int  NOT NULL,
    nombre varchar(100)  NOT NULL,
    apellidos varchar(100)  NOT NULL,
    telefono int  NOT NULL,
    correo varchar(100)  NOT NULL,
    CONSTRAINT Empresario_pk PRIMARY KEY  (id)
);

-- Table: Estructura_juridica
CREATE TABLE Estructura_juridica (
    id int  NOT NULL,
    nombre varchar(50)  NOT NULL,
    detalle nvarchar(100)  NOT NULL,
    CONSTRAINT Estructura_juridica_pk PRIMARY KEY  (id)
);

-- Table: Experiencia_Laboral
CREATE TABLE Experiencia_Laboral (
    id int  NOT NULL,
    rol varchar(200)  NOT NULL,
    nombre_empresa varchar(300)  NOT NULL,
    detalle varchar(300)  NOT NULL,
    fecha_inicio date  NOT NULL,
    fecha_final date  NOT NULL,
    CONSTRAINT Experiencia_Laboral_pk PRIMARY KEY  (id)
);

-- Table: FormacionAcademica
CREATE TABLE FormacionAcademica (
    id int  NOT NULL,
    titulo varchar(200)  NOT NULL,
    fecha_egresado date  NOT NULL,
    Universidad varchar(100)  NOT NULL,
    CONSTRAINT FormacionAcademica_pk PRIMARY KEY  (id)
);

-- Table: Formacion_Complementaria
CREATE TABLE Formacion_Complementaria (
    id int  NOT NULL,
    curso varchar(200)  NOT NULL,
    fecha date  NOT NULL,
    estado varchar(200)  NOT NULL,
    CONSTRAINT Formacion_Complementaria_pk PRIMARY KEY  (id)
);

-- Table: Oferta_Laboral
CREATE TABLE Oferta_Laboral (
    id int  NOT NULL,
    rol varchar(200)  NOT NULL,
    fecha_inicio date  NOT NULL,
    fecha_final date  NOT NULL,
    horario varchar(200)  NOT NULL,
    sueldo money  NOT NULL,
    disponibilidad varchar(50)  NOT NULL,
    Empresa_id int  NOT NULL,
    CONSTRAINT Oferta_Laboral_pk PRIMARY KEY  (id)
);

-- Table: Tipo_de_pago
CREATE TABLE Tipo_de_pago (
    id int  NOT NULL,
    nombre varchar(50)  NOT NULL,
    CONSTRAINT Tipo_de_pago_pk PRIMARY KEY  (id)
);

-- foreign keys
-- Reference: Contador_Curriculum (table: Contador)
ALTER TABLE Contador ADD CONSTRAINT Contador_Curriculum
    FOREIGN KEY (Curriculum_id)
    REFERENCES Curriculum (id);

-- Reference: Contrato_Contador (table: Contrato)
ALTER TABLE Contrato ADD CONSTRAINT Contrato_Contador
    FOREIGN KEY (Contador_id)
    REFERENCES Contador (id);

-- Reference: Contrato_Oferta_Laboral (table: Contrato)
ALTER TABLE Contrato ADD CONSTRAINT Contrato_Oferta_Laboral
    FOREIGN KEY (Oferta_Laboral_id)
    REFERENCES Oferta_Laboral (id);

-- Reference: Contrato_Tipo_de_pago (table: Contrato)
ALTER TABLE Contrato ADD CONSTRAINT Contrato_Tipo_de_pago
    FOREIGN KEY (Tipo_de_pago_id)
    REFERENCES Tipo_de_pago (id);

-- Reference: Curriculum_Experiencia_Laboral (table: Curriculum)
ALTER TABLE Curriculum ADD CONSTRAINT Curriculum_Experiencia_Laboral
    FOREIGN KEY (Experiencia_Laboral_id)
    REFERENCES Experiencia_Laboral (id);

-- Reference: Curriculum_FormacionAcademica (table: Curriculum)
ALTER TABLE Curriculum ADD CONSTRAINT Curriculum_FormacionAcademica
    FOREIGN KEY (FormacionAcademica_id)
    REFERENCES FormacionAcademica (id);

-- Reference: Curriculum_Formacion_Complementaria (table: Curriculum)
ALTER TABLE Curriculum ADD CONSTRAINT Curriculum_Formacion_Complementaria
    FOREIGN KEY (Formacion_Complementaria_id)
    REFERENCES Formacion_Complementaria (id);

-- Reference: Empresa_Empresario (table: Empresa)
ALTER TABLE Empresa ADD CONSTRAINT Empresa_Empresario
    FOREIGN KEY (Empresario_id)
    REFERENCES Empresario (id);

-- Reference: Empresa_Estructura_juridica (table: Empresa)
ALTER TABLE Empresa ADD CONSTRAINT Empresa_Estructura_juridica
    FOREIGN KEY (Estructura_juridica_id)
    REFERENCES Estructura_juridica (id);

-- Reference: Oferta_Laboral_Empresa (table: Oferta_Laboral)
ALTER TABLE Oferta_Laboral ADD CONSTRAINT Oferta_Laboral_Empresa
    FOREIGN KEY (Empresa_id)
    REFERENCES Empresa (id);

-- End of file.