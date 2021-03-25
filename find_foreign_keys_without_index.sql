select conrelid::regclass,conname from pg_constraint where contype = 'f'
and not exists (select 1 from pg_index where indrelid=conrelid and conkey[1] = indkey[0]);
