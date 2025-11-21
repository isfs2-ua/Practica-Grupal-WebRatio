-- Gasto [ent4]
create table "public"."gasto" (
   "id"  int4  not null,
   "acumulado"  numeric(19, 2),
  primary key ("id")
);


-- Gasto_Plan [rel6]
alter table "public"."plan"  add column  "gasto_id"  int4;
alter table "public"."plan"   add constraint fk_plan_gasto foreign key ("gasto_id") references "public"."gasto" ("id");


