CREATE TABLE sistemaTransporte.Empleado(idEmpleado INT AUTO_INCREMENT NOT NULL,
                                        nombre VARCHAR(120) NOT NULL,
                                        tipoIdentificacion VARCHAR(3) NOT NULL,
                                        numeroIdentificacion INT(10) NOT NULL,
                                        barrio VARCHAR(55),
                                        nomenclatura VARCHAR(150) NOT NULL,
                                        fechaNacimiento DATE NOT NULL,
                                        idSupervisor INT NOT NULL,
                                        PRIMARY KEY(idEmpleado))ENGINE = InnoDB;