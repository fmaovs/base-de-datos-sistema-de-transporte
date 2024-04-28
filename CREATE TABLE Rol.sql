DROP TABLE sistemaTransporte.Rol;
CREATE TABLE sistemaTransporte.Rol(idRol INT AUTO_INCREMENT NOT NULL,
                                    idEmpleado INT NOT NULL,
                                    cargo VARCHAR(50) NOT NULL,
                                    PRIMARY KEY(idRol))ENGINE= InnoDB;