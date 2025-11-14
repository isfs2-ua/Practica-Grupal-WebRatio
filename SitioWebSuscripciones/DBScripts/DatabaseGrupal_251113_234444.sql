-- Pago_Suscrito [rel3]
alter table "public"."pago"  add column  "suscrito_2_id"  int4;
alter table "public"."pago"   add constraint fk_pago_suscrito_2 foreign key ("suscrito_2_id") references "public"."suscrito_2" ("id");


