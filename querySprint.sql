#parte 1
CREATE USER 'sprintx'@'localhost' IDENTIFIED BY '1234'; #creacion de usuario administraodr y su clave
CREATE DATABASE sprint; #creacion de la base de datos
GRANT ALL PRIVILEGES ON sprint.* TO 'sprintx'@'localhost' WITH GRANT OPTION; #entregando privilegios al administrador
USE sprint; #indica que base de datos se va a utilizar

CREATE TABLE IF NOT EXISTS Proveedor( #creacion de la tabla
rut_pro INT(8) NOT NULL,
nombre_corp VARCHAR(35) NOT NULL,
fono1 BIGINT(11) NOT NULL,
fono2 BIGINT(11),
contacto VARCHAR(35) NOT NULL,
rep_legal VARCHAR(35) NOT NULL,
categoria VARCHAR(35) NOT NULL,
mail VARCHAR(45) NOT NULL,
PRIMARY KEY (rut_pro)
);

#insertar datos a la tabla
INSERT INTO Proveedor(rut_pro,nombre_corp,fono1,fono2,contacto,rep_legal,categoria,mail)
VALUES

('77777777','ATechnology','5691234567','5691234569','Juan_Perez','Pedro Urra','electronica','contacto@atech.cl'),
('88888888','Kingskong','5692345679','5692345670','Marco_Rivas','Marcelo Saavedra','electronica','contacto@kingskong.cl'),
('99999999','Vomistar','563456780','563456781','Saul_Roman','Hugo Cabezas','electronica','contacto@vomistar.cl'),
('66666666','VTRobo','5694578901','5694567892','Mario_Galvez','Hector Araos','electronica','contacto@vtrobo.cl'),
('55555555','IngramBus','5695678012','5695678913','Francisco_Lopez','Jose Caro','electronica','contacto@ingrambus.cl');

select * from Producto; #revisión de la tabla
drop table Producto; #elimianción de la tabla


CREATE TABLE IF NOT EXISTS Cliente(  #creacion de la tabla
nom_cli VARCHAR(30) NOT NULL,
ape_cli VARCHAR(30) NOT NULL,
dir_cli VARCHAR(45) NOT NULL
);

INSERT INTO Cliente(nom_cli,ape_cli,dir_cli) #insertando datos a la tabla
VALUES
('Gabriel','Febre','Brasil 1303Valparaiso'),
('Francisca','Marambio','Argentina 10Valparaiso'),
('Raquel','Arriagada','Francia 551Valparaiso'),
('Igor','Herrera','Las Heras 450 Valparaiso'),
('Marta','Jimenez','Carrera 206Valparaiso');

CREATE TABLE IF NOT EXISTS Producto(  #creando la tabla
nom_pro VARCHAR(20) NOT NULL,
precio INT(5) NOT NULL,
cat_pro VARCHAR(25) NOT NULL,
nombre_corp VARCHAR(35) NOT NULL,
color VARCHAR(30) NOT NULL,
stock INT(6)
);

INSERT INTO Producto(nom_pro,precio,cat_pro,nombre_corp,color,stock) # insertando datos a la tabla
VALUES
('HDD SSD','80600','Electronica','ATechnology','negro',90),
('RAM DDR4 3666','50600','Electronica','ATechnology','verde',10),
('Graphic Nvidia','200680','Electronica','Kingskong','rojo',20),
('Motherboard AMD','65600','Electronica','Kingskong','azul',100),
('HDD Externo USB','56000','Electronica','Vomistar','plata',500),
('Pendrive 32Gb','5200','Electronica','Vomistar','verde',100),
('Pendrive 64Gb','10900','Electronica','VTRobo','amarillo',500),
('Mouse inalambrico','32800','Electronica','VTRobo','celeste',120),
('Webcam','9900','Electronica','IngramBus','negro',500),
('Audifonos','10400','Electronica','IngramBus','negro',50);

#Consultas en SQL

#Cuál es la categoría de productos que más se repite. 
SELECT cat_pro, COUNT( cat_pro ) AS total
FROM  Producto;

#Cuáles son los productos con mayor stock
SELECT MAX(stock) as Stock_Maximo
FROM Producto;

#Qué color de producto es más común en nuestra tienda.
SELECT color, COUNT( color ) AS total
FROM  Producto;

#Cual o cuales son los proveedores con menor stock de productos
SELECT MIN(stock) as Stock_Minimo
FROM Producto;

#Cambien la categoría de productos más popular por ‘Electrónica y computación’.
UPDATE Producto SET cat_pro='Electrónica y computación' WHERE cat_pro='Electrónica';

#GRUPO 4
#Luis Quintana
#Claudio Delgado
#Carlos Aguirre

