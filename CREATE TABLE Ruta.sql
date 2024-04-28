CREATE TABLE sistemaTransporte.Ruta(idRuta INT AUTO_INCREMENT NOT NULL,
                                    nombre VARCHAR(55) NOT NULL,
                                    tiempoEstimado TIME,
                                    frecuencia INT NOT NULL,
                                    horario VARCHAR(55) NOT NULL,
                                    idTroncal INT NOT NULL,
                                    PRIMARY KEY(idRuta))ENGINE InnoDB;