
--usuarios
INSERT INTO "main"."usuarios" ("id", "username", "email", "crypted_password", "salt", "created_at", "updated_at") VALUES ('1', 'jedionmelbin', 'jedionmelbin@gmail.com', '$2a$10$zbSvmoktXOxxCpFAi2pI0uOAUxn.oNUO4ked/AubDrxHan/BrdP7S', 'uTyErzgnfjoEvx1QWxxG', '2019-09-15 19:06:56.124868', '2019-09-15 19:06:56.124868');
INSERT INTO "main"."usuarios" ("id", "username", "email", "crypted_password", "salt", "created_at", "updated_at") VALUES ('2', 'jcotrina', 'jcotrina@gmail.com', '$2a$10$ojGB44nT3ssu/z.QTBqmXu3Lwgcyk1ynnrOY4zhnH4B3NI1B0ZfDC', 'ET23Lm5YSUpUvXMSBW1Q', '2019-09-15 19:07:14.303753', '2019-09-15 19:07:14.303753');

---roles

INSERT INTO "main"."rols" ("id", "codigo", "nombre", "created_at", "updated_at") VALUES ('1', 'CD001', 'Administrador', '2019-09-14 23:50:43.310042', '2019-09-14 23:50:43.310042');
INSERT INTO "main"."rols" ("id", "codigo", "nombre", "created_at", "updated_at") VALUES ('2', 'CD002', 'Jefe de Proyecto', '2019-09-14 23:51:20.740153', '2019-09-14 23:51:20.740153');
INSERT INTO "main"."rols" ("id", "codigo", "nombre", "created_at", "updated_at") VALUES ('3', 'CD003', 'Analista de Procesos', '2019-09-14 23:51:53.799674', '2019-09-14 23:51:53.799674');
INSERT INTO "main"."rols" ("id", "codigo", "nombre", "created_at", "updated_at") VALUES ('4', 'CD004', 'Analista Programador', '2019-09-14 23:52:21.534489', '2019-09-14 23:52:21.534489');
INSERT INTO "main"."rols" ("id", "codigo", "nombre", "created_at", "updated_at") VALUES ('5', 'CD005', 'Jefe de Control de Calidad', '2019-09-14 23:54:20.206759', '2019-09-14 23:54:20.206759');

INSERT INTO "main"."documentos" ("id", "nombre", "descripcion", "created_at", "updated_at") VALUES ('1', 'DNI', 'DNI', '2019-09-22 15:35:33.732361', '2019-09-22 15:35:33.732361');
INSERT INTO "main"."documentos" ("id", "nombre", "descripcion", "created_at", "updated_at") VALUES ('2', 'CARNET DE EXTRANJERÍA', 'CARNET DE EXTRANJERÍA', '2019-09-22 15:36:33.429072', '2019-09-22 15:36:33.429072');
INSERT INTO "main"."documentos" ("id", "nombre", "descripcion", "created_at", "updated_at") VALUES ('3', 'PASAPORTE', 'PASAPORTE', '2019-09-22 15:37:30.872360', '2019-09-22 15:37:30.872360');


INSERT INTO "main"."privilegios" ("id", "nombre", "descripcion", "created_at", "updated_at") VALUES ('1', 'ADMINISTRADOR', 'ADMINISTRADOR', '2019-09-22 15:35:54.970796', '2019-09-22 15:35:54.970796');
INSERT INTO "main"."privilegios" ("id", "nombre", "descripcion", "created_at", "updated_at") VALUES ('2', 'ADMINISTRADOR POR SECCIÓN', 'ADMINISTRADOR POR SECCIÓN', '2019-09-22 15:36:43.008171', '2019-09-22 15:36:43.008171');
INSERT INTO "main"."privilegios" ("id", "nombre", "descripcion", "created_at", "updated_at") VALUES ('3', 'REVISOR', 'REVISOR', '2019-09-22 15:37:21.453948', '2019-09-22 15:37:21.453948');
INSERT INTO "main"."privilegios" ("id", "nombre", "descripcion", "created_at", "updated_at") VALUES ('4', 'REVISOR POR SECCIÓN', 'REVISOR POR SECCIÓN', '2019-09-22 15:37:53.790864', '2019-09-22 15:37:53.790864');