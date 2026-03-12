create table Books(
Book_id serial primary key,
title varchar(50) not null,
author varchar(50) not null,
description varchar(200) not null,
price decimal(10,2) not null check(price >= 0),
publish_date date not null ,
in_stock boolean Not null
);

-- update the table 

alter table Books 
add column publisher varchar(50) not null,
drop column description;

-- update the name of the column (we separate it to anothor ALTER statement as RENAME can't be gathered with ADD and DROP)
alter table Books
RENAME column in_stock to available;