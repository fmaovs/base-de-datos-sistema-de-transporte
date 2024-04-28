CREATE TABLE sistemaTransporte.Vehiculo(idVehiculo INT AUTO_INCREMENT NOT NULL, 
                                        modelo INT(4) NOT NULL, 
                                        placa VARCHAR(6) NOT NULL, 
                                        cantidadSillas INT(2) NOT NULL,
                                        cantidadPasajerosDePie INT(2) NOT NULL,
                                        idTipoVehiculo INT NOT NULL,
                                        idMarca INT NOT NULL,
                                        idColor INT NOT NULL,
                                        PRIMARY KEY(idVehiculo)
                                        )ENGINE = InnoDB;