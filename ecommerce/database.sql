CREATE TABLE PRODUCTO(
	codpro int not null AUTO_INCREMENT,
	nompro varchar(50) null,
	despro varchar(100) null,
	prepro numeric(6,2) null,
	estado int null,
	CONSTRAINT pk_producto
	PRIMARY KEY (codpro)
);

alter table PRODUCTO add rutimapro varchar(100) null;

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,rutimapro)
VALUES ('Papel Crepe','Ideal para decoraci&oacute;n de trabajos escolares','14.99',1,'crepe.jpg')
,('Papel Bond A4','Papel ultra blanco de 180gr','9.99',1,'bonda4.jpg')
,('Colores Faber Castell','Caja de colores x 12 unid. + 2 de regalo','5.99',1,'colores12unid.jpg')
,('Ecolapices Faber Castell','Caja de ecolapices x 60 unid.','11.99',1,'ecolapices60unid.jpg')
,('Estuche lapices Faber Castell','Estuche de lapiceros de colores x 5 unid.','6.99',1,'lapiceros5unid.jpg')
,('Tempera Artesco 250 ml','Frasco de tempera Artesco de 250 ml','3.99',1,'temperaartesco.jpg')
,('Plastilina Norma','Caja con 12 barras plastilinas. 260 gr','5.99',1,'plastilinanorma.jpg')
,('Cuaderno Standford','Cuaderno cuadriculado Standford 100 hojas','3.49',1,'cuadernostandford.jpg')
,('boligrafos Pilot','pack de 6 boligrafos azules, 4 negros y 2 rojos','5.00',1,'bolis.jpg');

CREATE TABLE USUARIO(
	codusu int not null AUTO_INCREMENT,
	nomusu varchar(50) ,
	apeusu varchar(50) ,
	emausu varchar(50) not null,
	pasusu varchar(20) not null,
	estado int not null,
	CONSTRAINT pk_usuario
	PRIMARY KEY (codusu)
);

INSERT INTO USUARIO (nomusu,apeusu,emausu,pasusu,estado)
VALUES ('Usuario','Demo','correo@example.com','123456',1);

INSERT INTO USUARIO (nomusu,apeusu,emausu,pasusu,estado)
VALUES ('suli','ashalem','suli5@.com','12345',2);

create table PEDIDO(
	codped int not null AUTO_INCREMENT,
	codusu int not null,
	codpro int not null,
	fecped datetime not null,
	estado int not null,
	dirusuped varchar(50) not null,
	telusuped varchar(12) not null,
	PRIMARY KEY (codped)
);
alter table PEDIDO add token varchar(30) null;

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,rutimapro)
VALUES ('Goma de Borrar Milan','Ideal para borrar escritura con lapiz;n de trabajos escolares','1.50',1,'GomaDeBorrarMilan.jpg'),
('500 folios A4','Ideal para escribir con cualquier tipo de boligrafo y lapiz','25',1,'Folios.jpg')

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,rutimapro)
VALUES ('Tijeras','Ideal para cortar papel','3.00',1,'tijeras.jpg'),
('Portaminas','Ideal para escribir sobre papel','1.50',1,'Portaminas.jpg'),
('set de 30 colores de pintura acrilica de 30ml el bote','Ideal para pintar','30.00',1,'setdepinturaacrilica,16coloresx30ml.jpg'),
('El señor de los anillos, la comunidad del anillo','Libro de el Señor de los anillos','35.00',1,'Elseñordelosanillos.Lacomunidaddelanillo.jpg'),
('4 barras de pegamento infantil Pritt, 4 barras de pegamento','Libro ','10.00',1,'4barrasdepegamentoinfantilPritt.jpg'),
('10 pinceles','ideal para pintar con acuarelas','12.00',1,'10pinceles.jpg')

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,rutimapro)
VALUES ('Los pilares de la tierra','Libro de Los pilares de la tierra','25.00',1,'LosPilaresDeLaTierra.jpg')

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,rutimapro)
VALUES ('Harry Potter y la piedra filosofal','Libro de Harry Potter','30.00',1,'HarryPotterylapiedrafilosofal.jpg'),

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,rutimapro)
VALUES ('Harry Potter y el prisionero de azcaban','Libro de Harry Potter','30.00',1,'HarryPotteryElPrisioneroDeAzkaban.jpg'),
('Harry Potter y la orden del fenix','Libro de Harry Potter','30.00',1,'HarryPotterylaOrdenDelFenix.jpg'),