create table item_category(category_id int auto_increment primary key,category_name varchar(256) not null);

create table item(item_id int auto_increment primary key,item_name varchar(256) not null,item_price int not null,category_id int);

insert into item_category (category_name) values('�Ƌ�');
insert into item_category (category_name) values('�H�i');
insert into item_category (category_name) values('�{');

insert into item(item_name,item_price,category_id) values('���S�Ȋ�',3000,1);
insert into item(item_name,item_price,category_id) values('���Ă���',50,2);
insert into item(item_name,item_price,category_id) values('��������킩��Java����',3000,3);
insert into item(item_name,item_price,category_id) values('�������Ȉ֎q',2000,1);
insert into item(item_name,item_price,category_id) values('���񂪂��',500,2);
insert into item(item_name,item_price,category_id) values('�������h����SQL',2500,3);
insert into item(item_name,item_price,category_id) values('�ӂ�ӂ�̃x�b�h',30000,1);
insert into item(item_name,item_price,category_id) values('�~���m���h���A',300,2);

select item_name,item_price from item where category_id = 1;

select item_name,item_price from item where item_price >= 1000;

select item_name,item_price from item where item_name like '%��%';

select item_id,item_name,item_price,category_name from item
inner join item_category on item.category_id = item_category.category_id;

select item_category.category_name,sum(item_price) as total_price from item
inner join item_category on item.category_id = item_category.category_id
group by item_category.category_name;


