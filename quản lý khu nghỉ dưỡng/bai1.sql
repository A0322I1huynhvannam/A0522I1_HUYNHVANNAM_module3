create database QuanLyKhuNghiDuong;
use  QuanLyKhuNghiDuong;

create table ViTri(
	MaViTri int not null primary key,
    TenViTri varchar(45)
);

create table TrinhDo(
	MaTrinhDo int not null primary key,
    TenTrinhDo varchar(45)
);

create table BoPhan(
	MaBoPhan int not null primary key,
    TenBoPhan varchar(45)
);

create table NhanVien(
	MaNhanVien int not null primary key,
    HoTen varchar(45),
    NgaySinh date,
    So_cmnd varchar(45),
    luong double,
    SoDienThoai varchar(45),
    Email varchar(45),
    DiaChi varchar(45),
    MaViTri int ,
    MaTrinhDo int ,
    MaBoPhan int,
    foreign key (MaViTri) references ViTri(MaViTri),
    foreign key (MaTrinhDo) references TrinhDo(MaTrinhDo),
    foreign key(MaBoPhan) references BoPhan(MaBoPhan)
);

create table LoaiKhach(
	MaLoaiKhach int not null primary key,
    TenLoaiKhach varchar(45)
);

create table KieuThue(
	MaKieuThue int not null primary key,
    TenKieuThue varchar(45)
);

create table LoaiDichVu(
	MaLoaiDichVu int not null primary key,
    TenloaiDichVu varchar(45)
);

create table DichVu(
	MaDichVu int not null primary key,
    TenDichVu varchar(45),
    DienTich int,
    ChiPhiThue double,
    SoNguoiToiDa int,
    MaKieuThue int,
    foreign key (MaKieuThue) references KieuThue(MaKieuThue),
    MaLoaiDichVu int,
    foreign key(MaLoaiDichVu) references LoaiDichVu(MaLoaiDichVu),
    TieuChuanPhong varchar(45),
    MoTaTienNghiKhac varchar(45),
    DienTichHoBoi double,
    SoTang int
);

create table KhachHang(
	MaKhachHang int not null primary key,
    MaLoaiKhach int ,
    foreign key(MaLoaiKhach) references LoaiKhach(MaLoaiKhach),
    HoTen varchar(45),
    NgaySinh date,
    GioiTinh bit(1),
    So_cmnd varchar(45),
    SoDienThoai varchar(45),
    Email varchar(45),
    DiaChi varchar(45)
);

create table DichVuDikem(
	MaDichVuDiKem int not null primary key,
    TenDichVuDiKem varchar(45),
    Gia double,
    DonVi varchar(45),
    TrangThai varchar(45)
);

create table HopDong(
	MaHopDong int not null primary key,
    NgayLamHopDong datetime,
    NgayKetThuc datetime,
    TienDatCoc double,
    MaNhanVien int,
    foreign key(MaNhanVien) references NhanVien(MaNhanVien),
    MaKhachHang int,
	foreign key(MaKhachHang) references KhachHang(MaKhachHang),
    MaDichVu int ,
    foreign key(MaDichVu) references DichVu(MaDichVu)
);

create table HopDongChiTiet(
	MaHopDongChiTiet int not null primary key,
    MaHopDong int,
    foreign key(MaHopDong) references HopDong(MaHopDong),
    MaDichVuDiKem int,
    foreign key (MaDichVuDiKem) references DichVuDikem(MaDichVuDiKem),
    SoLuong int
);



