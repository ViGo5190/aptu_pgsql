create or replace function get_account_id_with_max_bill()
returns integer as
'
DECLARE 
account_id integer;
BEGIN
select distinct id into account_id from account where "bill" in (select distinct max("account"."bill") from "account" );
return account_id;
END;'
language 'plpgsql';

select get_account_id_with_max_bill();
