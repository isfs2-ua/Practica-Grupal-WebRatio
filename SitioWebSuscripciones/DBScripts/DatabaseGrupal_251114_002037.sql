-- Group [Group]
create table "public"."group" (
   "id"  int4  not null,
   "groupname"  varchar(255),
  primary key ("id")
);


-- Module [Module]
create table "public"."module" (
   "id"  int4  not null,
   "moduleid"  varchar(255),
   "modulename"  varchar(255),
  primary key ("id")
);


-- User [User]
create table "public"."user" (
   "id"  int4  not null,
   "username"  varchar(255),
   "password"  varchar(255),
   "email"  varchar(255),
  primary key ("id")
);


-- Servicio [ent1]
create table "public"."servicio" (
   "id"  int4  not null,
   "name"  varchar(255),
  primary key ("id")
);


-- Categoría [ent2]
create table "public"."categoria" (
   "id"  int4  not null,
   "name"  varchar(255),
  primary key ("id")
);


-- Plan [ent3]
create table "public"."plan" (
   "id"  int4  not null,
   "type"  varchar(255),
   "price"  numeric(19, 2),
   "nombre"  varchar(255),
  primary key ("id")
);


-- Suscripciones [ent5]
create table "public"."suscrito_2" (
   "id"  int4  not null,
   "renovationdate"  date,
   "active"  bool,
  primary key ("id")
);


-- Pago [ent7]
create table "public"."pago" (
   "id_pago"  int4  not null,
   "paymentdate"  date,
  primary key ("id_pago")
);


-- Group_DefaultModule [Group2DefaultModule_DefaultModule2Group]
alter table "public"."group"  add column  "module_id"  int4;
alter table "public"."group"   add constraint fk_group_module foreign key ("module_id") references "public"."module" ("id");


-- Group_Module [Group2Module_Module2Group]
create table "public"."group_module" (
   "group_id"  int4 not null,
   "module_id"  int4 not null,
  primary key ("group_id", "module_id")
);
alter table "public"."group_module"   add constraint fk_group_module_group foreign key ("group_id") references "public"."group" ("id");
alter table "public"."group_module"   add constraint fk_group_module_module foreign key ("module_id") references "public"."module" ("id");


-- User_DefaultGroup [User2DefaultGroup_DefaultGroup2User]
alter table "public"."user"  add column  "group_id"  int4;
alter table "public"."user"   add constraint fk_user_group foreign key ("group_id") references "public"."group" ("id");


-- User_Group [User2Group_Group2User]
create table "public"."user_group" (
   "user_id"  int4 not null,
   "group_id"  int4 not null,
  primary key ("user_id", "group_id")
);
alter table "public"."user_group"   add constraint fk_user_group_user foreign key ("user_id") references "public"."user" ("id");
alter table "public"."user_group"   add constraint fk_user_group_group foreign key ("group_id") references "public"."group" ("id");


-- Categoría_Servicio [rel1]
alter table "public"."servicio"  add column  "categoria_id"  int4;
alter table "public"."servicio"   add constraint fk_servicio_categoria foreign key ("categoria_id") references "public"."categoria" ("id");


-- Servicio_Plan [rel2]
alter table "public"."plan"  add column  "servicio_id"  int4;
alter table "public"."plan"   add constraint fk_plan_servicio foreign key ("servicio_id") references "public"."servicio" ("id");


-- Pago_Suscrito [rel3]
alter table "public"."pago"  add column  "suscrito_2_id"  int4;
alter table "public"."pago"   add constraint fk_pago_suscrito_2 foreign key ("suscrito_2_id") references "public"."suscrito_2" ("id");


-- Suscrito_Plan [rel4]
alter table "public"."suscrito_2"  add column  "plan_id"  int4;
alter table "public"."suscrito_2"   add constraint fk_suscrito_2_plan foreign key ("plan_id") references "public"."plan" ("id");


-- Suscrito_User [rel5]
alter table "public"."suscrito_2"  add column  "user_id"  int4;
alter table "public"."suscrito_2"   add constraint fk_suscrito_2_user foreign key ("user_id") references "public"."user" ("id");


