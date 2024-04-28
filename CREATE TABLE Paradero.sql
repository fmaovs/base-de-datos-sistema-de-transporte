CREATE TABLE sistemaTransporte.Paradero(idParadero INT AUTO_INCREMENT NOT NULL,
                                        nombre VARCHAR(55) NOT NULL,
                                        direccion VARCHAR(150) NOT NULL,
                                        tiempoEstimado TIME,
                                        distancia INT(3),
                                        PRIMARY KEY(idParadero))ENGINE = InnoDB;