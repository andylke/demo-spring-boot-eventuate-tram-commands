use eventuate;

drop table if exists customer_order;

create table customer_order (
  order_id bigint(20) not null auto_increment,
  customer_id bigint(20) not null,
  order_amount decimal(19,3) not null,
  primary key(order_id)
);


drop table if exists customer_account;

create table customer_account (
  account_id bigint(20) not null auto_increment,
  customer_id bigint(20) not null,
  available_amount decimal(19,3) not null,
  reserved_amount decimal(19,3) not null,
  primary key(account_id)
);
