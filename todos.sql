create table users(
    id int not null auto_increment,
    name varchar(255) not null,
    primary key(id)
);

insert into users(name)
values
('山田太郎'), ('横山花子'), ('田中一郎'), ('山本久美子'), ('鈴木次郎'), ('星山裕子'), ('佐藤勝男');

select * from users;

create table todos(
    id int not null auto_increment,
    user_id int not null,
    title varchar(255) not null,
    content varchar(255) not null,
    expired datetime not null,
    status enum('NOT_STARTED', 'STARTED', 'FINISHED', 'STOPPED') default 'NOT_STARTED',
    primary key(id),
    foreign key(user_id) references users(id)
);
