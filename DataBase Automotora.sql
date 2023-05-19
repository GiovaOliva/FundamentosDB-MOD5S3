CREATE DATABASE AUTOMOTORA;
--LISTO

CREATE TABLE EMPRESA (
	RUT VARCHAR (10),
	Nombre VARCHAR (120),
	Direccion VARCHAR (120),
	Telefono VARCHAR (15),
	Correo VARCHAR (80),
	Web VARCHAR (50),
	PRIMARY KEY (RUT)
);
--LISTO
CREATE TABLE CLIENTE (
	RUT VARCHAR(10),
	Nombre VARCHAR(120),
	Correo VARCHAR(80),
	Direccion VARCHAR(120),
	Celular VARCHAR(15),
	Alta CHAR(1),
	PRIMARY KEY (RUT)
);
--LISTO
CREATE TABLE TipoVehiculo(
	IDTipoVehiculo INT,
	Nombre VARCHAR(120),
	PRIMARY KEY (IDTipoVehiculo)
);
--LISTO
CREATE TABLE Marca(
	IDMarca INT,
	Nombre VARCHAR(120),
	PRIMARY KEY (IDMarca)
);
-- Se obvia la columna Marca puesto luego por ID tiene su tabla aparte.
--LISTO
CREATE TABLE Vehiculo(
	IDVehiculo INT,
	Patente VARCHAR(10),
	Modelo VARCHAR(20),
	Color VARCHAR(15),
	Precio INT,
	FrecuenciaMantencion INT,
	Marca_IDMarca INT,
	TipoVehiculo_IDTipoVehiculo INT,
	PRIMARY KEY (IDVehiculo),
	FOREIGN KEY (TipoVehiculo_IDTipoVehiculo) REFERENCES TipoVehiculo(IDTipoVehiculo),
	FOREIGN KEY (Marca_IDMarca) REFERENCES Marca(IDMarca));
--LISTO
CREATE TABLE Venta (
	Folio INT,
	Fecha DATE,
	Monto INT,
	Vehiculo_IDVehiculo INT UNIQUE,
	Cliente_RUT VARCHAR(12),
	PRIMARY KEY (Folio),
	FOREIGN KEY (Cliente_RUT) REFERENCES Cliente(RUT),
	FOREIGN KEY (Vehiculo_IDVehiculo) REFERENCES Vehiculo(IDVehiculo)
);
--LISTO
CREATE TABLE Mantencion(
	IDMantencion INT,
	Fecha DATE,
	TrabajosRealizados VARCHAR(1000),
	Venta_Folio INT,
	PRIMARY KEY (IDMantencion),
	FOREIGN KEY (Venta_Folio) REFERENCES Venta(Folio)
);



