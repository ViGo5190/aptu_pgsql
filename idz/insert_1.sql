insert into "atm_type" (desk) values('bankomat_money_out');
insert into "atm_type" (desk) values('bankomat_money_out_and_in');
insert into "atm_type" (desk) values('inet_mag');
insert into "atm_type" (desk) values('cash');

insert into "operation_type" (desk) values ('cash_out');
insert into "operation_type" (desk) values ('cash_in');
insert into "operation_type" (desk) values ('pay');

insert into "atm_type_and_operation"  values (1, 1);
insert into "atm_type_and_operation"  values (2, 1);
insert into "atm_type_and_operation"  values (2, 2);
insert into "atm_type_and_operation"  values (3, 3);
insert into "atm_type_and_operation"  values (4, 3);

insert into "limit_type"(desk)  values ('pay_limit');
insert into "limit_type"(desk)  values ('cash_out_limit');

insert into "limit_type_and_operation" values (1, 3);
insert into "limit_type_and_operation" values (2, 1);



