-- Suscripciones [ent4]
create table "public"."suscripciones" (
   "id"  int4  not null,
   "renovationdate"  date,
   "active"  bool,
  primary key ("id")
);


-- Suscripciones_Plan [rel3]
alter table "public"."suscripciones"  add column  "plan_id"  int4;
alter table "public"."suscripciones"   add constraint fk_suscripciones_plan foreign key ("plan_id") references "public"."plan" ("id");


