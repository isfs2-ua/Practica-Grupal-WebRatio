-- Plan_Suscrito [rel5]
alter table "public"."suscrito"  add column  "plan_id"  int4;
alter table "public"."suscrito"   add constraint fk_suscrito_plan_2 foreign key ("plan_id") references "public"."plan" ("id");


-- Suscrito_Pago [rel7]
alter table "public"."pago"  add column  "id"  int4;
alter table "public"."pago"   add constraint fk_pago_suscrito_2 foreign key ("id") references "public"."suscrito" ("id");


