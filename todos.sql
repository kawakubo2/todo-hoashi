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

insert into todos(user_id, title, content, expired, status)
VALUES
(1, 'キレイキレイ詰め替え(泡タイプ)', '泡タイプの4回詰め替えのものを購入すること', '2023-08-10', 'NOT_STARTED'),
(1, '●●株式会社の請求書送付', '7月分研修分', '2023-08-15', 'STARTED');
