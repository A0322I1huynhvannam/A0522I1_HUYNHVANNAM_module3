create table ERD_sang_mo_hinh_QH;
use ERD_sang_mo_hinh_QH;

create table PhieuXuat(
	SoPX int primary key ,
    NgayXuat datetime
);

create table VatTu(
	MaVTU int primary key,
    TenVTU varchar(50)
);

create table ChiTietPhieuXuat(
	DGXuat varchar(50),
    SLXuat int(50),
    SoPX int ,
    MaVTU int,
    foreign key (SoPX) references PhieuXuat(SoPX),
    foreign key (MaVTU) references VatTu(MaVTU)
);

create table PhieuNhap(
	SoPN int primary key,
    NgayNhap datetime
);

create table ChiTietPhieuNhap(
	DGNhap varchar(50),
    SLNhap int(50),
    MaVTU int,
    SoPN int,
    foreign key(MaVTU) references VatTu(MaVTU),
    foreign key(SoPN) references PhieuNhap(SoPN)
);

create table DONDH(
	SoDH int primary key,
    NgayDH datetime
);

create table DonDatHang(
	MaVTU int,
    SoDH int,
	foreign key(MaVTU) references VatTu(MaVTU),
    foreign key(SoDH) references DONDH(SoDH)
);

create table NhaCungCap(
	MaNCC int primary key,
    TenNCC varchar(50),
    DiaChi varchar(50),
    SDT varchar(50)
);

create table SoDienThoai(
	SDT varchar(50),
    foreign key(SDT) references  NhaCungCap(SDT)
);

