
insert into "client"("name") values ('Client 1');
insert into "account" ("client_id", "bill") values (1, '2000');
insert into "card" ("account_id", "card_holder_name") values (1, 'Client 1 name')

insert into "client"("name") values ('Client 2');
insert into "account" ("client_id", "bill") values (2, '200000');
insert into "card" ("account_id", "card_holder_name") values (2, 'Client 2 name');
insert into "card" ("account_id", "card_holder_name") values (2, 'Client 2 name');
insert into "limit" ("card_id","limit_type_id", "value") values (3, 1, '1000');

insert into "client"("name") values ('Client 3');
insert into "account" ("client_id", "bill") values (3, '300');
insert into "account" ("client_id", "bill") values (3, '400000');
insert into "card" ("account_id", "card_holder_name") values (3, 'Client 3 name');
insert into "card" ("account_id", "card_holder_name") values (4, 'Client 3 name');
insert into "card" ("account_id", "card_holder_name") values (4, 'Client 3 witch name');
insert into "limit" ("card_id","limit_type_id", "value") values (5, 2, '10000');
