create database music;
use music;

# not necessary to create user if we grant (and not supported in some dialects)
# create user 'brooklyn' identified by 'br00k11n';

grant usage on *.* to 'brooklyn'@'%' identified by 'br00k11n';

# ''@localhost is sometimes set up, overriding brooklyn@'%', so do a second explicit grant
grant usage on *.* to 'brooklyn'@'localhost' identified by 'br00k11n';

grant all privileges on music.* to 'brooklyn'@'%';

flush privileges;
