-- crear bbdd de compania aerea
create database if not exists companya_aerea_NGPC;
use companya_aerea_NGPC;-- usamos la bbdd 
create table if not exists T_AVION(-- creamos la tabla avion
	matricula char(6) 
	primary key,
	fabricante varchar(26),
	modelo varchar(10),
	capacidad tinyint,
	autonomia tinyint
);

create table if not exists T_VUELO(-- tabla vuelo
	identificador tinyint 
	primary key,
	fecha date,
	aeropuerto_origen varchar(50),
	aeropuerto_destino varchar(50),
	matricula_avion char(6),
	CONSTRAINT FK_VUELO_AVION
	foreign key (matricula_avion) references T_AVION(matricula)
);

create table if not exists T_PERSONAL(-- tabla personal
	identificador int 
	primary key,
	nombre varchar(15),
	categoria_profesional varchar (40)
);

create table if not exists T_PERSONAL_VUELO(-- creamos tabla personal_vuelo
	id_vuelo tinyint,
	id_personal int,
	puesto varchar(10),
	primary key (id_vuelo , id_personal),
	foreign key (id_vuelo) references T_VUELO (identificador),
	foreign key (id_personal) references T_PERSONAL (identificador)
);

create table if not exists T_PASAJERO(-- tabla pasajero
	dni char(8) 
	primary key,
	nombre varchar(15)
);

create table if not exists T_PASAJERO_VUELO(-- creamos tabla pasajero_vuelo
	id_vuelo tinyint,
	dni_pasajero char(8),
	clase
	enum('turista','primera','business'),
	primary key (id_vuelo , dni_pasajero),
	foreign key (id_vuelo) references  T_VUELO (identificador),
	foreign key (dni_pasajero) references  T_PASAJERO (dni)
);
