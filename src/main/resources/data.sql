
-- Inserción adiministradores 
CREATE TABLE IF NOT EXISTS ADMINISTRATORS (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    EMAIL VARCHAR(255) NOT NULL,
    PASSWORD VARCHAR(255) NOT NULL
);
CREATE TABLE IF NOT EXISTS BRANDS (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS CATEGORIES (
    ID INT PRIMARY KEY,
    NAME VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS VEHICLES (
    ID INT PRIMARY KEY,
    IMAGE VARCHAR(255) NOT NULL,
    BRAND_ID INT NOT NULL,
    MODEL VARCHAR(255) NOT NULL,
    VEHICLE_YEAR INT NOT NULL,
    CYLINDER_CAPACITY INT,
    FOREIGN KEY (BRAND_ID) REFERENCES BRANDS(ID)
);
CREATE TABLE IF NOT EXISTS QUOTES (
    ID INT PRIMARY KEY,
    ESTATE VARCHAR(255) NOT NULL,
    PRICE DECIMAL(10, 2) NOT NULL,
    VEHICLE_ID INT NOT NULL,
    FOREIGN KEY (VEHICLE_ID) REFERENCES VEHICLES(ID)
);
CREATE TABLE IF NOT EXISTS PRODUCTS (
    ID INT PRIMARY KEY,
    NAME VARCHAR(255) NOT NULL,
    DESCRIPTION TEXT NOT NULL,
    TECHNICAL_DESCRIPTION TEXT NOT NULL,
    IMAGE VARCHAR(255) NOT NULL,
    PRICE DECIMAL(10, 2) NOT NULL,
    COIN VARCHAR(3) NOT NULL,
    DISCOUNT INT,
    TAX INT,
    CATEGORY_ID INT NOT NULL,
    QUOTE_ID INT NOT NULL,
    FOREIGN KEY (CATEGORY_ID) REFERENCES CATEGORIES(ID),
    FOREIGN KEY (QUOTE_ID) REFERENCES QUOTES(ID)
);

INSERT INTO ADMINISTRATORS (EMAIL, PASSWORD) VALUES ('root@mail.com', '1234');
INSERT INTO ADMINISTRATORS (EMAIL, PASSWORD) VALUES ('hola@mail.com', '1234');

-- Insertar marcas de carro
INSERT INTO BRANDS (ID, NAME) VALUES ('1', 'Toyota');
INSERT INTO BRANDS (ID, NAME) VALUES ('2', 'Honda');
INSERT INTO BRANDS (ID, NAME) VALUES ('3', 'Ford');
INSERT INTO BRANDS (ID, NAME) VALUES ('4', 'Chevrolet');
INSERT INTO BRANDS (ID, NAME) VALUES ('5', 'BMW');

-- Inserción categorias 
INSERT INTO CATEGORIES (ID, NAME) VALUES ('0', 'Todos');
INSERT INTO CATEGORIES (ID, NAME) VALUES ('1', 'Mecanica Basica');
INSERT INTO CATEGORIES (ID, NAME) VALUES ('2', 'Mecanica Especializada');
INSERT INTO CATEGORIES (ID, NAME) VALUES ('3', 'Suspensión Automotriz');
INSERT INTO CATEGORIES (ID, NAME) VALUES ('4', 'Revisiones Automotriz');
INSERT INTO CATEGORIES (ID, NAME) VALUES ('5', 'Estetica Automotriz');

-- Inserción vehiculos 
INSERT INTO VEHICLES (ID, IMAGE, BRAND_ID, MODEL, VEHICLE_YEAR, CYLINDER_CAPACITY) VALUES ('1', '/images/vehicles/honda/HR-V.png', '2', 'HR-V', 2024, 1500);
INSERT INTO VEHICLES (ID, IMAGE, BRAND_ID, MODEL, VEHICLE_YEAR, CYLINDER_CAPACITY) VALUES ('2', '/images/vehicles/honda/WR-V.png','2', 'WR-V', 2024, 1500);
INSERT INTO VEHICLES (ID, IMAGE, BRAND_ID, MODEL, VEHICLE_YEAR, CYLINDER_CAPACITY) VALUES ('3', '/images/vehicles/honda/CITYSEDÁN.png', '2', 'City Sedán', 2024, 1800);
INSERT INTO VEHICLES (ID, IMAGE, BRAND_ID, MODEL, VEHICLE_YEAR, CYLINDER_CAPACITY) VALUES ('5', '/images/vehicles/bmw/BMWiX.png', '5', 'iX', 2024, 0);
INSERT INTO VEHICLES (ID, IMAGE, BRAND_ID, MODEL, VEHICLE_YEAR, CYLINDER_CAPACITY) VALUES ('6', '/images/vehicles/bmw/BMWiX3.png', '5', 'iX3', 2024, 0);
INSERT INTO VEHICLES (ID, IMAGE, BRAND_ID, MODEL, VEHICLE_YEAR, CYLINDER_CAPACITY) VALUES ('7', '/images/vehicles/bmw/BMWM440i.png', '5', 'M440i', 2024, 3000);
INSERT INTO VEHICLES (ID, IMAGE, BRAND_ID, MODEL, VEHICLE_YEAR, CYLINDER_CAPACITY) VALUES ('8', '/images/vehicles/bmw/BMWX4.png', '5', 'X4', 2024, 3000);
INSERT INTO VEHICLES (ID, IMAGE, BRAND_ID, MODEL, VEHICLE_YEAR, CYLINDER_CAPACITY) VALUES ('9', '/images/vehicles/bmw/BMWX4M40i.png', '5', 'X4 M40i', 2024, 3000);
INSERT INTO VEHICLES (ID, IMAGE, BRAND_ID, MODEL, VEHICLE_YEAR, CYLINDER_CAPACITY) VALUES ('10', '/images/vehicles/bmw/BMWXM.png', '5', 'XM', 2024, 3000);
INSERT INTO VEHICLES (ID, IMAGE, BRAND_ID, MODEL, VEHICLE_YEAR, CYLINDER_CAPACITY) VALUES ('11', '/images/vehicles/chevrolet/camaro.png', '4', 'Camaro', 2024, NULL);
INSERT INTO VEHICLES (ID, IMAGE, BRAND_ID, MODEL, VEHICLE_YEAR, CYLINDER_CAPACITY) VALUES ('12', '/images/vehicles/chevrolet/joy.png', '4', 'Joy', 2024, NULL);
INSERT INTO VEHICLES (ID, IMAGE, BRAND_ID, MODEL, VEHICLE_YEAR, CYLINDER_CAPACITY) VALUES ('13', '/images/vehicles/chevrolet/joySedan.png', '4', 'Joy Sedán', 2024, NULL);
INSERT INTO VEHICLES (ID, IMAGE, BRAND_ID, MODEL, VEHICLE_YEAR, CYLINDER_CAPACITY) VALUES ('14', '/images/vehicles/chevrolet/OnixTurboRS.png', '4', 'Onix Turbo RS', 2024, NULL);
INSERT INTO VEHICLES (ID, IMAGE, BRAND_ID, MODEL, VEHICLE_YEAR, CYLINDER_CAPACITY) VALUES ('15', '/images/vehicles/ford/EscapeEcoBoost.png', '3', 'Escape EcoBoost', 2024, NULL);
INSERT INTO VEHICLES (ID, IMAGE, BRAND_ID, MODEL, VEHICLE_YEAR, CYLINDER_CAPACITY) VALUES ('16', '/images/vehicles/ford/FordEdgeSEL.png', '3', 'Ford Edge SEL', 2024, NULL);
INSERT INTO VEHICLES (ID, IMAGE, BRAND_ID, MODEL, VEHICLE_YEAR, CYLINDER_CAPACITY) VALUES ('17', '/images/vehicles/ford/FordExplorerLimited4x4.png', '3', 'Ford Explorer Limited 4x4', 2024, NULL);
INSERT INTO VEHICLES (ID, IMAGE, BRAND_ID, MODEL, VEHICLE_YEAR, CYLINDER_CAPACITY) VALUES ('18', '/images/vehicles/toyota/carolla.png', '1', 'Corolla', 2024, NULL);
INSERT INTO VEHICLES (ID, IMAGE, BRAND_ID, MODEL, VEHICLE_YEAR, CYLINDER_CAPACITY) VALUES ('19', '/images/vehicles/toyota/yaris.png', '1', 'Yaris', 2024, NULL);

-- Inserción cotizaciones 
INSERT INTO QUOTES (ID, ESTATE, PRICE, VEHICLE_ID) VALUES ('1', 'Active', '20000', '1');
INSERT INTO QUOTES (ID, ESTATE, PRICE, VEHICLE_ID) VALUES ('2', 'Active', '18000', '2');
INSERT INTO QUOTES (ID, ESTATE, PRICE, VEHICLE_ID) VALUES ('3', 'Active', '25000', '3');
INSERT INTO QUOTES (ID, ESTATE, PRICE, VEHICLE_ID) VALUES ('4', 'Active', '35000', '6');
INSERT INTO QUOTES (ID, ESTATE, PRICE, VEHICLE_ID) VALUES ('5', 'Active', '40000', '5');

-- Inserción productos
INSERT INTO PRODUCTS (ID, NAME, DESCRIPTION, TECHNICAL_DESCRIPTION, IMAGE, PRICE, COIN, DISCOUNT, TAX, CATEGORY_ID, QUOTE_ID) VALUES ('1', 'Alineación y Balanceo de Llantas', 'Ajuste de los ángulos de las llantas y distribución uniforme del peso en cada rueda para asegurar una conducción suave y prevenir el desgaste desigual de los neumáticos.', 'Ajuste de los ángulos de las ruedas (camber, caster, toe) para asegurar que sean perpendiculares al suelo y paralelas entre sí y adición de contrapesos para equilibrar el conjunto de la rueda y el neumático, eliminando vibraciones.', 'balanceo-de-ruedas.png', '75000', 'COP', 10, 5, '1', '1');
INSERT INTO PRODUCTS (ID, NAME, DESCRIPTION, TECHNICAL_DESCRIPTION, IMAGE, PRICE, COIN, DISCOUNT, TAX, CATEGORY_ID, QUOTE_ID) VALUES ('2', 'Cambio de Aceite de Motor', 'Sustitución del aceite viejo del motor por aceite nuevo para mantener la lubricación adecuada, reducir el desgaste de las piezas internas y mejorar el rendimiento del vehículo.', 'Drenado del aceite viejo y reemplazo por aceite nuevo, incluyendo el cambio del filtro de aceite, para mantener la lubricación adecuada del motor.', 'aceite.png', '105000', 'COP', 0, 5, '1', '2');
INSERT INTO PRODUCTS (ID, NAME, DESCRIPTION, TECHNICAL_DESCRIPTION, IMAGE, PRICE, COIN, DISCOUNT, TAX, CATEGORY_ID, QUOTE_ID) VALUES ('3', 'Cambio de Pastillas o Balatas de Frenos', 'Reemplazo de las pastillas o balatas de freno desgastadas para asegurar una frenada efectiva y segura, evitando daños en los discos de freno.', 'Sustitución de las pastillas de freno desgastadas en las pinzas de freno para asegurar una frenada efectiva.', 'disco-del-freno.png', '175000', 'COP', 0, 5, '1', '3');
INSERT INTO PRODUCTS (ID, NAME, DESCRIPTION, TECHNICAL_DESCRIPTION, IMAGE, PRICE, COIN, DISCOUNT, TAX, CATEGORY_ID, QUOTE_ID) VALUES ('4', 'Cambio de Bandas de Frenos', 'Sustitución de las bandas de frenos desgastadas en sistemas de frenos de tambor para mantener una frenada adecuada y evitar el deterioro de los tambores.', 'Reemplazo de las bandas de freno en frenos de tambor para mantener la capacidad de frenado adecuada.', 'disco-del-freno.png', '130000', 'COP', 0, 5, '1', '4');
INSERT INTO PRODUCTS (ID, NAME, DESCRIPTION, TECHNICAL_DESCRIPTION, IMAGE, PRICE, COIN, DISCOUNT, TAX, CATEGORY_ID, QUOTE_ID) VALUES ('5', 'Sincronización de Motor', 'Ajuste y calibración de los componentes del motor, incluyendo el sistema de encendido y la inyección de combustible, para asegurar un funcionamiento óptimo y eficiente del motor.', 'Ajuste del sistema de encendido y de inyección de combustible para asegurar el correcto funcionamiento y eficiencia del motor.', 'sincronizacion.png', '225000', 'COP', 0, 5, '1', '5');

INSERT INTO PRODUCTS (ID, NAME, DESCRIPTION, TECHNICAL_DESCRIPTION, IMAGE, PRICE, COIN, DISCOUNT, TAX, CATEGORY_ID, QUOTE_ID) VALUES ('6', 'Cambio de Correa de Repartición', 'Sustitución de la correa que sincroniza el movimiento de los componentes internos del motor.', 'Reemplazo de la correa de distribución que coordina el movimiento del cigüeñal y el árbol de levas, asegurando la correcta sincronización del motor.', 'correa-de-distribucion.png', '550000', 'COP', 0, 5, '2', '1');
INSERT INTO PRODUCTS (ID, NAME, DESCRIPTION, TECHNICAL_DESCRIPTION, IMAGE, PRICE, COIN, DISCOUNT, TAX, CATEGORY_ID, QUOTE_ID) VALUES ('7', 'Escaner Automotriz', 'Diagnóstico electrónico del vehículo mediante un escáner para detectar fallas y códigos de error.', 'Uso de un dispositivo de diagnóstico OBD-II para leer y analizar los códigos de error almacenados en la computadora del vehículo.', 'escaner.png', '100000', 'COP', 0, 5, '2', '2');
INSERT INTO PRODUCTS (ID, NAME, DESCRIPTION, TECHNICAL_DESCRIPTION, IMAGE, PRICE, COIN, DISCOUNT, TAX, CATEGORY_ID, QUOTE_ID) VALUES ('8', 'Electricidad y electrónica', 'Servicio de diagnóstico y reparación de componentes eléctricos y electrónicos del vehículo.', 'Inspección y reparación del sistema eléctrico y electrónico, incluyendo baterías, alternadores, luces, y sistemas de control electrónico.', 'enchufe.png', '300000', 'COP', 15, 5, '2', '3');
INSERT INTO PRODUCTS (ID, NAME, DESCRIPTION, TECHNICAL_DESCRIPTION, IMAGE, PRICE, COIN, DISCOUNT, TAX, CATEGORY_ID, QUOTE_ID) VALUES ('9', 'Cambio de kit de embrague o Clutch', 'Reemplazo del kit de embrague que permite la conexión y desconexión del motor con la transmisión.', 'Sustitución del disco de embrague, placa de presión y rodamiento de liberación para garantizar una transmisión suave y eficiente.', 'acelerador.png', '1000000', 'COP', 0, 5, '2', '4');
INSERT INTO PRODUCTS (ID, NAME, DESCRIPTION, TECHNICAL_DESCRIPTION, IMAGE, PRICE, COIN, DISCOUNT, TAX, CATEGORY_ID, QUOTE_ID) VALUES ('10', 'Reparación de motor', 'Servicio completo de reparación y restauración del motor del vehículo.', 'Desmontaje, inspección, reparación o reemplazo de componentes internos del motor como pistones, cilindros, y válvulas, para restaurar su funcionamiento óptimo.', 'motor-del-coche.png', '5000000', 'COP', 0, 5, '2', '5');
INSERT INTO PRODUCTS (ID, NAME, DESCRIPTION, TECHNICAL_DESCRIPTION, IMAGE, PRICE, COIN, DISCOUNT, TAX, CATEGORY_ID, QUOTE_ID) VALUES ('11', 'Aire Acondicionado', 'Mantenimiento y reparación del sistema de aire acondicionado del vehículo.', 'Inspección, recarga de gas refrigerante, reparación de fugas y reemplazo de componentes defectuosos en el sistema de aire acondicionado.','aire-acondicionado.png', '375000', 'COP', 0, 5, '2', '1');

INSERT INTO PRODUCTS (ID, NAME, DESCRIPTION, TECHNICAL_DESCRIPTION, IMAGE, PRICE, COIN, DISCOUNT, TAX, CATEGORY_ID, QUOTE_ID) VALUES ('12', 'Suspensión', 'Servicio de inspección, mantenimiento y reparación del sistema de suspensión del vehículo.', 'Evaluación y reparación de componentes como resortes, amortiguadores y barras estabilizadoras para asegurar una conducción suave y estabilidad del vehículo.', 'amortiguador.png', '500000', 'COP', 0, 5, '3', '2');
INSERT INTO PRODUCTS (ID, NAME, DESCRIPTION, TECHNICAL_DESCRIPTION, IMAGE, PRICE, COIN, DISCOUNT, TAX, CATEGORY_ID, QUOTE_ID) VALUES ('13', 'Amortiguadores', 'Reemplazo de los amortiguadores para mejorar la absorción de impactos y la estabilidad del vehículo.', 'Sustitución de los amortiguadores desgastados por nuevos, que absorben las vibraciones y golpes del camino, mejorando la comodidad y control del vehículo.', 'amortiguador.png', '550000', 'COP', 0, 5, '3', '3');
INSERT INTO PRODUCTS (ID, NAME, DESCRIPTION, TECHNICAL_DESCRIPTION, IMAGE, PRICE, COIN, DISCOUNT, TAX, CATEGORY_ID, QUOTE_ID) VALUES ('14', 'Tijeras', 'Reemplazo de las tijeras de suspensión que conectan las ruedas con el chasis del vehículo.', 'Cambio de los brazos de control (tijeras) que permiten el movimiento vertical de las ruedas y mantienen la alineación correcta, asegurando una dirección y suspensión adecuadas.', 'piezas-de-repuesto.png', '400000', 'COP', 0, 5, '3', '4');
INSERT INTO PRODUCTS (ID, NAME, DESCRIPTION, TECHNICAL_DESCRIPTION, IMAGE, PRICE, COIN, DISCOUNT, TAX, CATEGORY_ID, QUOTE_ID) VALUES ('15', 'Bieleta de Barra Estabilizadora', 'Sustitución de la bieleta que conecta la barra estabilizadora con la suspensión.', 'Reemplazo de la bieleta de la barra estabilizadora para mantener la estabilidad del vehículo al reducir el balanceo lateral en curvas y maniobras.', 'piezas-de-repuesto.png', '200000', 'COP', 0, 5, '3', '5');
INSERT INTO PRODUCTS (ID, NAME, DESCRIPTION, TECHNICAL_DESCRIPTION, IMAGE, PRICE, COIN, DISCOUNT, TAX, CATEGORY_ID, QUOTE_ID) VALUES ('16', 'Bujes para Barra Estabilizadora', 'Cambio de los bujes que amortiguan el contacto entre la barra estabilizadora y el chasis.', 'Sustitución de los bujes de goma en la barra estabilizadora para reducir el ruido y mejorar la absorción de vibraciones.', 'buje.png', '100000', 'COP', 0, 5, '3', '1');
INSERT INTO PRODUCTS (ID, NAME, DESCRIPTION, TECHNICAL_DESCRIPTION, IMAGE, PRICE, COIN, DISCOUNT, TAX, CATEGORY_ID, QUOTE_ID) VALUES ('17', 'Copelas de Amortiguador', 'Reemplazo de las copelas que fijan los amortiguadores a la carrocería del vehículo.', 'Cambio de las copelas del amortiguador que permiten el movimiento y absorción de impactos, asegurando una conexión firme entre el amortiguador y la carrocería.', 'piezas-de-repuesto.png', '200000', 'COP', 0, 5, '3', '2');
INSERT INTO PRODUCTS (ID, NAME, DESCRIPTION, TECHNICAL_DESCRIPTION, IMAGE, PRICE, COIN, DISCOUNT, TAX, CATEGORY_ID, QUOTE_ID) VALUES ('18', 'Brazos Axiales de Dirección', 'Sustitución de los brazos axiales que conectan la cremallera de dirección con las ruedas.', 'Reemplazo de los brazos axiales (o tirantes de dirección) que transmiten el movimiento del volante a las ruedas, asegurando una dirección precisa.', 'piezas-de-repuesto.png', '300000', 'COP', 0, 5, '3', '3');

INSERT INTO PRODUCTS (ID, NAME, DESCRIPTION, TECHNICAL_DESCRIPTION, IMAGE, PRICE, COIN, DISCOUNT, TAX, CATEGORY_ID, QUOTE_ID) VALUES ('19', 'Diagnóstico Automotriz', 'Evaluación detallada del estado del vehículo mediante herramientas de diagnóstico.', 'Uso de dispositivos de diagnóstico OBD-II y otras herramientas para identificar problemas mecánicos, eléctricos y electrónicos en el vehículo.', 'escaner.png', '100000', 'COP', 0, 5, '4', '5');
INSERT INTO PRODUCTS (ID, NAME, DESCRIPTION, TECHNICAL_DESCRIPTION, IMAGE, PRICE, COIN, DISCOUNT, TAX, CATEGORY_ID, QUOTE_ID) VALUES ('20', 'Peritaje', 'Inspección exhaustiva del vehículo para evaluar su condición general y valor.', 'Análisis completo de la estructura, motor, transmisión, sistema eléctrico y otros componentes para determinar el estado y el valor del vehículo, generalmente para compraventa o seguros.', 'coche.png', '200000', 'COP', 0, 5, '4', '1');
INSERT INTO PRODUCTS (ID, NAME, DESCRIPTION, TECHNICAL_DESCRIPTION, IMAGE, PRICE, COIN, DISCOUNT, TAX, CATEGORY_ID, QUOTE_ID) VALUES ('21', 'Revisión General', 'Inspección integral del vehículo para verificar su buen funcionamiento.', 'Revisión de todos los sistemas y componentes principales del vehículo, incluyendo motor, frenos, suspensión, dirección y sistema eléctrico, para asegurar que todo funcione correctamente.', 'revision.png', '200000', 'COP', 0, 5, '4', '2');
INSERT INTO PRODUCTS (ID, NAME, DESCRIPTION, TECHNICAL_DESCRIPTION, IMAGE, PRICE, COIN, DISCOUNT, TAX, CATEGORY_ID, QUOTE_ID) VALUES ('22', 'Revisión por Kilometraje', 'Mantenimiento programado basado en el kilometraje del vehículo.', 'Servicio de mantenimiento preventivo que incluye cambios de aceite, filtros, revisión de frenos, fluidos y otros componentes según el kilometraje alcanzado por el vehículo.', 'velocimetro.png', '250000', 'COP', 0, 5, '4', '3');
INSERT INTO PRODUCTS (ID, NAME, DESCRIPTION, TECHNICAL_DESCRIPTION, IMAGE, PRICE, COIN, DISCOUNT, TAX, CATEGORY_ID, QUOTE_ID) VALUES ('23', 'Revisión Técnico-Mecánica', 'Inspección obligatoria para certificar que el vehículo cumple con los estándares de seguridad y emisiones.', ' Evaluación de sistemas de seguridad, emisiones contaminantes y condiciones mecánicas del vehículo para cumplir con las regulaciones gubernamentales.', 'servicio.png', '300000', 'COP', 0, 5, '4', '4');

INSERT INTO PRODUCTS (ID, NAME, DESCRIPTION, TECHNICAL_DESCRIPTION, IMAGE, PRICE, COIN, DISCOUNT, TAX, CATEGORY_ID, QUOTE_ID) VALUES ('24', 'Latonería y Pintura', 'Reparación de la carrocería y pintura del vehículo para restaurar su apariencia y estructura.', 'Reparación de abolladuras, reemplazo de paneles dañados, preparación de superficies y aplicación de pintura en varias capas para devolverle al vehículo su apariencia original y proteger la carrocería.', 'pintura.png', '1000000', 'COP', 0, 5, '5', '5');
INSERT INTO PRODUCTS (ID, NAME, DESCRIPTION, TECHNICAL_DESCRIPTION, IMAGE, PRICE, COIN, DISCOUNT, TAX, CATEGORY_ID, QUOTE_ID) VALUES ('25', 'Polarizados y Películas de Seguridad', 'Instalación de láminas tintadas o de seguridad en los vidrios del vehículo.', 'Aplicación de películas tintadas para reducir el ingreso de luz solar y mejorar la privacidad, o de películas de seguridad que refuerzan los vidrios para proteger contra impactos y robos.', 'ventana.png', '400000', 'COP', 0, 5, '5', '1');



