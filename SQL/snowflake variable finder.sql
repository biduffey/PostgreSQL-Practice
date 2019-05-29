select t.table_schema,
       t.table_name
       ,column_name
       ,last_altered
from information_schema.tables t
inner join information_schema.columns c on
       c.table_schema = t.table_schema and c.table_name = t.table_name
where   column_name ilike '%keyword%'
        and last_altered >  '2019-04-03'
order by t.table_schema,
       t.table_name ;
