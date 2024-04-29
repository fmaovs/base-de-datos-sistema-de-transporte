DROP DATABASE sistemaTransporte;
CREATE DATABASE sistemaTransporte;

/* DROP TABLE sistemaTransporte.empleado;
DROP TABLE sistemaTransporte.incidente;
DROP TABLE sistemaTransporte.paradero;
DROP TABLE sistemaTransporte.recaudo;
DROP TABLE sistemaTransporte.rol;
DROP TABLE sistemaTransporte.ruta;
DROP TABLE sistemaTransporte.tarjeta;
DROP TABLE sistemaTransporte.usuario; 
DROP TABLE sistemaTransporte.vehiculo;
DROP TABLE sistemaTransporte.viaje; */

CREATE TABLE sistemaTransporte.Empleado(idEmpleado INT AUTO_INCREMENT NOT NULL,
                                        nombre VARCHAR(120) NOT NULL,
                                        tipoIdentificacion VARCHAR(3) NOT NULL,
                                        numeroIdentificacion INT(10) NOT NULL,
                                        barrio VARCHAR(55),
                                        nomenclatura VARCHAR(150) NOT NULL,
                                        fechaNacimiento DATE NOT NULL,
                                        idSupervisor INT NOT NULL,
                                        PRIMARY KEY(idEmpleado))ENGINE = InnoDB;

CREATE TABLE sistemaTransporte.Incidente(idIncidente INT AUTO_INCREMENT NOT NULL,
                                        idViaje INT NOT NULL,
                                        PRIMARY KEY(idIncidente))ENGINE = InnoDB;

CREATE TABLE sistemaTransporte.Paradero(idParadero INT AUTO_INCREMENT NOT NULL,
                                        nombre VARCHAR(55) NOT NULL,
                                        direccion VARCHAR(150) NOT NULL,
                                        tiempoEstimado TIME,
                                        distancia INT(3),
                                        PRIMARY KEY(idParadero))ENGINE = InnoDB;

CREATE TABLE sistemaTransporte.Recaudo(idTarjeta INT NOT NULL,
                                        tarifa INT(6) NOT NULL
                                        )ENGINE = InnoDB;

CREATE TABLE sistemaTransporte.Rol(idRol INT AUTO_INCREMENT NOT NULL,
                                    idEmpleado INT NOT NULL,
                                    cargo VARCHAR(50) NOT NULL,
                                    PRIMARY KEY(idRol))ENGINE= InnoDB;

CREATE TABLE sistemaTransporte.Ruta(idRuta INT AUTO_INCREMENT NOT NULL,
                                    nombre VARCHAR(55) NOT NULL,
                                    tiempoEstimado TIME,
                                    frecuencia INT NOT NULL,
                                    horario VARCHAR(55) NOT NULL,
                                    idTroncal INT NOT NULL,
                                    PRIMARY KEY(idRuta))ENGINE InnoDB;

CREATE TABLE sistemaTransporte.Tarjeta(idTarjeta INT AUTO_INCREMENT NOT NULL,
                                        saldo INT(6) NOT NULL,
                                        idTipoTarjeta INT NOT NULL,
                                        idUsuario INT,
                                        PRIMARY KEY(idTarjeta))ENGINE = InnoDB;

CREATE TABLE sistemaTransporte.Usuario(idUsuario INT AUTO_INCREMENT NOT NULL,
                                        nombre VARCHAR(150) NOT NULL,
                                        tipoDocumento VARCHAR(3) NOT NULL,
                                        numeroDocumento INT(10) NOT NULL,
                                        fechaNacimiento DATE NOT NULL,
                                        celular INT(10) NOT NULL,
                                        correoElectronico VARCHAR(50) NOT NULL,
                                        PRIMARY KEY(idUsuario))ENGINE = InnoDB;

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

CREATE TABLE sistemaTransporte.Viaje(idViaje INT AUTO_INCREMENT NOT NULL,
                                    fecha DATE NOT NULL,
                                    horaInicio TIME NOT NULL,
                                    horaFin TIME NOT NULL,
                                    idVehiculo INT NOT NULL,
                                    idRuta INT NOT NULL,
                                    idEmpleado INT NOT NULL,
                                    PRIMARY KEY(idViaje))ENGINE = InnoDB;


CREATE TABLE tipoTarjeta(idTipoTarjeta INT auto_increment NOT NULL PRIMARY KEY)ENGINE = InnoDB;

CREATE TABLE Troncal(idTroncal INT AUTO_INCREMENT NOT NULL PRIMARY KEY)ENGINE = InnoDB;
                                    
CREATE TABLE Supervisor(idSupervisor INT AUTO_INCREMENT PRIMARY KEY NOT NULL) ENGINE= InnoDB;

CREATE TABLE TipoVehiculo(idTipoVehiculo INT auto_increment NOT NULL PRIMARY KEY)ENGINE =InnoDB;
CREATE TABLE Marca(idMarca INT auto_increment NOT NULL primary KEY) ENGINE = InnoDB;
CREATE TABLE Color(idColor INT AUTO_INCREMENT NOT NULL PRIMARY KEY) engine = InnoDB;

ALTER TABLE Viaje 
ADD codEmpleado INT NOT NULL;


ALTER TABLE viaje
ADD CONSTRAINT FKEmpleado 
FOREIGN KEY(codEmpleado)
REFERENCES Empleado(idEmpleado);

ALTER TABLE viaje
ADD CONSTRAINT FKRuta 
FOREIGN KEY(idRuta)
REFERENCES Ruta(idRuta);

ALTER TABLE viaje
ADD CONSTRAINT FKVehiculo 
FOREIGN KEY(idVehiculo)
REFERENCES Vehiculo(idVehiculo);

ALTER TABLE Empleado
ADD CONSTRAINT FKSupervisor
FOREIGN KEY(idSupervisor)
REFERENCES Supervisor(idSupervisor);

ALTER TABLE Empleado
ADD COLUMN idRol INT NOT NULL;

ALTER TABLE Empleado
ADD CONSTRAINT FKRol
FOREIGN KEY(idRol)
REFERENCES Rol(idRol);


ALTER TABLE Incidente
ADD CONSTRAINT FKViaje
FOREIGN KEY(idViaje)
REFERENCES Viaje(idViaje);

ALTER TABLE Recaudo
ADD CONSTRAINT FKTarjeta
FOREIGN KEY(idTarjeta)
REFERENCES Tarjeta(idTarjeta);

ALTER TABLE Rol
ADD CONSTRAINT FKEmpleado
FOREIGN KEY(codEmpleado)
REFERENCES Empleado(idEmpleado);

ALTER TABLE Ruta
ADD CONSTRAINT FKTroncal
FOREIGN KEY(idTroncal)
REFERENCES Troncal(idTroncal);

ALTER TABLE Tarjeta
ADD CONSTRAINT FKTipoTarjeta
FOREIGN KEY(idTipoTarjeta)
REFERENCES TipoTarjeta(idTipoTarjeta);

ALTER TABLE Tarjeta
ADD CONSTRAINT FKUsuario
FOREIGN KEY(idUsuario)
REFERENCES Usuario(idUsuario);

ALTER TABLE Vehiculo
ADD CONSTRAINT FKTipoVehiculo
FOREIGN KEY(idTipoVehiculo)
REFERENCES TipoVehiculo(idTipoVehiculo);

ALTER TABLE Vehiculo
ADD CONSTRAINT FKMarca
FOREIGN KEY(idMarca)
REFERENCES Marca(idMarca);

ALTER TABLE Vehiculo
ADD CONSTRAINT FKColor
FOREIGN KEY(idColor)
REFERENCES Color(idColor);