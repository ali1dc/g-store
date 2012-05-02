alter table roles drop role;
alter table roles drop email;
alter table roles add role varchar(50) NOT NULL;
alter table roles add email varchar(250) NOT NULL;
describe roles;