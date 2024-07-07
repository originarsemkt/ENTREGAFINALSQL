use tecnofull;

select categoriaproducto from tecnofull;
SELECT * FROM articulosproveedores;

SHOW TABLES;
show views;

SELECT * FROM articulosproveedores;
SHOW FULL TABLES IN TECNOFULL WHERE TABLE_TYPE LIKE 'VIEW';

SELECT * FROM DetalleEnvio;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
DESCRIBE DetalleEnvio;
SELECT * FROM DetalleEnvio;
CREATE VIEW ProductosPorCategoria AS SELECT c.NombreCategoria, p.NombreProducto FROM Categorias c JOIN Productos p ON c.CategoriaID = p.CategoriaID;

SELECT TABLE_NAME 
FROM INFORMATION_SCHEMA.VIEWS 
WHERE TABLE_SCHEMA = 'tecnofull';

SELECT ROUTINE_NAME 
FROM INFORMATION_SCHEMA.ROUTINES 
WHERE ROUTINE_TYPE = 'PROCEDURE' 
AND ROUTINE_SCHEMA = 'tecnofull';

SELECT ROUTINE_NAME 
FROM INFORMATION_SCHEMA.ROUTINES 
WHERE ROUTINE_TYPE = 'FUNCTION' 
AND ROUTINE_SCHEMA = 'tecnofull';

INSERT INTO venta (ID, Fecha, Monto, EmpleadoID, ClienteID)
VALUES
(22, '2023-07-10', 150.00, 1, 1),
(23, '2023-08-10', 200.00, 2, 2),
(24, '2023-09-10', 250.00, 3, 3),
(25, '2023-10-10', 300.00, 4, 4),
(26, '2023-11-10', 350.00, 5, 5),
(27, '2023-12-10', 400.00, 1, 6),
(28, '2024-01-10', 450.00, 2, 7),
(29, '2024-02-10', 500.00, 3, 8),
(30, '2024-03-10', 550.00, 4, 9),
(31, '2024-04-10', 600.00, 5, 10),
(32, '2024-05-10', 650.00, 1, 11),
(33, '2024-05-15', 700.00, 2, 12),
(34, '2024-05-20', 750.00, 3, 13),
(35, '2024-05-25', 800.00, 4, 14),
(36, '2024-05-30', 850.00, 5, 15),
(37, '2024-05-05', 900.00, 1, 16),
(38, '2024-05-10', 950.00, 2, 17),
(39, '2024-05-15', 1000.00, 3, 18),
(40, '2024-05-20', 1050.00, 4, 19),
(41, '2024-05-25', 1100.00, 5, 20);

SELECT 
    TABLE_NAME AS 'Tabla',
    COLUMN_NAME AS 'Columna',
    DATA_TYPE AS 'Tipo de Dato'
FROM 
    INFORMATION_SCHEMA.COLUMNS
WHERE 
    TABLE_SCHEMA = 'tecnofull'
ORDER BY 
    TABLE_NAME, 
    ORDINAL_POSITION;
    
CREATE VIEW ProductosPorCategoria AS 
SELECT c.Nombre AS NombreCategoria, p.Nombre AS NombreProducto 
FROM categoriaproducto c 
JOIN producto p 
ON c.ID = p.CategoríaID;

select * from cliente;

INSERT INTO cliente (ID, Nombre, Apellido, Dirección, Teléfono, CorreoElectrónico)
VALUES
(23, 'Juan', 'Pérez', 'Calle 1', '123456789', 'juan.perez@example.com'),
(24, 'María', 'López', 'Calle 2', '987654321', 'maria.lopez@example.com'),
(25, 'Carlos', 'García', 'Calle 3', '456789123', 'carlos.garcia@example.com'),
(26, 'Ana', 'Martínez', 'Calle 4', '789123456', 'ana.martinez@example.com'),
(27, 'Luis', 'Fernández', 'Calle 5', '321654987', 'luis.fernandez@example.com'),
(28, 'Marta', 'Gómez', 'Calle 6', '654987321', 'marta.gomez@example.com'),
(29, 'Pedro', 'Díaz', 'Calle 7', '987321654', 'pedro.diaz@example.com'),
(30, 'Laura', 'Hernández', 'Calle 8', '321987654', 'laura.hernandez@example.com'),
(31, 'Sofía', 'Ruiz', 'Calle 9', '654321987', 'sofia.ruiz@example.com'),
(32, 'David', 'Jiménez', 'Calle 10', '987654321', 'david.jimenez@example.com'),
(33, 'Elena', 'Mendoza', 'Calle 11', '123123123', 'elena.mendoza@example.com'),
(34, 'Miguel', 'Silva', 'Calle 12', '456456456', 'miguel.silva@example.com'),
(35, 'Rosa', 'Torres', 'Calle 13', '789789789', 'rosa.torres@example.com'),
(36, 'Antonio', 'Vargas', 'Calle 14', '321321321', 'antonio.vargas@example.com'),
(37, 'Carmen', 'Castro', 'Calle 15', '654654654', 'carmen.castro@example.com'),
(38, 'Francisco', 'Ortega', 'Calle 16', '987987987', 'francisco.ortega@example.com'),
(39, 'Isabel', 'Ramos', 'Calle 17', '123456789', 'isabel.ramos@example.com'),
(40, 'José', 'Morales', 'Calle 18', '987654321', 'jose.morales@example.com'),
(41, 'Patricia', 'Sánchez', 'Calle 19', '456789123', 'patricia.sanchez@example.com'),
(42, 'Ricardo', 'Reyes', 'Calle 20', '789123456', 'ricardo.reyes@example.com');

select * from producto;

INSERT INTO producto (ID, Nombre, Descripción, Precio, CategoríaID, MarcaID, ModeloID, ProveedorID)
VALUES
(15, 'Cargador Rápido', 'Cargador rápido para celulares', 20.00, 1, 1, 1, 1),
(16, 'Funda Protectora', 'Funda protectora para iPhone', 15.00, 2, 2, 2, 2),
(17, 'Auriculares Bluetooth', 'Auriculares inalámbricos', 50.00, 3, 3, 3, 3),
(18, 'Pantalla LCD', 'Pantalla LCD de reemplazo', 100.00, 4, 4, 4, 4),
(19, 'Batería', 'Batería para smartphone', 25.00, 5, 5, 5, 5),
(20, 'Cable USB', 'Cable USB tipo C', 10.00, 6, 6, 6, 6),
(21, 'Protector de Pantalla', 'Protector de pantalla de vidrio templado', 8.00, 7, 7, 7, 7),
(22, 'Altavoz Bluetooth', 'Altavoz portátil', 30.00, 8, 8, 8, 8),
(23, 'Soporte para Auto', 'Soporte para celular en auto', 12.00, 9, 9, 9, 9),
(24, 'Tarjeta de Memoria', 'Tarjeta de memoria microSD', 20.00, 10, 10, 10, 10),
(25, 'Adaptador de Audio', 'Adaptador de audio para auriculares', 5.00, 11, 11, 11, 11),
(26, 'Lentes de Realidad Virtual', 'Lentes VR para smartphone', 40.00, 12, 12, 12, 12),
(27, 'Batería Externa', 'Batería externa de alta capacidad', 60.00, 13, 13, 13, 13),
(28, 'Teclado Bluetooth', 'Teclado inalámbrico', 25.00, 14, 14, 14, 14),
(29, 'Mouse Bluetooth', 'Mouse inalámbrico', 20.00, 15, 15, 15, 15),
(30, 'Cable HDMI', 'Cable HDMI para TV', 15.00, 16, 16, 16, 16),
(31, 'Cargador Inalámbrico', 'Cargador inalámbrico para celulares', 30.00, 17, 17, 17, 17),
(32, 'Soporte para Tablet', 'Soporte ajustable para tablet', 18.00, 18, 18, 18, 18),
(33, 'Lámpara LED', 'Lámpara LED con puerto USB', 22.00, 19, 19, 19, 19),
(34, 'Micrófono', 'Micrófono de condensador', 45.00, 20, 20, 20, 20);

select * from detallecompra;
INSERT INTO detallecompra (ClienteID, ProductoID, Cantidad, Precio, FechaCompra) 
VALUES
(1, 1, 2, 20.00, '2023-07-10'),
(3, 2, 1, 25.00, '2023-08-10'),
(4, 3, 3, 30.00, '2023-09-10'),
(5, 4, 1, 35.00, '2023-10-10'),
(6, 5, 2, 40.00, '2023-11-10'),
(7, 6, 1, 45.00, '2023-12-10'),
(8, 7, 3, 50.00, '2024-01-10'),
(9, 8, 1, 55.00, '2024-02-10'),
(10, 9, 2, 60.00, '2024-03-10'),
(11, 10, 1, 65.00, '2024-04-10'),
(13, 11, 3, 70.00, '2024-05-10'),
(14, 12, 1, 75.00, '2024-05-15'),
(15, 13, 2, 80.00, '2024-05-20'),
(16, 14, 1, 85.00, '2024-05-25'),
(17, 15, 3, 90.00, '2024-05-30'),
(18, 16, 1, 95.00, '2024-06-01'),
(19, 17, 2, 100.00, '2024-06-02'),
(20, 18, 1, 105.00, '2024-06-03'),
(21, 19, 3, 110.00, '2024-06-04'),
(23, 20, 2, 115.00, '2024-06-05');

select * from cliente;

select * from categoriaproducto;
DELETE FROM categoriaproducto;
TRUNCATE TABLE categoriaproducto;

INSERT INTO categoriaproducto (ID, name, Descripcion) 
VALUES
(1, 'Accesorios', 'Accesorios para celulares y dispositivos móviles'),
(2, 'Repuestos', 'Repuestos y partes para reparación de dispositivos'),
(3, 'Software', 'Aplicaciones y software para dispositivos móviles'),
(4, 'Herramientas', 'Herramientas para la reparación de dispositivos'),
(5, 'Módulos', 'Pantallas para reparación de modulos'),
(6, 'Servicios', 'Servicios de reparación y mantenimiento de dispositivos'),
(7, 'Tintas', 'Cartuchos y Toners'),
(8, 'Computación', 'Partes y accesorios de computación');

DESCRIBE categoriaproducto;
-- Renombrar la columna mal codificada
ALTER TABLE categoriaproducto CHANGE COLUMN `ï»¿id` `ID` INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

-- Asegurarse de que las otras columnas estén correctamente definidas
ALTER TABLE categoriaproducto MODIFY COLUMN `name` TEXT NOT NULL;
ALTER TABLE categoriaproducto ADD COLUMN `Descripcion` TEXT NOT NULL;

select * from detalleservicio;
describe detalleservicio;

-- Juan Pérez (ID 1)
INSERT INTO detalleservicio (ClienteID, ServicioID, Descripción, Costo, FechaServicio)
VALUES (1, 1, 'Reparación de pantalla de celular', 50.00, '2024-07-01'),
       (1, 2, 'Reemplazo de batería de celular', 30.00, '2024-07-05'),
       (1, 3, 'Venta de funda protectora para celular', 20.00, '2024-07-10');

-- Luis Martínez (ID 3)
INSERT INTO detalleservicio (ClienteID, ServicioID, Descripción, Costo, FechaServicio)
VALUES (3, 4, 'Reparación de placa base de laptop', 120.00, '2024-07-02'),
       (3, 5, 'Limpieza interna de computadora', 80.00, '2024-07-06');

-- María Rodríguez (ID 4)
INSERT INTO detalleservicio (ClienteID, ServicioID, Descripción, Costo, FechaServicio)
VALUES (4, 6, 'Reparación de pantalla de tablet', 60.00, '2024-07-03'),
       (4, 7, 'Venta de cargador para celular', 15.00, '2024-07-08');

-- Carlos López (ID 5)
INSERT INTO detalleservicio (ClienteID, ServicioID, Descripción, Costo, FechaServicio)
VALUES (5, 8, 'Reparación de cámara de celular', 40.00, '2024-07-04'),
       (5, 9, 'Instalación de sistema operativo en computadora', 100.00, '2024-07-09');

INSERT INTO detalleservicio (ClienteID, ServicioID, Descripción, Costo, FechaServicio) VALUES
(1, 1, 'Reparación de pantalla', 100.00, '2023-07-10'),
(2, 2, 'Cambio de batería', 50.00, '2023-08-10'),
(3, 3, 'Reparación de cámara', 80.00, '2023-09-10'),
(4, 4, 'Actualización de software', 30.00, '2023-10-10'),
(5, 5, 'Limpieza de dispositivo', 20.00, '2023-11-10'),
(6, 6, 'Reparación de botones', 60.00, '2023-12-10'),
(7, 7, 'Reparación de altavoz', 70.00, '2024-01-10'),
(8, 8, 'Reemplazo de carcasa', 90.00, '2024-02-10'),
(9, 9, 'Optimización de rendimiento', 40.00, '2024-03-10'),
(10, 10, 'Reparación de puerto de carga', 50.00, '2024-04-10'),
(11, 11, 'Reparación de micrófono', 60.00, '2024-05-10'),
(12, 12, 'Desbloqueo de dispositivo', 70.00, '2024-05-15'),
(13, 13, 'Reparación de pantalla', 100.00, '2024-05-20'),
(14, 14, 'Cambio de batería', 50.00, '2024-05-25'),
(15, 15, 'Reparación de cámara', 80.00, '2024-05-30');

-- Sofía Gómez (ID 6)
INSERT INTO detalleservicio (ClienteID, ServicioID, Descripción, Costo, FechaServicio)
VALUES (6, 11, 'Reparación de conector de audífonos de celular', 20.00, '2024-07-21'),
       (6, 12, 'Venta de disco SSD para laptop', 70.00, '2024-07-22');

-- Daniel Fernández (ID 7)
INSERT INTO detalleservicio (ClienteID, ServicioID, Descripción, Costo, FechaServicio)
VALUES (7, 13, 'Reparación de micrófono de celular', 25.00, '2024-07-23'),
       (7, 14, 'Limpieza de virus en computadora', 15.00, '2024-07-24');

-- Laura Hernández (ID 8)
INSERT INTO detalleservicio (ClienteID, ServicioID, Descripción, Costo, FechaServicio)
VALUES (8, 15, 'Reparación de pantalla táctil de tablet', 40.00, '2024-07-25'),
       (8, 16, 'Instalación de tarjeta de video en computadora', 90.00, '2024-07-26');

-- David Jiménez (ID 9)
INSERT INTO detalleservicio (ClienteID, ServicioID, Descripción, Costo, FechaServicio)
VALUES (9, 17, 'Reparación de botón de volumen de celular', 15.00, '2024-07-27'),
       (9, 18, 'Venta de mouse óptico para computadora', 25.00, '2024-07-28');

-- Andrea Ruiz (ID 10)
INSERT INTO detalleservicio (ClienteID, ServicioID, Descripción, Costo, FechaServicio)
VALUES (10, 19, 'Reparación de batería de tablet', 30.00, '2024-07-29'),
       (10, 20, 'Instalación de disco duro externo en computadora', 50.00, '2024-07-30');

-- Eva Sánchez (ID 21)
INSERT INTO detalleservicio (ClienteID, ServicioID, Descripción, Costo, FechaServicio)
VALUES (21, 1, 'Reparación de teléfonos', 49.99, '2024-07-31'),
       (21, 2, 'Mantenimiento de computadoras', 89.99, '2024-08-01');

-- Juan Pérez (ID 23)
INSERT INTO detalleservicio (ClienteID, ServicioID, Descripción, Costo, FechaServicio)
VALUES (23, 3, 'Instalación de software', 39.99, '2024-08-02'),
       (23, 4, 'Reparación de electrodomésticos', 59.99, '2024-08-03');

-- María Rodríguez (ID 24)
INSERT INTO detalleservicio (ClienteID, ServicioID, Descripción, Costo, FechaServicio)
VALUES (24, 5, 'Soporte técnico remoto', 29.99, '2024-08-04'),
       (24, 6, 'Configuración de redes', 79.99, '2024-08-05');

-- Carlos López (ID 25)
INSERT INTO detalleservicio (ClienteID, ServicioID, Descripción, Costo, FechaServicio)
VALUES (25, 7, 'Limpieza de virus', 69.99, '2024-08-06'),
       (25, 8, 'Recuperación de datos', 99.99, '2024-08-07');

-- Ana Martínez (ID 26)
INSERT INTO detalleservicio (ClienteID, ServicioID, Descripción, Costo, FechaServicio)
VALUES (26, 9, 'Asesoramiento tecnológico', 19.99, '2024-08-08'),
       (26, 10, 'Mantenimiento de impresoras', 29.99, '2024-08-09');

-- Luis Fernández (ID 27)
INSERT INTO detalleservicio (ClienteID, ServicioID, Descripción, Costo, FechaServicio)
VALUES (27, 11, 'Reparación de teléfonos', 49.99, '2024-08-10'),
       (27, 12, 'Mantenimiento de computadoras', 89.99, '2024-08-11');

-- Marta Gómez (ID 28)
INSERT INTO detalleservicio (ClienteID, ServicioID, Descripción, Costo, FechaServicio)
VALUES (28, 13, 'Instalación de software', 39.99, '2024-08-12'),
       (28, 14, 'Reparación de electrodomésticos', 59.99, '2024-08-13');

-- Pedro Díaz (ID 29)
INSERT INTO detalleservicio (ClienteID, ServicioID, Descripción, Costo, FechaServicio)
VALUES (29, 15, 'Soporte técnico remoto', 29.99, '2024-08-14'),
       (29, 16, 'Configuración de redes', 79.99, '2024-08-15');

-- Laura Hernández (ID 30)
INSERT INTO detalleservicio (ClienteID, ServicioID, Descripción, Costo, FechaServicio)
VALUES (30, 17, 'Limpieza de virus', 69.99, '2024-08-16'),
       (30, 18, 'Recuperación de datos', 99.99, '2024-08-17');

-- Sofía Ruiz (ID 31)
INSERT INTO detalleservicio (ClienteID, ServicioID, Descripción, Costo, FechaServicio)
VALUES (31, 19, 'Asesoramiento tecnológico', 19.99, '2024-08-18'),
       (31, 20, 'Mantenimiento de impresoras', 29.99, '2024-08-19');

-- David Jiménez (ID 32)
INSERT INTO detalleservicio (ClienteID, ServicioID, Descripción, Costo, FechaServicio)
VALUES (32, 1, 'Reparación de teléfonos', 49.99, '2024-08-20'),
       (32, 2, 'Mantenimiento de computadoras', 89.99, '2024-08-21');

-- Elena Mendoza (ID 33)
INSERT INTO detalleservicio (ClienteID, ServicioID, Descripción, Costo, FechaServicio)
VALUES (33, 3, 'Instalación de software', 39.99, '2024-08-22'),
       (33, 4, 'Reparación de electrodomésticos', 59.99, '2024-08-23');

-- Miguel Silva (ID 34)
INSERT INTO detalleservicio (ClienteID, ServicioID, Descripción, Costo, FechaServicio)
VALUES (34, 5, 'Soporte técnico remoto', 29.99, '2024-08-24'),
       (34, 6, 'Configuración de redes', 79.99, '2024-08-25');

-- Rosa Torres (ID 35)
INSERT INTO detalleservicio (ClienteID, ServicioID, Descripción, Costo, FechaServicio)
VALUES (35, 7, 'Limpieza de virus', 69.99, '2024-08-26'),
       (35, 8, 'Recuperación de datos', 99.99, '2024-08-27');

-- Antonio Vargas (ID 36)
INSERT INTO detalleservicio (ClienteID, ServicioID, Descripción, Costo, FechaServicio)
VALUES (36, 9, 'Asesoramiento tecnológico', 19.99, '2024-08-28'),
       (36, 10, 'Mantenimiento de impresoras', 29.99, '2024-08-29');

-- Carmen Castro (ID 37)
INSERT INTO detalleservicio (ClienteID, ServicioID, Descripción, Costo, FechaServicio)
VALUES (37, 11, 'Reparación de teléfonos', 49.99, '2024-08-30'),
       (37, 12, 'Mantenimiento de computadoras', 89.99, '2024-08-31');

-- Francisco Ortega (ID 38)
INSERT INTO detalleservicio (ClienteID, ServicioID, Descripción, Costo, FechaServicio)
VALUES (38, 13, 'Instalación de software', 39.99, '2024-09-01'),
       (38, 14, 'Reparación de electrodomésticos', 59.99, '2024-09-02');

-- Isabel Ramos (ID 39)
INSERT INTO detalleservicio (ClienteID, ServicioID, Descripción, Costo, FechaServicio)
VALUES (39, 15, 'Soporte técnico remoto', 29.99, '2024-09-03'),
       (39, 16, 'Configuración de redes', 79.99, '2024-09-04');

-- José Morales (ID 40)
INSERT INTO detalleservicio (ClienteID, ServicioID, Descripción, Costo, FechaServicio)
VALUES (40, 17, 'Limpieza de virus', 69.99, '2024-09-05'),
       (40, 18, 'Recuperación de datos', 99.99, '2024-09-06');

-- Patricia Sánchez (ID 41)
INSERT INTO detalleservicio (ClienteID, ServicioID, Descripción, Costo, FechaServicio)
VALUES (41, 19, 'Asesoramiento tecnológico', 19.99, '2024-09-07'),
       (41, 20, 'Mantenimiento de impresoras', 29.99, '2024-09-08');

-- Ricardo Reyes (ID 42)
INSERT INTO detalleservicio (ClienteID, ServicioID, Descripción, Costo, FechaServicio)
VALUES (42, 1, 'Reparación de teléfonos', 49.99, '2024-09-09'),
       (42, 2, 'Mantenimiento de computadoras', 89.99, '2024-09-10');


select * from cliente;
select * from detalleenvios;
describe detalleenvios;

select * from cliente;
select * from transporte;

SHOW CREATE VIEW detalleenvios;

INSERT INTO cliente (Nombre, Apellido, Dirección, Teléfono, CorreoElectrónico)
VALUES 
('Juan', 'Pérez', 'Calle Falsa 123', '987654321', 'juan.perez@example.com'),
('Luis', 'Martínez', 'Boulevard de los Sueños 789', '1122334455', 'luis.martinez@example.com'),
('María', 'Rodríguez', 'Calle Luna 101', '6677889900', 'maria.rodriguez@example.com'),
('Carlos', 'López', 'Calle Sol 202', '3344556677', 'carlos.lopez@example.com'),
('Sofía', 'Gómez', 'Avenida Estrellas 303', '2233445566', 'sofia.gomez@example.com'),
('Daniel', 'Fernández', 'Calle Mar 404', '7788990011', 'daniel.fernandez@example.com'),
('Laura', 'Hernández', 'Avenida Cielo 505', '5566778899', 'laura.hernandez@example.com'),
('David', 'Jiménez', 'Boulevard Tierra 606', '4455667788', 'david.jimenez@example.com'),
('Andrea', 'Ruiz', 'Calle Viento 707', '9988776655', 'andrea.ruiz@example.com'),
('Eva', 'Sánchez', 'Calle Real 12', '123456789', 'eva.sanchez@example.com'),
('María', 'López', 'Calle 2', '987654321', 'maria.lopez@example.com'),
('Carlos', 'García', 'Calle 3', '456789123', 'carlos.garcia@example.com'),
('Ana', 'Martínez', 'Calle 4', '789123456', 'ana.martinez@example.com'),
('Luis', 'Fernández', 'Calle 5', '321654987', 'luis.fernandez@example.com'),
('Marta', 'Gómez', 'Calle 6', '654987321', 'marta.gomez@example.com'),
('Pedro', 'Díaz', 'Calle 7', '987321654', 'pedro.diaz@example.com'),
('Laura', 'Hernández', 'Calle 8', '321987654', 'laura.hernandez@example.com'),
('Sofía', 'Ruiz', 'Calle 9', '654321987', 'sofia.ruiz@example.com'),
('David', 'Jiménez', 'Calle 10', '987654321', 'david.jimenez@example.com'),
('Elena', 'Mendoza', 'Calle 11', '123123123', 'elena.mendoza@example.com'),
('Miguel', 'Silva', 'Calle 12', '456456456', 'miguel.silva@example.com'),
('Rosa', 'Torres', 'Calle 13', '789789789', 'rosa.torres@example.com'),
('Antonio', 'Vargas', 'Calle 14', '321321321', 'antonio.vargas@example.com'),
('Carmen', 'Castro', 'Calle 15', '654654654', 'carmen.castro@example.com'),
('Francisco', 'Ortega', 'Calle 16', '987987987', 'francisco.ortega@example.com'),
('Isabel', 'Ramos', 'Calle 17', '123456789', 'isabel.ramos@example.com'),
('José', 'Morales', 'Calle 18', '987654321', 'jose.morales@example.com'),
('Patricia', 'Sánchez', 'Calle 19', '456789123', 'patricia.sanchez@example.com'),
('Ricardo', 'Reyes', 'Calle 20', '789123456', 'ricardo.reyes@example.com');


INSERT INTO transporte (TipoTransporte, Descripción, Costo, ClienteID)
VALUES 
('Terrestre', 'Entrega estándar', 10.00, 1),
('Aéreo', 'Entrega rápida', 20.00, 3),
('Marítimo', 'Entrega internacional', 30.00, 4),
('Terrestre', 'Entrega estándar', 10.00, 5),
('Aéreo', 'Entrega rápida', 20.00, 6),
('Marítimo', 'Entrega internacional', 30.00, 7),
('Terrestre', 'Entrega estándar', 10.00, 8),
('Aéreo', 'Entrega rápida', 20.00, 9),
('Marítimo', 'Entrega internacional', 30.00, 10),
('Terrestre', 'Entrega estándar', 10.00, 11),
('Aéreo', 'Entrega rápida', 20.00, 13),
('Marítimo', 'Entrega internacional', 30.00, 14),
('Terrestre', 'Entrega estándar', 10.00, 15),
('Aéreo', 'Entrega rápida', 20.00, 16),
('Marítimo', 'Entrega internacional', 30.00, 17),
('Terrestre', 'Entrega estándar', 10.00, 18),
('Aéreo', 'Entrega rápida', 20.00, 19),
('Marítimo', 'Entrega internacional', 30.00, 20),
('Terrestre', 'Entrega estándar', 10.00, 21),
('Aéreo', 'Entrega rápida', 20.00, 23),
('Marítimo', 'Entrega internacional', 30.00, 24),
('Terrestre', 'Entrega estándar', 10.00, 25),
('Aéreo', 'Entrega rápida', 20.00, 26),
('Marítimo', 'Entrega internacional', 30.00, 27),
('Terrestre', 'Entrega estándar', 10.00, 28),
('Aéreo', 'Entrega rápida', 20.00, 29),
('Marítimo', 'Entrega internacional', 30.00, 30),
('Terrestre', 'Entrega estándar', 10.00, 31),
('Aéreo', 'Entrega rápida', 20.00, 32),
('Marítimo', 'Entrega internacional', 30.00, 33),
('Terrestre', 'Entrega estándar', 10.00, 34),
('Aéreo', 'Entrega rápida', 20.00, 35),
('Marítimo', 'Entrega internacional', 30.00, 36),
('Terrestre', 'Entrega estándar', 10.00, 37),
('Aéreo', 'Entrega rápida', 20.00, 38),
('Marítimo', 'Entrega internacional', 30.00, 39),
('Terrestre', 'Entrega estándar', 10.00, 40),
('Aéreo', 'Entrega rápida', 20.00, 41),
('Marítimo', 'Entrega internacional', 30.00, 42);

SHOW CREATE VIEW detalleenvios;

DROP VIEW IF EXISTS detalleenvios;

CREATE ALGORITHM=UNDEFINED DEFINER=root@localhost SQL SECURITY DEFINER 
VIEW detalleenvios AS 
select 
    t.ID AS TransporteID,
    t.TipoTransporte AS TipoTransporte,
    t.Descripción AS Descripción,
    t.Costo AS Costo,
    c.ID AS ClienteID,
    c.Nombre AS Nombre,
    c.Apellido AS Apellido,
    c.Dirección AS Dirección,
    c.Teléfono AS Teléfono,
    c.CorreoElectrónico AS CorreoElectrónico 
from 
    transporte t 
    join cliente c on t.ClienteID = c.ID;
    
    select * from detalleservicio;
     select * from detalleenvío;
     use tecnofull;
     select * from sucursal;
	describe sucursal;
select * from empleado;
describe empleado;
ALTER TABLE empleado
ADD COLUMN SucursalID INT;

-- Sucursal Central (ID=1)
UPDATE empleado SET SucursalID = 1 WHERE ID IN (1, 2, 3, 10, 11, 12, 19, 20, 21, 28);

-- Sucursal Norte (ID=2)
UPDATE empleado SET SucursalID = 2 WHERE ID IN (4, 5, 6, 13, 14, 15, 22, 23, 24);

-- Sucursal Sur (ID=3)
UPDATE empleado SET SucursalID = 3 WHERE ID IN (7, 8, 9, 16, 17, 18, 25, 26, 27);

CREATE VIEW empleados_por_sucursal AS
SELECT
    e.ID AS EmpleadoID,
    e.Nombre AS EmpleadoNombre,
    e.Apellido AS EmpleadoApellido,
    e.Cargo,
    e.Departamento,
    e.Teléfono AS EmpleadoTeléfono,
    e.CorreoElectrónico AS EmpleadoCorreo,
    s.Nombre AS SucursalNombre,
    s.Dirección AS SucursalDirección,
    s.Teléfono AS SucursalTeléfono,
    s.CorreoElectrónico AS SucursalCorreo
FROM
    empleado e
    JOIN sucursal s ON e.SucursalID = s.ID;
    
SELECT * FROM DETALLECOMPRA;
describe detallecompra;

SELECT * FROM producto;
describe producto;

SELECT * FROM productosmasvendidos;
DROP VIEW IF EXISTS productosmasvendidos;

CREATE VIEW ProductosMasVendidos AS
SELECT
    DATE_FORMAT(dc.FechaCompra, '%Y-%m') AS Mes,
    dc.ProductoID,
    p.Nombre AS NombreProducto,
    SUM(dc.Cantidad) AS CantidadVendida
FROM
    detallecompra dc
    JOIN producto p ON dc.ProductoID = p.ID
GROUP BY
    Mes, dc.ProductoID
ORDER BY
    Mes, CantidadVendida DESC;

-- Voy a crear una relacion entre cliente y sucursal para saber que sucursal tiene clientes mas frecuentes
select * from cliente;
select * from sucursal;
select * from clientesfrecuentes;
Describe cliente;
Describe sucursal;
ALTER TABLE Cliente ADD COLUMN SucursalID INT;
UPDATE Cliente SET SucursalID = 1 WHERE ID IN (1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 13, 14, 15, 16, 17, 18, 19, 20);
UPDATE Cliente SET SucursalID = 2 WHERE ID IN (21, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42);
UPDATE Cliente SET SucursalID = 3 WHERE ID IN (43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71);

SELECT * FROM clientesfrecuentes LIMIT 10;
SELECT * FROM cliente LIMIT 10;
SELECT * FROM sucursal LIMIT 10;

SELECT 
    c.id, c.nombre, c.apellido, c.sucursalid, 
    s.id AS sucursalid, s.nombre AS sucursalnombre
FROM 
    cliente c
JOIN 
    sucursal s ON c.sucursalid = s.id
LIMIT 10;

SELECT 
    s.nombre AS sucursal, 
    COUNT(cf.ClienteID) AS numclientesfrecuentes
FROM 
    clientesfrecuentes cf
JOIN 
    cliente c ON cf.ClienteID = c.id
JOIN 
    sucursal s ON c.sucursalid = s.id
GROUP BY 
    s.nombre
ORDER BY 
    numclientesfrecuentes DESC;
    
select * from detalleenvios;
describe detalleenvios;

UPDATE detalleenvios
SET Dirección = CASE ClienteID
    WHEN 1 THEN 'Avenida Hipólito Yrigoyen 500, Córdoba'
    WHEN 3 THEN 'Calle San Martín 200, Mendoza'
    WHEN 4 THEN 'Avenida Corrientes 1500, Buenos Aires'
    WHEN 5 THEN 'Calle Florida 800, Buenos Aires'
    WHEN 6 THEN 'Avenida Roca 300, Rosario'
    WHEN 7 THEN 'Calle Urquiza 700, Paraná'
    WHEN 8 THEN 'Avenida Pellegrini 1200, Rosario'
    WHEN 9 THEN 'Calle Güemes 900, Mar del Plata'
    WHEN 10 THEN 'Avenida Belgrano 1000, Salta'
    WHEN 11 THEN 'Calle Mitre 500, Bariloche'
    WHEN 13 THEN 'Avenida Callao 900, Buenos Aires'
    WHEN 14 THEN 'Calle Rivadavia 200, Córdoba'
    WHEN 15 THEN 'Avenida Alem 100, La Plata'
    WHEN 16 THEN 'Calle Jujuy 300, San Juan'
    WHEN 17 THEN 'Avenida Libertador 500, Mendoza'
    WHEN 18 THEN 'Calle Entre Ríos 600, Santa Fe'
    WHEN 19 THEN 'Avenida Santa Fe 700, Buenos Aires'
    WHEN 20 THEN 'Calle Belgrano 100, Tucumán'
    WHEN 21 THEN 'Avenida Pueyrredón 1100, Buenos Aires'
    WHEN 23 THEN 'Calle Mendoza 200, Corrientes'
    WHEN 24 THEN 'Avenida San Martín 300, Formosa'
    WHEN 25 THEN 'Calle Sarmiento 500, Neuquén'
    WHEN 26 THEN 'Avenida Colón 400, Córdoba'
    WHEN 27 THEN 'Calle Córdoba 600, Rosario'
    WHEN 28 THEN 'Avenida Mitre 700, Jujuy'
    WHEN 29 THEN 'Calle Moreno 800, La Rioja'
    WHEN 30 THEN 'Avenida Independencia 900, San Luis'
    WHEN 31 THEN 'Calle Lavalle 1000, Santiago del Estero'
    WHEN 32 THEN 'Avenida Vélez Sarsfield 1100, Córdoba'
    WHEN 33 THEN 'Calle Alvear 1200, Catamarca'
    WHEN 34 THEN 'Avenida San Juan 1300, Buenos Aires'
    WHEN 35 THEN 'Calle Tucumán 1400, Santa Cruz'
    WHEN 36 THEN 'Avenida Mitre 1500, Chaco'
    WHEN 37 THEN 'Calle Corrientes 1600, Misiones'
    WHEN 38 THEN 'Avenida Rivadavia 1700, Entre Ríos'
    WHEN 39 THEN 'Calle Belgrano 1800, San Juan'
    WHEN 40 THEN 'Avenida Libertador 1900, San Luis'
    WHEN 41 THEN 'Calle Mendoza 2000, Formosa'
    WHEN 42 THEN 'Avenida Alem 2100, Chubut'
END;

SELECT 
    TransporteID,
    TipoTransporte,
    Descripción,
    Costo,
    ClienteID,
    Nombre,
    Apellido,
    Dirección,
    Teléfono,
    CorreoElectrónico,
    -- Separo la ciudad y la provincia usando SUBSTRING_INDEX (segun investigue, se utiliza para dividir cadenas en las partes que tienen comas)
    SUBSTRING_INDEX(Dirección, ',', 1) AS CalleYNumero,
    TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(Dirección, ',', 2), ',', -1)) AS Ciudad,
    TRIM(SUBSTRING_INDEX(Dirección, ',', -1)) AS Provincia
FROM 
    detalleenvios;
    
SELECT
  TransporteID,
  TipoTransporte,
  Descripción,
  Costo,
  ClienteID,
  Nombre,
  Apellido,
  Dirección,
  Teléfono,
  CorreoElectrónico,
  -- División de la dirección
  LEFT(Dirección, LOCATE(',', Dirección) - 1) AS CalleYNumero,
  SUBSTRING_INDEX(SUBSTRING_INDEX(Dirección, ',', 2), ',', -1) AS Ciudad,
  -- Nueva columna para la provincia
  SUBSTRING_INDEX(Dirección, ',', -1) AS Provincia
FROM
  detalleenvios
LIMIT 0, 1000;

SHOW COLUMNS FROM vista_detalleenvios;

select * FROM vista_detalleenvios;

CREATE VIEW vista_detalleenvios AS
SELECT
  TransporteID,
  TipoTransporte,
  Descripción,
  Costo,
  ClienteID,
  Nombre,
  Apellido,
  Dirección,
  Teléfono,
  CorreoElectrónico,
  -- División de la dirección
  LEFT(Dirección, LOCATE(',', Dirección) - 1) AS CalleYNumero,
  TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(Dirección, ',', 2), ',', -1)) AS Ciudad,
  TRIM(SUBSTRING_INDEX(Dirección, ',', -1)) AS Provincia
FROM
  detalleenvios;
  
  SELECT *
FROM vista_detalleenvios
LIMIT 0, 1000;

DELIMITER //

SELECT VERSION();

-- Tengo que crear una tabla de coordenadas para analizar los envios

CREATE TABLE coordenadas_ciudades (
    Ciudad VARCHAR(255) PRIMARY KEY,
    Provincia VARCHAR(255),
    Latitud DECIMAL(9,6),
    Longitud DECIMAL(9,6)
);

-- Agrego coordenadas, a estas las saque de una herramienta llamada Nomination

DELETE FROM coordenadas_ciudades
WHERE Ciudad = 'Buenos Aires' AND Provincia = 'Buenos Aires';

INSERT INTO coordenadas_ciudades (Ciudad, Provincia, Latitud, Longitud) VALUES
('Buenos Aires', 'Buenos Aires', -34.603722, -58.381592),
('Córdoba', 'Córdoba', -31.416667, -64.183334),
('Rosario', 'Santa Fe', -32.946819, -60.63932),
('Mendoza', 'Mendoza', -32.889458, -68.845839),
('Mar del Plata', 'Buenos Aires', -38.005477, -57.542611),
('Salta', 'Salta', -24.782932, -65.423198),
('Bariloche', 'Río Negro', -41.133472, -71.310278),
('La Plata', 'Buenos Aires', -34.92145, -57.954533),
('San Juan', 'San Juan', -31.5375, -68.53639),
('Santa Fe', 'Santa Fe', -31.624056, -60.694581),
('Corrientes', 'Corrientes', -27.47122, -58.839584),
('Formosa', 'Formosa', -26.17753, -58.178139),
('Neuquén', 'Neuquén', -38.951611, -68.059098),
('Tucumán', 'Tucumán', -26.822422, -65.211632),
('Jujuy', 'Jujuy', -24.185786, -65.299477),
('La Rioja', 'La Rioja', -29.412193, -66.855736),
('San Luis', 'San Luis', -33.29501, -66.33563),
('Santiago del Estero', 'Santiago del Estero', -27.783357, -64.264167),
('Catamarca', 'Catamarca', -28.469579, -65.779544),
('Chaco', 'Chaco', -27.451419, -58.98674),
('Misiones', 'Misiones', -27.3764, -55.90054),
('Entre Ríos', 'Entre Ríos', -31.633333, -60.7),
('Chubut', 'Chubut', -43.298333, -65.101833)
AS nuevos
ON DUPLICATE KEY UPDATE
    Latitud = nuevos.Latitud,
    Longitud = nuevos.Longitud;

SELECT * FROM coordenadas_ciudades;