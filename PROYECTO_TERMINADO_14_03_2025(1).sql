CREATE TABLE `Declaraciones` (
	`id_declaracion` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`declaracion` TEXT,
	`fecha` DATE,
	PRIMARY KEY(`id_declaracion`)
);


CREATE TABLE `Galerias` (
	`id_galeria` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`nombre` VARCHAR(100) NOT NULL,
	PRIMARY KEY(`id_galeria`)
);


CREATE TABLE `Cuadros` (
	`id_cuadro` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`titulo` VARCHAR(100) NOT NULL,
	`autor` VARCHAR(100) NOT NULL,
	`valor` DECIMAL,
	`id_galeria` INTEGER NOT NULL,
	PRIMARY KEY(`id_cuadro`)
);


CREATE TABLE `Detectives` (
	`id_detective` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`nombre` VARCHAR(255),
	PRIMARY KEY(`id_detective`)
);


CREATE TABLE `Casos` (
	`id_caso` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`tipo` ENUM('Robo', 'Asesinato', 'Agresión', 'Patada a gatito'),
	`Descripción` VARCHAR(255),
	`id_detective` INTEGER NOT NULL,
	`fecha` DATE,
	PRIMARY KEY(`id_caso`)
);


CREATE TABLE `Declaraciones_personas` (
	`id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`id_persona` INTEGER NOT NULL,
	`id_declaracion` INTEGER NOT NULL,
	PRIMARY KEY(`id`)
);


CREATE TABLE `Personas` (
	`id_persona` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`id_galeria` INTEGER,
	`sexo` ENUM('hombre', 'mujer'),
	`tatuajes` BOOLEAN,
	`pelo` ENUM('corto', 'largo '),
	`color_pelo` ENUM('negro', 'rubio', 'castaño'),
	`estatura` ENUM('Baja', 'Media', 'Alta'),
	PRIMARY KEY(`id_persona`)
);


CREATE TABLE `Nombre_completo` (
	`id_nombre` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`nombre_completo` VARCHAR(255),
    `resultado` VARCHAR(255),
	`id_persona` INTEGER NOT NULL UNIQUE,
	PRIMARY KEY(`id_nombre`)
);


ALTER TABLE `Casos`
ADD FOREIGN KEY(`id_detective`) REFERENCES `Detectives`(`id_detective`)
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE `Declaraciones_personas`
ADD FOREIGN KEY(`id_persona`) REFERENCES `Personas`(`id_persona`)
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE `Declaraciones_personas`
ADD FOREIGN KEY(`id_declaracion`) REFERENCES `Declaraciones`(`id_declaracion`)
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE `Cuadros`
ADD FOREIGN KEY(`id_galeria`) REFERENCES `Galerias`(`id_galeria`)
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE `Nombre_completo`
ADD FOREIGN KEY(`id_persona`) REFERENCES `Personas`(`id_persona`)
ON UPDATE CASCADE ON DELETE CASCADE;