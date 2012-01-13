create table "atm_type"(
	id serial primary key,
	desk varchar(80) not null unique
	);
	
create table "operation_type"(
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
	name varchar(80) not null unique,
	client_id integer references "client"(id) on delete no action
	);

create table "org_and_atm"(
	org_id integer references "org"(id) on delete no action,
	atm_id integer references "atm"(id) on delete no action
	);

create table "operation"(
	id serial primary key,
	atm_id integer not null references "atm"(id)  on delete no action,
	card_id integer references "card"(id)  on delete no action,
	operation_type_id integer references "operation_type"(id)  on delete no action,
	bill money not null,
	datatime timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
	start_time time without time zone,
	end_time time without time zone
	);

create table "limit_type_and_operation"(
	limit_type integer references  "limit_type"(id) on delete no action,
	operation_type integer references  "operation_type"(id) on delete no action
	);
