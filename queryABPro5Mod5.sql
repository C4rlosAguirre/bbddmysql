#parte 1
CREATE USER 'modulo5'@'localhost' IDENTIFIED BY '1234'; #creacion de usuario administraodr y su clave
CREATE DATABASE abpro5mod5; #creacion de la base de datos
GRANT ALL PRIVILEGES ON abpro5mod5.* TO 'modulo5'@'localhost' WITH GRANT OPTION; #entregando privilegios al administrador
USE abpro5mod5; #indica que base de datos se va a utilizar

#parte 2

CREATE TABLE IF NOT EXISTS usuarios(
id_usuario INT(8) NOT NULL,
nombre VARCHAR(25) NOT NULL,
apellido VARCHAR(25) NOT NULL,
contraseña VARCHAR(8) NOT NULL,
zona_horaria DATETIME NOT NULL,
genero VARCHAR(25),
telefono VARCHAR(11) NOT NULL
);

CREATE TABLE IF NOT EXISTS horas(
id_ingreso VARCHAR(9) NOT NULL,
id_usuario INT(8) NOT NULL,
fecha_hora_ingreso DATETIME NOT NULL
);

INSERT INTO usuarios
VALUES
('124567892','Juan','Zuñiga','3N3r0',NOW(),'no declarado','56912345677'),
('156568682','Francisco','Marambio','F3br3r0',NOW(),'no declarado','56912345877'),
('208767823','Pedro','Arriagada','M4rz0',NOW(),'no declarado','56912375677'),
('121212221','Ivan','Herrera','4Br1l',NOW(),'no declarado','56992345677'),
('158658666','Maria','Jimenez','M4y0',NOW(),'no declarado','56912385677'),
('187565838','Elena','Fredes','Jun10',NOW(),'no declarado','56912375677'),
('109857465','Ninette','Farias','Jul10',NOW(),'no declarado','56992345677'),
('90376453','Nadia','Belmar','4G0sto',NOW(),'no declarado','56917345677');

#parte 3

SELECT DATE_SUB(zona_horaria,INTERVAL 1 HOUR) 
FROM usuarios ;

SET GLOBAL time_zone = "America/Buenos Aires";
SELECT * FROM usuarios;

TRUNCATE TABLE usuarios;

#parte 4

INSERT INTO horas
VALUES

('1','124567892',NOW()),
('2','156568682',NOW()),
('3','208767823',NOW()),
('4','121212221',NOW()),
('5','158658666',NOW()),
('6','187565838',NOW()),
('7','109857465',NOW()),
('8','90376453',NOW());

SELECT * FROM horas;

INSERT INTO usuarios
VALUES

('124567892','Juan','Zuñiga','3N3r0',NOW(),'no declarado','56912345677'),
('156568682','Francisco','Marambio','F3br3r0',NOW(),'no declarado','56912345877'),
('208767823','Pedro','Arriagada','M4rz0',NOW(),'no declarado','56912375677'),
('121212221','Ivan','Herrera','4Br1l',NOW(),'no declarado','56992345677'),
('158658666','Maria','Jimenez','M4y0',NOW(),'no declarado','56912385677'),
('187565838','Elena','Fredes','Jun10',NOW(),'no declarado','56912375677'),
('109857465','Ninette','Farias','Jul10',NOW(),'no declarado','56992345677'),
('90376453','Nadia','Belmar','4G0sto',NOW(),'no declarado','56917345677');

SELECT * FROM usuarios;

#parte 5


#id_usuario INT(8) NOT NULL, --> optimo, 8 valores requeridos por el rut y cantidad de números.
#nombre VARCHAR(25) NOT NULL,  --> optimo, 25 valores máximos de nombre y tipo de dato.
#apellido VARCHAR(25) NOT NULL,  --> optimo, 25 valores maximos de apellido y tipo de dato.
#contraseña VARCHAR(8) NOT NULL,  --> optimo, 8 valores estandar para una contraseña segura.
#zona_horaria DATETIME NOT NULL,  --> optimo, formato para capturar fecha y hora en el que se realiza la acción.
#genero VARCHAR(25),  --> optimo, 25 valores máximos para definición de genero.
#telefono VARCHAR(11) NOT NULL  --> optimo, 11 cantidad de valores asociados a números estándar de telefonos.



#id_ingreso VARCHAR(9) NOT NULL,  --> optimo, 9 valores máximos para la cantidad de items egistrados
#id_usuario INT(8) NOT NULL,  --> optimo, 8 valores requeridos por el rut y cantidad de números.
#fecha_hora_ingreso DATETIME NOT NULL  --> optimo, formato para capturar fecha y hora en el que se realiza la acción.


#parte 6

CREATE TABLE IF NOT EXISTS Contactos(
id_contacto INT(8) NOT NULL,
id_usuario INT(8) NOT NULL,
telefono VARCHAR(11) NOT NULL,
mail VARCHAR(35) NOT NULL
);

#parte 7

#se mantiene con las mismas características los valores de ambas celdas para lograr hacer una relación de
# una a una, convirtiendo la base de datos en relacional. 