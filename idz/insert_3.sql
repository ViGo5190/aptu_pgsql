insert into "client" ("name") values ('OZON.ru');
insert into "client" ("name") values ('McDonalds');
insert into "org" ("name","client_id") values ('OZON.ru', '4') ;
insert into "org" ("name","client_id") values ('McDonalds', '5'); 
insert into "account" ("client_id", "bill") values (4, '50000000');
insert into "account" ("client_id", "bill") values (5, '1000000');


insert into atm(atm_type_id,coord_x,coord_y) values (4,100,100);
insert into org_and_atm (org_id,atm_id) values (2,1);


insert into atm(atm_type_id,coord_x,coord_y) values (3,100,100);
insert into org_and_atm (org_id,atm_id) values (1,2);


insert into "operation" (atm_id, card_id, operation_type_id, bill) values (1,1,3,300);
insert into "operation" (atm_id, card_id, operation_type_id, bill) values (1,1,3,300);
insert into "operation" (atm_id, card_id, operation_type_id, bill) values (2,2,3,300);
insert into "operation" (atm_id, card_id, operation_type_id, bill) values (2,4,3,300);



