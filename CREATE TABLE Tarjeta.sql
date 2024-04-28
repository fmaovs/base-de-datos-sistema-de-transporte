CREATE TABLE sistemaTransporte.Tarjeta(idTarjeta INT AUTO_INCREMENT NOT NULL,
                                        saldo INT(6) NOT NULL,
                                        idTipoTarjeta INT NOT NULL,
                                        idUsuario INT,
                                        PRIMARY KEY(idTarjeta))ENGINE = InnoDB;