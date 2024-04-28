
create table users 
( id serial primary key,
 first_name varchar(50),
 last_name varchar(50),
 email varchar(30)
);

insert into users (first_name, last_name, email) values 
('Pedro', 'Ramirez', 'pedror@gmail.com'),
('Luis', 'Gomez', 'luisg@gmail.com'),
('Carlos', 'Garcia', 'carlosg@gmail.com');

select * from users;

create table posts 
( id serial primary key,
 creator_id  int references users(id),
 title varchar(50),
 text1 varchar(60)
);

select * from posts;

insert into posts (creator_id, title, text1) values (1, 'Administrar BD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.');
insert into posts (creator_id, title, text1) values (2, 'Crear APP', 'Donec vitae vehicula dolor. Duis vel interdum elit. ');
insert into posts (creator_id, title, text1) values (2, 'Crear Componentes en React', 'Quisque finibus, mauris at rhoncus aliquet, ');
insert into posts (creator_id, title, text1) values (3, 'Realizar Respaldo de BD', 'Vestibulum aliquam dignissim finibus. ');
insert into posts (creator_id, title, text1) values (1, 'App con Node.JS', 'Maecenas in felis velit. Etiam id lacus nisl. ');

create table likes 
( id serial primary key,
 user_id  int references users(id),
 post_id  int references posts(id)
);

select * from likes;

insert into likes (user_id, post_id) values 
(1,1),
(1,3),
(2,2),
(3,4),
(3,5);

select * from likes;

select * from posts, users  where posts.creator_id = users.id;

select * from posts inner join users
on creator_id =users.id;

select * from posts inner join likes 
on posts.id=post_id inner join users
on user_id=users.id;

