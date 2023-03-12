/*INSERTA DEPARTAMENTOS*/
INSERT INTO `dmds`.`departament`(`id`,`name`,`create_time`,`update_time`,`delete_time`)
VALUES(1,'Boyaca','2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`departament`(`id`,`name`,`create_time`,`update_time`,`delete_time`)
VALUES(2,'Casanare','2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`departament`(`id`,`name`,`create_time`,`update_time`,`delete_time`)
VALUES(3,'Santander','2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`departament`(`id`,`name`,`create_time`,`update_time`,`delete_time`)
VALUES(4,'Cundinamarca','2022-12-18 09:52:06',null,null);

/*INSERTA CUIDADES*/

INSERT INTO `dmds`.`city`(`id`,`name`,`id_departament`,`create_time`,`update_time`,`delete_time`)
VALUES(1,'Sogamoso',1,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`city`(`id`,`name`,`id_departament`,`create_time`,`update_time`,`delete_time`)
VALUES(2,'Duitama',1,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`city`(`id`,`name`,`id_departament`,`create_time`,`update_time`,`delete_time`)
VALUES(3,'Tunja',1,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`city`(`id`,`name`,`id_departament`,`create_time`,`update_time`,`delete_time`)
VALUES(4,'Chiquinquira',1,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`city`(`id`,`name`,`id_departament`,`create_time`,`update_time`,`delete_time`)
VALUES(5,'Yopal',2,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`city`(`id`,`name`,`id_departament`,`create_time`,`update_time`,`delete_time`)
VALUES(6,'Aguazul',2,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`city`(`id`,`name`,`id_departament`,`create_time`,`update_time`,`delete_time`)
VALUES(7,'Villanueva',2,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`city`(`id`,`name`,`id_departament`,`create_time`,`update_time`,`delete_time`)
VALUES(8,'San gil',3,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`city`(`id`,`name`,`id_departament`,`create_time`,`update_time`,`delete_time`)
VALUES(9,'Socorro',3,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`city`(`id`,`name`,`id_departament`,`create_time`,`update_time`,`delete_time`)
VALUES(10,'Madrid',4,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`city`(`id`,`name`,`id_departament`,`create_time`,`update_time`,`delete_time`)
VALUES(11,'Girardot',4,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`city`(`id`,`name`,`id_departament`,`create_time`,`update_time`,`delete_time`)
VALUES(12,'Zipaquira',4,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`city`(`id`,`name`,`id_departament`,`create_time`,`update_time`,`delete_time`)
VALUES(13,'Paipa',1,'2022-12-18 09:52:06',null,null);

/*INSERTA LOCALES*/
INSERT INTO `dmds`.`local`(`name`,`id_city`,`create_time`,`update_time`,`delete_time`)
VALUES('Casino diamonds sogamoso',1,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`local`(`name`,`id_city`,`create_time`,`update_time`,`delete_time`)
VALUES('Casino diamante',1,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`local`(`name`,`id_city`,`create_time`,`update_time`,`delete_time`)
VALUES('Casino palace sogamoso',1,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`local`(`name`,`id_city`,`create_time`,`update_time`,`delete_time`)
VALUES('Casino diamonds',2,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`local`(`name`,`id_city`,`create_time`,`update_time`,`delete_time`)
VALUES('Casino liberadores',2,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`local`(`name`,`id_city`,`create_time`,`update_time`,`delete_time`)
VALUES('Bodega',2,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`local`(`name`,`id_city`,`create_time`,`update_time`,`delete_time`)
VALUES('Casino colonial',3,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`local`(`name`,`id_city`,`create_time`,`update_time`,`delete_time`)
VALUES('Casino palace tunja',3,'2022-12-18 09:52:06',null,null);

/*INSERTA MARK*/
INSERT INTO `dmds`.`mark`(`id`,`name`,`create_time`,`update_time`,`delete_time`)
VALUES(1,'Gold club','2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`mark`(`id`,`name`,`create_time`,`update_time`,`delete_time`)
VALUES(2,'Williams','2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`mark`(`id`,`name`,`create_time`,`update_time`,`delete_time`)
VALUES(3,'IGT','2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`mark`(`id`,`name`,`create_time`,`update_time`,`delete_time`)
VALUES(4,'Mundovideo','2022-12-18 09:52:06',null,null);

/*INSERTA MODEL*/
INSERT INTO `dmds`.`model`(`id`,`name`,`id_mark`,`create_time`,`update_time`,`delete_time`)
VALUES(1,'Gamestar',1,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`model`(`id`,`name`,`id_mark`,`create_time`,`update_time`,`delete_time`)
VALUES(2,'Williams 550',2,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`model`(`id`,`name`,`id_mark`,`create_time`,`update_time`,`delete_time`)
VALUES(3,'Williams NXT',2,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`model`(`id`,`name`,`id_mark`,`create_time`,`update_time`,`delete_time`)
VALUES(4,'Poker IGT',3,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`model`(`id`,`name`,`id_mark`,`create_time`,`update_time`,`delete_time`)
VALUES(5,'Multigame IGT',3,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`model`(`id`,`name`,`id_mark`,`create_time`,`update_time`,`delete_time`)
VALUES(6,'Multijuego fruits',4,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`model`(`id`,`name`,`id_mark`,`create_time`,`update_time`,`delete_time`)
VALUES(7,'Multijuego jewell',4,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`model`(`id`,`name`,`id_mark`,`create_time`,`update_time`,`delete_time`)
VALUES(8,'Multijuego indiana',4,'2022-12-18 09:52:06',null,null);


/*INSERTA MACHINE*/
INSERT INTO `dmds`.`machine`(`id`,`name`,`serial`,`id_model`,`create_time`,`update_time`,`delete_time`)
VALUES(1,'Gamestar','DX123456',1,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`machine`(`id`,`name`,`serial`,`id_model`,`create_time`,`update_time`,`delete_time`)
VALUES(2,'Lucky dragons','w110234567',2,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`machine`(`id`,`name`,`serial`,`id_model`,`create_time`,`update_time`,`delete_time`)
VALUES(3,'Poker','123456',4,'2022-12-18 09:52:06',null,null);

/*INSERTA LOCAL_MACHINE*/
INSERT INTO `dmds`.`local_machine`(`id`,`id_local`,`id_machine`,`internal_number`,`create_time`,`update_time`,`delete_time`)
VALUES(1,1,1,1,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`local_machine`(`id`,`id_local`,`id_machine`,`internal_number`,`create_time`,`update_time`,`delete_time`)
VALUES(2,1,2,2,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`local_machine`(`id`,`id_local`,`id_machine`,`internal_number`,`create_time`,`update_time`,`delete_time`)
VALUES(3,2,3,1,'2022-12-18 09:52:06',null,null);

/*INSERTA ROLE*/
INSERT INTO `dmds`.`role`(`id`,`name`,`create_time`,`update_time`,`delete_time`)
VALUES(1,'Promotor','2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`role`(`id`,`name`,`create_time`,`update_time`,`delete_time`)
VALUES(2,'Administrador salon','2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`role`(`id`,`name`,`create_time`,`update_time`,`delete_time`)
VALUES(3,'Tecnico','2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`role`(`id`,`name`,`create_time`,`update_time`,`delete_time`)
VALUES(4,'Coordinador tecnico','2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`role`(`id`,`name`,`create_time`,`update_time`,`delete_time`)
VALUES(5,'Ejecutivo','2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`role`(`id`,`name`,`create_time`,`update_time`,`delete_time`)
VALUES(6,'Administrador plataforma','2022-12-18 09:52:06',null,null);

/*INSERTA USUARIO*/
INSERT INTO `dmds`.`user`(`id`,`names`,`surnames`,`email`,`password`,`phone`,`id_role`,`create_time`,`update_time`,`delete_time`)
VALUES(1,'Hector Manuel','Amado','Hectoramado@gmail.com',123456,3175555555,3,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`user`(`id`,`names`,`surnames`,`email`,`password`,`phone`,`id_role`,`create_time`,`update_time`,`delete_time`)
VALUES(2,'Promotor 1','promotor 1','diamondsogamoso@gmail.com',123456,3175555555,1,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`user`(`id`,`names`,`surnames`,`email`,`password`,`phone`,`id_role`,`create_time`,`update_time`,`delete_time`)
VALUES(3,'Promotor 2','promotor 2','diamantesogamoso@gmail.com',123456,3175555555,1,'2022-12-18 09:52:06',null,null);

/*INSERTA USUARIO_LOCAL*/
INSERT INTO `dmds`.`user_local`(`id`,`id_local`,`id_user`,`create_time`,`update_time`,`delete_time`)
VALUES(1,1,1,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`user_local`(`id`,`id_local`,`id_user`,`create_time`,`update_time`,`delete_time`)
VALUES(2,1,2,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`user_local`(`id`,`id_local`,`id_user`,`create_time`,`update_time`,`delete_time`)
VALUES(3,2,3,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`user_local`(`id`,`id_local`,`id_user`,`create_time`,`update_time`,`delete_time`)
VALUES(4,2,1,'2022-12-18 09:52:06',null,null);


/*INSERTA REPAIR_STATE*/
INSERT INTO `dmds`.`repair_state`(`id`,`name`,`create_time`,`update_time`,`delete_time`)
VALUES(1,'Abierta','2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`repair_state`(`id`,`name`,`create_time`,`update_time`,`delete_time`)
VALUES(2,'Cerrada','2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`repair_state`(`id`,`name`,`create_time`,`update_time`,`delete_time`)
VALUES(3,'Pendiente','2022-12-18 09:52:06',null,null);

/*INSERTA REPAIR_CATEGORY*/
INSERT INTO `dmds`.`repair_category`(`id`,`name`,`create_time`,`update_time`,`delete_time`)
VALUES(1,'Problema en botones','2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`repair_category`(`id`,`name`,`create_time`,`update_time`,`delete_time`)
VALUES(2,'No enciende','2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`repair_category`(`id`,`name`,`create_time`,`update_time`,`delete_time`)
VALUES(3,'Se apaga constantemente','2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`repair_category`(`id`,`name`,`create_time`,`update_time`,`delete_time`)
VALUES(4,'Billetero no recibe billetes','2022-12-18 09:52:06',null,null);


/*INSERTA REPAIR*/
INSERT INTO `dmds`.`repair`(`id`,`id_machine`,`id_repair_state`,`id_repair_category`,`create_time`,`update_time`,`delete_time`)
VALUES(1,1,1,1,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`repair`(`id`,`id_machine`,`id_repair_state`,`id_repair_category`,`create_time`,`update_time`,`delete_time`)
VALUES(2,2,1,1,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`repair`(`id`,`id_machine`,`id_repair_state`,`id_repair_category`,`create_time`,`update_time`,`delete_time`)
VALUES(3,3,1,4,'2022-12-18 09:52:06',null,null);



/*INSERTA USER_REPAIR*/
INSERT INTO `dmds`.`user_repair`(`id`,`id_user`,`id_repair`,`observation`,`create_time`,`update_time`,`delete_time`)
VALUES(1,2,1,'ESTA MAQUINA SE APAGA CONSTANMTEMENTE','2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`user_repair`(`id`,`id_user`,`id_repair`,`observation`,`create_time`,`update_time`,`delete_time`)
VALUES(2,1,1,'Se realiza mantenimineto a fuente de alimentacion y queda al peluche','2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`user_repair`(`id`,`id_user`,`id_repair`,`observation`,`create_time`,`update_time`,`delete_time`)
VALUES(3,2,2,'Que mamera de maquina esta moolestando mucho...','2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`user_repair`(`id`,`id_user`,`id_repair`,`observation`,`create_time`,`update_time`,`delete_time`)
VALUES(4,1,2,'Se realiza mantenimineto general se deja en observacion','2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`user_repair`(`id`,`id_user`,`id_repair`,`observation`,`create_time`,`update_time`,`delete_time`)
VALUES(5,2,3,'Billetero no funciona correctamente','2022-12-18 09:52:06',null,null);

/*INSERTA SPARE_PART*/
INSERT INTO `dmds`.`spare_part`(`id`,`name`,`create_time`,`update_time`,`delete_time`)
VALUES(1,'Boton cuadrado','2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`spare_part`(`id`,`name`,`create_time`,`update_time`,`delete_time`)
VALUES(2,'Boton redondo','2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`spare_part`(`id`,`name`,`create_time`,`update_time`,`delete_time`)
VALUES(3,'Monitor','2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`spare_part`(`id`,`name`,`create_time`,`update_time`,`delete_time`)
VALUES(4,'Billetero jcm','2022-12-18 09:52:06',null,null);

/*INSERTA REPAIR_SPARE_PART*/
INSERT INTO `dmds`.`repair_spare_part`(`id`,`quantity`,`id_repair`,`id_spare_part`,`create_time`,`update_time`,`delete_time`)
VALUES(1,1,1,1,'2022-12-18 09:52:06',null,null);
INSERT INTO `dmds`.`repair_spare_part`(`id`,`quantity`,`id_repair`,`id_spare_part`,`create_time`,`update_time`,`delete_time`)
VALUES(2,2,2,1,'2022-12-18 09:52:06',null,null);
