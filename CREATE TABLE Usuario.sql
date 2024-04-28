DROP TABLE sistemaTransporte.Usuario;
CREATE TABLE sistemaTransporte.Usuario(idUsuario INT AUTO_INCREMENT NOT NULL,
                                        nombre VARCHAR(150) NOT NULL,
                                        tipoDocumento VARCHAR(3) NOT NULL,
                                        numeroDocumento INT(10) NOT NULL,
                                        fechaNacimiento DATE NOT NULL,
                                        celular INT(10) NOT NULL,
                                        correoElectronico VARCHAR(50) NOT NULL,
                                        PRIMARY KEY(idUsuario))ENGINE = InnoDB;