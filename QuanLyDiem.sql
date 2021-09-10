Create database QLD
use QLD

Create table Lop(
    Ma_lop char(10) not null primary key,
    Ten_lop nvarchar(30))

Create table Sinhvien(
	Ma_sv char(15) not null primary key,
	Ho_ten nvarchar(30),
	Ma_lop char(10),
	Gioi_tinh nvarchar(10),
	Ngay_sinh date,
	So_dt char(15),
	Dia_chi nvarchar(50),

	Foreign key(Ma_Lop) references Lop(Ma_Lop))

Create table Monhoc(
    Ma_monhoc char(10) not null primary key,
    Ten_monhoc nvarchar(50),
    So_tc int)

Create table Thi(
    Ma_monhoc char(10),
    Ma_sv char(15),
    diem float,

    Foreign key (Ma_monhoc) references Monhoc(Ma_monhoc),
    Foreign key (Ma_sv) references Sinhvien(Ma_sv))

Insert into Lop
Values('61PM1', N'61 phần mềm 1'),
	  ('61PM2', N'62 phần mềm 2'),
	  ('61CNTT', N'61 công nghệ thông tin')

Insert into Sinhvien
Values('SV001', N'Nguyễn Minh Đức', '61PM1', 'Nam', '20010920', '011 1111111', N'Ninh Bình'),
	  ('SV002', N'Nguyễn Thu Hiền', '61PM1', N'Nữ', '20010101', '022 2222222', N'Thái Bình'),
	  ('SV003', N'Hoàng Thu Trang', '61PM2', N'Nữ', '20010202', '033 3333333', N'Hà Nội'),
	  ('SV004', N'Nguyễn Văn Tâ', '61CNTT', 'Nam', '20010303', '044 4444444', N'Thái Bình'),
	  ('SV005', N'Hồ Hồng Queo', '61CNTT', 'Nam', '20010404', '011 1111111', N'Nghệ An')

