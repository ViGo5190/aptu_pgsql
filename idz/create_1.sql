create table "client" (
	id serial  primary key,
	name varchar(80) not null unique
	);

create table "account"(
		id serial primary key,
		client_id integer references "client"(id) on delete no action,
		bill money
		);

create table "card"(
	id serial primary key,
	account_id integer references "account"(id) on delete no action,
	card_holder_name varchar(80) not null
	);

create table "limit_type"(
	id serial primary key,
	desk varchar(80) not null
	);
create table "limit"(
	id serial primary key,
	card_id integer references "card"(id)  on delete no action,
	limit_type_id integer references "limit_type"(id)  on delete no action,
	value money
	);



	
	