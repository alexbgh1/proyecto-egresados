USE db;

CREATE TABLE IF NOT EXISTS User(
    -- Informacion personal
    id INT NOT NULL AUTO_INCREMENT,
    rut varchar(255) UNIQUE,
    nombres varchar(255),
    apellidos varchar(255),
    telefono varchar(255),
    descripcion  varchar(255),
    foto varchar(255),
    -- Informacion de localidad
    pais varchar(255),
    region varchar(255),
    comuna varchar(255),
    direccion varchar(255),
    -- Informacion de contacto
    instagram varchar(64),
    twitter varchar(64),
    facebook varchar(64),
    linkedin varchar(64),
    -- Informacion de la cuenta
    mail varchar(255),
    password varchar(255),
    categoria varchar(64),
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Trabajo(
    id_trabajo INT NOT NULL AUTO_INCREMENT,
    ref_user_trabajo INT,
    -- Informacion del trabajo
    situacion_laboral varchar(255),
    lugar_de_trabajo varchar(255),
    cargo varchar(255),
    -- Informacion inicio y fin
    inicio varchar(255),
    fin varchar(255),
    PRIMARY KEY (id_trabajo),
    FOREIGN KEY (ref_user_trabajo) REFERENCES User (id)
);


CREATE TABLE IF NOT EXISTS Ofertas(
    id_oferta INT NOT NULL AUTO_INCREMENT,
    ref_user_oferta INT,
    -- Informacion de la oferta
    titulo varchar(255),
    descripcion varchar(255),
    duracion varchar(255),
    remuneracion INT,
    tipo varchar(255),
    -- Informacion extra
    fecha_creacion varchar(255),
    visibilidad varchar(255),
    PRIMARY KEY (id_oferta),
    FOREIGN KEY (ref_user_oferta) REFERENCES User (id)
);

CREATE TABLE IF NOT EXISTS Publicaciones(
    id_publicacion INT NOT NULL AUTO_INCREMENT,
    ref_user_publicacion INT,
    -- Informacion de la publicacion
    titulo varchar(255),
    descripcion TEXT,
    -- Informacion extra
    fecha_creacion varchar(255),
    PRIMARY KEY (id_publicacion),
    FOREIGN KEY (ref_user_publicacion) REFERENCES  User (id)
);


show tables;