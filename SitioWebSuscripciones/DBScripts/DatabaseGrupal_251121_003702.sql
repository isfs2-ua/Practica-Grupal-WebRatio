-- Gasto.acumulado [ent4#att8]
create view "public"."gasto_acumulado_view" as
select AL1."id" as "id", sum(AL2."price") as "der_attr"
from  "public"."gasto" AL1 
               left outer join "public"."plan" AL2 on AL1."id"=AL2."gasto_id"
group by AL1."id";


