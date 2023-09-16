CREATE TABLE `Instituto` (
  `id` integer PRIMARY KEY,
  `Nombre` varchar(100),
  `Localidad` varchar(50)
);

CREATE TABLE `Carrera` (
  `id` integer PRIMARY KEY,
  `Nombre` varchar(50),
  `Anio_duracion` integer,
  `Instituto_id` integer
);

CREATE TABLE `Asignatura` (
  `id` integer PRIMARY KEY,
  `Nombre` varchar(50),
  `Carrera_id` integer,
  `Docente_id` integer
);

CREATE TABLE `Docente` (
  `id` integer PRIMARY KEY,
  `DNI` varchar(255),
  `Nombre` varchar(50),
  `Apellido` varchar(50)
);

CREATE TABLE `Alumno` (
  `id` integer PRIMARY KEY,
  `DNI` varchar(255),
  `Nombre` varchar(50),
  `Apellido` varchar(50)
);

CREATE TABLE `AlumnoAsignatura` (
  `Asignatura_id` integer,
  `Alumno_id` integer
);

ALTER TABLE `Carrera` ADD FOREIGN KEY (`Instituto_id`) REFERENCES `Instituto` (`id`);

ALTER TABLE `Asignatura` ADD FOREIGN KEY (`Carrera_id`) REFERENCES `Carrera` (`id`);

ALTER TABLE `AlumnoAsignatura` ADD FOREIGN KEY (`Asignatura_id`) REFERENCES `Asignatura` (`id`);

ALTER TABLE `AlumnoAsignatura` ADD FOREIGN KEY (`Alumno_id`) REFERENCES `Alumno` (`id`);

ALTER TABLE `Asignatura` ADD FOREIGN KEY (`Docente_id`) REFERENCES `Docente` (`id`);
