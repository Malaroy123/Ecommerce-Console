use Ecomdb;
show tables;

CREATE TABLE admin(
                      id int not null auto_increment primary KEY,
                      username VARCHAR(20),
                      password VARCHAR(20)
);

CREATE TABLE customers(
                          customer_id int not null auto_increment primary KEY,
                          customer_name VARCHAR(100),
                          customer_email VARCHAR(100),
                          customer_address VARCHAR(100),
                          password VARCHAR(20)
);

CREATE TABLE products(
                         product_id int not null auto_increment primary KEY,
                         product_name VARCHAR(100),
                         price double,
                         description TEXT,
                         quantity int
);

CREATE TABLE cart(
                     cart_id int not null auto_increment primary KEY,
                     customer_id int,
                     product_id int,

                     foreign key (customer_id) references customers (customer_id),

                     foreign key (product_id) references products (product_id)
);

CREATE TABLE orders(
                       order_id int not null auto_increment primary KEY,
                       product_id int,
                       customer_id int,
                       order_date date,
                       order_status VARCHAR(30),

                       foreign key (product_id) references products (product_id),

                       foreign key (customer_id) references customers (customer_id)
);

select username, password  FROM admin;
insert INTO admin(username, password)
VALUES ('username', 'password');

