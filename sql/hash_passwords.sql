update users set password=SHA1('aligstore') where email='webmaster@jparsons.net';
update users set password=SHA1('password1') where email='tester@jparsons.net';
select * from users;