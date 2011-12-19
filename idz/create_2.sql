create table "atm_type"(
	id serial primary key,
	desk varchar(80) not null unique
	);
create table "opearation_type"(
	id serial primary key,
	desk varchar(80) not null unique
	);



create table "atm"(
	id serial primary key,
	atm_type_id integer references "atm_type"(id) on delete no action,
	coord_x integer,
	coord_y integer
	);

create table "atm_type_and_operation"(
	atm_type_id integer references "atm_type"(id),
	operation_type integer references "operation_type"(id)
	);