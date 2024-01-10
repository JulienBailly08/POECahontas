create role ouvrier;
grant usage on schema poec to ouvrier;
grant select on all tables in schema poec to ouvrier;

create user lanceur password 'lanceur';
grant ouvrier to lanceur;


create role vendeur;
grant usage on schema poec to vendeur;
grant select, insert, update, delete on poec.orders, poec.customers to vendeur;

create user commercial password 'commercial';
grant vendeur to commercial;


create role administrateur;
grant usage on schema poec to administrateur;
grant select, insert, update, delete on all tables in schema poec to administrateur;

create user admin password 'admin';
grant administrateur to admin;
