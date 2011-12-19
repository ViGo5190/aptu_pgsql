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
	atm_type_id integer references "atm_type"(id) on delete no action,
	operation_type integer references "operation_type"(id) on delete no action
	);

create table "org"(
	id serial primary key,
	name varchar(80) not null unique
	);

create table "org_and_atm"(
	org_id integer references "org"(id) on delete no action,
	atm_id integer references "atm"(id) on delete no action
	);
create table "operation"(
	id serial primary key,
	atm_id integer references "atm"(id)  on delete no action,
	card_id integer references "card"(id)  on delete no action,
	bill money not null
	);
	
	

		