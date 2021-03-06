use master
create database quanlykhachsan
use quanlykhachsan
/*Bảng loại phòng*/
create table KindOfRooms
(
	id nvarchar(4) not null,
	name nvarchar(100) not null,
	room_group nvarchar(25) not null,
	primary key(id)
)

/*Bảng phòng*/
create table Rooms
(
	id nvarchar(4)  not null,
	name nvarchar(25) not null,
	kind nvarchar(4) not null,
	price nvarchar(25) not null,
	available bit not null,
	img nvarchar(50) not null,
	room_status nvarchar(100) not null,
	primary key(id),
	foreign key(kind) references KindOfRooms(id),
)

/*Bảng dịch vụ*/
create table ServicesBooking
(
	id nvarchar(4)  not null,
	name nvarchar(25) not null,
	price nvarchar(25) not null,
	service_status nvarchar(100) not null,
	primary key(id),
)

create table Bill
(
	id int IDENTITY(1,1)  not null,
	date_created date not null,
	count_room int not null,
	room_price nvarchar(25) not null,
	name_sevice nvarchar(255),
	services_price nvarchar(25) not null,
	total_price nvarchar(40) not null,
	primary key(id)
)
create table Customer
(
	id int  IDENTITY(1,1) not null primary key,
	name    nvarchar(25) not null,
	email nvarchar(25) not null,
	phone nvarchar(25) not null,
	credit_Name nvarchar(25) not null,
	credit_Number nvarchar(25) not null,
)

create table Booking
(
	id int IDENTITY(1,1) not null,
	id_Customer int not null,
	id_Room nvarchar(4) not null,
	id_Bill int not null,
	count_people int not null,
	count_room int not null,
	name_sevice nvarchar(255),
	checkin_date nvarchar(25) not null,
	checkout_date nvarchar(25) not null,
	primary key(id),
	constraint fkCustomer foreign key (id_Customer) references Customer(id),
	constraint fkBill foreign key(id_Bill) references Bill(id),
	constraint fkRoom foreign key(id_Room) references Rooms(id)
)

--kindofroom
insert into KindOfRooms values(1,N'Single Rooms',N'normal')
insert into KindOfRooms values(2,N'Double Rooms',N'vip')
--room
insert into Rooms values(N'001',N'Phòng 001',N'1',N'1,000,000','True',N'BG1.jpg',N'None')
insert into Rooms values(N'002',N'Phòng 002',N'2',N'1,000,000','True',N'BG2.jpg',N'OK')
insert into Rooms values(N'003',N'Phòng 003',N'1',N'1,000,000','False',N'BG1.jpg',N'None')
insert into Rooms values(N'004',N'Phòng 004',N'2',N'1,000,000','True',N'BG2.jpg',N'OK')
--services
insert into ServicesBooking values(N'SV1',N'Spa',N'500,000',N'OK')
insert into ServicesBooking values(N'SV2',N'Xe đưa đón sân bay',N'700,000',N'OK')
insert into ServicesBooking values(N'SV3',N'Dịch vụ trông trẻ',N'400,000',N'OK')
insert into ServicesBooking values(N'SV4',N'Fitness center',N'500,000',N'OK')
insert into ServicesBooking values(N'SV5',N'Giặt ủi quần, áo',N'300,000',N'OK')
insert into ServicesBooking values(N'SV6',N'Dịch vụ phòng 24/24',N'800,000',N'OK')
insert into ServicesBooking values(N'SV7',N'Dịch vụ karaoke',N'500,000',N'OK')

--customer

create table AdminLogin(
	id_admin int not null primary key,
	username_admin nvarchar(25) not null,
	password_admin nvarchar(25) not null
)
insert into AdminLogin values(1, N'hieuthanh', N'123@abc')

go 
select*from Customer
select*from Booking
select*from ServicesBooking
select*from Rooms

select*from KindOfRooms
select*from Bill
SELECT price FROM ServicesBooking WHERE id='SV1'
select*from Customer  where  name like '%%'
SELECT available FROM Rooms WHERE id=1