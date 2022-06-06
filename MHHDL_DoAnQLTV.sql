use master
go
create database MHHDL_DoAnQLTV
go
use MHHDL_DoAnQLTV

-- Tạo bảng Độc Giả
create table tblDocGia
(
	MaDG varchar(10) constraint pk_tblDocGia primary key,
	TenDG nvarchar(30),
	GioiTinhDG nvarchar(5),
	NgaySinhDG varchar(10),
	SDTDG int,
	DiaChiDG nvarchar(50),
	LoaiDG nvarchar(20),
	GhiChu nvarchar(30),
	TenTaiKhoanDG varchar(10),
	MatKhauDG varchar(20),
)

-- drop table tblDocGia

-- Tạo bảng Sách
create table tblSach
(
	MaSach varchar(10) constraint pk_tblSach primary key,
	TenSach nvarchar(50),
	ChuDe nvarchar(30),
	TacGia nvarchar(30),
	NXB nvarchar(30),
	NamXB int,
	SLNhap int,
	DonGia int,
	TinhTrang nvarchar(20),
	Ghichu nvarchar(30),
)
--drop table tblSach

-- Tạo bản Mượn Trả
create table tblHSPhieuMuon
(
	MaPhieu varchar(10),
	MaDG varchar(10),
	MaSach varchar(10),
	NgayMuon nvarchar(10),
	NgayTra nvarchar(10),
	SLMuon int,
	TinhTrang nvarchar(20),
	GhiChu nvarchar(75),
	constraint pk_tblMuonTra primary key(MaPhieu),
	constraint fk_tblMuonTra_tblDocGia foreign key(MaDG) references tblDocGia(MaDG),
	constraint fk_tblMuonTra_tblSach foreign key(MaSach) references tblSach(MaSach),
)
--drop table tblHSPhieuMuon

-- Tạo bảng Tài khoản thủ thư
create table tblThuThu
(
	MaTT varchar(10) constraint pk_tblThuThu primary key,
	TenTT nvarchar(30),
	GioiTinhTT nvarchar(5),
	NgaySinhTT varchar(10),
	SDTTT int,
	DiaChiTT nvarchar(50),
	GhiChu nvarchar(30),
	TenTaiKhoanTT varchar(10),
	MatKhauTT varchar(20),
)
--drop table tblThuThu

-- Chèn dữ liệu bảng tblDocGia
insert into tblDocGia values ('DG001',N'Lê Chí Đức',N'Nam','15/06/2000','0828397304',N'Đà Nẵng',N'Sinh viên','...','DG001','123')
insert into tblDocGia values ('DG002',N'Phan Văn Hiếu',N'Nam','26/08/2000','0905460582',N'Đà Nẵng',N'Sinh viên','...','DG002','123')
insert into tblDocGia values ('DG003',N'Phạm Đức Thắng',N'Nam','15/01/2000','0973734937',N'Nghệ An',N'Sinh viên','...','DG003','123')
insert into tblDocGia values ('DG004',N'Nguyễn Thanh Sơn',N'Nam','11/03/2000','0326560144',N'Quảng Trị',N'Sinh viên','...','DG004','123')
insert into tblDocGia values ('DG005',N'Võ Lý Hoàng Hoan',N'Nam','23/10/2000','0934857195',N'Quảng Nam',N'Sinh viên','...','DG005','123')
insert into tblDocGia values ('DG006',N'Trần Hửu Quân',N'Nam','15/10/2000','0326918094',N'Quảng Nam',N'Sinh viên','...','DG006','123')
insert into tblDocGia values ('DG007',N'Mai Quốc Trung',N'Nam','20/11/2000','0702464636',N'Huế',N'Sinh viên','...','DG007','123')
insert into tblDocGia values ('DG008',N'Hoàng Quốc Bảo',N'Nam','08/03/2000','0826320044',N'Huế',N'Sinh viên','...','DG008','123')
insert into tblDocGia values ('DG009',N'Lê Văn Quý',N'Nam','20/11/2000','0393099717',N'Huế',N'Sinh viên','...','DG009','123')
insert into tblDocGia values ('DG010',N'Lê Văn Thuấn',N'Nam','15/01/2000','0899873098',N'Huế',N'Sinh viên','...','DG010','123')

-- Chèn dữ liệu bảng tblSach
insert into tblSach values ('MS001',N'Lập trình Windown Form',N'Lập trình',N'Nguyễn Xuân Nam',N'NXB Hồng Bàng','2000','100','50000',N'Mới','...')
insert into tblSach values ('MS002',N'Lập trình Web',N'Lập trình',N'Lê Hồng Nhân',N'NXB Giáo Dục','2001','100','50000',N'Mới','...')
insert into tblSach values ('MS003',N'Lập trình HDT',N'Lập trình',N'Nguyễn Đức Phương',N'NXB Hồng Bàng','2002','100','30000',N'Mới','...')
insert into tblSach values ('MS004',N'Lập trình SQL',N'Lập trình',N'Nguyễn Xuân Nam',N'NXB Hồng Bàng','2004','100','40000',N'Mới','...')
insert into tblSach values ('MS005',N'Thiết bị công nghệ hiện đại',N'Công nghệ',N'Trần Xuân Bách',N'NXB Thanh Niên','2004','100','60000',N'Mới','...')
insert into tblSach values ('MS006',N'Khoa học quanh ta',N'Công nghệ',N'Trần Văn Chung',N'NXB Giáo Dục','2002','100','40000',N'Mới','...')
insert into tblSach values ('MS007',N'Úng dụng công nghệ',N'Công nghệ',N'Nguyễn Hoài Nhâm',N'NXB Hồng Bàng','2009','100','50000',N'Mới','...')
insert into tblSach values ('MS008',N'Bạn và Tôi',N'Tiểu thuyết',N'Lệ Thu',N'NXB Trẻ','2007','100','50000',N'Mới','...')
insert into tblSach values ('MS009',N'Ngày Ấy',N'Tiểu thuyết',N'Nguyễn Hoài Nhớ',N'NXB Thanh Niên','2010','100','40000',N'Mới','...')
insert into tblSach values ('MS010',N'Tôi đi tìm tôi',N'Tiểu thuyết',N'Phạm Đức',N'NXB Thanh Niên','2004','100','20000',N'Mới','...')
insert into tblSach values ('MS011',N'ASP 3.0 ASP.NET',N'Lập trình',N'Nguyễn Phương Lan',N'NXB Lao Động - Xã Hội','2010','100','20000',N'Mới','...')
insert into tblSach values ('MS012',N'Mắt biếc',N'Truyện ngắn',N'Nguyễn Nhật Ánh', N'NXB Trẻ','2010','100','25000',N'Mới','...')
insert into tblSach values ('MS013',N'Tôi thấy hoa vàng trên cỏ xanh',N'Truyện ngắn',N'Nguyễn Nhật Ánh', N'NXB Trẻ','2010','100','30000',N'Mới','...')
insert into tblSach values ('MS014',N'Gió lạnh đầu mùa',N'Truyện ngắn',N'Thạch Lam', N'NXB Văn Học','2010','100','30000',N'Mới','...')
insert into tblSach values ('MS015',N'Bên bờ sông gió hát',N'Truyện ngắn',N'Nguyễn Hồng', N'NXB Hội Nhà Văn','2010','100','30000',N'Mới','...')
--delete from tblSach

-- Chèn dữ liệu bảng tblHSPhieuMuon
insert into tblHSPhieuMuon values ('MP001','DG001','MS001','01/01/2022','21/01/2022','1',N'Mới','...')
insert into tblHSPhieuMuon values ('MP002','DG001','MS002','01/01/2022','21/01/2022','1',N'Mới','...')
insert into tblHSPhieuMuon values ('MP003','DG002','MS005','02/01/2022','22/01/2022','1',N'Mới','...')
insert into tblHSPhieuMuon values ('MP004','DG003','MS002','02/01/2022','22/01/2022','1',N'Mới','...')
insert into tblHSPhieuMuon values ('MP005','DG004','MS007','01/12/2021','21/12/2022','1',N'Mới','...')
insert into tblHSPhieuMuon values ('MP006','DG004','MS003','01/12/2022','21/12/2022','1',N'Mới','...')
insert into tblHSPhieuMuon values ('MP007','DG004','MS004','02/12/2021','22/12/2021','1',N'Mới','...')
insert into tblHSPhieuMuon values ('MP008','DG007','MS009','01/12/2022','21/12/2022','1',N'Mới','...')
insert into tblHSPhieuMuon values ('MP009','DG008','MS010','04/12/2021','24/12/2021','1',N'Mới','...')
insert into tblHSPhieuMuon values ('MP010','DG006','MS006','04/12/2021','12/01/2021','1',N'Mới','...')







-- có ngày hẹn trả
-- Chèn dữ liệu bảng tblHSPhieuMuon
/*
insert into tblHSPhieuMuon values ('MP003','DG002','MS005','02/01/2017','22/01/2017','22/01/2017','1',N'Mới','...')
insert into tblHSPhieuMuon values ('MP004','DG003','MS002','02/01/2017','22/01/2017','22/01/2017','1',N'Mới','...')
insert into tblHSPhieuMuon values ('MP005','DG004','MS007','01/12/2016','21/12/2016','21/12/2016','1',N'Mới','...')
insert into tblHSPhieuMuon values ('MP006','DG004','MS003','01/12/2016','21/12/2016','21/12/2016','1',N'Mới','...')
insert into tblHSPhieuMuon values ('MP007','DG004','MS004','02/12/2016','22/12/2016','22/12/2016','1',N'Mới','...')
insert into tblHSPhieuMuon values ('MP008','DG007','MS009','01/12/2017','21/12/2016','21/12/2016','1',N'Mới','...')
insert into tblHSPhieuMuon values ('MP009','DG008','MS010','04/12/2017','24/12/2016','24/12/2016','1',N'Mới','...')
insert into tblHSPhieuMuon values ('MP010','DG006','MS006','04/12/2017','12/01/2017','12/01/2017','1',N'Mới','...')
--delete from tblMuonTra
*/

-- Chèn dữ liệu bảng tblDangNhap
insert into tblThuThu values ('TT001',N'Lê Anh Nhật',N'Nam','20/06/2000','0974633324',N'Đà Nẵng','...','TT001','123')
insert into tblThuThu values ('TT002',N'Phan Văn Hiếu',N'Nam','26/08/2000','0974633324',N'Đà Nẵng','...','TT002','123')
insert into tblThuThu values ('TT003',N'Võ Lý Hoàng Hoan',N'Nam','15/06/2000','0974633324',N'Đà Nẵng','...','TT003','123')

--delete from tblDangNhap





/*
-- QL Sách

-- Load Sách
select MaSach, TenSach, TenTG, TenCD, TenNXB, SLNhap, SLCon, DonGia, TinhTrang from tblSach, tblTacGia, tblNhaXuatBan, tblChuDeSach where tblSach.MaTG=tblTacGia.MaTG and tblSach.MaCD=tblChuDeSach.MaCD and tblSach.MaNXB=tblNhaXuatBan.MaNXB
-- Tìm kiếm 
select MaSach, TenSach, TenTG, TenCD, TenNXB, SLNhap, SLCon, DonGia, TinhTrang from tblSach, tblTacGia, tblNhaXuatBan, tblChuDeSach where tblSach.MaTG=tblTacGia.MaTG and tblSach.MaCD=tblChuDeSach.MaCD and tblSach.MaNXB=tblNhaXuatBan.MaNXB and TenCD like N'%Lập%'

delete from tblSach where MaSach='MS0012'

select count(MaSach) as TongSLDauSach, sum(SLNhap) as TongSLSach, sum(SLCon) as TongSLCon, sum(DonGia) as TongGiaTriSach from tblSach



update tblSach set SLCon='75' where MaSach='MS011'

-- QL Độc Giả
select * from tblDocGia

delete from tblDocGia where MaDG='DG010'

select count(MaDG) as TongSLDG from tblDocGia


-- QL Mượn Trả

select * from tblMuonTra

select sum(SLMuon) as Tong from tblMuonTra where MaDG='DG001' group by MaDG

update tblMuonTra set NgayMuon='11/01/2017', NgayTra='31/01/2017' where MaPhieu='MP014'

select sum(SLMuon) as Tong from tblMuonTra

select (count(distinct(MaDG))) as TongSLDGMuon from tblMuonTra


--
select *
from tblMuonTra 

where substring(NgayTra,7,4) <  SUBSTRING(cast(GETDATE() as varchar),8,5)

and substring(NgayTra,4,2) < 13
and substring(NgayTra,1,2) < 22


-- tốt
-- SL DG quá Hạn
SELECT count(distinct(MaDG)) as TongSLQuaHan from tblMuonTra where CONVERT (datetime, NgayTra, 103) < getdate()

-- DS DG Quá Hạn
SELECT MaDG, count(SLMuon) as 'SL Sách Mượn' from tblMuonTra where CONVERT (datetime, NgayTra, 103) <= getdate() group by MaDG

-- SL SÁch quá hạn
SELECT count(SLMuon) as TongSLQuaHan 
from tblMuonTra 
where CONVERT (datetime, NgayTra, 103) <= getdate()

-- DS SÁch quá hạn
SELECT MaSach, count(SLMuon)
from tblMuonTra 
where CONVERT (datetime, NgayTra, 103) <= getdate()
group by MaSach








select *
from tblMuonTra 

where substring(NgayTra,1,2) <= 22

and substring(NgayTra,4,2) <= 01
and substring(NgayTra,7,4) <=  SUBSTRING(cast(GETDATE() as varchar),8,5)

and DateTime(substring(NgayTra,7,4),substring(NgayTra,4,2),substring(NgayTra,1,2))







select SUBSTRING(cast(GETDATE() as varchar),9,5) as nam


select substring(NgayTra,7,4) as Nam 
from tblMuonTra 

where substring(NgayTra,1,2) < 11





--group by MaPhieu 

-- SL chủ đề

select count(MaCD) as TongSLCD from tblChuDeSach

-- SL NXB 
select count(MaNXB) as TongSLNXB from tblNhaXuatBan

-- SL tác giả

select count(MaTG) as TongSLTG from tblTacGia

*/
