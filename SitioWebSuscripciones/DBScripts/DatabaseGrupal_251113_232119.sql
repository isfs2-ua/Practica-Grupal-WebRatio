-- Suscrito [ent5]
create table "public"."suscrito_2" (
   "id"  int4  not null,
   "renovationdate"  date,
   "active"  bool,
  primary key ("id")
);


-- Suscrito_Plan [rel4]
alter table "public"."suscrito_2"  add column  "plan_id"  int4;
alter table "public"."suscrito_2"   add constraint fk_suscrito_2_plan foreign key ("plan_id") references "public"."plan" ("id");


