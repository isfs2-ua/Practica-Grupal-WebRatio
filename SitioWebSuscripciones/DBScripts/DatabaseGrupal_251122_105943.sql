-- Servicio_Suscripciones [rel6]
create table "public"."servicio_suscripciones" (
   "servicio_id"  int4 not null,
   "suscrito_2_id"  int4 not null,
  primary key ("servicio_id", "suscrito_2_id")
);
alter table "public"."servicio_suscripciones"   add constraint fk_servicio_suscripciones_serv foreign key ("servicio_id") references "public"."servicio" ("id");
alter table "public"."servicio_suscripciones"   add constraint fk_servicio_suscripciones_susc foreign key ("suscrito_2_id") references "public"."suscrito_2" ("id");


