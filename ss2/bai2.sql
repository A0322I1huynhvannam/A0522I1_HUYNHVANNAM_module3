create database QuanLyBanHang;
use QuanLyBanHang;

create table Customer(
	cID int primary key auto_increment,
    cName varchar(50),
    cAge int
);
insert into Customer(cName,cAge)
value("Bao",19);

create table `Order`(
	oID int primary key auto_increment,
     cID int,
    foreign key(cID) references Customer(cID),
    oDate date,
    oTotalPrice int
);
insert into `Order`(cID,oDate,oTotalPrice)
value(1,'2022-11-17',100);

create table Product(
	pID int primary key auto_increment,
    pName varchar(50),
    pPrice int
);
insert into Product(pName,pPrice)
value("tivi",100);

create table OrderDetail(
	oID int,
    pID int,
    foreign key(oID) references `Order`(oID),
    foreign key(pID) references Product(pID),
    odQTY int,
    primary key(oID,pID)
);
insert into OrderDetail(oID,pID,odQTY)
value(2,2,350)
