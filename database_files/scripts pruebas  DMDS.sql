SELECT * FROM `dmds`.`departament`;
SELECT * FROM `dmds`.`city`;
SELECT * FROM `dmds`.`local`;
SELECT * FROM `dmds`.`machine`;
SELECT * FROM `dmds`.`local_machine`;
SELECT * FROM `dmds`.`role`;
SELECT * FROM `dmds`.`user`;
SELECT * FROM `dmds`.`repair`;
SELECT * FROM `dmds`.`user_repair`;
SELECT * FROM `dmds`.`repair_category`;
SELECT * FROM `dmds`.`spare_part`;
SELECT * FROM `dmds`.`repair_spare_part`;

SELECT r.id,rs.name,m.serial,ur.observation,u.names,l.name FROM `dmds`.`repair` r,
`dmds`.`repair_spare_part` rsp,
`dmds`.`spare_part` sp,
`dmds`.`user_repair` ur,
`dmds`.`user` u,
`dmds`.`machine` m,
`dmds`.`local_machine` lm,
`dmds`.`local` l,
`dmds`.`repair_state` rs
where r.id=rsp.id_repair
and rsp.id_spare_part=sp.id
and ur.id_repair=r.id
and u.id=ur.id_user
and m.id=r.id_machine
and l.id=lm.id_local
and m.id=lm.id_machine
and rs.id=r.id_repair_state
;