CREATE TABLE sistemaTransporte.Viaje(idViaje INT AUTO_INCREMENT NOT NULL,
                                    fecha DATE NOT NULL,
                                    horaInicio TIME NOT NULL,
                                    horaFin TIME NOT NULL,
                                    idVehiculo INT NOT NULL,
                                    idRuta INT NOT NULL,
                                    idEmpleado INT NOT NULL,
                                    PRIMARY KEY(idViaje))ENGINE = InnoDB;