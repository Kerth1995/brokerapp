
--usuarios
INSERT INTO "main"."usuarios" ("id", "username", "email", "crypted_password", "salt", "created_at", "updated_at") VALUES ('1', 'jedionmelbin', 'jedionmelbin@gmail.com', '$2a$10$zbSvmoktXOxxCpFAi2pI0uOAUxn.oNUO4ked/AubDrxHan/BrdP7S', 'uTyErzgnfjoEvx1QWxxG', '2019-09-15 19:06:56.124868', '2019-09-15 19:06:56.124868');
INSERT INTO "main"."usuarios" ("id", "username", "email", "crypted_password", "salt", "created_at", "updated_at") VALUES ('2', 'jcotrina', 'jcotrina@gmail.com', '$2a$10$ojGB44nT3ssu/z.QTBqmXu3Lwgcyk1ynnrOY4zhnH4B3NI1B0ZfDC', 'ET23Lm5YSUpUvXMSBW1Q', '2019-09-15 19:07:14.303753', '2019-09-15 19:07:14.303753');

---roles

INSERT INTO "main"."rols" ("id", "codigo", "nombre", "created_at", "updated_at") VALUES ('1', 'CD001', 'Administrador', '2019-09-14 23:50:43.310042', '2019-09-14 23:50:43.310042');
INSERT INTO "main"."rols" ("id", "codigo", "nombre", "created_at", "updated_at") VALUES ('2', 'CD002', 'Jefe de Proyecto', '2019-09-14 23:51:20.740153', '2019-09-14 23:51:20.740153');
INSERT INTO "main"."rols" ("id", "codigo", "nombre", "created_at", "updated_at") VALUES ('3', 'CD003', 'Analista de Procesos', '2019-09-14 23:51:53.799674', '2019-09-14 23:51:53.799674');
INSERT INTO "main"."rols" ("id", "codigo", "nombre", "created_at", "updated_at") VALUES ('4', 'CD004', 'Analista Programador', '2019-09-14 23:52:21.534489', '2019-09-14 23:52:21.534489');
INSERT INTO "main"."rols" ("id", "codigo", "nombre", "created_at", "updated_at") VALUES ('5', 'CD005', 'Jefe de Control de Calidad', '2019-09-14 23:54:20.206759', '2019-09-14 23:54:20.206759');