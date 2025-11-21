-- User.totalGasto [User#att20]
create view "public"."user_totalgasto_view" as
select AL1."id" as "id", sum(AL3."price") as "der_attr"
from  "public"."user" AL1 
               left outer join "public"."suscrito_2" AL2 on AL1."id"=AL2."user_id"
               left outer join "public"."plan" AL3 on AL2."plan_id"=AL3."id"
group by AL1."id";


