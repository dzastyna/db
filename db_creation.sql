create TABLE "user" (
  "id" INT PRIMARY KEY,
  "name" VARCHAR(100),
  "surname" VARCHAR(100),
  "city" VARCHAR(100),
  "street" VARCHAR(100),
  "birdth_date" DATE
  );
  
CREATE TABLE product (
  "id" int primary key,
  price DECIMAL(10, 2),
  color VARCHAR(100),
  "name" VARCHAR(100)
  );
  
CREATE TABLE purchase (
  "id" int primary key,
  user_id int,
  "date" DATE
  );
  
CREATE TABLE purchase_item (
  purchase_id int,
  product_id int,
  "count" int not NULL,
  constraint PK_purchase_item PRIMARY KEY (purchase_id, product_id)
  );
  
insert into "user" ("id", "name", "surname", "city", "street", "birdth_date")
values (101, 'Alice', 'Taylor', 'Loughborough', 'Abberton Way', '1996-07-01');
insert into "user" ("id", "name", "surname", "city", "street", "birdth_date")
values (102, 'John', 'Doe', 'New York', '5th Avenue', '1987-02-15');
insert into "user" ("id", "name", "surname", "city", "street", "birdth_date")
values (103, 'Bob', 'Smith', 'Salt Lake City', 'Crescent Dr', '1976-06-28');

insert into product ("id", price, color, name) values (201, 23.0, 'yellow', 'pillow');
insert into product ("id", price, color, name) values (202, 23.0, 'red', 'pillow');
insert into product ("id", price, color, name) values (203, 23.0, 'blue', 'pillow');
insert into product ("id", price, color, name) values (204, 25, 'white', 'pillow');
insert into product ("id", price, color, name) values (205, 25, 'black', 'pillow');

insert into product ("id", price, color, name) values (241, 25, 'yellow', 'blanket');
insert into product ("id", price, color, name) values (242, 25, 'red', 'blanket');
insert into product ("id", price, color, name) values (243, 25, 'blue', 'blanket');
insert into product ("id", price, color, name) values (244, 30, 'white', 'blanket');
insert into product ("id", price, color, name) values (245, 30, 'black', 'blanket');

insert into product ("id", price, color, name) values (211, 17, 'black', 'pen');
insert into product ("id", price, color, name) values (212, 17, 'white', 'pen');

insert into product ("id", price, color, name) values (221, 5, 'black', 'pencil');

insert into product ("id", price, color, name) values (231, 256, 'black', 'jacket');
insert into product ("id", price, color, name) values (232, 256, 'brown', 'jacket');
insert into product ("id", price, color, name) values (233, 210, 'white', 'jacket');

insert into purchase("id", user_id, "date") values (1001, 101, '2021-01-10');
insert into purchase_item (purchase_id, product_id, count) values (1001, 201, 2);
insert into purchase_item (purchase_id, product_id, count) values (1001, 245, 1);

insert into purchase("id", user_id, "date") values (1002, 102, '2021-03-02');
insert into purchase_item (purchase_id, product_id, count) values (1002, 231, 1);
insert into purchase_item (purchase_id, product_id, count) values (1002, 205, 1);
insert into purchase_item (purchase_id, product_id, count) values (1002, 245, 1);

insert into purchase("id", user_id, "date") values (1003, 101, '2022-02-22');
insert into purchase_item (purchase_id, product_id, count) values (1003, 211, 1);
insert into purchase_item (purchase_id, product_id, count) values (1003, 221, 5);

insert into purchase("id", user_id, "date") values (1004, 101, '2022-02-23');
insert into purchase_item (purchase_id, product_id, count) values (1004, 211, 9);