create table item_category(category_id int auto_increment primary key,category_name varchar(256) not null);

create table item(item_id int auto_increment primary key,item_name varchar(256) not null,item_price int not null,category_id int);

insert into item_category (category_name) values('家具');
insert into item_category (category_name) values('食品');
insert into item_category (category_name) values('本');

insert into item(item_name,item_price,category_id) values('堅牢な机',3000,1);
insert into item(item_name,item_price,category_id) values('生焼け肉',50,2);
insert into item(item_name,item_price,category_id) values('すっきりわかるJava入門',3000,3);
insert into item(item_name,item_price,category_id) values('おしゃれな椅子',2000,1);
insert into item(item_name,item_price,category_id) values('こんがり肉',500,2);
insert into item(item_name,item_price,category_id) values('書き方ドリルSQL',2500,3);
insert into item(item_name,item_price,category_id) values('ふわふわのベッド',30000,1);
insert into item(item_name,item_price,category_id) values('ミラノ風ドリア',300,2);

select item_name,item_price from item where category_id = 1;

select item_name,item_price from item where item_price >= 1000;

select item_name,item_price from item where item_name like '%肉%';

select item_id,item_name,item_price,category_name from item
inner join item_category on item.category_id = item_category.category_id;

select item_category.category_name,sum(item_price) as total_price from item
inner join item_category on item.category_id = item_category.category_id
group by item_category.category_name;


