CREATE TABLE Empresa(
	RUT VARCHAR(10),
	Nombre VARCHAR(120),
	Direccion VARCHAR(120),
	Telefono VARCHAR(15),
	Correo VARCHAR(80),
	Web VARCHAR(50),
	PRIMARY KEY (Rut)
);

CREATE TABLE Herramienta(
	IDHerramienta INT,
	Nombre VARCHAR(120),
	PrecioDia INT,
	PRIMARY KEY (IDHerramienta)
);

CREATE TABLE Cliente(
	RUT VARCHAR(10),
	Nombre VARCHAR(120),
	Correo VARCHAR(80),
	Direccion VARCHAR(120),
	Celular VARCHAR(15),
	PRIMARY KEY (RUT)
);

CREATE TABLE Arriendo(
	Folio INT,
	Fecha DATE,
	Dias INT,
	ValorDia INT,
	Garantia VARCHAR(30),
	Herramienta_IDHerramienta INT,
	Cliente_RUT VARCHAR(10),
	PRIMARY KEY (Folio),
	FOREIGN KEY (Herramienta_IDHerramienta) REFERENCES Herramienta(IDHerramienta),
	FOREIGN KEY (Cliente_RUT) REFERENCES Cliente(RUT)
);