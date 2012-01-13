select  * from account where "bill" in (select distinct max("account"."bill") from "account" );

select "account_id" as "account id with max card count" from (select count(account_id) as count, account_id  from "card"  group by "account_id" order by count desc limit 1) as foo


