-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: proyecto
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `casos`
--

DROP TABLE IF EXISTS `casos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `casos` (
  `id_caso` int NOT NULL AUTO_INCREMENT,
  `tipo` enum('Robo','Asesinato','Agresión','Patada a gatito') DEFAULT NULL,
  `Descripción` varchar(255) DEFAULT NULL,
  `id_detective` int NOT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id_caso`),
  UNIQUE KEY `id_caso` (`id_caso`),
  KEY `id_detective` (`id_detective`),
  CONSTRAINT `casos_ibfk_1` FOREIGN KEY (`id_detective`) REFERENCES `detectives` (`id_detective`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casos`
--

LOCK TABLES `casos` WRITE;
/*!40000 ALTER TABLE `casos` DISABLE KEYS */;
INSERT INTO `casos` VALUES (1,'Agresión','Pelea entre dos narcotraficantes en Reboot Academy',7,'2025-03-13'),(2,'Robo','Robo en Galería del Museo con cuadros de \"El Jardín de las Delicias\" y \"Las Meninas\".',2,'2025-03-02'),(3,'Robo','Robo en Galería Artística con cuadros de \"La Persistencia de la Memoria\" y \"El Grito\".',3,'2025-03-03'),(4,'Asesinato','Asesinato en la Galería Artística. Una persona fue encontrada muerta cerca de \"La Noche Estrellada\".',8,'2025-04-01'),(5,'Asesinato','Asesinato en la Galería del Museo. Un hombre fue encontrado muerto frente a \"La Creación de Adán\".',9,'2025-04-05'),(6,'Asesinato','Asesinato en la Galería La Luz. El cadáver de un visitante fue encontrado cerca de \"La Mona Lisa\".',10,'2025-04-15'),(7,'Agresión','Agresión en la Galería Artística. Un visitante fue golpeado por otro en la sala de \"La Noche Estrellada\".',11,'2025-05-01'),(8,'Agresión','Agresión en la Galería del Museo. Una pelea estalló entre dos personas cerca de \"Las Meninas\".',12,'2025-05-10'),(9,'Patada a gatito','Alguien pateó un gato cerca de la Galería Artística en la noche del 12 de mayo.',13,'2025-05-12'),(10,'Patada a gatito','Un desconocido pateó un gato cerca de la entrada de la Galería del Museo. Testigos informaron sobre el incidente.',14,'2025-06-01'),(11,'Patada a gatito','Un individuo fue visto pateando un gato en las cercanías de la Galería La Luz durante el mes de junio.',15,'2025-06-05'),(12,'Robo','Robo de dos cuadros en una galería: El más valorado y otro del autor Leonardo Da Vinci',7,'2025-03-01'),(23,'Agresión','Un hombre agredió a su vecino durante una discusión en la vía pública.',4,'2023-01-15'),(24,'Patada a gatito','Una persona fue arrestada por patear a un perro en un parque público.',1,'2024-03-22'),(25,'Asesinato','Un individuo fue encontrado sin vida en su hogar con signos evidentes de violencia.',12,'2022-11-05'),(26,'Agresión','Una pelea en un bar resultó en una agresión física entre dos personas.',5,'2023-07-19'),(27,'Asesinato','El cadáver de una mujer fue hallado en un edificio abandonado con múltiples heridas.',13,'2025-02-10'),(28,'Agresión','Una persona fue golpeada por un desconocido en una estación de tren.',13,'2023-01-12'),(29,'Patada a gatito','Un hombre fue detenido por patear a un gatito en un vecindario residencial.',5,'2024-05-25'),(30,'Robo','El cuerpo de una mujer fue encontrado en un callejón con signos de violencia.',3,'2022-06-30'),(31,'Agresión','Un altercado en una tienda resultó en lesiones graves a una persona.',17,'2023-09-08'),(32,'Patada a gatito','Un niño fue arrestado por patear a un gatito frente a su casa.',3,'2024-02-19'),(33,'Asesinato','Un hombre fue asesinado con un arma blanca en su propio apartamento.',6,'2021-12-02'),(34,'Robo','Un conductor agredió a un peatón después de un incidente de tránsito.',9,'2023-04-21'),(35,'Patada a gatito','Una mujer fue multada por patear a un gatito en un parque público.',8,'2025-01-13'),(36,'Asesinato','Un hombre fue encontrado muerto en su vehículo con señales de un crimen organizado.',9,'2022-11-07'),(37,'Agresión','Un padre golpeó a su hijo durante una discusión doméstica.',10,'2023-06-15'),(38,'Patada a gatito','Un grupo de adolescentes fue detenido por maltratar a un gatito en una plaza.',7,'2024-08-30'),(39,'Asesinato','El cadáver de un hombre fue encontrado en el bosque con múltiples heridas de bala.',1,'2023-10-25'),(40,'Robo','Dos personas fueron arrestadas por agredir a un hombre en un bar.',13,'2024-01-17'),(41,'Patada a gatito','Una persona fue arrestada por patear a un gatito en un centro comercial.',3,'2025-03-03'),(42,'Asesinato','Un caso de asesinato en una mansión, el cual involucró envenenamiento.',15,'2023-02-10'),(43,'Agresión','Un hombre fue golpeado en la cabeza durante una pelea en un partido de fútbol.',16,'2024-06-04'),(44,'Patada a gatito','Un joven fue arrestado tras agredir a un gatito en un parque local.',2,'2024-09-11'),(45,'Asesinato','Una mujer fue asesinada por su pareja en un caso de violencia doméstica.',1,'2025-04-20');
/*!40000 ALTER TABLE `casos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuadros`
--

DROP TABLE IF EXISTS `cuadros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuadros` (
  `id_cuadro` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `autor` varchar(100) NOT NULL,
  `valor` decimal(10,0) DEFAULT NULL,
  `id_galeria` int NOT NULL,
  PRIMARY KEY (`id_cuadro`),
  UNIQUE KEY `id_cuadro` (`id_cuadro`),
  KEY `id_galeria` (`id_galeria`),
  CONSTRAINT `cuadros_ibfk_1` FOREIGN KEY (`id_galeria`) REFERENCES `galerias` (`id_galeria`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuadros`
--

LOCK TABLES `cuadros` WRITE;
/*!40000 ALTER TABLE `cuadros` DISABLE KEYS */;
INSERT INTO `cuadros` VALUES (1,'El Grito','Edvard Munch',97,2),(2,'Las Meninas','Diego Velázquez',11,2),(3,'La Mona Lisa','Leonardo da Vinci',56,1),(4,'La Noche Estrellada','Vincent van Gogh',87,3),(5,'La Última Cena','Leonardo da Vinci',51,2),(6,'La Creación de Adán','Miguel Ángel',21,2),(7,'El Jardín de las Delicias','Hieronymus Bosch',33,3),(8,'El nacimiento de Venus','Sandro Botticelli',53,1),(9,'La Persistencia de la Memoria','Salvador Dalí',9,2),(10,'La joven de la perla','Johannes Vermeer',76,1),(11,'La Maja Desnuda','Francisco de Goya',50,3),(12,'El Beso','Gustav Klimt',14,2),(13,'La Anunciación','Leonardo da Vinci',17,3),(14,'El Señor de los Anillos','J.R.R. Tolkien',67,1),(15,'La Ronda de Noche','Rembrandt van Rijn',34,2),(16,'El Retrato de Adele Bloch-Bauer I','Gustav Klimt',27,1),(17,'Las Tres Gracias','Peter Paul Rubens',98,3),(18,'Guernica','Pablo Picasso',99,1),(19,'El Cuervo','Edgar Allan Poe',19,2),(20,'El Retrato de Madame X','John Singer Sargent',29,3),(21,'El Grito de Homer','Homer Simpson',34,1),(22,'El Retrato de Chandler','Chandler Bing',51,2),(23,'La Sonrisa de Shrek','Shrek',23,3),(24,'El Beso de SpongeBob','SpongeBob SquarePants',78,1),(25,'La Noche Estrellada en Springfield','Bart Simpson',44,2),(26,'El Jardín de las Delicias de Bob Esponja','SpongeBob SquarePants',27,3),(27,'El Retrato de Darth Vader','Darth Vader',91,1),(28,'La Última Cena de los Simpsons','Homer Simpson',98,2),(29,'El Nacimiento de Gollum','Gollum',67,3),(30,'La Persistencia de la Pizza','Teenage Mutant Ninja Turtles',29,1),(31,'El Grito de Sheldon','Sheldon Cooper',82,2),(32,'El Beso de los Minions','Minions',45,3),(33,'La Mona Lisa de los Picapiedra','Pebbles Flintstone',37,1),(34,'El Retrato de Walter White','Walter White',63,2),(35,'La Creación de Pikachu','Ash Ketchum',97,3),(36,'El Jardín de las Delicias de los Looney Tunes','Bugs Bunny',72,1),(37,'La Ronda de Noche de los Avengers','Iron Man',58,2),(38,'El Nacimiento de Deadpool','Deadpool',41,3),(39,'La Persistencia de las Donas','Homer Simpson',25,1),(40,'El Retrato de Harley Quinn','Harley Quinn',88,2);
/*!40000 ALTER TABLE `cuadros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `declaraciones`
--

DROP TABLE IF EXISTS `declaraciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `declaraciones` (
  `id_declaracion` int NOT NULL AUTO_INCREMENT,
  `declaracion` text,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id_declaracion`),
  UNIQUE KEY `id_declaracion` (`id_declaracion`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `declaraciones`
--

LOCK TABLES `declaraciones` WRITE;
/*!40000 ALTER TABLE `declaraciones` DISABLE KEYS */;
INSERT INTO `declaraciones` VALUES (1,'Vi a un hombre cerca de los cuadros. Estaba vestido con un abrigo largo y se veía sospechoso.','2025-03-01'),(2,'Escuché ruidos extraños en el pasillo. Había alguien cerca de la pintura de \"El Guernica\".','2025-03-13'),(3,'Una mujer estuvo cerca de la obra \"La Persistencia de la Memoria\" antes del robo.','2005-01-03'),(4,'Un testigo afirmó que el sospechoso del asesinato estaba vestido completamente de blanco y llevaba un sombrero rojo','1992-01-22'),(5,'Aladdin vino a quejarse de que timon y pumba le habian insultado','2025-04-15'),(6,'Artista local: Estaba cerca del Guernica cuando vi a una mujer de estatura baja  parecía estar estudiando el marco del cuadro. Llevaba un bolso grande y parecía estar escondiendo algo. No vi su rostro claramente, pero le vi un tatuaje que parecía una flor y llevaba unas gafas de PUNISHER','2025-03-01'),(7,'Dos encapuchados, de noche y con poca luz, han entrado a mi casa a robar, se han llevado todas las joyas de mi abuela, la pobre!!!','2001-01-01'),(8,'Vi a una persona con un tatuaje observando la pintura \"El Grito\" antes de que desapareciera.','2025-05-01'),(9,'Vigilante de la galería: Vi a una mujer de estatura baja y pelo corto cerca del cuadro de La Mona Lisa. Llevaba un bolso grande y. Luego, la vi caminar hacia la zona del Guernica.','2025-03-01'),(10,'Alguien con cabello largo y oscuro estuvo cerca de la obra \"La Dama de Elche\" en la Galería La Luz.','2022-08-08'),(11,'El testigo declaró que vio a un hombre robando una tienda de mascotas, pero solo se llevó un pez dorado. Dijo que el ladrón gritó: \"¡Es mi alma gemela!\"','2023-03-15'),(12,'Un testigo afirmó que el sospechoso del asesinato estaba disfrazado de payaso y huía del lugar del crimen mientras hacía malabares con naranjas.','2025-05-12'),(13,'Declaró que el agresor intentó robar un banco, pero se tropezó con la puerta giratoria y quedó atrapado durante 10 minutos.','2023-04-10'),(14,'Visitante de la exposición: Noté a una mujer con pelo negro y corto observando el Guernica. Me llamó la atención porque tenía un tatuaje en el brazo derecho, algo así como una flor. Parecía estar nerviosa y se fue rápidamente.','2025-03-01'),(15,'Un testigo afirmó que el sospechoso del asesinato dejó una nota que decía: \"Lo siento, fue un accidente. No quería ensuciar la alfombra.\"','2023-05-17'),(16,'Declaró que el agresor intentó robar un supermercado, pero se distrajo comprando galletas y se olvidó de llevarse el dinero.','2023-06-05'),(17,'El testigo dijo que el ladrón de autos se llevó un vehículo, pero regresó 10 minutos después porque no sabía manejar.','2023-07-12'),(18,'Un testigo afirmó que el sospechoso del asesinato dejó una huella de ketchup en la escena del crimen y escribió: \"Mi marca registrada.\"','2023-08-19'),(19,'Declaró que el agresor intentó robar una tienda de ropa, pero se puso a probarse trajes y se olvidó de huir.','2023-09-25'),(20,'Empleada de la cafetería: Vi a una mujer baja y de pelo negro saliendo corriendo de la galería con dos bultos grandes. Subió a una furgoneta que estaba estacionada afuera. Parecía tener prisa.','2025-03-01'),(21,'Un testigo afirmó que el sospechoso del asesinato dejó una nota que decía: \"Lo hice por el Wi-Fi.\"','2023-09-08'),(22,'Declaró que el agresor intentó robar una heladería, pero se quedó comiendo helado hasta que llegó la policía.','2023-12-01'),(23,'El testigo dijo que el ladrón de bicicletas se llevó una, pero regresó porque no sabía pedalear.','2024-01-07'),(24,'Un testigo afirmó que el sospechoso del asesinato dejó una huella de barro con forma de corazón en la escena del crimen.','2024-02-14'),(25,'Declaró que el agresor intentó robar una librería, pero se puso a leer un libro y se olvidó de huir.','2024-03-21'),(26,'El testigo dijo que el ladrón de bancos gritó: \"¡Es por la pizza!\" antes de escaparse con una caja vacía.','2022-06-30'),(27,'Un testigo afirmó que el sospechoso del asesinato dejó una nota que decía: \"Lo siento, fue sin querer. Estaba probando mi nueva espada.\"','2024-05-09'),(28,'Declaró que el agresor intentó robar una tienda de electrónicos, pero se quedó jugando videojuegos hasta que lo atraparon.','2024-06-18'),(29,'El testigo dijo que el ladrón de autos se llevó un vehículo, pero regresó porque no le gustaba el color.','2023-01-15'),(30,'Un testigo afirmó que el sospechoso del asesinato dejó una huella de chocolate en la escena del crimen y escribió: \"Dulce venganza.\"','2024-08-30'),(31,'Un hombre estaba muy cerca de \"La Noche Estrellada\", miraba a todos lados, parecía nervioso.','1999-12-07'),(32,'El testigo dijo que el ladrón de la joyería gritó: \"¡Es por la ciencia!\" antes de escaparse con un diamante falso.','2023-02-28'),(33,'He visto unos ovnis, me han saludado luego me han invitado a unas birras, pero derepente se pusieron violentos y mataron a varias personas','2024-09-11'),(34,'El testigo dijo que el ladrón de bancos gritó: \"¡Es mi primer día!\" antes de caerse al intentar saltar el mostrador.','2023-10-30'),(35,'Vieja del visillo: Vi a un hombre de estatura media y pelo largo cerca del cuadro del Guernica . Llevaba una mochila y luego, lo vi caminar hacia la zona de La Mona Lisa.','2025-03-12'),(36,'Manolo el panadero: Vi a una mujer alta con gafas cerca del cuadro de La Mona Lisa. Llevaba un sombrero elegante y. Luego, la vi caminar hacia la zona del Guernica.','2025-03-13'),(37,'Estudiante de reboot: Vi a una persona de estatura baja con barba cerca del cuadro de La Mona Lisa. Llevaba un saco oscuro y. Luego, lo vi caminar hacia la zona del Guernica.','2025-03-14'),(38,'Una rata: Vi a un joven con pelo rizado cerca del cuadro de La Mona Lisa. Llevaba un chaleco rojo y. Luego, lo vi caminar hacia la zona del Guernica.','2025-03-15'),(39,'Repartidor de correos: Vi a una mujer de estatura media con pelo largo cerca del cuadro de La Mona Lisa. Llevaba una bufanda de lana y. Luego, la vi caminar hacia la zona del Guernica.','2025-03-16'),(40,'General de policía: Vi a un hombre alto y delgado cerca del cuadro del Guernica. Llevaba una chaqueta negra y. Luego, lo vi caminar hacia la zona de La Mona Lisa.','2025-03-17'),(41,'Vigilante de la galería: Vi a una persona de estatura baja con pelo corto cerca del cuadro de La Mona Lisa. Llevaba unos pantalones azules y. Luego, la vi caminar hacia la zona del Guernica.','2025-03-18');
/*!40000 ALTER TABLE `declaraciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `declaraciones_personas`
--

DROP TABLE IF EXISTS `declaraciones_personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `declaraciones_personas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_persona` int NOT NULL,
  `id_declaracion` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_persona` (`id_persona`),
  KEY `id_declaracion` (`id_declaracion`),
  CONSTRAINT `declaraciones_personas_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id_persona`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `declaraciones_personas_ibfk_2` FOREIGN KEY (`id_declaracion`) REFERENCES `declaraciones` (`id_declaracion`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `declaraciones_personas`
--

LOCK TABLES `declaraciones_personas` WRITE;
/*!40000 ALTER TABLE `declaraciones_personas` DISABLE KEYS */;
INSERT INTO `declaraciones_personas` VALUES (1,12,5),(2,45,12),(3,8,3),(4,3,14),(5,34,21),(6,6,7),(7,19,15),(8,27,9),(9,22,2),(10,40,25),(11,14,8),(12,31,1),(13,48,10),(14,5,18),(15,16,4),(16,37,22),(17,18,17),(18,49,13),(19,20,19),(20,42,27),(21,24,11),(22,33,23),(23,26,24),(24,11,20),(25,38,26),(26,28,28),(27,50,29),(28,29,30),(29,32,31),(30,9,6),(31,35,32),(32,36,33),(33,39,34),(34,13,38),(35,14,35),(36,19,37),(37,20,36),(38,30,41),(39,41,40),(40,44,39);
/*!40000 ALTER TABLE `declaraciones_personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detectives`
--

DROP TABLE IF EXISTS `detectives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detectives` (
  `id_detective` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_detective`),
  UNIQUE KEY `id_detective` (`id_detective`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detectives`
--

LOCK TABLES `detectives` WRITE;
/*!40000 ALTER TABLE `detectives` DISABLE KEYS */;
INSERT INTO `detectives` VALUES (1,'Antonio Hernandez'),(2,'Carlos Gómez'),(3,'Luis Martínez'),(4,'Marta Ruiz'),(5,'José López'),(6,'Beatriz Sánchez'),(7,'Ana Pérez'),(8,'Carlos Gómez'),(9,'Luis Martínez'),(10,'Marta Ruiz'),(11,'Saul Gonzalez'),(12,'Pablo Betancourt'),(13,'Ricardo Álvarez'),(14,'Claudia Castro'),(15,'Tomás Romero'),(16,'Patricia García'),(17,'David Fernández'),(18,'Sofía Jiménez');
/*!40000 ALTER TABLE `detectives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galerias`
--

DROP TABLE IF EXISTS `galerias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galerias` (
  `id_galeria` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id_galeria`),
  UNIQUE KEY `id_galeria` (`id_galeria`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galerias`
--

LOCK TABLES `galerias` WRITE;
/*!40000 ALTER TABLE `galerias` DISABLE KEYS */;
INSERT INTO `galerias` VALUES (1,'Galería La Luz'),(2,'Galería del Museo'),(3,'Galería Artística');
/*!40000 ALTER TABLE `galerias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nombre_completo`
--

DROP TABLE IF EXISTS `nombre_completo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nombre_completo` (
  `id_nombre` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `resultado` varchar(255) DEFAULT NULL,
  `id_persona` int DEFAULT NULL,
  PRIMARY KEY (`id_nombre`),
  UNIQUE KEY `id_nombre` (`id_nombre`),
  KEY `nombre_completo_ibfk_1` (`id_persona`),
  CONSTRAINT `nombre_completo_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id_persona`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nombre_completo`
--

LOCK TABLES `nombre_completo` WRITE;
/*!40000 ALTER TABLE `nombre_completo` DISABLE KEYS */;
INSERT INTO `nombre_completo` VALUES (1,'Juan Pérez','has completado la misión, ahora puedes descansar en una nube de algodón.',1),(2,'Lucía González','el unicornio que tenías como mascota se escapó y ahora vive en la luna.',2),(3,'Pedro Sánchez','ahora te han ascendido a superhéroe intergaláctico, ¡cuidado con los extraterrestres!',3),(4,'Ana Martínez','el gato del vecino ha declarado la guerra a tu sofá.',4),(5,'Iratze García','te han dado una medalla, pero es invisible, así que no la pierdas.',5),(6,'Peter Pan','los espaguetis en tu plato están conspirando contra ti, ¡no confíes en ellos!',6),(7,'Juan Pérez','la tierra te agradece, pero los extraterrestres te observan.',7),(8,'Lucía González','has olvidado dónde pusiste las llaves... ¡y probablemente nunca las encuentres!',8),(9,'Alvaro Gil','ahora eres oficialmente un experto en comer pizza mientras resuelves ecuaciones.',9),(10,'Ana Martínez','te olvidaste de regar las plantas, ¡las flores están haciendo una protesta silenciosa!',10),(11,' Daenerys Targaryen','el universo está en deuda contigo, ahora puedes descansar en tu sofá galáctico.',11),(12,'Javier Fernández','el sol se ha escapado y ahora vive como estrella de rock.',12),(13,'Iratze Dictadora','has encontrado a la ladrona de la MoNa liSa y del gueRnica de la gaLeria LA lUz! Fue la malvada IratZe diCtadora de reBOOT acaDemY que siempre dice que se merece mucho mas de lo que le pagan!',24),(14,'Carla López','los caracoles están organizando una carrera y tú no fuiste invitado.',14),(15,'Pato Lucas','te puedes ganar un trofeo, pero es un holograma, ¡te toca creerlo!',15),(16,'Laura Jiménez','te olvidaste de comprar leche... y ahora los cereales te ignoran.',16),(17,'José Ramírez','ahora tienes una llave secreta que abre puertas hacia nada.',17),(18,'Sandra Martínez','las cucarachas están planeando mudarse a tu casa, ¡prepárate para una invasión!',18),(19,'Raúl Pérez','el sol te aplaude, pero con una mano... porque es un sol muy extraño.',19),(20,'Sofía Rodríguez','has ganado una galleta virtual que te alimenta por la vista.',20),(21,'Adrian Sánchez','el Wi-Fi sigue desapareciendo en tu casa... ¡está jugando al escondite!',21),(22,'Fernando Torres','los delfines del océano te están aplaudiendo... desde el fondo del mar.',22),(23,'Iratze de Gryffindor','no lograste encontrar el control remoto, está en una dimensión paralela.',23),(24,'David Ruiz','ahora eres el campeón de las olimpiadas de comedia sin sentido.',13),(25,'Alfredo Martínez','el avión que tomaste tiene como piloto a un pato, ¡prepárate para un aterrizaje divertido!',25),(26,'Astrid Lindström','el dragón del bosque está muy orgulloso de ti, aunque es un dragón de cartón.',26),(27,'Elrond Celebrindal','te olvidaste de hacer la tarea, ¡pero puedes inventar una excusa muy convincente!',27),(28,'Sofia González','los gatos de todo el mundo te nombran su líder supremo.',28),(29,'Björn Andersson','te equivocaste de puerta y ahora estás en el vestuario de los pingüinos.',29),(30,'Aragorn Telcontar','ahora puedes comunicarte con las plantas, pero solo en código binario.',30),(31,'Iratze López','el congelador está completamente vacío, ¡tus helados te están ignorando!',31),(32,'Freya Jönsson','has sido ascendido a dios del café, ahora gobiernas la máquina expendedora.',32),(33,'Thorin Oakenshield','no lograste la meta, pero al menos las galletas en la cocina te apoyan moralmente.',33),(34,'Celia Rodríguez','ahora eres el capitán de la nave que va a ningún lado.',34),(35,'Loki Von Uppsala','el perro del vecino te está mirando con desaprobación.',35),(36,'Eärendil Vanyar','los búhos nocturnos te han dado un diploma invisible como agradecimiento.',36),(37,'Alejandra Fernández','la lámpara en la esquina de tu habitación ha decidido hacerse la muerta.',37),(38,'Gimli Hammersmith','has ganado una estrella, pero es del tamaño de un guisante.',38),(39,'Karin Svensson','el coche se ha quedado sin gasolina y ahora está jugando al escondite con el mecánico.',39),(40,'Óscar Ramírez','los extraterrestres te están preparando una fiesta... a 1000 años luz.',40),(41,'Tariq Alvarado','has resuelto el acertijo del universo, pero el universo sigue sin entender tu chiste.',41),(42,'Liv Holmberg','lograste escalar la montaña más alta, solo para descubrir que el Wi-Fi no llega hasta allí.',42),(43,'Díana Montalbán','el reto estaba en tu mente, y ahora tu mente está en modo vacaciones.',43),(44,'Emil Eriksson','no lograste descifrar el código secreto, pero al menos las galletas te consolarán.',44),(45,'Elenwen Galadriel','has completado la misión, pero el premio es un abrazo de un cactus.',45),(46,'Pedro Sánchez','el acertijo era imposible, pero te dieron una medalla por intentarlo... es de chocolate.',46),(47,'Nina Johansson','el reto era encontrar la salida, pero te quedaste atrapado en un bucle de confeti.',47),(48,'Thorvald Björk','lograste superar el desafío, pero ahora tienes que lidiar con un ejército de gatos curiosos.',48),(49,'Luís Herrera','no completaste la misión, pero al menos tienes una historia épica para contar.',49),(50,'Leif Nilsson','el acertijo te dejó confundido, pero las estrellas te están aplaudiendo desde lejos.',50),(51,'Almudena Peña','has resuelto el enigma, pero ahora el enigma quiere ser tu amigo.',51),(52,'Gandalf Mithrandir','el reto era imposible, pero te dieron una estrella de consolación... brilla poco, pero es tuya.',52);
/*!40000 ALTER TABLE `nombre_completo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personas` (
  `id_persona` int NOT NULL AUTO_INCREMENT,
  `id_galeria` int DEFAULT NULL,
  `sexo` enum('hombre','mujer') DEFAULT NULL,
  `tatuajes` tinyint(1) DEFAULT NULL,
  `pelo` enum('corto','largo') DEFAULT NULL,
  `color_pelo` enum('negro','rubio','castaño') DEFAULT NULL,
  `estatura` enum('Baja','Media','Alta') DEFAULT NULL,
  PRIMARY KEY (`id_persona`),
  UNIQUE KEY `id_persona` (`id_persona`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (1,1,'hombre',0,'corto','negro','Baja'),(2,1,'mujer',1,'largo','rubio','Media'),(3,1,'hombre',0,'corto','castaño','Media'),(4,2,'mujer',1,'largo','castaño','Baja'),(5,3,'mujer',0,'corto','negro','Alta'),(6,1,'hombre',0,'largo','rubio','Media'),(7,1,'hombre',0,'corto','negro','Media'),(8,1,'mujer',1,'largo','rubio','Media'),(9,1,'hombre',0,'corto','castaño','Media'),(10,2,'mujer',1,'largo','castaño','Baja'),(11,1,'mujer',0,'corto','negro','Baja'),(12,3,'hombre',0,'largo','rubio','Media'),(13,1,'hombre',1,'corto','rubio','Baja'),(14,1,'mujer',0,'largo','castaño','Alta'),(15,2,'hombre',0,'corto','negro','Media'),(16,2,'mujer',1,'largo','rubio','Media'),(17,3,'hombre',0,'largo','castaño','Media'),(18,3,'mujer',1,'largo','negro','Baja'),(19,1,'hombre',0,'corto','castaño','Alta'),(20,1,'mujer',1,'largo','negro','Baja'),(21,3,'hombre',0,'largo','rubio','Media'),(22,1,'hombre',1,'corto','rubio','Baja'),(23,2,'mujer',0,'largo','castaño','Baja'),(24,1,'mujer',1,'corto','negro','Baja'),(25,2,'hombre',0,'corto','negro','Media'),(26,3,'mujer',1,'largo','rubio','Baja'),(27,1,'hombre',0,'corto','castaño','Alta'),(28,2,'mujer',1,'largo','rubio','Alta'),(29,3,'hombre',0,'corto','negro','Baja'),(30,1,'hombre',1,'corto','castaño','Baja'),(31,2,'mujer',0,'largo','castaño','Baja'),(32,3,'mujer',1,'largo','rubio','Media'),(33,1,'hombre',0,'corto','castaño','Media'),(34,2,'mujer',1,'largo','negro','Baja'),(35,3,'hombre',0,'corto','rubio','Media'),(36,1,'hombre',1,'largo','rubio','Alta'),(37,2,'mujer',0,'largo','castaño','Alta'),(38,3,'hombre',1,'corto','castaño','Alta'),(39,1,'mujer',0,'corto','rubio','Media'),(40,3,'hombre',1,'largo','negro','Baja'),(41,1,'hombre',1,'corto','castaño','Baja'),(42,2,'mujer',0,'largo','rubio','Media'),(43,3,'mujer',1,'largo','negro','Media'),(44,1,'hombre',0,'corto','rubio','Media'),(45,2,'mujer',1,'largo','castaño','Alta'),(46,3,'hombre',0,'corto','castaño','Baja'),(47,1,'mujer',1,'largo','negro','Media'),(48,2,'hombre',0,'largo','rubio','Alta'),(49,3,'hombre',1,'corto','castaño','Media'),(50,1,'hombre',0,'largo','negro','Media'),(51,2,'mujer',1,'largo','rubio','Media'),(52,3,'hombre',1,'corto','castaño','Media');
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-14 17:13:36
