DROP TABLE IF EXISTS homies_hash;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS homies;

create table homies (
    user_id serial primary key,
    name varchar,
    email varchar,
    profile_img text
);

create table homies_hash (
    hash_id serial primary key,
    hash text,
    user_id int references homies(user_id)
);

create table posts (
post_id serial primary key,
title varchar,
img_url text,
content text,
likes int,
user_id int references homies(user_id)
);

insert into homies (name, email, profile_img)
values
('Jonathan', 'jon@than.com', 'https://content.quiksilver.com/www/2018.quiksilver.com/html/upload/surf/riders/_ID-370--8-QS17_ConnorO-Leary_Bosko_BW-9227.jpg'),
('Josh', 'jmcc@nn.com', 'https://josh-mccann.com/images/pic11.JPG');

insert into homies_hash (hash, user_id)
values
('password', 1),
('s3cret', 2);

insert into posts (title, img_url, content, likes, user_id)
values
('Cute Doggo', 'https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12231413/Labrador-Retriever-MP.jpg', 'dogs are cute', '0', 1),
('Hot Dogs', 'https://static01.nyt.com/images/2019/05/21/dining/kwr-mexican-hot-dogs/kwr-mexican-hot-dogs-articleLarge.jpg', 'Hot dogs from Mexico', 0, 2);