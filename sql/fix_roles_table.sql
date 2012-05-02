alter table roles add email varchar(250);
update roles set email='tester@jparsons.net' where role='customer';
update roles set email='webmaster@jparsons.net' where role='administrator';
select * from roles;
