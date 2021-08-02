create table tbl_book(
   num int not null auto_increment,   -- 자동증가컬럼(1,2,3.....)
   title varchar(100) not null,
   author varchar(4000) not null,
   company varchar(50) not null,
   isbm varchar(50) not null,
   count int not null,
   primary key(num)
);
insert into tbl_book(title, author, company,isbm,count) values('dodo14','관리자','admin','3123','0');

select * from table3;
