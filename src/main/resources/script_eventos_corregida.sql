create database eventos_tfg2;
use eventos_tfg2;
 -- drop database eventos_tfg2;
-- drop table eventos;
 -- ALTER TABLE eventos MODIFY idEvento INT NOT NULL PRIMARY KEY;

CREATE TABLE eventos (
    idEvento INT NOT NULL,
    nombre_e VARCHAR(50) NOT NULL,
    descripcion_e VARCHAR(255) NOT NULL,
    fecha_inicio DATE NOT NULL,
    duracion INT NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    ciudad VARCHAR(20) NOT NULL,
    destacado CHAR(1) NOT NULL,
    aforo_max INT NOT NULL,
    minimo_asistencia INT NOT NULL,
    precio_decimal DOUBLE NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    activo BOOLEAN NOT NULL,
    PRIMARY KEY (idEvento)
);

CREATE TABLE usuarios
(USERNAME VARCHAR(45) NOT NULL primary key,
PASSWORD VARCHAR(45) NOT NULL,
EMAIL VARCHAR(100) NOT NULL UNIQUE,
NOMBRE VARCHAR(50),
DIRECCION VARCHAR(100),
ENABLED INT NOT NULL DEFAULT 1,
FECHA_REGISTRO DATE
);
CREATE TABLE PERFILES
(ID_PERFIL INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
NOMBRE VARCHAR(45) NOT NULL
);


CREATE TABLE usuarios_perfiles (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(45) NOT NULL,
  id_perfil INT NOT NULL,
  FOREIGN KEY (username) REFERENCES usuarios(username),
  FOREIGN KEY (id_perfil) REFERENCES perfiles(id_perfil)
);

CREATE TABLE Reservas (
  id_reserva INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_evento INT NOT NULL,
  USERNAME VARCHAR(11) NOT NULL,
  fecha_reserva DATETIME NOT NULL,
  cantidad_personas INT NOT NULL,
  FOREIGN KEY (id_evento) REFERENCES eventos(idEvento),
  FOREIGN KEY (USERNAME) REFERENCES Usuarios(USERNAME)
);

INSERT INTO eventos (idEvento, nombre_e, descripcion_e, fecha_inicio, duracion, direccion, ciudad, destacado, aforo_max, minimo_asistencia, precio_decimal, tipo, activo)
VALUES 
(1, "Festival de Música", "Festival de música en vivo con artistas locales e internacionales", "2023-05-20", 3, "Parque Principal", "Madrid", "S", 5000, 2000, 30000, "Festival", 1),
(2, "Fiesta Temática de los 80s", "Fiesta temática de los años 80s con música de la época y decoración retro", "2023-06-12", 4, "Calle 15 # 45-23", "Madrid", "N", 100, 50, 20000, "Fiesta", 1),
(3, "Feria de Gastronomía", "Feria de comida y bebida con la participación de chefs y restaurantes reconocidos", "2023-07-08", 2, "Centro de Convenciones", "Barcelona", "S", 10000, 5000, 25000, "Feria", 1),
(4, "Concierto de Rock", "Concierto de rock con bandas nacionales y extranjeras", "2023-08-15", 5, "Estadio Nemesio Camacho", "Barcelona", "N", 20000, 10000, 50000, "Concierto", 1),
(5, "Fiesta de Halloween", "Fiesta de Halloween con disfraces, música y decoración temática", "2023-10-31", 6, "Calle 20 # 45-67", "Valencia", "N", 200, 100, 15000, "Fiesta", 1),
(6, 'Concierto de rock en Valencia', 'Concierto en vivo con bandas locales', '2023-05-15', 3, 'Calle San Vicente 23', 'Valencia', 'S', 500, 50, 25.00, 'Concierto', 1),
(7, 'Curso de programación en Madrid', 'Aprende a programar con los expertos', '2023-05-22', 6, 'Calle Mayor 7', 'Madrid', 'N', 50, 10, 300.00, 'Concurso', 1),
(8, 'Feria de arte en Barcelona', 'Exposición de artistas internacionales', '2023-06-01', 2, 'Avenida Diagonal 321', 'Barcelona', 'N', 1000, 100, 0.00, 'Feria', 2),
(9, 'Festival de cine en Valencia', 'Proyección de películas internacionales', '2023-06-15', 5, 'Plaza del Ayuntamiento 5', 'Valencia', 'S', 300, 30, 10.00, 'Festival', 2),
(10, 'Concurso de programación en Madrid', 'Compitiendo para ser el mejor programador', '2023-06-25', 8, 'Calle Gran Vía 23', 'Madrid', 'S', 20, 5, 0.00, 'Concurso', 2);

INSERT INTO usuarios (USERNAME, PASSWORD, EMAIL, NOMBRE, DIRECCION, ENABLED, FECHA_REGISTRO)
VALUES
    ('user1', 'password1', 'user1@example.com', 'Juan', 'Calle Falsa 123', 1, '2023-02-14'),
    ('user2', 'password2', 'user2@example.com', 'Pedro', 'Avenida Real 456', 1, '2023-03-11'),
    ('user3', 'password3', 'user3@example.com', 'María', 'Plaza Mayor 789', 1, '2023-02-19'),
    ('user4', 'password4', 'user4@example.com', 'Luis', 'Calle del Sol 321', 1, '2023-03-24'),
    ('user5', 'password5', 'user5@example.com', 'Ana', 'Avenida del Bosque 654', 1, '2022-10-04'),
    ('user6', 'password6', 'user6@example.com', 'Jorge', 'Calle del Río 987', 1, '2023-02-19'),
    ('user7', 'password7', 'user7@example.com', 'Lucía', 'Plaza de la Libertad 246', 1, '2022-12-27')
;
INSERT INTO `perfiles` (`ID_PERFIL`,`NOMBRE`) VALUES (1,'GESTOR');
INSERT INTO `perfiles` (`ID_PERFIL`,`NOMBRE`) VALUES (2,'USUARIO');

INSERT INTO usuarios_perfiles (username, id_perfil)
VALUES 
('user1', 1),
('user2', 2),
('user3', 2),
('user4', 1),
('user5', 2);

INSERT INTO Reservas (id_evento, USERNAME, fecha_reserva, cantidad_personas)
VALUES (1, 'user1', '2023-04-15 10:00:00', 3),
       (2, 'user2', '2023-04-16 15:30:00', 2),
       (3, 'user3', '2023-04-17 20:00:00', 4),
       (4, 'user4', '2023-04-18 18:00:00', 1),
       (5, 'user5', '2023-04-19 12:00:00', 6);





-- CREATE USER grupo2 IDENTIFIED BY 'grupo2';
-- grant all privileges on eventos_tfg.* to grupo2;
-- FLUSH PRIVILEGES;
