-- Entity6 [ent6]
create table "public"."entity6" (
   "id"  int4  not null,
  primary key ("id")
);


-- Plan_Entity6 [rel8]
alter table "public"."plan"  add column  "entity6_id"  int4;
alter table "public"."plan"   add constraint fk_plan_entity6 foreign key ("entity6_id") references "public"."entity6" ("id");


-- Entity6.total [ent6#att22]
create view "public"."entity6_total_view" as
select AL1."id" as "id", sum(AL3."price") as "der_attr"
from  "public"."entity6" AL1 
               left outer join "public"."plan" AL2 on AL1."id"=AL2."entity6_id"
               left outer join "public"."plan" AL3 on AL2."id"=AL3."id"
group by AL1."id";


