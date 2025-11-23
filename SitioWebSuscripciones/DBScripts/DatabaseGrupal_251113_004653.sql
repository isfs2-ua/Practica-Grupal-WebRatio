-- Suscrito_Pago [rel7]
alter table "public"."pago"  add column  "id"  int4;
alter table "public"."pago"   add constraint fk_pago_suscrito_2 foreign key ("id") references "public"."suscrito" ("id");


