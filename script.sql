USE [master]
GO
/****** Object:  Database [QLVPP]    Script Date: 12/29/2023 10:55:16 AM ******/
CREATE DATABASE [QLVPP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLVPP', FILENAME = N'C:\Users\DELL\QLVPP.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLVPP_log', FILENAME = N'C:\Users\DELL\QLVPP_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLVPP] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLVPP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLVPP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLVPP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLVPP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLVPP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLVPP] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLVPP] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLVPP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLVPP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLVPP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLVPP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLVPP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLVPP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLVPP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLVPP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLVPP] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLVPP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLVPP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLVPP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLVPP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLVPP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLVPP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLVPP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLVPP] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLVPP] SET  MULTI_USER 
GO
ALTER DATABASE [QLVPP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLVPP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLVPP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLVPP] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLVPP] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLVPP] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLVPP] SET QUERY_STORE = OFF
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [nv005]    Script Date: 12/29/2023 10:55:16 AM ******/
CREATE LOGIN [nv005] WITH PASSWORD=N'KWmzF830cD895iUll8glzGYVHOGaxXh9gUfABjCIWP8=', DEFAULT_DATABASE=[QLVPP], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [nv005] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [nv004]    Script Date: 12/29/2023 10:55:16 AM ******/
CREATE LOGIN [nv004] WITH PASSWORD=N'jMl/qdoE551tdDwu9iTwOaUK/VPhh9bksoFCKBPuFAY=', DEFAULT_DATABASE=[QLVPP], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [nv004] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [nv003]    Script Date: 12/29/2023 10:55:16 AM ******/
CREATE LOGIN [nv003] WITH PASSWORD=N'X++VFWrzFkWlLy01hc8xoQGTCwjFQ1R3A/hzq4hglPc=', DEFAULT_DATABASE=[QLVPP], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [nv003] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [nv002]    Script Date: 12/29/2023 10:55:16 AM ******/
CREATE LOGIN [nv002] WITH PASSWORD=N'FeNH/9h5NCcvenMC3DkZj723BQmWFXjLicUi9bavIl8=', DEFAULT_DATABASE=[QLVPP], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [nv002] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [nv001]    Script Date: 12/29/2023 10:55:16 AM ******/
CREATE LOGIN [nv001] WITH PASSWORD=N'wcb465Jr2fqAyreitqNGoAw94/aFjgh8sWKGSjhRtF4=', DEFAULT_DATABASE=[QLVPP], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [nv001] DISABLE
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 12/29/2023 10:55:16 AM ******/
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master]
GO
/****** Object:  Login [DESKTOP-LCGS96A\DELL]    Script Date: 12/29/2023 10:55:16 AM ******/
CREATE LOGIN [DESKTOP-LCGS96A\DELL] FROM WINDOWS WITH DEFAULT_DATABASE=[master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 12/29/2023 10:55:16 AM ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'276kkE/rWYx+BzOf8pIxLcJepM2ttOkHdtzGY6V5CkY=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 12/29/2023 10:55:16 AM ******/
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'DjI8pf7iK/f71PkhLezns+Vk1lerT1iNli8hXci+n44=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [nv002]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [DESKTOP-LCGS96A\DELL]
GO
USE [QLVPP]
GO
/****** Object:  User [nv005]    Script Date: 12/29/2023 10:55:16 AM ******/
CREATE USER [nv005] FOR LOGIN [nv005] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [nv004]    Script Date: 12/29/2023 10:55:16 AM ******/
CREATE USER [nv004] FOR LOGIN [nv004] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [nv003]    Script Date: 12/29/2023 10:55:16 AM ******/
CREATE USER [nv003] FOR LOGIN [nv003] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [nv002]    Script Date: 12/29/2023 10:55:16 AM ******/
CREATE USER [nv002] FOR LOGIN [nv002] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [nv001]    Script Date: 12/29/2023 10:55:16 AM ******/
CREATE USER [nv001] FOR LOGIN [nv001] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [ThuKho]    Script Date: 12/29/2023 10:55:16 AM ******/
CREATE ROLE [ThuKho]
GO
/****** Object:  DatabaseRole [NVBH]    Script Date: 12/29/2023 10:55:16 AM ******/
CREATE ROLE [NVBH]
GO
ALTER ROLE [NVBH] ADD MEMBER [nv005]
GO
ALTER ROLE [NVBH] ADD MEMBER [nv004]
GO
ALTER ROLE [NVBH] ADD MEMBER [nv003]
GO
ALTER ROLE [ThuKho] ADD MEMBER [nv001]
GO
/****** Object:  UserDefinedFunction [dbo].[checkLogin]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--check dang nhap
Create function [dbo].[checkLogin] (@tk varchar(10), @pw varchar(256))
Returns BIT
As
Begin
	Declare @result BIT;
	Select @result = Cast(count(*) AS BIT)
	From TAIKHOAN
	Where TenTK = @tk AND MatKhau = @pw;
	Return @result;
End;
GO
/****** Object:  UserDefinedFunction [dbo].[FC_DoanhThuTheoNam]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Doanh thu theo năm
Create Function [dbo].[FC_DoanhThuTheoNam](@nam int)
Returns Float
As
Begin
	Declare @doanhthu Float = 0
	Select @doanhthu = COALESCE(SUM(TongThanhToan), 0)
	From HOADON
	Where YEAR(NgayLap) = @nam;
	Return @doanhthu
End
GO
/****** Object:  UserDefinedFunction [dbo].[FC_DoanhThuTheoNgay]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--======================================================================================
--THỐNG KÊ DOANH THU VÀ CHI PHÍ
--Doanh thu theo ngày
Create Function [dbo].[FC_DoanhThuTheoNgay](@ngay int, @thang int, @nam int)
Returns Float
As
Begin
	Declare @doanhthu Float = 0
	Select @doanhthu = COALESCE(SUM(TongThanhToan), 0)
	From HOADON
	Where  DAY(NgayLap) = @ngay AND MONTH(NgayLap) = @thang AND YEAR(NgayLap) = @nam;
	Return @doanhthu
End
GO
/****** Object:  UserDefinedFunction [dbo].[FC_DoanhThuTheoThang]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--select * from dbo.fc_TinhLuongNhanVien(5, 2023)
Create   FUNCTION [dbo].[FC_DoanhThuTheoThang](@thang int, @nam int)
Returns Float
As
Begin
	Declare @doanhthu Float = 0
	Select @doanhthu = COALESCE(SUM(TongThanhToan), 0)
	From HOADON
	Where MONTH(NgayLap) = @thang AND YEAR(NgayLap) = @nam;
	Return @doanhthu
End
GO
/****** Object:  UserDefinedFunction [dbo].[FC_TinhPhanTramUuDai]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--drop function FC_TimThanhVienBangSDT
--Tinh phan tram uu dai
Create Function [dbo].[FC_TinhPhanTramUuDai](@maKH varchar(10))
Returns float
As
Begin
	Declare @pt float
	Select @pt = PhanTramUuDai
		From THANHVIEN, LOAITHANHVIEN
		Where THANHVIEN.MaTV = @maKH
		and LOAITHANHVIEN.MaLoaiTV = THANHVIEN.MaLoaiTV
	return @pt/100
End
GO
/****** Object:  UserDefinedFunction [dbo].[FC_TongChiPhiNam]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Function [dbo].[FC_TongChiPhiNam](@nam int)
Returns Float
As
Begin
	Declare @chiphi float
	Select @chiphi = COALESCE(SUM(TongGT) , 0)
	From DONNHAP
	Where YEAR(NgayNhap) = @nam
	Return @chiphi
End
GO
/****** Object:  UserDefinedFunction [dbo].[FC_TongChiPhiThang]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Function [dbo].[FC_TongChiPhiThang](@thang int, @nam int)
Returns Float
As
Begin
	Declare @chiphi float
	Select @chiphi = COALESCE(SUM(TongGT) , 0)
	From DONNHAP
	Where MONTH(NgayNhap) = @thang AND YEAR(NgayNhap) = @nam
	Return @chiphi
End
GO
/****** Object:  UserDefinedFunction [dbo].[getLoaiNhanVien]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--lay loai nhan vien
Create function [dbo].[getLoaiNhanVien] (@tk varchar(10))
Returns int
As
Begin
Declare @maCV varchar(10)
Set @maCV = (Select MaCV From NHANVIEN Where MaNV = @tk)
If (@maCV = 'cv-001')
	return 1
If (@maCV = 'cv-002')
	return 2
return 3
End
GO
/****** Object:  Table [dbo].[CONGVIEC]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONGVIEC](
	[MaCV] [varchar](10) NOT NULL,
	[TenCV] [nvarchar](30) NOT NULL,
	[LuongCoBan] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [varchar](10) NOT NULL,
	[HoNV] [nvarchar](100) NOT NULL,
	[TenNV] [nvarchar](10) NOT NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SDT] [varchar](10) NOT NULL,
	[NgayTD] [date] NOT NULL,
	[HeSoLuong] [float] NOT NULL,
	[MaCV] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BANGPHANCA]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BANGPHANCA](
	[MaNV] [varchar](10) NOT NULL,
	[MaCa] [varchar](10) NOT NULL,
	[Ngay] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[MaCa] ASC,
	[Ngay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_Ca_NhanVienBanHang]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[V_Ca_NhanVienBanHang]
as
	select distinct bpc.MaCa, CONCAT(nv.HoNV, ' ', nv.TenNV) as [Ho ten]
		from BANGPHANCA as bpc, NHANVIEN as nv, CONGVIEC as cv
		where bpc.Ngay = CONVERT(DATE, GETDATE()) 
			and bpc.MaNV = nv.MaNV 
			and nv.MaCV = cv.MaCV 
			and cv.TenCV = N'Nhân viên bán hàng'
--select * from V_Ca_NhanVienBanHang
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MaSP] [varchar](10) NOT NULL,
	[TenSP] [nvarchar](100) NOT NULL,
	[DonViTinh] [nvarchar](10) NULL,
	[GiaBan] [float] NOT NULL,
	[GiaNhap] [float] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[MaLoaiSP] [varchar](10) NULL,
	[MaNSX] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_DSSanPhamConHang]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Xem danh sách sản phẩm còn hàng trong văn phòng phẩm
--drop view V_DSSanPhamConHang
Create view [dbo].[V_DSSanPhamConHang]
As
Select * from SANPHAM
Where SoLuong > 0
GO
/****** Object:  Table [dbo].[DONNHAP]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONNHAP](
	[MaDN] [varchar](10) NOT NULL,
	[NgayNhap] [date] NOT NULL,
	[ThoiGian] [time](7) NOT NULL,
	[TongGT] [float] NOT NULL,
	[MaNCC] [int] NULL,
	[MaNV] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_DonNhapTrongNgay]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Xem đơn nhập trong ngày
Create view [dbo].[V_DonNhapTrongNgay] AS
Select *
From DONNHAP
Where NgayNhap = CONVERT(DATE,GETDATE())
GO
/****** Object:  View [dbo].[V_DanhSachNhanVien]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--=======================================================================================================
--QUẢN LÍ NHÂN VIÊN
--View danh sach nhan vien
Create   view [dbo].[V_DanhSachNhanVien]
As
Select n.MaNV, HoNV, TenNV, NgaySinh, GioiTinh, DiaChi, SDT, c.TenCV, n.HeSoLuong, NgayTD
	From NHANVIEN n, CONGVIEC c
	Where n.MaCV = c.MaCV
GO
/****** Object:  Table [dbo].[NCC]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCC](
	[MaNCC] [int] NOT NULL,
	[TenNCC] [nvarchar](100) NOT NULL,
	[SDT] [varchar](10) NOT NULL,
	[DiaChi] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_NCC]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[V_NCC] AS
Select *
From NCC
GO
/****** Object:  Table [dbo].[NSX]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSX](
	[MaNSX] [int] NOT NULL,
	[TenNSX] [nvarchar](30) NOT NULL,
	[SDT] [varchar](10) NOT NULL,
	[DiaChi] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_NSX]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[V_NSX] AS
Select *
From NSX
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MaHD] [varchar](10) NOT NULL,
	[NgayLap] [date] NOT NULL,
	[ThoiGian] [time](7) NOT NULL,
	[TongThanhToan] [float] NOT NULL,
	[MaNV] [varchar](10) NULL,
	[MaTV] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_HoaDon]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--QUAN LI HOA DON
--view hoa don
Create view [dbo].[V_HoaDon] AS
Select MaHD, NgayLap, ThoiGian, TongThanhToan, MaNV, MaTV
From HOADON;
GO
/****** Object:  Table [dbo].[KHUVUC]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHUVUC](
	[MaKV] [varchar](10) NOT NULL,
	[TenKV] [nvarchar](30) NOT NULL,
	[ChiTietKhuVuc] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAISANPHAM]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAISANPHAM](
	[MaLoaiSP] [varchar](10) NOT NULL,
	[TenLoaiSP] [nvarchar](100) NOT NULL,
	[MaKV] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_SanPham]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--===========================================================================================================
--QUẢN LÍ SẢN PHẨM
--View xem danh mục sản phẩm
CREATE VIEW [dbo].[V_SanPham] AS
SELECT MaSP, TenSP, DonViTinh, GiaBan, GiaNhap, SoLuong, 
		lsp.TenLoaiSP, kv.TenKV, MaNSX
	FROM SANPHAM sp, LOAISANPHAM lsp, KHUVUC kv
	Where sp.MaLoaiSP = lsp.MaLoaiSP 
	and lsp.MaKV = kv.MaKV;
GO
/****** Object:  UserDefinedFunction [dbo].[FC_TimKiemSanPhamSoLuongLonHon0]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--drop view V_SanPham
--Tim Kiem san pham so luong > 0
Create   Function [dbo].[FC_TimKiemSanPhamSoLuongLonHon0] (@String nvarchar(100))
Returns Table 
As
	Return
	Select SanPham.MaSP, TenSP, MaLoaiSP, DonViTinh, GiaBan, GiaNhap, SoLuong, MaNSX
	From SanPham
	Where Concat(SanPham.MaSP, TenSP, MaLoaiSP,MaNSX) Like N'%' + @String + '%' and SoLuong > 0
GO
/****** Object:  UserDefinedFunction [dbo].[FC_TimKiemSanPham]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Tim kiem tat ca san pham
Create   Function [dbo].[FC_TimKiemSanPham] (@String nvarchar(100))
Returns Table 
As
	Return
	Select sp.MaSP, TenSP, lsp.TenLoaiSP, kv.TenKV, DonViTinh, GiaBan, GiaNhap, SoLuong, MaNSX
	From SanPham sp, LOAISANPHAM lsp, KHUVUC kv
	Where Concat(sp.MaSP, TenSP, lsp.TenLoaiSP, MaNSX) Like N'%' + @String + '%'
		and sp.MaLoaiSP = lsp.MaLoaiSP
		and lsp.MaKV = kv.MaKV
GO
/****** Object:  Table [dbo].[THANHVIEN]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THANHVIEN](
	[MaTV] [varchar](10) NOT NULL,
	[HoTV] [nvarchar](100) NOT NULL,
	[TenTV] [nvarchar](10) NOT NULL,
	[SDT] [varchar](10) NOT NULL,
	[DiaChi] [nvarchar](100) NULL,
	[DiemTichLuy] [int] NOT NULL,
	[MaLoaiTV] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_DanhSachThanhVien]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--drop proc proc_SuaSanPham
--============================================================================================================
--QUẢN LÍ KHÁCH HÀNG
--View danh sách khách hàng thành viên
Create View [dbo].[V_DanhSachThanhVien]
As
Select * from THANHVIEN
GO
/****** Object:  UserDefinedFunction [dbo].[FC_TimThanhVienBangSDT]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Tim kiem thanh vien theo sdt
Create Function [dbo].[FC_TimThanhVienBangSDT](@SDT varchar(10))
Returns Table 
As
Return	Select * 
		From THANHVIEN 
		Where @SDT = SDT
GO
/****** Object:  UserDefinedFunction [dbo].[fn_TimKiemNhanVien]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Tim kiem nhan vien
CREATE   FUNCTION [dbo].[fn_TimKiemNhanVien]
(@keyword NVARCHAR(255))
RETURNS TABLE
AS
	return
    (SELECT nv.MaNV, nv.HoNV, nv.TenNV, nv.GioiTinh, nv.DiaChi, nv.SDT, nv.HeSoLuong, nv.NgayTD, cv.TenCV
    FROM NhanVien nv join CONGVIEC cv on nv.MaCV=cv.MaCV
    WHERE CONCAT(nv.MaNV, nv.SDT, cv.TenCV, nv.TenNV) LIKE CONCAT('%', @keyword, '%'))
GO
/****** Object:  Table [dbo].[BANGTHONGKETAICHINH]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BANGTHONGKETAICHINH](
	[MaGD] [int] NOT NULL,
	[LoaiGD] [nvarchar](10) NOT NULL,
	[NgayGD] [date] NOT NULL,
	[ThoiGian] [time](7) NOT NULL,
	[ChiTiet] [nvarchar](100) NULL,
	[SoTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[FC_ThongKeDoanhThuTheoNgay]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Thong ke doanh thu theo ngày
Create Function [dbo].[FC_ThongKeDoanhThuTheoNgay](@ngay int, @thang int, @nam int)
Returns Table 
As
	Return
	Select * 
	From BANGTHONGKETAICHINH
	Where DAY(NgayGD) = @ngay 
	and MONTH(NgayGD) = @thang
	and YEAR(NgayGD) = @nam
	and SoTien > 0
GO
/****** Object:  UserDefinedFunction [dbo].[FC_ThongKeDoanhThuTheoThang]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Thong ke doanh thu theo thang
Create Function [dbo].[FC_ThongKeDoanhThuTheoThang] (@thang int, @nam int)
Returns Table 
As
	Return
	Select * 
	From BANGTHONGKETAICHINH
	Where MONTH(NgayGD) = @thang
	and YEAR(NgayGD) = @nam
	and SoTien > 0
GO
/****** Object:  UserDefinedFunction [dbo].[FC_ThongKeDoanhThuTheoNam]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Thong ke doanh thu theo nam
Create Function [dbo].[FC_ThongKeDoanhThuTheoNam](@nam int)
Returns Table 
As
	Return
	Select * 
	From BANGTHONGKETAICHINH
	Where YEAR(NgayGD) = @nam
	and SoTien > 0
GO
/****** Object:  UserDefinedFunction [dbo].[FC_ThongKeChiPhiTheoThang]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--thong ke chi phi theo thang
Create Function [dbo].[FC_ThongKeChiPhiTheoThang] (@thang int, @nam int)
Returns Table 
As
	Return
	Select * 
	From BANGTHONGKETAICHINH
	Where MONTH(NgayGD) = @thang
	and YEAR(NgayGD) = @nam
	and SoTien < 0
GO
/****** Object:  UserDefinedFunction [dbo].[FC_ThongKeChiPhiTheoNam]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--thong ke chi phi theo nam
Create Function [dbo].[FC_ThongKeChiPhiTheoNam](@nam int)
Returns Table 
As
	Return
	Select * 
	From BANGTHONGKETAICHINH
	Where YEAR(NgayGD) = @nam
	and SoTien < 0
GO
/****** Object:  Table [dbo].[CA]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CA](
	[MaCa] [varchar](10) NOT NULL,
	[Ngay] [date] NOT NULL,
	[GioBD] [time](7) NOT NULL,
	[GioKT] [time](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCa] ASC,
	[Ngay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_CaLamViecTheoTuan]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Xem danh mục Ca làm việc
Create view [dbo].[V_CaLamViecTheoTuan]
As
Select MaCa, Ngay, DATENAME(DW, Ngay) as NgayTrongTuan
	From Ca
	Where DATEPART(ww, Ngay) = DATEPART(ww, CONVERT(DATE,GETDATE())) 
	and YEAR(Ngay) = YEAR(GETDATE())
GO
/****** Object:  View [dbo].[V_BangPhanCaTheoTuan]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Select * from V_BangPhanCaTheoTuan
--Xem danh mục bảng phân ca
Create   view [dbo].[V_BangPhanCaTheoTuan]
As
SELECT nv.MaNV, nv.HoNV, nv.TenNV, bpc.MaCa,
DATENAME(DW, Ngay) as NgayTrongTuan, bpc.Ngay
FROM BangPhanCa bpc, NhanVien nv
WHERE bpc.MaNV = nv.MaNV
	and DATEPART(ww, Ngay) = DATEPART(ww, GETDATE()) 
	and YEAR(Ngay) = YEAR(GETDATE())
GO
/****** Object:  UserDefinedFunction [dbo].[fc_TinhLuongNhanVien]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--select * from BANGPHANCA
CREATE   FUNCTION [dbo].[fc_TinhLuongNhanVien](@thang INT, @nam INT)
RETURNS TABLE
AS 
	RETURN 
	(SELECT nv.MaNV,nv.HoNV,nv.TenNV ,sctt.SoCa,
		(sctt.SoCa*cv.LuongCoBan*nv.HeSoLuong*4) + 
		CASE WHEN dbo.fc_DoanhThuTheoThang(@thang, @nam) > 100000000
		THEN dbo.fc_DoanhThuTheoThang(@thang, @nam)*0.03
		ELSE 0
		END AS Luong
	FROM (NhanVien nv JOIN CongViec cv ON nv.MaCV = cv.MaCV) join 
	(SELECT nv.MaNV, COUNT(*) AS SoCa, MONTH(bpc.Ngay) AS Thang, YEAR(bpc.Ngay) AS Nam
	FROM NHANVIEN nv JOIN BANGPHANCA bpc ON nv.MaNV = bpc.MaNV
	where MONTH(bpc.Ngay) = @thang and YEAR(bpc.Ngay) = @nam
	GROUP BY nv.MaNV, MONTH(bpc.Ngay), YEAR(bpc.Ngay)) sctt on nv.MaNV = sctt.MaNV
	)
GO
/****** Object:  Table [dbo].[CT_HOADON]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_HOADON](
	[MaHD] [varchar](10) NOT NULL,
	[MaSP] [varchar](10) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [float] NOT NULL,
	[ThanhTien] [float] NOT NULL,
	[GiaNhap] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_NHAPHANG]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_NHAPHANG](
	[MaSP] [varchar](10) NOT NULL,
	[MaDN] [varchar](10) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [float] NOT NULL,
	[ThanhTien] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[MaDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_SP_NCC]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_SP_NCC](
	[MaSP] [varchar](10) NOT NULL,
	[MaNCC] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_TG_SP]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_TG_SP](
	[MaTG] [varchar](10) NOT NULL,
	[MaSP] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTG] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAITHANHVIEN]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAITHANHVIEN](
	[MaLoaiTV] [varchar](10) NOT NULL,
	[TenLoaiTV] [nvarchar](30) NOT NULL,
	[PhanTramUuDai] [decimal](5, 2) NULL,
	[GTUuDaiToiDa] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TACGIA]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TACGIA](
	[MaTG] [varchar](10) NOT NULL,
	[TenTG] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[TenTK] [varchar](10) NOT NULL,
	[MatKhau] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[TenTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-05-01' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-05-02' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-05-03' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-05-04' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-05-05' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-05-06' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-05-07' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-05-08' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-05-09' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-05-10' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-05-11' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-05-12' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-05-13' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-05-14' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-05-15' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-05-16' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-05-17' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-05-18' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-05-19' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-05-20' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-05-21' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-05-22' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-05-23' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-05-24' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-05-25' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-05-26' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-05-27' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-05-28' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-05-29' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-05-30' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-05-31' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-06-01' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-06-02' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-06-03' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-06-04' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-06-05' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-06-06' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-06-07' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-06-08' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-06-09' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-06-10' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-06-11' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-06-12' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-06-13' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-06-14' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-06-15' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-06-17' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-06-18' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-06-19' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-06-20' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-06-21' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-06-22' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-06-23' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-06-24' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-06-25' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-06-26' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-06-27' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-06-28' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-06-29' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-06-30' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-07-01' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-07-02' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-07-03' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-07-04' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-07-05' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-07-06' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-07-07' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-07-08' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-07-09' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-07-10' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-07-11' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-07-12' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-07-13' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-07-14' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-07-15' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-07-16' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-07-17' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-07-18' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-07-19' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-07-20' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-07-21' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-07-22' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-07-23' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-07-24' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-07-25' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-07-26' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-07-27' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-07-28' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-07-29' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-07-30' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-07-31' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-08-01' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-08-02' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-08-03' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-08-04' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-08-05' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-08-06' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-08-07' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-08-08' AS Date))
GO
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-08-09' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-08-10' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-08-11' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-08-12' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-08-13' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-08-14' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-08-15' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-08-16' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-08-17' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-08-18' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-08-19' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-08-20' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-08-21' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-08-22' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-08-23' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-08-24' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-08-25' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-08-26' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-08-27' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-08-28' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-08-29' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-08-30' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-08-31' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-09-01' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-09-02' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-09-03' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-09-04' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-09-05' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-09-06' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-09-07' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-09-08' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-09-09' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-09-10' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-09-11' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-09-12' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-09-13' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-09-14' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-09-15' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-09-16' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-09-17' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-09-18' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-09-19' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-09-20' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-09-21' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-09-22' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-09-23' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-09-24' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-09-25' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-09-26' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-09-27' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-09-28' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-09-29' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-001', CAST(N'2023-09-30' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-05-01' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-05-02' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-05-03' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-05-04' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-05-05' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-05-06' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-05-07' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-05-08' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-05-09' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-05-10' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-05-11' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-05-12' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-05-13' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-05-14' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-05-15' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-05-16' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-05-17' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-05-18' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-05-19' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-05-20' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-05-21' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-05-22' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-05-23' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-05-24' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-05-25' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-05-26' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-05-27' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-05-28' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-05-29' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-05-30' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-05-31' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-06-01' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-06-02' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-06-03' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-06-04' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-06-05' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-06-06' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-06-07' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-06-08' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-06-09' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-06-10' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-06-11' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-06-12' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-06-13' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-06-14' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-06-15' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-06-16' AS Date))
GO
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-06-17' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-06-18' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-06-19' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-06-20' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-06-21' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-06-22' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-06-23' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-06-24' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-06-25' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-06-26' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-06-27' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-06-28' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-06-29' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-06-30' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-07-01' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-07-02' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-07-03' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-07-04' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-07-05' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-07-06' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-07-07' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-07-08' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-07-09' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-07-10' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-07-11' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-07-12' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-07-13' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-07-14' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-07-15' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-07-16' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-07-17' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-07-18' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-07-19' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-07-20' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-07-21' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-07-22' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-07-23' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-07-24' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-07-25' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-07-26' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-07-27' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-07-28' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-07-29' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-07-30' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-07-31' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-08-01' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-08-02' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-08-03' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-08-04' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-08-05' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-08-06' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-08-07' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-08-08' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-08-09' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-08-10' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-08-11' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-08-12' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-08-13' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-08-14' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-08-15' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-08-16' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-08-17' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-08-18' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-08-19' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-08-20' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-08-21' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-08-22' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-08-23' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-08-24' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-08-25' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-08-26' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-08-27' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-08-28' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-08-29' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-08-30' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-08-31' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-09-01' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-09-02' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-09-03' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-09-04' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-09-05' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-09-06' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-09-07' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-09-08' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-09-09' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-09-10' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-09-11' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-09-12' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-09-13' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-09-14' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-09-15' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-09-16' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-09-17' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-09-18' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-09-19' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-09-20' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-09-21' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-09-22' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-09-23' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-09-24' AS Date))
GO
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-09-25' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-09-26' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-09-27' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-09-28' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-09-29' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-002', CAST(N'2023-09-30' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-05-01' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-05-02' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-05-03' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-05-04' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-05-05' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-05-06' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-05-07' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-05-08' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-05-09' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-05-10' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-05-11' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-05-12' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-05-13' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-05-14' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-05-15' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-05-16' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-05-17' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-05-18' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-05-19' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-05-20' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-05-21' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-05-22' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-05-23' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-05-24' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-05-25' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-05-26' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-05-27' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-05-28' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-05-29' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-05-30' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-05-31' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-06-01' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-06-02' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-06-03' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-06-04' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-06-05' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-06-06' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-06-07' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-06-08' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-06-09' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-06-10' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-06-11' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-06-12' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-06-13' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-06-14' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-06-15' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-06-17' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-06-18' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-06-19' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-06-20' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-06-21' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-06-22' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-06-23' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-06-24' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-06-25' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-06-26' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-06-27' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-06-28' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-06-29' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-06-30' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-07-01' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-07-02' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-07-03' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-07-04' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-07-05' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-07-06' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-07-07' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-07-08' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-07-09' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-07-10' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-07-11' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-07-12' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-07-13' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-07-14' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-07-15' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-07-16' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-07-17' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-07-18' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-07-19' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-07-20' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-07-21' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-07-22' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-07-23' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-07-24' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-07-25' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-07-26' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-07-27' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-07-28' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-07-29' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-07-30' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-07-31' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-08-01' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-08-02' AS Date))
GO
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-08-03' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-08-04' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-08-05' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-08-06' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-08-07' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-08-08' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-08-09' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-08-10' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-08-11' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-08-12' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-08-13' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-08-14' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-08-15' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-08-16' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-08-17' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-08-18' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-08-19' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-08-20' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-08-21' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-08-22' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-08-23' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-08-24' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-08-25' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-08-26' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-08-27' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-08-28' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-08-29' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-08-30' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-08-31' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-09-01' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-09-02' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-09-03' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-09-04' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-09-05' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-09-06' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-09-07' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-09-08' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-09-09' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-09-10' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-09-11' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-09-12' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-09-13' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-09-14' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-09-15' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-09-16' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-09-17' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-09-18' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-09-19' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-09-20' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-09-21' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-09-22' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-09-23' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-09-24' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-09-25' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-09-26' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-09-27' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-09-28' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-09-29' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv002', N'ca-003', CAST(N'2023-09-30' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-05-01' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-05-02' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-05-03' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-05-08' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-05-09' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-05-10' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-05-15' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-05-16' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-05-17' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-05-22' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-05-23' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-05-24' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-05-29' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-05-30' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-05-31' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-06-05' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-06-06' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-06-07' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-06-12' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-06-13' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-06-14' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-06-19' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-06-20' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-06-21' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-06-26' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-06-27' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-06-28' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-07-03' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-07-04' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-07-05' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-07-10' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-07-11' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-07-12' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-07-17' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-07-18' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-07-19' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-07-24' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-07-25' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-07-26' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-07-31' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-08-01' AS Date))
GO
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-08-02' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-08-07' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-08-08' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-08-09' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-08-14' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-08-15' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-08-16' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-08-21' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-08-22' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-08-23' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-08-28' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-08-29' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-08-30' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-09-04' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-09-05' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-09-06' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-09-11' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-09-12' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-09-13' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-09-18' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-09-19' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-09-20' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-09-25' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-09-26' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-09-27' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-10-02' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-10-03' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-10-04' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-10-09' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-10-10' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-10-11' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-10-16' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-10-17' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-10-18' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-10-23' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-10-24' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-10-25' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-10-30' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-001', CAST(N'2023-10-31' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-05-05' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-05-06' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-05-07' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-05-12' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-05-13' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-05-14' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-05-19' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-05-20' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-05-21' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-05-26' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-05-27' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-05-28' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-06-02' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-06-03' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-06-04' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-06-09' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-06-10' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-06-11' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-06-17' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-06-18' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-06-23' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-06-24' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-06-25' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-06-30' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-07-01' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-07-02' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-07-07' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-07-08' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-07-09' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-07-14' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-07-15' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-07-16' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-07-21' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-07-22' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-07-23' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-07-28' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-07-29' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-07-30' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-08-04' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-08-05' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-08-06' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-08-11' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-08-12' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-08-13' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-08-18' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-08-19' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-08-20' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-08-25' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-08-26' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-08-27' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-09-01' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-09-02' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-09-03' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-09-08' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-09-09' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-09-10' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-09-15' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-09-16' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-09-17' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-09-22' AS Date))
GO
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-09-23' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-09-24' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-09-29' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-09-30' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-10-01' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-10-06' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-10-07' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-10-08' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-10-13' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-10-14' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-10-15' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-10-20' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-10-21' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-10-22' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-10-27' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-10-28' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv003', N'ca-003', CAST(N'2023-10-29' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-05-04' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-05-05' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-05-06' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-05-07' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-05-11' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-05-12' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-05-13' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-05-14' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-05-18' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-05-19' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-05-20' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-05-21' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-05-25' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-05-26' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-05-27' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-05-28' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-06-01' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-06-02' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-06-03' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-06-04' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-06-08' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-06-09' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-06-10' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-06-11' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-06-15' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-06-17' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-06-18' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-06-22' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-06-23' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-06-24' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-06-25' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-06-29' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-06-30' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-07-01' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-07-02' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-07-06' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-07-07' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-07-08' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-07-09' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-07-13' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-07-14' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-07-15' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-07-16' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-07-20' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-07-21' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-07-22' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-07-23' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-07-27' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-07-28' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-07-29' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-07-30' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-08-03' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-08-04' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-08-05' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-08-06' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-08-10' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-08-11' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-08-12' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-08-13' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-08-17' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-08-18' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-08-19' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-08-20' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-08-24' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-08-25' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-08-26' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-08-27' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-08-31' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-09-01' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-09-02' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-09-03' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-09-07' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-09-08' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-09-09' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-09-10' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-09-14' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-09-15' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-09-16' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-09-17' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-09-21' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-09-22' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-09-23' AS Date))
GO
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-09-24' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-09-28' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-09-29' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-09-30' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-10-01' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-10-05' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-10-06' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-10-07' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-10-08' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-10-12' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-10-13' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-10-14' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-10-15' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-10-19' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-10-20' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-10-21' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-10-22' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-10-26' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-10-27' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-10-28' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-001', CAST(N'2023-10-29' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-05-01' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-05-02' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-05-03' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-05-04' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-05-08' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-05-09' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-05-10' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-05-11' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-05-15' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-05-16' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-05-17' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-05-18' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-05-22' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-05-23' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-05-24' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-05-25' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-05-29' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-05-30' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-05-31' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-06-01' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-06-05' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-06-06' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-06-07' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-06-08' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-06-12' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-06-13' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-06-14' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-06-15' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-06-19' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-06-20' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-06-21' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-06-22' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-06-26' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-06-27' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-06-28' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-06-29' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-07-03' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-07-04' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-07-05' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-07-06' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-07-10' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-07-11' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-07-12' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-07-13' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-07-17' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-07-18' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-07-19' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-07-20' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-07-24' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-07-25' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-07-26' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-07-27' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-07-31' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-08-01' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-08-02' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-08-03' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-08-07' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-08-08' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-08-09' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-08-10' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-08-14' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-08-15' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-08-16' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-08-17' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-08-21' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-08-22' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-08-23' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-08-24' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-08-28' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-08-29' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-08-30' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-08-31' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-09-04' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-09-05' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-09-06' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-09-07' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-09-11' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-09-12' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-09-13' AS Date))
GO
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-09-14' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-09-18' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-09-19' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-09-20' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-09-21' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-09-25' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-09-26' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-09-27' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-09-28' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-10-02' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-10-03' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-10-04' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-10-05' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-10-09' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-10-10' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-10-11' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-10-12' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-10-16' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-10-17' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-10-18' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-10-19' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-10-23' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-10-24' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-10-25' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-10-26' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-10-30' AS Date))
INSERT [dbo].[BANGPHANCA] ([MaNV], [MaCa], [Ngay]) VALUES (N'nv004', N'ca-002', CAST(N'2023-10-31' AS Date))
GO
INSERT [dbo].[BANGTHONGKETAICHINH] ([MaGD], [LoaiGD], [NgayGD], [ThoiGian], [ChiTiet], [SoTien]) VALUES (1, N'Chi ra', CAST(N'2023-02-05' AS Date), CAST(N'08:45:00' AS Time), N'Chi ra cho đơn nhập dn-001', -3570000)
INSERT [dbo].[BANGTHONGKETAICHINH] ([MaGD], [LoaiGD], [NgayGD], [ThoiGian], [ChiTiet], [SoTien]) VALUES (2, N'Chi ra', CAST(N'2023-02-23' AS Date), CAST(N'07:45:00' AS Time), N'Chi ra cho đơn nhập dn-002', -2068500)
INSERT [dbo].[BANGTHONGKETAICHINH] ([MaGD], [LoaiGD], [NgayGD], [ThoiGian], [ChiTiet], [SoTien]) VALUES (3, N'Thu vào', CAST(N'2023-05-02' AS Date), CAST(N'09:36:00' AS Time), N'Thanh toán cho hóa đơn hd-001', 56000)
INSERT [dbo].[BANGTHONGKETAICHINH] ([MaGD], [LoaiGD], [NgayGD], [ThoiGian], [ChiTiet], [SoTien]) VALUES (4, N'Thu vào', CAST(N'2023-05-10' AS Date), CAST(N'10:36:00' AS Time), N'Thanh toán cho hóa đơn hd-002', 206040)
INSERT [dbo].[BANGTHONGKETAICHINH] ([MaGD], [LoaiGD], [NgayGD], [ThoiGian], [ChiTiet], [SoTien]) VALUES (5, N'Thu vào', CAST(N'2023-11-18' AS Date), CAST(N'11:52:26' AS Time), N'Thanh toán cho hóa đơn hd007', 40605)
GO
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-05-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-05-02' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-05-03' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-05-04' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-05-05' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-05-06' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-05-07' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-05-08' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-05-09' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-05-10' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-05-11' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-05-12' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-05-13' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-05-14' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-05-15' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-05-16' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-05-17' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-05-18' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-05-19' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-05-20' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-05-21' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-05-22' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-05-23' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-05-24' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-05-25' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-05-26' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-05-27' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-05-28' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-05-29' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-05-30' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-05-31' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-06-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-06-02' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-06-03' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-06-04' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-06-05' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-06-06' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-06-07' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-06-08' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-06-09' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-06-10' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-06-11' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-06-12' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-06-13' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-06-14' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-06-15' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-06-16' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-06-17' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-06-18' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-06-19' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-06-20' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-06-21' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-06-22' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-06-23' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-06-24' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-06-25' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-06-26' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-06-27' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-06-28' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-06-29' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-06-30' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-07-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-07-02' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-07-03' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-07-04' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-07-05' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-07-06' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-07-07' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-07-08' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-07-09' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-07-10' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-07-11' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-07-12' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-07-13' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-07-14' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-07-15' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-07-16' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-07-17' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-07-18' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-07-19' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-07-20' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-07-21' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-07-22' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-07-23' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-07-24' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-07-25' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-07-26' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-07-27' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-07-28' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-07-29' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-07-30' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-07-31' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-08-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-08-02' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-08-03' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-08-04' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-08-05' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-08-06' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-08-07' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-08-08' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
GO
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-08-09' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-08-10' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-08-11' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-08-12' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-08-13' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-08-14' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-08-15' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-08-16' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-08-17' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-08-18' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-08-19' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-08-20' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-08-21' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-08-22' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-08-23' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-08-24' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-08-25' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-08-26' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-08-27' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-08-28' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-08-29' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-08-30' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-08-31' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-09-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-09-02' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-09-03' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-09-04' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-09-05' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-09-06' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-09-07' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-09-08' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-09-09' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-09-10' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-09-11' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-09-12' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-09-13' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-09-14' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-09-15' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-09-16' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-09-17' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-09-18' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-09-19' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-09-20' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-09-21' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-09-22' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-09-23' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-09-24' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-09-25' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-09-26' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-09-27' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-09-28' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-09-29' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-09-30' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-10-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-10-02' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-10-03' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-10-04' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-10-05' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-10-06' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-10-07' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-10-08' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-10-09' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-10-10' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-10-11' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-10-12' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-10-13' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-10-14' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-10-15' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-10-16' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-10-17' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-10-18' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-10-19' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-10-20' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-10-21' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-10-22' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-10-23' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-10-24' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-10-25' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-10-26' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-10-27' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-10-28' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-10-29' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-10-30' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-001', CAST(N'2023-10-31' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-05-01' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-05-02' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-05-03' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-05-04' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-05-05' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-05-06' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-05-07' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-05-08' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-05-09' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-05-10' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-05-11' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-05-12' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-05-13' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-05-14' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-05-15' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-05-16' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
GO
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-05-17' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-05-18' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-05-19' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-05-20' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-05-21' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-05-22' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-05-23' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-05-24' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-05-25' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-05-26' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-05-27' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-05-28' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-05-29' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-05-30' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-05-31' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-06-01' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-06-02' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-06-03' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-06-04' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-06-05' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-06-06' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-06-07' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-06-08' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-06-09' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-06-10' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-06-11' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-06-12' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-06-13' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-06-14' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-06-15' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-06-16' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-06-17' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-06-18' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-06-19' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-06-20' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-06-21' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-06-22' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-06-23' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-06-24' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-06-25' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-06-26' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-06-27' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-06-28' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-06-29' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-06-30' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-07-01' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-07-02' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-07-03' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-07-04' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-07-05' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-07-06' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-07-07' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-07-08' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-07-09' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-07-10' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-07-11' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-07-12' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-07-13' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-07-14' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-07-15' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-07-16' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-07-17' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-07-18' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-07-19' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-07-20' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-07-21' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-07-22' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-07-23' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-07-24' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-07-25' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-07-26' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-07-27' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-07-28' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-07-29' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-07-30' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-07-31' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-08-01' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-08-02' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-08-03' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-08-04' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-08-05' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-08-06' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-08-07' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-08-08' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-08-09' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-08-10' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-08-11' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-08-12' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-08-13' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-08-14' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-08-15' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-08-16' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-08-17' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-08-18' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-08-19' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-08-20' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-08-21' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-08-22' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-08-23' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-08-24' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
GO
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-08-25' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-08-26' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-08-27' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-08-28' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-08-29' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-08-30' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-08-31' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-09-01' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-09-02' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-09-03' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-09-04' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-09-05' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-09-06' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-09-07' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-09-08' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-09-09' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-09-10' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-09-11' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-09-12' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-09-13' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-09-14' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-09-15' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-09-16' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-09-17' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-09-18' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-09-19' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-09-20' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-09-21' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-09-22' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-09-23' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-09-24' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-09-25' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-09-26' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-09-27' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-09-28' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-09-29' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-09-30' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-10-01' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-10-02' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-10-03' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-10-04' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-10-05' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-10-06' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-10-07' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-10-08' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-10-09' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-10-10' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-10-11' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-10-12' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-10-13' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-10-14' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-10-15' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-10-16' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-10-17' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-10-18' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-10-19' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-10-20' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-10-21' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-10-22' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-10-23' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-10-24' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-10-25' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-10-26' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-10-27' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-10-28' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-10-29' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-10-30' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-002', CAST(N'2023-10-31' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-05-01' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-05-02' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-05-03' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-05-04' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-05-05' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-05-06' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-05-07' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-05-08' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-05-09' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-05-10' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-05-11' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-05-12' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-05-13' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-05-14' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-05-15' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-05-16' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-05-17' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-05-18' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-05-19' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-05-20' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-05-21' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-05-22' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-05-23' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-05-24' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-05-25' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-05-26' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-05-27' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-05-28' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-05-29' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-05-30' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-05-31' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-06-01' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
GO
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-06-02' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-06-03' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-06-04' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-06-05' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-06-06' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-06-07' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-06-08' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-06-09' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-06-10' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-06-11' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-06-12' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-06-13' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-06-14' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-06-15' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-06-16' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-06-17' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-06-18' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-06-19' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-06-20' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-06-21' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-06-22' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-06-23' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-06-24' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-06-25' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-06-26' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-06-27' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-06-28' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-06-29' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-06-30' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-07-01' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-07-02' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-07-03' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-07-04' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-07-05' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-07-06' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-07-07' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-07-08' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-07-09' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-07-10' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-07-11' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-07-12' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-07-13' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-07-14' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-07-15' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-07-16' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-07-17' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-07-18' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-07-19' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-07-20' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-07-21' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-07-22' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-07-23' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-07-24' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-07-25' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-07-26' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-07-27' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-07-28' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-07-29' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-07-30' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-07-31' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-08-01' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-08-02' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-08-03' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-08-04' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-08-05' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-08-06' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-08-07' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-08-08' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-08-09' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-08-10' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-08-11' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-08-12' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-08-13' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-08-14' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-08-15' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-08-16' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-08-17' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-08-18' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-08-19' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-08-20' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-08-21' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-08-22' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-08-23' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-08-24' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-08-25' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-08-26' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-08-27' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-08-28' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-08-29' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-08-30' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-08-31' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-09-01' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-09-02' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-09-03' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-09-04' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-09-05' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-09-06' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-09-07' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-09-08' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-09-09' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
GO
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-09-10' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-09-11' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-09-12' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-09-13' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-09-14' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-09-15' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-09-16' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-09-17' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-09-18' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-09-19' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-09-20' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-09-21' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-09-22' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-09-23' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-09-24' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-09-25' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-09-26' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-09-27' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-09-28' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-09-29' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-09-30' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-10-01' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-10-02' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-10-03' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-10-04' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-10-05' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-10-06' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-10-07' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-10-08' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-10-09' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-10-10' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-10-11' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-10-12' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-10-13' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-10-14' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-10-15' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-10-16' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-10-17' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-10-18' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-10-19' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-10-20' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-10-21' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-10-22' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-10-23' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-10-24' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-10-25' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-10-26' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-10-27' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-10-28' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-10-29' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-10-30' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[CA] ([MaCa], [Ngay], [GioBD], [GioKT]) VALUES (N'ca-003', CAST(N'2023-10-31' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time))
GO
INSERT [dbo].[CONGVIEC] ([MaCV], [TenCV], [LuongCoBan]) VALUES (N'cv-001', N'Quản lý văn phòng phẩm', 30000)
INSERT [dbo].[CONGVIEC] ([MaCV], [TenCV], [LuongCoBan]) VALUES (N'cv-002', N'Thủ kho', 28000)
INSERT [dbo].[CONGVIEC] ([MaCV], [TenCV], [LuongCoBan]) VALUES (N'cv-003', N'Nhân viên bán hàng', 25000)
GO
INSERT [dbo].[CT_HOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien], [GiaNhap]) VALUES (N'hd-001', N'sp-001', 2, 15000, 30000, 12500)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien], [GiaNhap]) VALUES (N'hd-001', N'sp-007', 2, 13000, 26000, 10700)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien], [GiaNhap]) VALUES (N'hd-002', N'sp-006', 3, 7000, 21000, 4500)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien], [GiaNhap]) VALUES (N'hd-002', N'sp-010', 1, 78000, 78000, 59500)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien], [GiaNhap]) VALUES (N'hd-002', N'sp-011', 1, 105000, 105000, 93900)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien], [GiaNhap]) VALUES (N'hd007', N'sp-007', 3, 13000, 39000, 10700)
GO
INSERT [dbo].[CT_NHAPHANG] ([MaSP], [MaDN], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'sp-001', N'dn-001', 50, 12500, 625000)
INSERT [dbo].[CT_NHAPHANG] ([MaSP], [MaDN], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'sp-002', N'dn-001', 50, 13500, 675000)
INSERT [dbo].[CT_NHAPHANG] ([MaSP], [MaDN], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'sp-003', N'dn-001', 50, 21500, 1075000)
INSERT [dbo].[CT_NHAPHANG] ([MaSP], [MaDN], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'sp-004', N'dn-001', 50, 20500, 1025000)
INSERT [dbo].[CT_NHAPHANG] ([MaSP], [MaDN], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'sp-005', N'dn-002', 200, 2800, 560000)
INSERT [dbo].[CT_NHAPHANG] ([MaSP], [MaDN], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'sp-007', N'dn-002', 100, 10700, 1070000)
INSERT [dbo].[CT_NHAPHANG] ([MaSP], [MaDN], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'sp-008', N'dn-002', 100, 3400, 340000)
GO
INSERT [dbo].[CT_SP_NCC] ([MaSP], [MaNCC]) VALUES (N'sp-001', 1)
INSERT [dbo].[CT_SP_NCC] ([MaSP], [MaNCC]) VALUES (N'sp-002', 1)
INSERT [dbo].[CT_SP_NCC] ([MaSP], [MaNCC]) VALUES (N'sp-003', 1)
INSERT [dbo].[CT_SP_NCC] ([MaSP], [MaNCC]) VALUES (N'sp-004', 1)
INSERT [dbo].[CT_SP_NCC] ([MaSP], [MaNCC]) VALUES (N'sp-005', 2)
INSERT [dbo].[CT_SP_NCC] ([MaSP], [MaNCC]) VALUES (N'sp-006', 2)
INSERT [dbo].[CT_SP_NCC] ([MaSP], [MaNCC]) VALUES (N'sp-007', 2)
INSERT [dbo].[CT_SP_NCC] ([MaSP], [MaNCC]) VALUES (N'sp-008', 2)
INSERT [dbo].[CT_SP_NCC] ([MaSP], [MaNCC]) VALUES (N'sp-009', 2)
INSERT [dbo].[CT_SP_NCC] ([MaSP], [MaNCC]) VALUES (N'sp-010', 3)
INSERT [dbo].[CT_SP_NCC] ([MaSP], [MaNCC]) VALUES (N'sp-011', 3)
GO
INSERT [dbo].[DONNHAP] ([MaDN], [NgayNhap], [ThoiGian], [TongGT], [MaNCC], [MaNV]) VALUES (N'dn-001', CAST(N'2023-02-05' AS Date), CAST(N'08:45:00' AS Time), 3570000, 1, NULL)
INSERT [dbo].[DONNHAP] ([MaDN], [NgayNhap], [ThoiGian], [TongGT], [MaNCC], [MaNV]) VALUES (N'dn-002', CAST(N'2023-02-23' AS Date), CAST(N'07:45:00' AS Time), 2068500, 2, NULL)
GO
INSERT [dbo].[HOADON] ([MaHD], [NgayLap], [ThoiGian], [TongThanhToan], [MaNV], [MaTV]) VALUES (N'hd-001', CAST(N'2023-05-02' AS Date), CAST(N'09:36:00' AS Time), 56000, N'nv003', NULL)
INSERT [dbo].[HOADON] ([MaHD], [NgayLap], [ThoiGian], [TongThanhToan], [MaNV], [MaTV]) VALUES (N'hd-002', CAST(N'2023-05-10' AS Date), CAST(N'10:36:00' AS Time), 206040, N'nv004', N'tv-003')
INSERT [dbo].[HOADON] ([MaHD], [NgayLap], [ThoiGian], [TongThanhToan], [MaNV], [MaTV]) VALUES (N'hd007', CAST(N'2023-11-18' AS Date), CAST(N'11:52:26' AS Time), 40605, N'nv003', NULL)
GO
INSERT [dbo].[KHUVUC] ([MaKV], [TenKV], [ChiTietKhuVuc]) VALUES (N'kv-001', N'KHU A', NULL)
INSERT [dbo].[KHUVUC] ([MaKV], [TenKV], [ChiTietKhuVuc]) VALUES (N'kv-002', N'KHU B', NULL)
INSERT [dbo].[KHUVUC] ([MaKV], [TenKV], [ChiTietKhuVuc]) VALUES (N'kv-003', N'KHU C', NULL)
GO
INSERT [dbo].[LOAISANPHAM] ([MaLoaiSP], [TenLoaiSP], [MaKV]) VALUES (N'lsp-001', N'Sách giáo khoa', N'kv-001')
INSERT [dbo].[LOAISANPHAM] ([MaLoaiSP], [TenLoaiSP], [MaKV]) VALUES (N'lsp-002', N'Sách thiếu nhi', N'kv-001')
INSERT [dbo].[LOAISANPHAM] ([MaLoaiSP], [TenLoaiSP], [MaKV]) VALUES (N'lsp-003', N'Bút bi', N'kv-002')
INSERT [dbo].[LOAISANPHAM] ([MaLoaiSP], [TenLoaiSP], [MaKV]) VALUES (N'lsp-004', N'Bút chì', N'kv-002')
INSERT [dbo].[LOAISANPHAM] ([MaLoaiSP], [TenLoaiSP], [MaKV]) VALUES (N'lsp-005', N'Dụng cụ', N'kv-003')
GO
INSERT [dbo].[LOAITHANHVIEN] ([MaLoaiTV], [TenLoaiTV], [PhanTramUuDai], [GTUuDaiToiDa]) VALUES (N'ltv-001', N'Vàng', CAST(7.00 AS Decimal(5, 2)), 200)
INSERT [dbo].[LOAITHANHVIEN] ([MaLoaiTV], [TenLoaiTV], [PhanTramUuDai], [GTUuDaiToiDa]) VALUES (N'ltv-002', N'Bạc', CAST(4.00 AS Decimal(5, 2)), 100)
INSERT [dbo].[LOAITHANHVIEN] ([MaLoaiTV], [TenLoaiTV], [PhanTramUuDai], [GTUuDaiToiDa]) VALUES (N'ltv-003', N'Đồng', CAST(2.00 AS Decimal(5, 2)), 100)
GO
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [SDT], [DiaChi]) VALUES (1, N'NPP Hải Đăng', N'0532432278', NULL)
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [SDT], [DiaChi]) VALUES (2, N'NPP Như Hoa', N'0535462278', NULL)
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [SDT], [DiaChi]) VALUES (3, N'NPP Độc Lập', N'0537445235', NULL)
GO
INSERT [dbo].[NHANVIEN] ([MaNV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [NgayTD], [HeSoLuong], [MaCV]) VALUES (N'nv001', N'Trần Văn', N'A', CAST(N'1997-03-10' AS Date), N'Nam', N'Q.2, TP. HCM', N'0987896374', CAST(N'2020-03-01' AS Date), 1.3, N'cv-002')
INSERT [dbo].[NHANVIEN] ([MaNV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [NgayTD], [HeSoLuong], [MaCV]) VALUES (N'nv002', N'Nguyễn Thị', N'B', CAST(N'1992-04-23' AS Date), N'Nữ', N'Q.1, TP. HCM', N'0749674955', CAST(N'2020-03-01' AS Date), 1.5, N'cv-001')
INSERT [dbo].[NHANVIEN] ([MaNV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [NgayTD], [HeSoLuong], [MaCV]) VALUES (N'nv003', N'Lương Văn', N'C', CAST(N'1999-10-12' AS Date), N'Nam', N'Q.2, TP. HCM', N'0789884657', CAST(N'2022-01-01' AS Date), 1.1, N'cv-003')
INSERT [dbo].[NHANVIEN] ([MaNV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [NgayTD], [HeSoLuong], [MaCV]) VALUES (N'nv004', N'Nguyễn ', N'D', CAST(N'1997-03-10' AS Date), N'Nữ', N'Q.2, TP. HCM', N'0452374849', CAST(N'2021-02-01' AS Date), 1.2, N'cv-003')
INSERT [dbo].[NHANVIEN] ([MaNV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [NgayTD], [HeSoLuong], [MaCV]) VALUES (N'nv005', N'Trịnh Thị', N'E', CAST(N'1997-06-26' AS Date), N'Nữ', N'Q.2, TP. HCM', N'0942684689', CAST(N'2021-02-01' AS Date), 1.2, N'cv-003')
GO
INSERT [dbo].[NSX] ([MaNSX], [TenNSX], [SDT], [DiaChi]) VALUES (1, N'NSX Bút Thiên Long', N'0648586735', NULL)
INSERT [dbo].[NSX] ([MaNSX], [TenNSX], [SDT], [DiaChi]) VALUES (2, N'NSX Dụng cụ học tập Việt lộc', N'0548736403', NULL)
INSERT [dbo].[NSX] ([MaNSX], [TenNSX], [SDT], [DiaChi]) VALUES (3, N'NXB Giáo Dục Hà Nội', N'0645848675', NULL)
INSERT [dbo].[NSX] ([MaNSX], [TenNSX], [SDT], [DiaChi]) VALUES (4, N'NXB Lan Phương', N'0626547325', NULL)
GO
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonViTinh], [GiaBan], [GiaNhap], [SoLuong], [MaLoaiSP], [MaNSX]) VALUES (N'sp-001', N'Toán 1 tập 1', N'quyển', 15000, 12500, 148, N'lsp-001', 3)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonViTinh], [GiaBan], [GiaNhap], [SoLuong], [MaLoaiSP], [MaNSX]) VALUES (N'sp-002', N'Toán 1 tập 2', N'quyển', 16000, 13500, 150, N'lsp-001', 3)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonViTinh], [GiaBan], [GiaNhap], [SoLuong], [MaLoaiSP], [MaNSX]) VALUES (N'sp-003', N'Tiếng Việt 1 tập 1', N'quyển', 26000, 21500, 150, N'lsp-001', 3)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonViTinh], [GiaBan], [GiaNhap], [SoLuong], [MaLoaiSP], [MaNSX]) VALUES (N'sp-004', N'Tiếng Việt 1 tập 2', N'quyển', 25500, 20500, 150, N'lsp-001', 3)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonViTinh], [GiaBan], [GiaNhap], [SoLuong], [MaLoaiSP], [MaNSX]) VALUES (N'sp-005', N'Bút bi Thiên Long', N'cái', 4000, 2800, 300, N'lsp-003', 1)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonViTinh], [GiaBan], [GiaNhap], [SoLuong], [MaLoaiSP], [MaNSX]) VALUES (N'sp-006', N'Bút mực gel Thiên Long', N'cái', 7000, 4500, 97, N'lsp-002', 1)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonViTinh], [GiaBan], [GiaNhap], [SoLuong], [MaLoaiSP], [MaNSX]) VALUES (N'sp-007', N'Bút chì kim Việt Lộc', N'cái', 13000, 10700, 195, N'lsp-004', 2)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonViTinh], [GiaBan], [GiaNhap], [SoLuong], [MaLoaiSP], [MaNSX]) VALUES (N'sp-008', N'Thước kẻ VLL', N'cái', 5000, 3400, 200, N'lsp-005', 2)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonViTinh], [GiaBan], [GiaNhap], [SoLuong], [MaLoaiSP], [MaNSX]) VALUES (N'sp-009', N'Tẩy VLL', N'cái', 6000, 3700, 100, N'lsp-005', 2)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonViTinh], [GiaBan], [GiaNhap], [SoLuong], [MaLoaiSP], [MaNSX]) VALUES (N'sp-010', N'Ngày mai', N'quyển', 78000, 59500, 99, N'lsp-001', 4)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonViTinh], [GiaBan], [GiaNhap], [SoLuong], [MaLoaiSP], [MaNSX]) VALUES (N'sp-011', N'Nhiều tiền để làm gì?', N'quyển', 105000, 93900, 99, N'lsp-001', 4)
GO
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'tg-001', N'Thi Hoa')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'tg-002', N'Nguy?n Nh?t Ánh')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'tg-003', N'Lam')
GO
INSERT [dbo].[TAIKHOAN] ([TenTK], [MatKhau]) VALUES (N'nv001', N'1')
INSERT [dbo].[TAIKHOAN] ([TenTK], [MatKhau]) VALUES (N'nv002', N'1')
INSERT [dbo].[TAIKHOAN] ([TenTK], [MatKhau]) VALUES (N'nv003', N'1')
INSERT [dbo].[TAIKHOAN] ([TenTK], [MatKhau]) VALUES (N'nv004', N'1')
INSERT [dbo].[TAIKHOAN] ([TenTK], [MatKhau]) VALUES (N'nv005', N'1')
GO
INSERT [dbo].[THANHVIEN] ([MaTV], [HoTV], [TenTV], [SDT], [DiaChi], [DiemTichLuy], [MaLoaiTV]) VALUES (N'tv-001', N'Nguyễn Mai', N'A', N'0847783645', NULL, 4, N'ltv-003')
INSERT [dbo].[THANHVIEN] ([MaTV], [HoTV], [TenTV], [SDT], [DiaChi], [DiemTichLuy], [MaLoaiTV]) VALUES (N'tv-002', N'Nguyễn Quốc', N'B', N'0844467535', NULL, 14, N'ltv-002')
INSERT [dbo].[THANHVIEN] ([MaTV], [HoTV], [TenTV], [SDT], [DiaChi], [DiemTichLuy], [MaLoaiTV]) VALUES (N'tv-003', N'Trương Lan', N'C', N'0847467645', NULL, 31, N'ltv-001')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__LOAISANP__F434DB49F0EAA253]    Script Date: 12/29/2023 10:55:16 AM ******/
ALTER TABLE [dbo].[LOAISANPHAM] ADD UNIQUE NONCLUSTERED 
(
	[TenLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__LOAITHAN__F4348CA96A2B3C6E]    Script Date: 12/29/2023 10:55:16 AM ******/
ALTER TABLE [dbo].[LOAITHANHVIEN] ADD UNIQUE NONCLUSTERED 
(
	[TenLoaiTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NCC__CA1930A567E95F8A]    Script Date: 12/29/2023 10:55:16 AM ******/
ALTER TABLE [dbo].[NCC] ADD UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NCC__CCE06C52E39BD211]    Script Date: 12/29/2023 10:55:16 AM ******/
ALTER TABLE [dbo].[NCC] ADD UNIQUE NONCLUSTERED 
(
	[TenNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NHANVIEN__CA1930A52EE2C3FC]    Script Date: 12/29/2023 10:55:16 AM ******/
ALTER TABLE [dbo].[NHANVIEN] ADD UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NSX__CA1930A5524C9585]    Script Date: 12/29/2023 10:55:16 AM ******/
ALTER TABLE [dbo].[NSX] ADD UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NSX__CCE3EE4905A005A5]    Script Date: 12/29/2023 10:55:16 AM ******/
ALTER TABLE [dbo].[NSX] ADD UNIQUE NONCLUSTERED 
(
	[TenNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__THANHVIE__CA1930A59C064164]    Script Date: 12/29/2023 10:55:16 AM ******/
ALTER TABLE [dbo].[THANHVIEN] ADD UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BANGPHANCA]  WITH CHECK ADD  CONSTRAINT [FK_BPC_CA] FOREIGN KEY([MaCa], [Ngay])
REFERENCES [dbo].[CA] ([MaCa], [Ngay])
GO
ALTER TABLE [dbo].[BANGPHANCA] CHECK CONSTRAINT [FK_BPC_CA]
GO
ALTER TABLE [dbo].[BANGPHANCA]  WITH CHECK ADD  CONSTRAINT [FK_BPC_NV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[BANGPHANCA] CHECK CONSTRAINT [FK_BPC_NV]
GO
ALTER TABLE [dbo].[CT_HOADON]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_HD] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HOADON] ([MaHD])
GO
ALTER TABLE [dbo].[CT_HOADON] CHECK CONSTRAINT [FK_CTHD_HD]
GO
ALTER TABLE [dbo].[CT_HOADON]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_SP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[CT_HOADON] CHECK CONSTRAINT [FK_CTHD_SP]
GO
ALTER TABLE [dbo].[CT_NHAPHANG]  WITH CHECK ADD  CONSTRAINT [FK_CTNH_DN] FOREIGN KEY([MaDN])
REFERENCES [dbo].[DONNHAP] ([MaDN])
GO
ALTER TABLE [dbo].[CT_NHAPHANG] CHECK CONSTRAINT [FK_CTNH_DN]
GO
ALTER TABLE [dbo].[CT_NHAPHANG]  WITH CHECK ADD  CONSTRAINT [FK_CTNH_SP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[CT_NHAPHANG] CHECK CONSTRAINT [FK_CTNH_SP]
GO
ALTER TABLE [dbo].[CT_SP_NCC]  WITH CHECK ADD  CONSTRAINT [FK_CTSPNCC_NCC] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NCC] ([MaNCC])
GO
ALTER TABLE [dbo].[CT_SP_NCC] CHECK CONSTRAINT [FK_CTSPNCC_NCC]
GO
ALTER TABLE [dbo].[CT_SP_NCC]  WITH CHECK ADD  CONSTRAINT [FK_CTSPNCC_SP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[CT_SP_NCC] CHECK CONSTRAINT [FK_CTSPNCC_SP]
GO
ALTER TABLE [dbo].[CT_TG_SP]  WITH CHECK ADD  CONSTRAINT [FK_CTTGSP_SP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[CT_TG_SP] CHECK CONSTRAINT [FK_CTTGSP_SP]
GO
ALTER TABLE [dbo].[CT_TG_SP]  WITH CHECK ADD  CONSTRAINT [FK_CTTGSP_TG] FOREIGN KEY([MaTG])
REFERENCES [dbo].[TACGIA] ([MaTG])
GO
ALTER TABLE [dbo].[CT_TG_SP] CHECK CONSTRAINT [FK_CTTGSP_TG]
GO
ALTER TABLE [dbo].[DONNHAP]  WITH CHECK ADD  CONSTRAINT [FK_DN_NCC] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NCC] ([MaNCC])
GO
ALTER TABLE [dbo].[DONNHAP] CHECK CONSTRAINT [FK_DN_NCC]
GO
ALTER TABLE [dbo].[DONNHAP]  WITH CHECK ADD  CONSTRAINT [FK_DN_NV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[DONNHAP] CHECK CONSTRAINT [FK_DN_NV]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HD_NV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HD_NV]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HD_TV] FOREIGN KEY([MaTV])
REFERENCES [dbo].[THANHVIEN] ([MaTV])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HD_TV]
GO
ALTER TABLE [dbo].[LOAISANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_LSP_KV] FOREIGN KEY([MaKV])
REFERENCES [dbo].[KHUVUC] ([MaKV])
GO
ALTER TABLE [dbo].[LOAISANPHAM] CHECK CONSTRAINT [FK_LSP_KV]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NV_CV] FOREIGN KEY([MaCV])
REFERENCES [dbo].[CONGVIEC] ([MaCV])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NV_CV]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NSX] ([MaNSX])
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SP_LSP] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LOAISANPHAM] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SP_LSP]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD FOREIGN KEY([TenTK])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[THANHVIEN]  WITH CHECK ADD  CONSTRAINT [FK_TV_LTV] FOREIGN KEY([MaLoaiTV])
REFERENCES [dbo].[LOAITHANHVIEN] ([MaLoaiTV])
GO
ALTER TABLE [dbo].[THANHVIEN] CHECK CONSTRAINT [FK_TV_LTV]
GO
ALTER TABLE [dbo].[BANGTHONGKETAICHINH]  WITH CHECK ADD CHECK  (([NgayGD]<=CONVERT([date],getdate())))
GO
ALTER TABLE [dbo].[CT_HOADON]  WITH CHECK ADD CHECK  (([DonGia]>(0)))
GO
ALTER TABLE [dbo].[CT_HOADON]  WITH CHECK ADD CHECK  (([GiaNHap]>(0)))
GO
ALTER TABLE [dbo].[CT_HOADON]  WITH CHECK ADD CHECK  (([SoLuong]>(0)))
GO
ALTER TABLE [dbo].[CT_HOADON]  WITH CHECK ADD CHECK  (([ThanhTien]>(0)))
GO
ALTER TABLE [dbo].[CT_NHAPHANG]  WITH CHECK ADD CHECK  (([DonGia]>(0)))
GO
ALTER TABLE [dbo].[CT_NHAPHANG]  WITH CHECK ADD CHECK  (([SoLuong]>(0)))
GO
ALTER TABLE [dbo].[CT_NHAPHANG]  WITH CHECK ADD CHECK  (([ThanhTien]>(0)))
GO
ALTER TABLE [dbo].[DONNHAP]  WITH CHECK ADD CHECK  (([NgayNhap]<=CONVERT([date],getdate())))
GO
ALTER TABLE [dbo].[DONNHAP]  WITH CHECK ADD CHECK  (([TongGT]>(0)))
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD CHECK  (([NgayLap]<=CONVERT([date],getdate())))
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD CHECK  (([TongThanhToan]>(0)))
GO
ALTER TABLE [dbo].[NCC]  WITH CHECK ADD CHECK  ((len([SDT])=(10)))
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD CHECK  (([HeSoLuong]>=(0.8)))
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD CHECK  (([NgayTD]<=CONVERT([date],getdate())))
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD CHECK  ((len([SDT])=(10)))
GO
ALTER TABLE [dbo].[NSX]  WITH CHECK ADD CHECK  ((len([SDT])=(10)))
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [CHK_GiaBan_GiaNhap] CHECK  (([GiaBan]>=[GiaNhap]))
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [CHK_GiaBan_GiaNhap]
GO
ALTER TABLE [dbo].[THANHVIEN]  WITH CHECK ADD CHECK  (([DiemTichLuy]>=(0)))
GO
ALTER TABLE [dbo].[THANHVIEN]  WITH CHECK ADD CHECK  ((len([SDT])=(10)))
GO
/****** Object:  StoredProcedure [dbo].[proc_AddCTHoaDon]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--execute proc_TaoHoaDon '1', '2023-11-2', '8:20:00', 235600, 'nv-001', null
--delete from HOADON where MaHD = '2'
--delete from CT_HOADON where MaHD = '2'
--select * from BangThongKeTaiChinh
--delete from BangThongKeTaiChinh where NgayGD = '2023-11-02'
--select * from HoaDon
--select * from CT_HOADON
--Add san pham vao CT_HOADON
Create Procedure [dbo].[proc_AddCTHoaDon]
	@MaHD varchar(10),
	@MaSP varchar(10),
	@SoLuong int, 
	@DonGia float, 
	@ThanhTien float, 
	@GiaNhap float
As
Begin
	Insert into CT_HOADON
	Values(@MaHD, @MaSP, @SoLuong, @DonGia, @ThanhTien, @GiaNhap)
End;
GO
/****** Object:  StoredProcedure [dbo].[proc_PhanCa]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--================================================================================
--QUAN LI PHAN CA
CREATE   PROC [dbo].[proc_PhanCa]
@manv varchar(10),
@maca varchar(10),
@ngay date
AS
BEGIN
	BEGIN TRANSACTION
	BEGIN TRY
		If ((NOT EXISTS (SELECT * FROM BANGPHANCA WHERE MaNV = @manv and MaCa = @maca and Ngay = @ngay)))
		Begin
			If ((NOT EXISTS (SELECT * FROM CA WHERE MaCa = @maca and Ngay = @ngay)))
			Begin
				If (@maca = 'ca-001')
				Begin
					Insert into CA
					Values(@maca, @ngay, '8:00', '12:00')
				End

				If (@maca = 'ca-002')
				Begin
					Insert into CA
					Values(@maca, @ngay, '12:00', '16:00')
				End

				If (@maca = 'ca-003')
				Begin
					Insert into CA
					Values(@maca, @ngay, '16:00', '20:00')
				End
			End
			INSERT INTO BangPhanCa
			VALUES(@manv, @maca, @ngay)
		End
	END TRY
	BEGIN CATCH
		DECLARE @err NVARCHAR(MAX)
		SELECT @err = N'Lỗi ' + ERROR_MESSAGE()
		RAISERROR(@err, 16, 1)
		ROLLBACK TRANSACTION
	END CATCH
	COMMIT TRANSACTION
END
GO
/****** Object:  StoredProcedure [dbo].[proc_SuaNhanVien]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--sua nhan vien
CREATE   PROC [dbo].[proc_SuaNhanVien]
	@manv varchar(10), @honv nvarchar(10), @tennv nvarchar(10), @ngaysinh date,
	@gioitinh nvarchar(3), @diachi nvarchar(100), @sdt nchar(10),
	@ngaytd date, @hesoluong float, @macv varchar(10)
AS
BEGIN
	BEGIN TRY
		UPDATE NHANVIEN
		SET
		HoNV = @honv, TenNV = @tennv, NgaySinh = @ngaysinh,
		GioiTinh = @gioitinh, DiaChi = @diachi, SDT = @sdt,	NgayTD = @ngaytd,
		HeSoLuong=@hesoluong, MaCV = @macv
		WHERE MaNV = @manv
	END TRY
	BEGIN CATCH
		DECLARE @err NVARCHAR(MAX)
		SELECT @err = N'Lỗi ' + ERROR_MESSAGE()
		RAISERROR(@err, 16, 1)
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[proc_SuaSanPham]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Thủ tục Sửa sản phẩm
Create   Procedure [dbo].[proc_SuaSanPham]
	@MaSP varchar(10),
	@TenSP nvarchar(100), 
	@DonViTinh nvarchar(10),
	@GiaBan float ,
	@GiaNhap float, 
	@SoLuong int,
	@MaLoaiSP varchar(10), 
	@MaNSX int
As
Begin
	Begin Try
		Update dbo.SANPHAM Set
						TenSP = @TenSP,
						DonViTinh = @DonViTinh,
						GiaBan = @GiaBan,
						GiaNhap = @GiaNhap,
						SoLuong = @SoLuong,
						MaLoaiSP = @MaLoaiSP,
						MaNSX = @MaNSX
					Where MaSP = @MaSP
	End Try
	Begin Catch
		Declare @err nvarchar(max)
		Select @err = N'Lỗi ' + ERROR_MESSAGE()
		Raiserror (@err, 16, 1)
	End Catch
End
GO
/****** Object:  StoredProcedure [dbo].[proc_SuaThanhVien]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--drop proc proc_ThemThanhVienMoi
--Sua thanh vien
Create Procedure [dbo].[proc_SuaThanhVien]
	@MaTV varchar(10),
	@HoTV nvarchar(100), 
	@TenTV nvarchar(10),
	@SDT varchar(10), 
	@DiaChi nvarchar(100),
	@DiemTichLuy int, 
	@MaLoaiTV varchar(10)
As
Begin
	Begin Try
		Update dbo.THANHVIEN Set
						HoTV = @HoTV,
						TenTV = @TenTV,
						SDT = @SDT,
						DiaChi = @DiaChi,
						DiemTichLuy = @DiemTichLuy,
						MaLoaiTV = @MaLoaiTV
					Where MaTV = @MaTV
	End Try
	Begin Catch
		Declare @err nvarchar(max)
		Select @err = N'Lỗi ' + ERROR_MESSAGE()
		Raiserror (@err, 16, 1)
	End Catch
End
GO
/****** Object:  StoredProcedure [dbo].[proc_TaoHoaDon]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--select * from V_HoaDon
--Tao hoa don
Create   Procedure [dbo].[proc_TaoHoaDon]
	@MaHD varchar(10),
	@NgayLap date, 
	@ThoiGian time, 
	@TongThanhToan float, 
	@MaNV varchar(10), 
	@MaTV varchar(10)
As
Begin
	BEGIN TRANSACTION;
	BEGIN TRY
		-- Insert into DonNhap table
		Insert into HOADON (MaHD, NgayLap, ThoiGian, TongThanhToan, MaNV, MaTV)
		Values(@MaHD, @NgayLap, @ThoiGian, @TongThanhToan, @MaNV, @MaTV)
	END TRY
	BEGIN CATCH
		Declare @err nvarchar(max)
		Select @err = N'Lỗi ' + ERROR_MESSAGE()
		Raiserror (@err, 16, 1)
		ROLLBACK TRANSACTION;
		THROW;
	END CATCH;
	COMMIT TRANSACTION;
End;
GO
/****** Object:  StoredProcedure [dbo].[proc_ThemCTDonNhap]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Them CT_NHapHang
CREATE   PROCEDURE [dbo].[proc_ThemCTDonNhap]
@masp varchar(10),
@madn varchar(10),
@soluong int,
@dongia float,
@thanhtien float
AS
BEGIN
	BEGIN TRANSACTION;
	BEGIN TRY
		-- Insert into DonNhap table
		INSERT INTO CT_NHAPHANG
		VALUES (@masp, @madn, @soluong, @dongia, @thanhtien)
	END TRY
	BEGIN CATCH
		Declare @err nvarchar(max)
		Select @err = N'Lỗi ' + ERROR_MESSAGE()
		Raiserror (@err, 16, 1)
		ROLLBACK TRANSACTION;
		THROW;
	END CATCH;
	COMMIT TRANSACTION;
END
GO
/****** Object:  StoredProcedure [dbo].[proc_ThemDonNhap]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--===========================================================================================================
--QUẢN LÍ NHAP HANG
CREATE   PROCEDURE [dbo].[proc_ThemDonNhap]
@madn varchar(10),
@ngaynhap date,
@thoigian time,
@tonggt float,
@mancc int,
@manv varchar(10)
AS
BEGIN
	BEGIN TRANSACTION;
	BEGIN TRY
		-- Insert into DonNhap table
		INSERT INTO DONNHAP(MaDN, NgayNhap, ThoiGian, TongGT, MaNCC, MaNV)
		VALUES (@madn, @ngaynhap,@thoigian, @tonggt,@mancc, @manv) 
	END TRY
	BEGIN CATCH
		Declare @err nvarchar(max)
		Select @err = N'Lỗi ' + ERROR_MESSAGE()
		Raiserror (@err, 16, 1)
		ROLLBACK TRANSACTION;
		THROW;
	END CATCH;
	COMMIT TRANSACTION;
END
GO
/****** Object:  StoredProcedure [dbo].[proc_ThemNCC]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--select dbo.fc_DoanhThuTheoThang(5,2023)
--==================================================================================
--Quan li NCC
Create   Procedure [dbo].[proc_ThemNCC]
	@TenNCC nvarchar(100), 
	@SDT varchar(10),
	@DiaChi nvarchar(100)
As
Begin
	Declare @MaNCC int
	Set @MaNCC = (Select max(MaNCC) From NCC) + 1
	Begin try
		Insert into NCC
		Values (@MaNCC, @TenNCC, @SDT, @DiaChi)
	End try
	Begin catch
		Declare @err nvarchar(max)
		Select @err = N'Thêm nhà cung cấp thất bại: ' + ERROR_MESSAGE()
		Raiserror (@err, 16, 1)
	End catch
End
GO
/****** Object:  StoredProcedure [dbo].[proc_ThemNhanVien]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--select * from dbo.fn_TimKiemNhanVien(N'Nhân viên bán hàng')
-- Them nhan vien.
CREATE PROC [dbo].[proc_ThemNhanVien]
				(@manv varchar(10), 
				@honv nvarchar(10), 
				@tennv nvarchar(10), 
				@ngaysinh date, 
				@gioitinh nvarchar(3),
				@diachi nvarchar(100), 
				@sdt varchar(10), 
				@ngaytd date, 
				@hesoluong float, 
				@macv varchar(10))
AS
Begin
	Begin try
		INSERT INTO NHANVIEN (MaNV, HoNV, TenNV, NgaySinh, GioiTinh, DiaChi, SDT, NgayTD, HeSoLuong, MaCV)
		VALUES(@manv, @honv, @tennv, @ngaysinh, @gioitinh, @diachi, @sdt, @ngaytd, @hesoluong, @macv)
	End try
	Begin catch
		Declare @err nvarchar(max)
		Select @err = N'Lỗi ' + ERROR_MESSAGE()
		Raiserror (@err, 16, 1)
	End catch
End
GO
/****** Object:  StoredProcedure [dbo].[proc_ThemNSX]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   Procedure [dbo].[proc_ThemNSX]
	@TenNSX nvarchar(100), 
	@SDT varchar(10),
	@DiaChi nvarchar(100)
As
Begin
	Declare @MaNSX int
	Set @MaNSX = (Select max(MaNSX) From NSX) + 1
	Begin try
		Insert into NSX
		Values (@MaNSX, @TenNSX, @SDT, @DiaChi)
	End try
	Begin catch
		Declare @err nvarchar(max)
		Select @err = N'Thêm nhà sản xuất thất bại: ' + ERROR_MESSAGE()
		Raiserror (@err, 16, 1)
	End catch
End
GO
/****** Object:  StoredProcedure [dbo].[proc_ThemSanPham]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--drop function FC_TimKiemSanPham
--Select * from dbo.FC_TimKiemSanPham('sp')
--drop function dbo.FC_TimKiemSanPham
--Thủ tục thêm sản phẩm
Create   Procedure [dbo].[proc_ThemSanPham]
	@MaSP varchar(10),
	@TenSP nvarchar(100), 
	@DonViTinh nvarchar(10),
	@GiaBan float ,
	@GiaNhap float, 
	@SoLuong int,
	@MaLoaiSP varchar(10), 
	@MaNSX int
As
Begin
	Begin Try
		Insert into SANPHAM (MaSP, TenSP, DonViTinh, GiaBan, GiaNhap, SoLuong, MaLoaiSP, MaNSX)
		Values (@MaSP, @TenSP, @DonViTinh, @GiaBan, @GiaNhap, @SoLuong, @MaLoaiSP, @MaNSX)
	End Try
	Begin Catch
		Declare @err nvarchar(max)
		Select @err = N'Lỗi ' + ERROR_MESSAGE()
		Raiserror (@err, 16, 1)
	End Catch
End
GO
/****** Object:  StoredProcedure [dbo].[proc_ThemThanhVienMoi]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Select dbo.FC_TinhPhanTramUuDai('tv-002')
--drop Function FC_TinhPhanTramUuDai
--Thêm thành viên
Create Procedure [dbo].[proc_ThemThanhVienMoi]
	@MaTV varchar(10),
	@HoTV nvarchar(100), 
	@TenTV nvarchar(10),
	@SDT varchar(10), 
	@DiaChi nvarchar(100),
	@DiemTichLuy int, 
	@MaLoaiTV varchar(10)
As
Begin
	Begin try
		Insert into THANHVIEN (MaTV, HoTV, TenTV,SDT,DiaChi,DiemTichLuy,MaLoaiTV)
		Values (@MaTV, @HoTV, @TenTV, @SDT, @DiaChi, @DiemTichLuy, @MaLoaiTV)
	End try
	Begin catch
		Declare @err nvarchar(max)
		Select @err = N'Thêm thành viên thất bại: ' + ERROR_MESSAGE()
		Raiserror (@err, 16, 1)
	End catch
End
GO
/****** Object:  StoredProcedure [dbo].[proc_TimKiemCTDonNhap]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec proc_TimKiemCTDonNhap '2023-1-4', '2023-10-7'
Create   Procedure [dbo].[proc_TimKiemCTDonNhap]
@NgayBatDau Date,
@NgayKetThuc Date
As
Begin
	Select ct.MaSP, ct.MaDN, ct.SoLuong, ct.DonGia, ct.ThanhTien
	From DONNHAP dn, CT_NHAPHANG ct
	Where NgayNhap Between @NgayBatDau and @NgayKetThuc 
	and dn.MaDN = ct.MaDN
End
GO
/****** Object:  StoredProcedure [dbo].[proc_TimKiemDonNhap]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--TimKiemDonNhap
Create   Procedure [dbo].[proc_TimKiemDonNhap]
@NgayBatDau Date,
@NgayKetThuc Date
As
Begin
	Select *
	From DONNHAP
	Where NgayNhap Between @NgayBatDau and @NgayKetThuc
End
GO
/****** Object:  StoredProcedure [dbo].[proc_XoaNhanVien]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Xóa nhân viên
--exec proc_XoaNhanVien 'nv-005'
CREATE   PROC [dbo].[proc_XoaNhanVien] @MaNV varchar(10)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @username varchar(15);
		SELECT @username = @MaNV
	DECLARE @sql varchar(100)
	DECLARE @SessionID INT;
	SELECT @SessionID = session_id
		FROM sys.dm_exec_sessions
		WHERE login_name = @username;
		IF @SessionID IS NOT NULL
		BEGIN
			SET @sql = 'kill ' + Convert(NVARCHAR(20), @SessionID)
			exec(@sql)
		END
	BEGIN TRANSACTION;
		BEGIN TRY
		Update DONNHAP Set MaNV = null where MaNV = @MaNV

		Update HOADON Set MaNV = null where MaNV = @MaNV

		DELETE FROM BANGPHANCA WHERE MaNV = @MaNV;

		SET @sql = 'DROP USER '+ @username
		exec (@sql)

		SET @sql = 'DROP LOGIN '+ @username
		exec (@sql)

		DELETE FROM TAIKHOAN WHERE TenTK = @MaNV;

		DELETE FROM NHANVIEN WHERE MaNV = @MaNV;
		END TRY
		BEGIN CATCH
			DECLARE @err NVARCHAR(MAX)
			SELECT @err = N'Lỗi ' + ERROR_MESSAGE()
			RAISERROR(@err, 16, 1)
			ROLLBACK TRANSACTION;
			THROW;
		END CATCH
	COMMIT TRANSACTION;
END
GO
/****** Object:  StoredProcedure [dbo].[TimKiemHoaDon]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Thủ tục tìm kiếm hóa đơn
Create Procedure [dbo].[TimKiemHoaDon]
@NgayBatDau Date,
@NgayKetThuc Date
As
Begin
	Select *
	From HOADON
	Where NgayLap Between @NgayBatDau and @NgayKetThuc
End
GO
/****** Object:  Trigger [dbo].[TG_SOLUONG_BAN]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--cập nhật số lượng sản phẩm sau khi bán đi
Create trigger [dbo].[TG_SOLUONG_BAN]
On [dbo].[CT_HOADON]
After insert 
As
Begin
	Declare @masp varchar(10), @sl int
	Select @masp = i.MaSP, @sl = i.SoLuong
	From inserted i
	Update SANPHAM Set SoLuong = SoLuong - @sl 
		Where MaSP = @masp
End
GO
ALTER TABLE [dbo].[CT_HOADON] ENABLE TRIGGER [TG_SOLUONG_BAN]
GO
/****** Object:  Trigger [dbo].[TG_THANHTIEN_HOADON]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--trigger update thanhtien = soluong * dongia trên CT_HOADON
Create trigger [dbo].[TG_THANHTIEN_HOADON]
On [dbo].[CT_HOADON]
After insert, update 
As
Declare @thanhtien float, @sl int, @dongia int, @mahd varchar(10), @masp varchar(10)
Select @thanhtien = i.ThanhTien, @sl = i.SoLuong, @dongia = i.DonGia, @mahd = i.MaHD, @masp = i.MaSP
From inserted i
If (@thanhtien <> @sl*@dongia)
	Update CT_HOADON Set ThanhTien = @sl*@dongia
		Where MaHD = @mahd and MaSP = @masp
GO
ALTER TABLE [dbo].[CT_HOADON] ENABLE TRIGGER [TG_THANHTIEN_HOADON]
GO
/****** Object:  Trigger [dbo].[TG_SOLUONG_NHAPHANG]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--cập nhật số lượng sản phẩm sau khi nhập hàng
Create trigger [dbo].[TG_SOLUONG_NHAPHANG]
On [dbo].[CT_NHAPHANG]
After insert 
As
Begin
	Declare @masp varchar(10), @sl int
	Select @masp = i.MaSP, @sl = i.SoLuong
	From inserted i
	Update SANPHAM Set SoLuong = SoLuong + @sl 
		Where MaSP = @masp
End
GO
ALTER TABLE [dbo].[CT_NHAPHANG] ENABLE TRIGGER [TG_SOLUONG_NHAPHANG]
GO
/****** Object:  Trigger [dbo].[TG_THANHTIEN_NHAPHANG]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--trigger update thanhtien = soluong * dongia trên DONNHAP
Create trigger [dbo].[TG_THANHTIEN_NHAPHANG]
On [dbo].[CT_NHAPHANG]
After insert, update as
Declare @thanhtien float, @sl int, @dongia int, @madn varchar(10), @masp varchar(10)
Select @thanhtien = i.ThanhTien, @sl = i.SoLuong, @dongia = i.DonGia, @madn = i.MaDN, @masp = i.MaSP
From inserted i
If (@thanhtien <> @sl*@dongia)
	Update CT_NHAPHANG Set ThanhTien = @sl*@dongia
		Where MaDN = @madn and MaSP = @masp
GO
ALTER TABLE [dbo].[CT_NHAPHANG] ENABLE TRIGGER [TG_THANHTIEN_NHAPHANG]
GO
/****** Object:  Trigger [dbo].[TG_BANGTHONGKE2]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--drop trigger TG_BANGTHONGKE2
Create trigger [dbo].[TG_BANGTHONGKE2] On [dbo].[DONNHAP]
After insert 
As
Declare @madn varchar(10), @ngay Date, @thoigian Time, @sotien float, @magd int
Select @madn = i.MaDN, @ngay = i.NgayNhap, @thoigian = i.ThoiGian, @sotien = i.TongGT
From inserted i
Begin
	Set @magd = (select count(*) from BANGTHONGKETAICHINH)
	Insert into BANGTHONGKETAICHINH 
		values(@magd+1, N'Chi ra', @ngay, @thoigian, N'Chi ra cho đơn nhập ' + @madn, (-1) * @sotien)
End
GO
ALTER TABLE [dbo].[DONNHAP] ENABLE TRIGGER [TG_BANGTHONGKE2]
GO
/****** Object:  Trigger [dbo].[TG_BANGTHONGKE1]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------------------------------------------TRIGGER----------------------------------------------------
--trigger cập nhật BANGTHONGKETAICHINH
--drop trigger TG_BANGTHONGKE1
Create trigger [dbo].[TG_BANGTHONGKE1] On [dbo].[HOADON]
After insert 
As
Declare @mahd varchar(10), @ngay Date, @thoigian Time, @sotien float, @magd int
Select @mahd = i.MaHD, @ngay = i.NgayLap, @thoigian = i.ThoiGian, @sotien = i.TongThanhToan
	From inserted i
Begin
	Set @magd = (select count(*) from BANGTHONGKETAICHINH)
	Insert into BANGTHONGKETAICHINH 
		Values(@magd+1, N'Thu vào', @ngay, @thoigian, N'Thanh toán cho hóa đơn ' + @mahd, @sotien)
End
GO
ALTER TABLE [dbo].[HOADON] ENABLE TRIGGER [TG_BANGTHONGKE1]
GO
/****** Object:  Trigger [dbo].[TG_TinhDiemTichLuy]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--tính điểm tích lũy cho khách hàng khi có hóa đơn > 200k
--drop trigger TG_TinhDiemTichLuy
Create trigger [dbo].[TG_TinhDiemTichLuy]
On [dbo].[HOADON]
After insert as
Begin
	Declare @makh varchar(10), @sotien float
	Select @makh = i.MaTV, @sotien = i.TongThanhToan
	From inserted i
	If (200000 < @sotien)
		Update THANHVIEN Set DiemTichLuy = DiemTichLuy + 1
			Where MaTV = @makh
End
GO
ALTER TABLE [dbo].[HOADON] ENABLE TRIGGER [TG_TinhDiemTichLuy]
GO
/****** Object:  Trigger [dbo].[tg_CheckNhanVien]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Trigger bắt lỗi khi thêm và sửa
CREATE   TRIGGER [dbo].[tg_CheckNhanVien]
ON [dbo].[NHANVIEN]
FOR INSERT, UPDATE
AS
BEGIN
	-- check MaNV
	IF EXISTS (SELECT * FROM inserted WHERE TRIM(MaNV) = ' ')
	BEGIN
		RAISERROR('Mã nhân viên không được để trống', 16, 1)
		ROLLBACK TRANSACTION
		RETURN
	END
	IF NOT EXISTS (SELECT * FROM NhanVien WHERE MaNV IN (SELECT MaNV FROM
	inserted))
	BEGIN
		RAISERROR('Mã nhân viên đã tồn tại', 16, 1)
		ROLLBACK TRANSACTION
		RETURN
	END
	-- check ho ten nhan vien
	IF EXISTS (SELECT * FROM inserted WHERE TRIM(TenNV) = '' )
	BEGIN
		RAISERROR('Tên nhân viên không được để trống', 16, 1)
		ROLLBACK TRANSACTION
		RETURN
	END
	IF EXISTS (SELECT * FROM inserted WHERE TRIM(HoNV) = '')
	BEGIN
		RAISERROR('Họ nhân viên không được để trống', 16, 1)
		ROLLBACK TRANSACTION
		RETURN
	END
	-- check ngay sinh
	IF EXISTS (
	SELECT * FROM inserted WHERE
	datediff(year,inserted.NgaySinh,getdate())<(18)
	 )
	BEGIN
		RAISERROR ('Nhân viên phải trên 18 tuổi', 16, 1)
		ROLLBACK TRANSACTION
		RETURN
	END
	-- check so dien thoai
	IF EXISTS (SELECT * FROM inserted WHERE TRIM(SDT) = '' )
	BEGIN
		RAISERROR('Số điện thoại không được để trống', 16, 1)
		ROLLBACK TRANSACTION
		RETURN
	END
	IF NOT EXISTS (SELECT * FROM inserted WHERE len(TRIM(SDT)) = (10))
	BEGIN
		RAISERROR('Số điện thoại gồm 10 chữ số', 16, 1)
		ROLLBACK TRANSACTION
		RETURN
	END
	IF EXISTS (SELECT 1 FROM inserted i INNER JOIN NhanVien n ON i.MaNV != n.MaNV 
	AND TRIM(i.SDT) = TRIM(n.SDT))
	BEGIN
		RAISERROR('Số điện thoại đã tồn tại', 16, 1)
		ROLLBACK TRANSACTION
		RETURN
	END
	-- check ngay tuyen dung
	IF NOT EXISTS (
	SELECT * FROM inserted WHERE 
	(datediff(day,[NgayTD],getdate())>=(0))
	)
	BEGIN
		RAISERROR ('Ngày tuyển dụng không thể là trong tương lai', 16, 1)
		ROLLBACK TRANSACTION
		RETURN
	END
END
GO
ALTER TABLE [dbo].[NHANVIEN] ENABLE TRIGGER [tg_CheckNhanVien]
GO
/****** Object:  Trigger [dbo].[TG_TaoTaiKhoan]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--drop trigger TG_TrungTenSanPham
--Trigger thêm nhân viên thì thêm tài khoản nhan viên
Create Trigger [dbo].[TG_TaoTaiKhoan]
On [dbo].[NHANVIEN]
After Insert
As
Begin
	Declare @tenTk varchar(10)
	Select @tenTk = i.MaNV
	From inserted i
	Insert into TAIKHOAN values(@tenTk, '1')
End
GO
ALTER TABLE [dbo].[NHANVIEN] ENABLE TRIGGER [TG_TaoTaiKhoan]
GO
/****** Object:  Trigger [dbo].[TG_TrungTenSanPham]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Trigger kiểm tra tên sản phẩm có bị trùng không
Create Trigger [dbo].[TG_TrungTenSanPham]
On [dbo].[SANPHAM]
After Insert, Update
As
Begin
	If Exists (Select TenSP from inserted i 
				Where TenSP in (Select TenSP from SANPHAM sp
								Where sp.TenSP = i.TenSP 
								And sp.MaSP <> i.MaSP))
	Begin
		Raiserror ('Tên sản phẩm bị trùng', 16, 1)
		Rollback
	End
End
GO
ALTER TABLE [dbo].[SANPHAM] ENABLE TRIGGER [TG_TrungTenSanPham]
GO
/****** Object:  Trigger [dbo].[TG_TaoTaiKhoanSQL]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   TRIGGER [dbo].[TG_TaoTaiKhoanSQL]
ON [dbo].[TAIKHOAN]
AFTER INSERT
AS
DECLARE @userName nvarchar(30), @pass nvarchar(10)
SELECT @userName=i.TenTK, @pass=i.MatKhau
FROM inserted i
BEGIN
DECLARE @sqlString nvarchar(2000), @macv varchar(10)

SET @sqlString= 'CREATE LOGIN [' + @userName +'] WITH PASSWORD='''+
@pass +''', DEFAULT_DATABASE=[QLVPP], CHECK_EXPIRATION=OFF,
CHECK_POLICY=OFF'
EXEC (@sqlString)

SET @sqlString= 'CREATE USER ' + @userName +' FOR LOGIN '+ @userName
EXEC (@sqlString)

SELECT @macv = MaCV
FROM NhanVien
WHERE MaNV = @userName
if (@macv = 'cv-001')
SET @sqlString = 'ALTER SERVER ROLE sysadmin' + ' ADD MEMBER '
+ @userName;
else if (@macv = 'cv-002')
SET @sqlString = 'ALTER ROLE ThuKho ADD MEMBER ' + @userName;
else
SET @sqlString = 'ALTER ROLE NVBH ADD MEMBER ' + @userName;
EXEC (@sqlString)
END
GO
ALTER TABLE [dbo].[TAIKHOAN] ENABLE TRIGGER [TG_TaoTaiKhoanSQL]
GO
/****** Object:  Trigger [dbo].[TG_LOAITHANHVIEN]    Script Date: 12/29/2023 10:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--cập nhật loại thành viên cho khách hàng thành viên
Create trigger [dbo].[TG_LOAITHANHVIEN]
On [dbo].[THANHVIEN]
After insert, update 
As
Begin
	Declare @matv varchar(10), @diem int
	Select @matv = i.MaTV, @diem = i.DiemTichLuy
	From inserted i
	If (@diem <= 10)
		Update THANHVIEN Set MaLoaiTV = (Select MaLoaiTV 
											From LOAITHANHVIEN 
											Where TenLoaiTV = N'Đồng')
			Where MaTV = @matv
	Else if (@diem > 10 and @diem <= 30)
		Update THANHVIEN Set MaLoaiTV = (Select MaLoaiTV 
											From LOAITHANHVIEN 
											Where TenLoaiTV = N'Bạc')
			Where MaTV = @matv
	Else
		Update THANHVIEN Set MaLoaiTV = (Select MaLoaiTV 
											From LOAITHANHVIEN 
											Where TenLoaiTV = N'Vàng')
			Where MaTV = @matv
End
GO
ALTER TABLE [dbo].[THANHVIEN] ENABLE TRIGGER [TG_LOAITHANHVIEN]
GO
USE [master]
GO
ALTER DATABASE [QLVPP] SET  READ_WRITE 
GO
