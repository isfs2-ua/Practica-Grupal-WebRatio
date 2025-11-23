-- Plan_Suscrito [rel5]
alter table "public"."suscrito"   drop constraint "fk_suscrito_plan";
alter table "public"."suscrito"  drop column  "plan_id";
-- User_Suscrito [rel4]
alter table "public"."suscrito"   drop constraint "fk_suscrito_user";
alter table "public"."suscrito"  drop column  "user_id";
-- Servicio_Plan [rel2]
alter table "public"."plan"   drop constraint "fk_plan_servicio";
alter table "public"."plan"  drop column  "servicio_id";
-- Categoría_Servicio [rel1]
alter table "public"."servicio"   drop constraint "fk_servicio_categoria";
alter table "public"."servicio"  drop column  "categoria_id";
-- User_Group [User2Group_Group2User]
alter table "public"."user_group"   drop constraint "fk_user_group_group";
alter table "public"."user_group"   drop constraint "fk_user_group_user";
drop table "public"."user_group";
-- User_DefaultGroup [User2DefaultGroup_DefaultGroup2User]
alter table "public"."user"   drop constraint "fk_user_group";
alter table "public"."user"  drop column  "group_id";
-- Group_Module [Group2Module_Module2Group]
alter table "public"."group_module"   drop constraint "fk_group_module_module";
alter table "public"."group_module"   drop constraint "fk_group_module_group";
drop table "public"."group_module";
-- Group_DefaultModule [Group2DefaultModule_DefaultModule2Group]
alter table "public"."group"   drop constraint "fk_group_module";
alter table "public"."group"  drop column  "module_id";
-- Pago [ent7]
drop table "public"."pago";
-- Suscrito [ent6]
drop table "public"."suscrito";
-- Plan [ent3]
drop table "public"."plan";
-- Categoría [ent2]
drop table "public"."categoria";
-- Servicio [ent1]
drop table "public"."servicio";
-- User [User]
drop table "public"."user";
-- Module [Module]
drop table "public"."module";
-- Group [Group]
drop table "public"."group";
