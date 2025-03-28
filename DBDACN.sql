USE [master]
GO
/****** Object:  Database [ThoiTrangNamKDK]    Script Date: 22/12/2024 7:40:02 SA ******/
CREATE DATABASE [ThoiTrangNamKDK]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ThoiTrangNamKDK', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.KHAI\MSSQL\DATA\ThoiTrangNamKDK.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ThoiTrangNamKDK_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.KHAI\MSSQL\DATA\ThoiTrangNamKDK_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ThoiTrangNamKDK] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ThoiTrangNamKDK].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ThoiTrangNamKDK] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ThoiTrangNamKDK] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ThoiTrangNamKDK] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ThoiTrangNamKDK] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ThoiTrangNamKDK] SET ARITHABORT OFF 
GO
ALTER DATABASE [ThoiTrangNamKDK] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ThoiTrangNamKDK] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ThoiTrangNamKDK] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ThoiTrangNamKDK] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ThoiTrangNamKDK] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ThoiTrangNamKDK] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ThoiTrangNamKDK] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ThoiTrangNamKDK] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ThoiTrangNamKDK] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ThoiTrangNamKDK] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ThoiTrangNamKDK] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ThoiTrangNamKDK] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ThoiTrangNamKDK] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ThoiTrangNamKDK] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ThoiTrangNamKDK] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ThoiTrangNamKDK] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ThoiTrangNamKDK] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ThoiTrangNamKDK] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ThoiTrangNamKDK] SET  MULTI_USER 
GO
ALTER DATABASE [ThoiTrangNamKDK] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ThoiTrangNamKDK] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ThoiTrangNamKDK] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ThoiTrangNamKDK] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ThoiTrangNamKDK] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ThoiTrangNamKDK]
GO
/****** Object:  Table [dbo].[BoSuuTap]    Script Date: 22/12/2024 7:40:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoSuuTap](
	[MaBoSuuTap] [int] NOT NULL,
	[TenBoSuuTap] [nchar](30) NOT NULL,
	[HinhBoSuuTap] [nchar](255) NULL,
	[Slug] [nvarchar](50) NULL,
 CONSTRAINT [PK_BoSuuTap] PRIMARY KEY CLUSTERED 
(
	[MaBoSuuTap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 22/12/2024 7:40:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaDH] [nchar](10) NOT NULL,
	[MaGioHang] [nchar](10) NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[MaChiTiet] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietDonHang_1] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC,
	[MaChiTiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietGioHang]    Script Date: 22/12/2024 7:40:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietGioHang](
	[MaGioHang] [nchar](10) NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[Gia] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[TongTien] [int] NOT NULL,
	[KichThuoc] [nvarchar](5) NOT NULL,
	[MaChiTiet] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietGioHang] PRIMARY KEY CLUSTERED 
(
	[MaGioHang] ASC,
	[MaChiTiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietKhuyenMai]    Script Date: 22/12/2024 7:40:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietKhuyenMai](
	[MaChiTietGiam] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[MaVoucher] [nchar](50) NOT NULL,
	[Slug] [nvarchar](50) NULL,
	[TenGiamGia] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChiTietKhuyenMai_1] PRIMARY KEY CLUSTERED 
(
	[MaChiTietGiam] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietKichThuoc]    Script Date: 22/12/2024 7:40:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietKichThuoc](
	[MaChiTiet] [int] IDENTITY(1,1) NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[KichThuoc] [nvarchar](5) NOT NULL,
	[SoLuong] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietKichThuoc_1] PRIMARY KEY CLUSTERED 
(
	[MaChiTiet] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietWishlist]    Script Date: 22/12/2024 7:40:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietWishlist](
	[MaSanPham] [int] NOT NULL,
	[WishlistID] [nchar](10) NOT NULL,
	[GhiChu] [nchar](10) NULL,
 CONSTRAINT [PK_ChiTietWishlist] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC,
	[WishlistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChucNang]    Script Date: 22/12/2024 7:40:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucNang](
	[ID] [int] NOT NULL,
	[TenChucNang] [nchar](255) NOT NULL,
	[MaChucNang] [int] NOT NULL,
 CONSTRAINT [PK_ChucNang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhGiaSP]    Script Date: 22/12/2024 7:40:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGiaSP](
	[MaDanhGia] [nchar](10) NOT NULL,
	[DanhGia] [float] NOT NULL,
	[BinhLuan] [nvarchar](250) NOT NULL,
	[HinhAnh] [nchar](50) NULL,
	[MaSanPham] [int] NOT NULL,
	[id] [int] NOT NULL,
	[MaDH] [nchar](10) NOT NULL,
	[NgayDanhGia] [datetime] NOT NULL,
 CONSTRAINT [PK_DanhGiaSP] PRIMARY KEY CLUSTERED 
(
	[MaDanhGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 22/12/2024 7:40:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDH] [nchar](10) NOT NULL,
	[NgayLap] [datetime] NOT NULL,
	[TongTien] [int] NOT NULL,
	[DiaChiGiaoHang] [nvarchar](250) NOT NULL,
	[TrangThaiDH] [nvarchar](150) NOT NULL,
	[ThongTinDH] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 22/12/2024 7:40:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[MaGioHang] [nchar](10) NOT NULL,
	[id] [int] NOT NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[MaGioHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HinhAnhSP]    Script Date: 22/12/2024 7:40:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhAnhSP](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[HinhAnh] [nchar](100) NULL,
 CONSTRAINT [PK_HinhAnhSP_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 22/12/2024 7:40:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[MaVoucher] [nchar](50) NOT NULL,
	[TenChuongTrinh] [nvarchar](50) NOT NULL,
	[ThoiGianBatDau] [datetime] NOT NULL,
	[ThoiGianKetThuc] [datetime] NOT NULL,
	[GhiChu] [nvarchar](250) NOT NULL,
	[PhanTramGiam] [int] NOT NULL,
	[SoLan] [bit] NULL,
	[id] [int] NULL,
 CONSTRAINT [PK_KhuyenMai] PRIMARY KEY CLUSTERED 
(
	[MaVoucher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 22/12/2024 7:40:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLoaiSP] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiSP] [nvarchar](100) NOT NULL,
	[Slug] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhanHoiDanhGia]    Script Date: 22/12/2024 7:40:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanHoiDanhGia](
	[MaPhanHoi] [int] IDENTITY(1,1) NOT NULL,
	[MaDanhGia] [nchar](10) NOT NULL,
	[PhanHoi] [nvarchar](55) NOT NULL,
 CONSTRAINT [PK_PhanHoiDanhGia_1] PRIMARY KEY CLUSTERED 
(
	[MaPhanHoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhanQuyenNhanVien]    Script Date: 22/12/2024 7:40:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyenNhanVien](
	[MaChucNang] [int] NOT NULL,
	[idNhanVien] [int] NOT NULL,
	[GhiChu] [nchar](255) NULL,
 CONSTRAINT [PK_PhanQuyenNhanVien_1] PRIMARY KEY CLUSTERED 
(
	[MaChucNang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 22/12/2024 7:40:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](100) NOT NULL,
	[MaVatLieu] [int] NOT NULL,
	[Gia] [int] NOT NULL,
	[HinhAnh] [nvarchar](100) NOT NULL,
	[MoTa] [nvarchar](250) NOT NULL,
	[MaLoaiSP] [int] NOT NULL,
	[MaBoSuuTap] [int] NULL,
	[MaChiTietGiam] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 22/12/2024 7:40:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [nchar](55) NOT NULL,
	[MatKhau] [nchar](55) NOT NULL,
	[LoaiTK] [nchar](55) NOT NULL,
	[idTK] [int] NOT NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThongTinCaNhan]    Script Date: 22/12/2024 7:40:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinCaNhan](
	[idTK] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Sdt] [nvarchar](11) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[IsEmailConfirmed] [bit] NULL,
	[ConfirmationCode] [int] NULL,
	[TrangThai] [nvarchar](10) NOT NULL,
	[NgayBatDau] [datetime] NULL,
	[NgayKetThuc] [datetime] NULL,
 CONSTRAINT [PK_ThongTinCaNhan] PRIMARY KEY CLUSTERED 
(
	[idTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VatLieu]    Script Date: 22/12/2024 7:40:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VatLieu](
	[MaVatLieu] [int] NOT NULL,
	[TenVatLieu] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_VatLieu] PRIMARY KEY CLUSTERED 
(
	[MaVatLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Wishlist]    Script Date: 22/12/2024 7:40:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wishlist](
	[WishlistID] [nchar](10) NOT NULL,
	[id] [int] NOT NULL,
 CONSTRAINT [PK_Wishlist] PRIMARY KEY CLUSTERED 
(
	[WishlistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[BoSuuTap] ([MaBoSuuTap], [TenBoSuuTap], [HinhBoSuuTap], [Slug]) VALUES (0, N'Không                         ', NULL, NULL)
INSERT [dbo].[BoSuuTap] ([MaBoSuuTap], [TenBoSuuTap], [HinhBoSuuTap], [Slug]) VALUES (1, N'Miền Gió Cát KDK              ', N'mien-gio-cat.jpg                                                                                                                                                                                                                                               ', N'mien-gio-cat')
INSERT [dbo].[BoSuuTap] ([MaBoSuuTap], [TenBoSuuTap], [HinhBoSuuTap], [Slug]) VALUES (2, N'Di Sản KDK                    ', N'di-san.jpg                                                                                                                                                                                                                                                     ', N'di-san')
INSERT [dbo].[BoSuuTap] ([MaBoSuuTap], [TenBoSuuTap], [HinhBoSuuTap], [Slug]) VALUES (3, N'Thủy Thủ KDK                  ', N'Seafarer.jpg                                                                                                                                                                                                                                                   ', N'seafarer')
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'12PXsjkZsY', N'64779     ', 34, 17, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'1GmJ2QAIPw', N'64779     ', 36, 25, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'1MsiQGHQQ8', N'64779     ', 36, 25, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'20w7HguB4u', N'64779     ', 36, 25, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'37q7SdXpNX', N'64779     ', 36, 25, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'4K5odcCxw7', N'64779     ', 36, 25, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'4m7ECIClnZ', N'64779     ', 36, 25, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'4tBlaKEMBi', N'64779     ', 34, 17, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'7M0nT2LcCR', N'64779     ', 72, 10, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'AAFu6GukPX', N'64779     ', 11, 1, 2)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'AAFu6GukPX', N'64779     ', 14, 9, 2)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'AAFu6GukPX', N'64779     ', 35, 21, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'bnakhTDzKs', N'64779     ', 34, 17, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'CmXvcsgVEg', N'64779     ', 36, 25, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'D3TuUhSSKq', N'64779     ', 36, 25, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'dMTwKkhag7', N'64779     ', 93, 137, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'DvzerUmJmU', N'21046     ', 72, 10, 2)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'ev3ptZpKpa', N'64779     ', 36, 25, 2)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'ExYVnhb6w6', N'64779     ', 14, 9, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'ExYVnhb6w6', N'64779     ', 34, 17, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'ExYVnhb6w6', N'64779     ', 128, 224, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'ExYVnhb6w6', N'64779     ', 129, 228, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'Ey26rCiJsm', N'64779     ', 107, 169, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'F0n7FgvNOi', N'64779     ', 36, 25, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'F49wR8Xhfu', N'64779     ', 36, 25, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'fBBLlLi5xW', N'64779     ', 36, 25, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'gKR5De1UrZ', N'64779     ', 36, 25, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'GOXgJHkCRJ', N'64779     ', 36, 25, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'gPj0QdmqPe', N'64779     ', 36, 25, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'Gvcsox2jqV', N'64779     ', 14, 9, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'gXDzxSuDve', N'64779     ', 34, 17, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'H675eQawya', N'64779     ', 34, 17, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'hRh7dgCpPQ', N'64779     ', 34, 17, 13)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'hRh7dgCpPQ', N'64779     ', 120, 204, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'hRh7dgCpPQ', N'64779     ', 124, 216, 13)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'hRh7dgCpPQ', N'64779     ', 130, 232, 3)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'hsrzPUjQQj', N'64779     ', 36, 25, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'IIEIy9d22X', N'64779     ', 36, 25, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'iOuLrHQDwM', N'64779     ', 36, 25, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'iuVkNWrsIa', N'64779     ', 11, 1, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'iuVkNWrsIa', N'64779     ', 14, 9, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'jct6CjjTnl', N'64779     ', 36, 25, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'KahiTest  ', N'64779     ', 11, 1, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'kmSTRYGbVh', N'64779     ', 11, 1, 10)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'KpyU0lrvUz', N'64779     ', 14, 9, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'KpyU0lrvUz', N'64779     ', 72, 10, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'KpyU0lrvUz', N'64779     ', 34, 17, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'KpyU0lrvUz', N'64779     ', 35, 21, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'KpyU0lrvUz', N'64779     ', 36, 25, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'KpyU0lrvUz', N'64779     ', 90, 133, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'kydeNnpSjl', N'64779     ', 14, 9, 3)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'kydeNnpSjl', N'64779     ', 34, 17, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'kydeNnpSjl', N'64779     ', 35, 21, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'kydeNnpSjl', N'64779     ', 36, 25, 2)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'LHU9cuT8EW', N'64779     ', 11, 1, 3)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'LHU9cuT8EW', N'64779     ', 109, 177, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'LHU9cuT8EW', N'64779     ', 109, 178, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'LHU9cuT8EW', N'64779     ', 127, 220, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'LHU9cuT8EW', N'64779     ', 129, 228, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'M5Aijj47ml', N'64779     ', 36, 25, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'mRG6KCh8LT', N'64779     ', 36, 25, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'mzmbr5tkhM', N'64779     ', 127, 220, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'N1TJlXnwKi', N'64779     ', 34, 17, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'NfitvPZgwH', N'64779     ', 14, 9, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'NfitvPZgwH', N'64779     ', 34, 17, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'NfitvPZgwH', N'64779     ', 35, 21, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'NfitvPZgwH', N'64779     ', 36, 25, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'nshFlNx668', N'64779     ', 36, 25, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'o3R4IokrBc', N'64779     ', 36, 25, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'o8wGrj2JVd', N'64779     ', 130, 232, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'OkhGxHy7YB', N'64779     ', 93, 137, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'otQpO21XO2', N'64779     ', 14, 9, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'otQpO21XO2', N'64779     ', 34, 17, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'otQpO21XO2', N'64779     ', 35, 21, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'otQpO21XO2', N'64779     ', 36, 25, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'pAPs8GiHuG', N'64779     ', 11, 3, 2)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'pipXpkaDuf', N'64779     ', 34, 17, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'pQkX028Db3', N'64779     ', 34, 17, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'PyD01MoXfT', N'64779     ', 72, 10, 6)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'Q6aI4Pzzic', N'64779     ', 36, 25, 3)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'q6it30w7vP', N'64779     ', 14, 9, 2)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'QCQMnx0xUd', N'64779     ', 36, 25, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'QdHX9u7ev8', N'64779     ', 11, 1, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'QdHX9u7ev8', N'64779     ', 14, 9, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'qRvn3oVumi', N'64779     ', 14, 9, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'qRvn3oVumi', N'64779     ', 34, 17, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'qRvn3oVumi', N'64779     ', 35, 21, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'qRvn3oVumi', N'64779     ', 36, 25, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'R0LjcE9EgO', N'64779     ', 114, 193, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'RNuliTDjNo', N'64779     ', 34, 17, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'S5qrtwJ0Ve', N'64779     ', 124, 216, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'sC584TfeYi', N'64779     ', 11, 1, 2)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'SPadAnykno', N'64779     ', 34, 17, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'T2EL5OZdq0', N'64779     ', 114, 193, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'TR0wykcWnt', N'64779     ', 14, 9, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'TR0wykcWnt', N'64779     ', 34, 17, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'TR0wykcWnt', N'64779     ', 35, 21, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'TR0wykcWnt', N'64779     ', 36, 25, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'tSVTKkoCYP', N'64779     ', 107, 169, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'tXpbJigm3W', N'64779     ', 11, 1, 1)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'u5DeidZU7L', N'64779     ', 14, 9, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'u5DeidZU7L', N'64779     ', 34, 17, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'u5DeidZU7L', N'64779     ', 35, 21, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'u5DeidZU7L', N'64779     ', 36, 25, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'UHKCYqEhED', N'64779     ', 34, 17, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'UY2xprqKbU', N'64779     ', 11, 1, 20)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'UY2xprqKbU', N'64779     ', 14, 9, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'UY2xprqKbU', N'64779     ', 48, 73, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'VF4umx0zz1', N'02780     ', 14, 9, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'VF4umx0zz1', N'02780     ', 35, 21, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'VF4umx0zz1', N'02780     ', 36, 25, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'vkJbMsWanL', N'02780     ', 11, 1, 4)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'vkJbMsWanL', N'02780     ', 34, 17, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'vkJbMsWanL', N'02780     ', 35, 24, 2)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'VljUzAbWqR', N'64779     ', 36, 25, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'WEqN2yG191', N'64779     ', 93, 137, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'WS7WeFn8pM', N'64779     ', 93, 137, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'WytavB8gX1', N'64779     ', 36, 25, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'xaPNDyGeI4', N'63998     ', 14, 11, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'xaPNDyGeI4', N'63998     ', 34, 17, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'xaPNDyGeI4', N'63998     ', 35, 21, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'xi2wVlZ02E', N'64779     ', 11, 1, 7)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'YiURyTWxss', N'26545     ', 11, 1, 2)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'YiURyTWxss', N'26545     ', 35, 21, 2)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'yl2DqGGWzW', N'64779     ', 14, 9, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'yl2DqGGWzW', N'64779     ', 34, 17, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'yl2DqGGWzW', N'64779     ', 36, 25, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'yl2DqGGWzW', N'64779     ', 37, 29, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'z9L2xSDDB2', N'64779     ', 36, 25, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'zEyZnc8LCG', N'64779     ', 72, 10, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'zEyZnc8LCG', N'64779     ', 14, 11, 4)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'zEyZnc8LCG', N'64779     ', 34, 17, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'zqBTtWkcQ1', N'63998     ', 11, 1, 2)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'zqBTtWkcQ1', N'63998     ', 11, 2, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'zqBTtWkcQ1', N'63998     ', 34, 17, 1)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaGioHang], [MaSanPham], [MaChiTiet], [SoLuong]) VALUES (N'zqBTtWkcQ1', N'63998     ', 35, 21, 1)
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSanPham], [Gia], [SoLuong], [TongTien], [KichThuoc], [MaChiTiet]) VALUES (N'02780     ', 14, 244150, 1, 244150, N'S', 9)
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSanPham], [Gia], [SoLuong], [TongTien], [KichThuoc], [MaChiTiet]) VALUES (N'02780     ', 35, 180000, 1, 180000, N'S', 21)
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSanPham], [Gia], [SoLuong], [TongTien], [KichThuoc], [MaChiTiet]) VALUES (N'02780     ', 36, 180000, 1, 180000, N'S', 25)
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSanPham], [Gia], [SoLuong], [TongTien], [KichThuoc], [MaChiTiet]) VALUES (N'14998     ', 11, 87000, 1, 87000, N'S', 1)
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSanPham], [Gia], [SoLuong], [TongTien], [KichThuoc], [MaChiTiet]) VALUES (N'15497     ', 35, 180000, 2, 400000, N'S', 21)
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSanPham], [Gia], [SoLuong], [TongTien], [KichThuoc], [MaChiTiet]) VALUES (N'15497     ', 107, 650000, 1, 650000, N'S', 169)
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSanPham], [Gia], [SoLuong], [TongTien], [KichThuoc], [MaChiTiet]) VALUES (N'26545     ', 14, 257000, 1, 257000, N'S', 9)
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSanPham], [Gia], [SoLuong], [TongTien], [KichThuoc], [MaChiTiet]) VALUES (N'26733     ', 35, 180000, 1, 200000, N'S', 21)
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSanPham], [Gia], [SoLuong], [TongTien], [KichThuoc], [MaChiTiet]) VALUES (N'27043     ', 130, 287000, 2, 574000, N'S', 232)
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSanPham], [Gia], [SoLuong], [TongTien], [KichThuoc], [MaChiTiet]) VALUES (N'31958     ', 11, 87000, 1, 87000, N'S', 1)
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSanPham], [Gia], [SoLuong], [TongTien], [KichThuoc], [MaChiTiet]) VALUES (N'34709     ', 11, 87000, 1, 87000, N'S', 1)
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSanPham], [Gia], [SoLuong], [TongTien], [KichThuoc], [MaChiTiet]) VALUES (N'53736     ', 11, 87000, 1, 87000, N'S', 1)
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSanPham], [Gia], [SoLuong], [TongTien], [KichThuoc], [MaChiTiet]) VALUES (N'53736     ', 14, 257000, 2, 514000, N'S', 9)
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSanPham], [Gia], [SoLuong], [TongTien], [KichThuoc], [MaChiTiet]) VALUES (N'61497     ', 14, 244150, 1, 257000, N'S', 9)
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSanPham], [Gia], [SoLuong], [TongTien], [KichThuoc], [MaChiTiet]) VALUES (N'61497     ', 34, 150000, 1, 150000, N'S', 17)
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSanPham], [Gia], [SoLuong], [TongTien], [KichThuoc], [MaChiTiet]) VALUES (N'61497     ', 90, 580000, 1, 580000, N'S', 133)
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSanPham], [Gia], [SoLuong], [TongTien], [KichThuoc], [MaChiTiet]) VALUES (N'61497     ', 120, 287000, 1, 287000, N'S', 204)
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSanPham], [Gia], [SoLuong], [TongTien], [KichThuoc], [MaChiTiet]) VALUES (N'61497     ', 121, 297000, 1, 297000, N'S', 208)
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSanPham], [Gia], [SoLuong], [TongTien], [KichThuoc], [MaChiTiet]) VALUES (N'61497     ', 123, 287000, 1, 287000, N'S', 212)
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSanPham], [Gia], [SoLuong], [TongTien], [KichThuoc], [MaChiTiet]) VALUES (N'61497     ', 124, 327000, 1, 327000, N'S', 216)
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSanPham], [Gia], [SoLuong], [TongTien], [KichThuoc], [MaChiTiet]) VALUES (N'61497     ', 127, 227000, 1, 227000, N'S', 220)
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSanPham], [Gia], [SoLuong], [TongTien], [KichThuoc], [MaChiTiet]) VALUES (N'63998     ', 14, 257000, 1, 257000, N'S', 9)
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSanPham], [Gia], [SoLuong], [TongTien], [KichThuoc], [MaChiTiet]) VALUES (N'64779     ', 14, 231300, 3, 693900, N'S', 9)
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSanPham], [Gia], [SoLuong], [TongTien], [KichThuoc], [MaChiTiet]) VALUES (N'64779     ', 34, 135000, 1, 135000, N'S', 17)
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSanPham], [Gia], [SoLuong], [TongTien], [KichThuoc], [MaChiTiet]) VALUES (N'64779     ', 35, 180000, 1, 180000, N'S', 21)
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSanPham], [Gia], [SoLuong], [TongTien], [KichThuoc], [MaChiTiet]) VALUES (N'64779     ', 36, 180000, 2, 360000, N'S', 25)
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSanPham], [Gia], [SoLuong], [TongTien], [KichThuoc], [MaChiTiet]) VALUES (N'82428     ', 11, 87000, 2, 174000, N'S', 1)
INSERT [dbo].[ChiTietKhuyenMai] ([MaChiTietGiam], [MaSanPham], [MaVoucher], [Slug], [TenGiamGia]) VALUES (1, 11, N'BMYX2IIPT7                                        ', N'giam-ao-thun', N'Giảm Áo Thun')
INSERT [dbo].[ChiTietKhuyenMai] ([MaChiTietGiam], [MaSanPham], [MaVoucher], [Slug], [TenGiamGia]) VALUES (1, 14, N'BMYX2IIPT7                                        ', N'giam-ao-thun', N'Giảm Áo Thun')
INSERT [dbo].[ChiTietKhuyenMai] ([MaChiTietGiam], [MaSanPham], [MaVoucher], [Slug], [TenGiamGia]) VALUES (1, 34, N'BMYX2IIPT7                                        ', N'giam-ao-thun', N'Giảm Áo Thun')
INSERT [dbo].[ChiTietKhuyenMai] ([MaChiTietGiam], [MaSanPham], [MaVoucher], [Slug], [TenGiamGia]) VALUES (1, 35, N'BMYX2IIPT7                                        ', N'giam-ao-thun', N'Giảm Áo Thun')
INSERT [dbo].[ChiTietKhuyenMai] ([MaChiTietGiam], [MaSanPham], [MaVoucher], [Slug], [TenGiamGia]) VALUES (1, 112, N'PUH8INUIDX                                        ', N'giam-ao-thun', N'Giảm Áo Thun')
INSERT [dbo].[ChiTietKhuyenMai] ([MaChiTietGiam], [MaSanPham], [MaVoucher], [Slug], [TenGiamGia]) VALUES (1, 115, N'BMYX2IIPT7                                        ', N'giam-ao-thun', N'Giảm Áo Thun')
INSERT [dbo].[ChiTietKhuyenMai] ([MaChiTietGiam], [MaSanPham], [MaVoucher], [Slug], [TenGiamGia]) VALUES (1, 120, N'BMYX2IIPT7                                        ', N'giam-ao-thun', N'Giảm Áo Thun')
INSERT [dbo].[ChiTietKhuyenMai] ([MaChiTietGiam], [MaSanPham], [MaVoucher], [Slug], [TenGiamGia]) VALUES (1, 123, N'BMYX2IIPT7                                        ', N'giam-ao-thun', N'Giảm Áo Thun')
INSERT [dbo].[ChiTietKhuyenMai] ([MaChiTietGiam], [MaSanPham], [MaVoucher], [Slug], [TenGiamGia]) VALUES (2, 121, N'BMYX2IIPT7                                        ', N'giam-ao-so-mi', N'Giảm Áo Sơ Mi')
INSERT [dbo].[ChiTietKhuyenMai] ([MaChiTietGiam], [MaSanPham], [MaVoucher], [Slug], [TenGiamGia]) VALUES (3, 86, N'RLF833LG34                                        ', N'giam-giay', N'Giảm Giày')
INSERT [dbo].[ChiTietKhuyenMai] ([MaChiTietGiam], [MaSanPham], [MaVoucher], [Slug], [TenGiamGia]) VALUES (3, 88, N'BMYX2IIPT7                                        ', N'giam-giay', N'Giảm Giày')
INSERT [dbo].[ChiTietKhuyenMai] ([MaChiTietGiam], [MaSanPham], [MaVoucher], [Slug], [TenGiamGia]) VALUES (3, 89, N'BMYX2IIPT7                                        ', N'giam-giay', N'Giảm Giày')
INSERT [dbo].[ChiTietKhuyenMai] ([MaChiTietGiam], [MaSanPham], [MaVoucher], [Slug], [TenGiamGia]) VALUES (3, 90, N'BMYX2IIPT7                                        ', N'giam-giay', N'Giảm Giày')
INSERT [dbo].[ChiTietKhuyenMai] ([MaChiTietGiam], [MaSanPham], [MaVoucher], [Slug], [TenGiamGia]) VALUES (4, 100, N'BMYX2IIPT7                                        ', N'giam-balo', N'Giảm Balo')
INSERT [dbo].[ChiTietKhuyenMai] ([MaChiTietGiam], [MaSanPham], [MaVoucher], [Slug], [TenGiamGia]) VALUES (4, 101, N'BMYX2IIPT7                                        ', N'giam-balo', N'Giảm Balo')
INSERT [dbo].[ChiTietKhuyenMai] ([MaChiTietGiam], [MaSanPham], [MaVoucher], [Slug], [TenGiamGia]) VALUES (4, 102, N'BMYX2IIPT7                                        ', N'giam-balo', N'Giảm Balo')
INSERT [dbo].[ChiTietKhuyenMai] ([MaChiTietGiam], [MaSanPham], [MaVoucher], [Slug], [TenGiamGia]) VALUES (4, 103, N'BMYX2IIPT7                                        ', N'giam-balo', N'Giảm Balo')
INSERT [dbo].[ChiTietKhuyenMai] ([MaChiTietGiam], [MaSanPham], [MaVoucher], [Slug], [TenGiamGia]) VALUES (4, 105, N'7ENGR53FXI                                        ', N'giam-balo', N'Giảm Balo')
INSERT [dbo].[ChiTietKhuyenMai] ([MaChiTietGiam], [MaSanPham], [MaVoucher], [Slug], [TenGiamGia]) VALUES (4, 107, N'7ENGR53FXI                                        ', N'giam-balo', N'Giảm Balo')
INSERT [dbo].[ChiTietKhuyenMai] ([MaChiTietGiam], [MaSanPham], [MaVoucher], [Slug], [TenGiamGia]) VALUES (5, 42, N'BMYX2IIPT7                                        ', N'giam-quan-jean', N'Giảm Quần Jean')
INSERT [dbo].[ChiTietKhuyenMai] ([MaChiTietGiam], [MaSanPham], [MaVoucher], [Slug], [TenGiamGia]) VALUES (5, 43, N'BMYX2IIPT7                                        ', N'giam-quan-jean', N'Giảm Quần Jean')
INSERT [dbo].[ChiTietKhuyenMai] ([MaChiTietGiam], [MaSanPham], [MaVoucher], [Slug], [TenGiamGia]) VALUES (5, 44, N'BMYX2IIPT7                                        ', N'giam-quan-jean', N'Giảm Quần Jean')
INSERT [dbo].[ChiTietKhuyenMai] ([MaChiTietGiam], [MaSanPham], [MaVoucher], [Slug], [TenGiamGia]) VALUES (5, 45, N'BMYX2IIPT7                                        ', N'giam-quan-jean', N'Giảm Quần Jean')
INSERT [dbo].[ChiTietKhuyenMai] ([MaChiTietGiam], [MaSanPham], [MaVoucher], [Slug], [TenGiamGia]) VALUES (5, 46, N'BMYX2IIPT7                                        ', N'giam-quan-jean', N'Giảm Quần Jean')
SET IDENTITY_INSERT [dbo].[ChiTietKichThuoc] ON 

INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (1, 11, N'S', 10)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (2, 11, N'M', 19)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (3, 11, N'L', 15)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (4, 11, N'XL', 40)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (9, 14, N'S', 100)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (10, 72, N'S', 8)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (11, 14, N'M', 10)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (12, 14, N'L', 12)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (13, 72, N'M', 11)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (14, 72, N'L', 13)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (15, 72, N'XL', 14)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (16, 14, N'XL', 14)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (17, 34, N'S', 1)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (18, 34, N'M', 27)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (19, 34, N'L', 47)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (20, 34, N'XL', 42)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (21, 35, N'S', 1000)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (22, 35, N'M', 20)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (23, 35, N'L', 31)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (24, 35, N'XL', 26)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (25, 36, N'S', 5)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (26, 36, N'M', 36)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (27, 36, N'L', 20)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (28, 36, N'XL', 29)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (29, 37, N'S', 38)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (30, 37, N'M', 25)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (31, 37, N'L', 13)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (32, 37, N'XL', 27)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (33, 38, N'S', 29)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (34, 38, N'M', 15)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (35, 38, N'L', 19)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (36, 38, N'XL', 28)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (37, 39, N'S', 18)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (38, 39, N'M', 20)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (39, 39, N'L', 27)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (40, 39, N'XL', 47)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (41, 40, N'S', 34)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (42, 40, N'M', 30)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (43, 40, N'L', 43)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (44, 40, N'XL', 33)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (45, 41, N'S', 27)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (46, 41, N'M', 47)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (47, 41, N'L', 29)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (48, 41, N'XL', 11)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (49, 42, N'S', 38)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (50, 42, N'M', 39)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (51, 42, N'L', 44)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (52, 42, N'XL', 37)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (53, 43, N'S', 36)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (54, 43, N'M', 41)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (55, 43, N'L', 19)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (56, 43, N'XL', 31)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (57, 44, N'S', 17)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (58, 44, N'M', 15)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (59, 44, N'L', 42)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (60, 44, N'XL', 34)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (61, 45, N'S', 35)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (62, 45, N'M', 16)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (63, 45, N'L', 41)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (64, 45, N'XL', 27)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (65, 46, N'S', 42)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (66, 46, N'M', 42)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (67, 46, N'L', 10)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (68, 46, N'XL', 34)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (69, 47, N'S', 12)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (70, 47, N'M', 24)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (71, 47, N'L', 19)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (72, 47, N'XL', 22)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (73, 48, N'S', 18)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (74, 48, N'M', 48)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (75, 48, N'L', 43)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (76, 48, N'XL', 19)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (77, 49, N'S', 38)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (78, 49, N'M', 28)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (79, 49, N'L', 48)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (80, 49, N'XL', 19)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (81, 50, N'S', 28)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (82, 50, N'M', 26)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (83, 50, N'L', 41)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (84, 50, N'XL', 23)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (113, 73, N'S', 15)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (114, 73, N'M', 43)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (115, 73, N'L', 19)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (116, 73, N'XL', 26)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (117, 80, N'S', 34)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (118, 80, N'M', 34)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (119, 80, N'L', 32)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (120, 80, N'XL', 32)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (121, 86, N'S', 11)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (122, 86, N'M', 43)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (123, 86, N'L', 15)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (124, 86, N'XL', 16)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (125, 88, N'S', 29)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (126, 88, N'M', 36)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (127, 88, N'L', 24)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (128, 88, N'XL', 17)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (129, 89, N'S', 21)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (130, 89, N'M', 49)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (131, 89, N'L', 48)
GO
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (132, 89, N'XL', 41)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (133, 90, N'S', 21)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (134, 90, N'M', 26)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (135, 90, N'L', 32)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (136, 90, N'XL', 47)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (137, 93, N'S', 14)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (138, 93, N'M', 18)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (139, 93, N'L', 44)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (140, 93, N'XL', 19)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (141, 94, N'S', 20)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (142, 94, N'M', 45)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (143, 94, N'L', 30)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (144, 94, N'XL', 30)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (145, 100, N'S', 26)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (146, 100, N'M', 35)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (147, 100, N'L', 35)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (148, 100, N'XL', 16)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (149, 101, N'S', 25)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (150, 101, N'M', 45)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (151, 101, N'L', 36)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (152, 101, N'XL', 36)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (153, 102, N'S', 20)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (154, 102, N'M', 22)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (155, 102, N'L', 15)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (156, 102, N'XL', 33)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (157, 103, N'S', 49)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (158, 103, N'M', 37)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (159, 103, N'L', 24)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (160, 103, N'XL', 35)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (161, 105, N'S', 45)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (162, 105, N'M', 34)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (163, 105, N'L', 36)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (164, 105, N'XL', 36)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (165, 106, N'S', 47)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (166, 106, N'M', 45)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (167, 106, N'L', 26)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (168, 106, N'XL', 21)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (169, 107, N'S', 26)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (170, 107, N'M', 45)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (171, 107, N'L', 23)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (172, 107, N'XL', 24)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (173, 108, N'S', 25)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (174, 108, N'M', 39)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (175, 108, N'L', 22)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (176, 108, N'XL', 45)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (177, 109, N'S', 41)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (178, 109, N'M', 45)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (179, 109, N'L', 24)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (180, 109, N'XL', 21)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (181, 111, N'S', 16)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (182, 111, N'M', 27)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (183, 111, N'L', 16)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (184, 111, N'XL', 36)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (185, 112, N'S', 48)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (186, 112, N'M', 48)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (187, 112, N'L', 40)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (188, 112, N'XL', 39)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (189, 113, N'S', 32)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (190, 113, N'M', 15)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (191, 113, N'L', 24)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (192, 113, N'XL', 46)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (193, 114, N'S', 45)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (194, 114, N'M', 45)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (195, 114, N'L', 43)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (196, 114, N'XL', 29)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (197, 115, N'S', 16)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (198, 115, N'M', 28)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (199, 115, N'L', 23)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (200, 115, N'XL', 42)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (201, 11, N'XXL', 11)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (202, 14, N'XXL', 11)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (203, 11, N'XXXL', 11)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (204, 120, N'S', 19)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (205, 120, N'M', 20)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (206, 120, N'L', 20)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (207, 120, N'XL', 20)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (208, 121, N'S', 20)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (209, 121, N'M', 20)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (210, 121, N'L', 20)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (211, 121, N'XL', 20)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (212, 123, N'S', 20)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (213, 123, N'M', 20)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (214, 123, N'L', 20)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (215, 123, N'XL', 20)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (216, 124, N'S', 6)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (217, 124, N'M', 20)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (218, 124, N'L', 20)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (219, 124, N'XL', 20)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (220, 127, N'S', 18)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (221, 127, N'M', 20)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (222, 127, N'L', 20)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (223, 127, N'XL', 20)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (224, 128, N'S', 19)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (225, 128, N'M', 20)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (226, 128, N'L', 20)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (227, 128, N'XL', 20)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (228, 129, N'S', 18)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (229, 129, N'M', 20)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (230, 129, N'L', 20)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (231, 129, N'XL', 20)
GO
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (232, 130, N'S', 16)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (233, 130, N'M', 20)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (234, 130, N'L', 20)
INSERT [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham], [KichThuoc], [SoLuong]) VALUES (235, 130, N'XL', 20)
SET IDENTITY_INSERT [dbo].[ChiTietKichThuoc] OFF
INSERT [dbo].[ChiTietWishlist] ([MaSanPham], [WishlistID], [GhiChu]) VALUES (11, N'10581     ', NULL)
INSERT [dbo].[ChiTietWishlist] ([MaSanPham], [WishlistID], [GhiChu]) VALUES (11, N'2024042620', NULL)
INSERT [dbo].[ChiTietWishlist] ([MaSanPham], [WishlistID], [GhiChu]) VALUES (14, N'97760     ', NULL)
INSERT [dbo].[ChiTietWishlist] ([MaSanPham], [WishlistID], [GhiChu]) VALUES (34, N'2024042620', NULL)
INSERT [dbo].[ChiTietWishlist] ([MaSanPham], [WishlistID], [GhiChu]) VALUES (34, N'97760     ', NULL)
INSERT [dbo].[ChiTietWishlist] ([MaSanPham], [WishlistID], [GhiChu]) VALUES (35, N'2024042620', NULL)
INSERT [dbo].[ChiTietWishlist] ([MaSanPham], [WishlistID], [GhiChu]) VALUES (35, N'97760     ', NULL)
INSERT [dbo].[ChucNang] ([ID], [TenChucNang], [MaChucNang]) VALUES (1, N'Danh Sách Sản Phẩm                                                                                                                                                                                                                                             ', 1)
INSERT [dbo].[ChucNang] ([ID], [TenChucNang], [MaChucNang]) VALUES (2, N'Thêm Sản Phẩm                                                                                                                                                                                                                                                  ', 2)
INSERT [dbo].[ChucNang] ([ID], [TenChucNang], [MaChucNang]) VALUES (3, N'Sửa Sản Phẩm                                                                                                                                                                                                                                                   ', 3)
INSERT [dbo].[ChucNang] ([ID], [TenChucNang], [MaChucNang]) VALUES (4, N'Danh Sách Danh Mục                                                                                                                                                                                                                                             ', 4)
INSERT [dbo].[ChucNang] ([ID], [TenChucNang], [MaChucNang]) VALUES (5, N'Thêm Danh Mục                                                                                                                                                                                                                                                  ', 5)
INSERT [dbo].[ChucNang] ([ID], [TenChucNang], [MaChucNang]) VALUES (6, N'Sửa Danh Mục                                                                                                                                                                                                                                                   ', 6)
INSERT [dbo].[ChucNang] ([ID], [TenChucNang], [MaChucNang]) VALUES (7, N'Danh Sách Bộ Sưu Tập                                                                                                                                                                                                                                           ', 7)
INSERT [dbo].[ChucNang] ([ID], [TenChucNang], [MaChucNang]) VALUES (8, N'Thêm Bộ Sưu Tập                                                                                                                                                                                                                                                ', 8)
INSERT [dbo].[ChucNang] ([ID], [TenChucNang], [MaChucNang]) VALUES (9, N'Sửa Bộ Sưu Tập                                                                                                                                                                                                                                                 ', 9)
INSERT [dbo].[ChucNang] ([ID], [TenChucNang], [MaChucNang]) VALUES (10, N'Quản Lý Khuyến Mãi                                                                                                                                                                                                                                             ', 10)
INSERT [dbo].[ChucNang] ([ID], [TenChucNang], [MaChucNang]) VALUES (11, N'Quản Lý Số Lượng                                                                                                                                                                                                                                               ', 11)
INSERT [dbo].[ChucNang] ([ID], [TenChucNang], [MaChucNang]) VALUES (12, N'Thêm Số Lượng                                                                                                                                                                                                                                                  ', 12)
INSERT [dbo].[ChucNang] ([ID], [TenChucNang], [MaChucNang]) VALUES (13, N'Sửa Số Lượng                                                                                                                                                                                                                                                   ', 13)
INSERT [dbo].[ChucNang] ([ID], [TenChucNang], [MaChucNang]) VALUES (14, N'Quản Lý Đơn Hàng                                                                                                                                                                                                                                               ', 14)
INSERT [dbo].[ChucNang] ([ID], [TenChucNang], [MaChucNang]) VALUES (15, N'Thêm Đơn Hàng                                                                                                                                                                                                                                                  ', 15)
INSERT [dbo].[ChucNang] ([ID], [TenChucNang], [MaChucNang]) VALUES (16, N'Sửa Đơn Hàng                                                                                                                                                                                                                                                   ', 16)
INSERT [dbo].[ChucNang] ([ID], [TenChucNang], [MaChucNang]) VALUES (17, N'Quản Lý Đánh Giá                                                                                                                                                                                                                                               ', 17)
INSERT [dbo].[ChucNang] ([ID], [TenChucNang], [MaChucNang]) VALUES (18, N'Trả Lời Đánh Giá                                                                                                                                                                                                                                               ', 18)
INSERT [dbo].[ChucNang] ([ID], [TenChucNang], [MaChucNang]) VALUES (19, N'Quản Lý Tài Khoản                                                                                                                                                                                                                                              ', 19)
INSERT [dbo].[ChucNang] ([ID], [TenChucNang], [MaChucNang]) VALUES (20, N'Thêm Mới User                                                                                                                                                                                                                                                  ', 20)
INSERT [dbo].[ChucNang] ([ID], [TenChucNang], [MaChucNang]) VALUES (21, N'Sửa User                                                                                                                                                                                                                                                       ', 21)
INSERT [dbo].[ChucNang] ([ID], [TenChucNang], [MaChucNang]) VALUES (22, N'Sửa Trạng Thái                                                                                                                                                                                                                                                 ', 22)
INSERT [dbo].[ChucNang] ([ID], [TenChucNang], [MaChucNang]) VALUES (23, N'Resetpassword                                                                                                                                                                                                                                                  ', 23)
INSERT [dbo].[DanhGiaSP] ([MaDanhGia], [DanhGia], [BinhLuan], [HinhAnh], [MaSanPham], [id], [MaDH], [NgayDanhGia]) VALUES (N'4WEEMNQ7FH', 1, N'ncc', N'14ad2064-0126-44a6-a7e9-529213017788_tncd.jpg     ', 11, 5, N'sC584TfeYi', CAST(N'2024-05-20 22:51:30.000' AS DateTime))
INSERT [dbo].[DanhGiaSP] ([MaDanhGia], [DanhGia], [BinhLuan], [HinhAnh], [MaSanPham], [id], [MaDH], [NgayDanhGia]) VALUES (N'69UPBC0WOD', 4, N'iu thầy vinh', N'8167e247-834b-4aba-8b80-e4f92e09e5bf_veuocmo.png  ', 11, 23, N'vkJbMsWanL', CAST(N'2024-06-02 14:10:50.143' AS DateTime))
INSERT [dbo].[DanhGiaSP] ([MaDanhGia], [DanhGia], [BinhLuan], [HinhAnh], [MaSanPham], [id], [MaDH], [NgayDanhGia]) VALUES (N'HXV1T5WO0M', 4, N'iu thầy vinh', N'34a98b47-95df-4cfd-8c45-a427897d9c4e_veuocmo.png  ', 35, 23, N'vkJbMsWanL', CAST(N'2024-06-02 14:10:50.153' AS DateTime))
INSERT [dbo].[DanhGiaSP] ([MaDanhGia], [DanhGia], [BinhLuan], [HinhAnh], [MaSanPham], [id], [MaDH], [NgayDanhGia]) VALUES (N'RB2U3AC9RJ', 4, N'ngon Bổ rẻ cho tất cả moi người', N'584190be-bb42-401f-9c11-86931d1af418_di-san.jpg   ', 11, 5, N'QdHX9u7ev8', CAST(N'2024-05-22 00:00:00.000' AS DateTime))
INSERT [dbo].[DanhGiaSP] ([MaDanhGia], [DanhGia], [BinhLuan], [HinhAnh], [MaSanPham], [id], [MaDH], [NgayDanhGia]) VALUES (N'RD780SZC2L', 4, N'iu thầy vinh', N'73f8f7c1-c89c-4f7a-8926-82523726a40c_veuocmo.png  ', 34, 23, N'vkJbMsWanL', CAST(N'2024-06-02 14:10:50.150' AS DateTime))
INSERT [dbo].[DanhGiaSP] ([MaDanhGia], [DanhGia], [BinhLuan], [HinhAnh], [MaSanPham], [id], [MaDH], [NgayDanhGia]) VALUES (N'RLFNB18L4C', 5, N'Sản Phẩm Rất hịn nha sịn quá tr sịn luôn', N'addf1c67-6b78-4ce7-8884-648f2c993481_9.jpg        ', 11, 5, N'pAPs8GiHuG', CAST(N'2024-03-22 00:00:00.000' AS DateTime))
INSERT [dbo].[DanhGiaSP] ([MaDanhGia], [DanhGia], [BinhLuan], [HinhAnh], [MaSanPham], [id], [MaDH], [NgayDanhGia]) VALUES (N'YUDE2WB4F6', 4, N'ngon Bổ rẻ cho tất cả moi người', N'4f541fba-c494-4bfb-8d8c-dd89f19b4a45_di-san.jpg   ', 14, 5, N'QdHX9u7ev8', CAST(N'2003-03-21 00:00:00.000' AS DateTime))
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'12PXsjkZsY', CAST(N'2024-11-07 19:04:54.380' AS DateTime), 150000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'1GmJ2QAIPw', CAST(N'2024-10-19 11:14:18.240' AS DateTime), 180000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'1MsiQGHQQ8', CAST(N'2024-10-19 11:06:24.527' AS DateTime), 180000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'20w7HguB4u', CAST(N'2024-10-19 11:04:52.200' AS DateTime), 180000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'37q7SdXpNX', CAST(N'2024-10-06 12:20:13.127' AS DateTime), 180000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'4K5odcCxw7', CAST(N'2024-11-08 13:36:22.153' AS DateTime), 180000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'4m7ECIClnZ', CAST(N'2024-11-07 19:13:27.903' AS DateTime), 180000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'4tBlaKEMBi', CAST(N'2024-11-07 18:43:51.943' AS DateTime), 150000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'7M0nT2LcCR', CAST(N'2024-11-06 12:51:32.393' AS DateTime), 297000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'AAFu6GukPX', CAST(N'2024-10-06 11:47:32.023' AS DateTime), 888000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'bnakhTDzKs', CAST(N'2024-11-07 18:39:55.243' AS DateTime), 150000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'CmXvcsgVEg', CAST(N'2024-10-19 11:23:45.110' AS DateTime), 180000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'D3TuUhSSKq', CAST(N'2024-11-07 19:11:46.757' AS DateTime), 180000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'dMTwKkhag7', CAST(N'2024-11-07 19:16:35.173' AS DateTime), 590000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'DvzerUmJmU', CAST(N'2024-06-23 00:00:00.000' AS DateTime), 594000, N'assa', N'Đã Đánh Giá', N'Đã Giao')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'ev3ptZpKpa', CAST(N'2024-11-08 13:35:38.237' AS DateTime), 360000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'ExYVnhb6w6', CAST(N'2024-10-06 12:07:55.307' AS DateTime), 1321000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'Ey26rCiJsm', CAST(N'2024-11-07 19:19:26.510' AS DateTime), 650000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'F0n7FgvNOi', CAST(N'2024-10-19 10:52:24.880' AS DateTime), 180000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'F49wR8Xhfu', CAST(N'2024-10-19 11:22:13.757' AS DateTime), 180000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'fBBLlLi5xW', CAST(N'2024-11-07 18:49:22.403' AS DateTime), 180000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'gKR5De1UrZ', CAST(N'2024-11-08 12:38:01.593' AS DateTime), 180000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'GOXgJHkCRJ', CAST(N'2024-11-08 12:42:36.180' AS DateTime), 180000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'gPj0QdmqPe', CAST(N'2024-10-19 11:11:49.770' AS DateTime), 180000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'Gvcsox2jqV', CAST(N'2024-10-19 10:42:16.600' AS DateTime), 257000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'gXDzxSuDve', CAST(N'2024-10-19 10:49:15.503' AS DateTime), 150000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'H675eQawya', CAST(N'2024-10-19 10:53:08.870' AS DateTime), 150000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'hRh7dgCpPQ', CAST(N'2024-11-08 13:39:04.443' AS DateTime), 7349000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'hsrzPUjQQj', CAST(N'2024-11-07 22:50:23.540' AS DateTime), 180000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'IIEIy9d22X', CAST(N'2024-11-08 12:49:48.873' AS DateTime), 180000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'iOuLrHQDwM', CAST(N'2024-10-19 11:40:58.083' AS DateTime), 180000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'iuVkNWrsIa', CAST(N'2024-05-16 21:55:44.763' AS DateTime), 344000, N'Tphcm', N'Đã đánh giá', N'Đã Giao')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'jct6CjjTnl', CAST(N'2024-10-19 11:06:57.940' AS DateTime), 180000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'KahiTest  ', CAST(N'2024-05-05 00:00:00.000' AS DateTime), 200000, N'1111', N'Đã Đánh Giá', N'Đang Giao')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'kmSTRYGbVh', CAST(N'2024-06-02 10:41:43.083' AS DateTime), 783000, N'Tphcm', N'Đã thanh toán', N'Hủy')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'KpyU0lrvUz', CAST(N'2024-10-06 11:56:12.923' AS DateTime), 1664000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'kydeNnpSjl', CAST(N'2024-12-21 22:36:57.630' AS DateTime), 1232010, N'TP Hồ Chí Minh', N'Thanh toán không thành công.', N'Hủy')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'LHU9cuT8EW', CAST(N'2024-10-06 11:42:55.313' AS DateTime), 1505000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'M5Aijj47ml', CAST(N'2024-11-07 18:28:46.717' AS DateTime), 180000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'mRG6KCh8LT', CAST(N'2024-11-12 12:34:51.510' AS DateTime), 180000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'mzmbr5tkhM', CAST(N'2024-11-07 18:33:05.370' AS DateTime), 227000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'N1TJlXnwKi', CAST(N'2024-11-07 19:02:45.570' AS DateTime), 150000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'NfitvPZgwH', CAST(N'2024-10-06 12:06:44.597' AS DateTime), 787000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'nshFlNx668', CAST(N'2024-11-08 12:48:01.663' AS DateTime), 180000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'o3R4IokrBc', CAST(N'2024-11-07 18:15:22.347' AS DateTime), 180000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'o8wGrj2JVd', CAST(N'2024-11-07 19:08:29.147' AS DateTime), 287000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'OkhGxHy7YB', CAST(N'2024-10-19 11:09:32.743' AS DateTime), 590000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'otQpO21XO2', CAST(N'2024-10-06 11:59:51.637' AS DateTime), 787000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'pAPs8GiHuG', CAST(N'2024-05-13 22:55:10.943' AS DateTime), 174000, N'Tphcm', N'Đã đánh giá', N'Đã Giao')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'pipXpkaDuf', CAST(N'2024-11-07 18:56:08.300' AS DateTime), 150000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'pQkX028Db3', CAST(N'2024-10-19 11:00:55.827' AS DateTime), 150000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'PyD01MoXfT', CAST(N'2024-11-08 13:37:09.277' AS DateTime), 1782000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'Q6aI4Pzzic', CAST(N'2024-11-06 12:24:23.837' AS DateTime), 540000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'q6it30w7vP', CAST(N'2024-06-02 10:51:56.470' AS DateTime), 244150, N'Tphcm', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'QCQMnx0xUd', CAST(N'2024-11-07 22:46:56.043' AS DateTime), 180000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'QdHX9u7ev8', CAST(N'2024-05-13 22:29:04.993' AS DateTime), 344000, N'Tphcm', N'Đã đánh giá', N'Đã Giao')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'qRvn3oVumi', CAST(N'2024-10-06 12:00:30.627' AS DateTime), 787000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'R0LjcE9EgO', CAST(N'2024-11-07 18:32:16.670' AS DateTime), 310000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'RNuliTDjNo', CAST(N'2024-11-07 19:06:34.183' AS DateTime), 150000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'S5qrtwJ0Ve', CAST(N'2024-11-07 18:27:01.487' AS DateTime), 327000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'sC584TfeYi', CAST(N'2024-05-19 13:53:10.993' AS DateTime), 165300, N'Tphcm', N'Đã đánh giá', N'Đã Giao')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'SPadAnykno', CAST(N'2024-11-07 18:52:17.307' AS DateTime), 150000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'T2EL5OZdq0', CAST(N'2024-11-07 18:34:40.347' AS DateTime), 310000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'TR0wykcWnt', CAST(N'2024-10-06 12:03:55.610' AS DateTime), 787000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'tSVTKkoCYP', CAST(N'2024-10-19 11:33:14.920' AS DateTime), 650000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'tXpbJigm3W', CAST(N'2024-10-06 11:46:02.480' AS DateTime), 87000, N'TP Hồ Chí Minh', N'Thanh toán không thành công.', N'Hủy')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'u5DeidZU7L', CAST(N'2024-10-06 12:05:45.120' AS DateTime), 787000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'UHKCYqEhED', CAST(N'2024-11-07 19:01:33.220' AS DateTime), 150000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'UY2xprqKbU', CAST(N'2024-06-02 09:40:52.777' AS DateTime), 672450, N'Tphcm', N'Thanh toán không thành công.', N'Hủy')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'VF4umx0zz1', CAST(N'2024-06-02 14:04:56.127' AS DateTime), 604150, N'tphcm', N'Thanh toán không thành công.', N'Hủy')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'vkJbMsWanL', CAST(N'2024-06-02 14:03:38.970' AS DateTime), 823200, N'tphcm', N'Đã đánh giá', N'Đã Giao')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'VljUzAbWqR', CAST(N'2024-11-07 22:43:56.517' AS DateTime), 180000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'WEqN2yG191', CAST(N'2024-11-07 18:46:59.923' AS DateTime), 590000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'WS7WeFn8pM', CAST(N'2024-11-07 19:18:14.373' AS DateTime), 590000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'WytavB8gX1', CAST(N'2024-10-19 11:16:51.573' AS DateTime), 180000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'xaPNDyGeI4', CAST(N'2024-06-14 10:00:56.157' AS DateTime), 587000, N'12212', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'xi2wVlZ02E', CAST(N'2024-06-02 10:55:52.783' AS DateTime), 548100, N'Tphcm', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'YiURyTWxss', CAST(N'2024-06-13 19:47:50.170' AS DateTime), 354000, N'tphcm', N'Đã Thanh Toán', N'Đã Giao')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'yl2DqGGWzW', CAST(N'2024-10-06 12:11:34.653' AS DateTime), 727000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'z9L2xSDDB2', CAST(N'2024-10-19 11:25:32.807' AS DateTime), 180000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'zEyZnc8LCG', CAST(N'2024-12-21 22:07:47.207' AS DateTime), 1475000, N'TP Hồ Chí Minh', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[DonHang] ([MaDH], [NgayLap], [TongTien], [DiaChiGiaoHang], [TrangThaiDH], [ThongTinDH]) VALUES (N'zqBTtWkcQ1', CAST(N'2024-06-14 09:59:45.567' AS DateTime), 591000, N'12212', N'Đã thanh toán', N'Đang Chuẩn Bị')
INSERT [dbo].[GioHang] ([MaGioHang], [id]) VALUES (N'02780     ', 23)
INSERT [dbo].[GioHang] ([MaGioHang], [id]) VALUES (N'07915     ', 31)
INSERT [dbo].[GioHang] ([MaGioHang], [id]) VALUES (N'13642     ', 15)
INSERT [dbo].[GioHang] ([MaGioHang], [id]) VALUES (N'14998     ', 33)
INSERT [dbo].[GioHang] ([MaGioHang], [id]) VALUES (N'15497     ', 22)
INSERT [dbo].[GioHang] ([MaGioHang], [id]) VALUES (N'21046     ', 7)
INSERT [dbo].[GioHang] ([MaGioHang], [id]) VALUES (N'26545     ', 26)
INSERT [dbo].[GioHang] ([MaGioHang], [id]) VALUES (N'26733     ', 19)
INSERT [dbo].[GioHang] ([MaGioHang], [id]) VALUES (N'27043     ', 30)
INSERT [dbo].[GioHang] ([MaGioHang], [id]) VALUES (N'28305     ', 28)
INSERT [dbo].[GioHang] ([MaGioHang], [id]) VALUES (N'31958     ', 32)
INSERT [dbo].[GioHang] ([MaGioHang], [id]) VALUES (N'34709     ', 14)
INSERT [dbo].[GioHang] ([MaGioHang], [id]) VALUES (N'40802     ', 35)
INSERT [dbo].[GioHang] ([MaGioHang], [id]) VALUES (N'45940     ', 17)
INSERT [dbo].[GioHang] ([MaGioHang], [id]) VALUES (N'49681     ', 21)
INSERT [dbo].[GioHang] ([MaGioHang], [id]) VALUES (N'53736     ', 34)
INSERT [dbo].[GioHang] ([MaGioHang], [id]) VALUES (N'61497     ', 20)
INSERT [dbo].[GioHang] ([MaGioHang], [id]) VALUES (N'63998     ', 12)
INSERT [dbo].[GioHang] ([MaGioHang], [id]) VALUES (N'64779     ', 5)
INSERT [dbo].[GioHang] ([MaGioHang], [id]) VALUES (N'82428     ', 13)
INSERT [dbo].[GioHang] ([MaGioHang], [id]) VALUES (N'88150     ', 40)
SET IDENTITY_INSERT [dbo].[HinhAnhSP] ON 

INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (1, 11, N'AoThunStyle02-1.jpg                                                                                 ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (2, 14, N'AoThunM36-1.jpg                                                                                     ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (3, 34, N'AoThunM9-1.jpg                                                                                      ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (4, 35, N'AoThunVer36-1.jpg                                                                                   ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (5, 36, N'AoThunM12-1.jpg                                                                                     ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (6, 37, N'AoThunVer52-1.jpg                                                                                   ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (7, 38, N'AoThunM35-1.jpg                                                                                     ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (8, 39, N'AoThunM28-1.jpg                                                                                     ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (9, 40, N'AoThunM30-1.jpg                                                                                     ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (10, 41, N'AoThunVer50-1.jpg                                                                                   ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (11, 42, N'Jean28-1.jpg                                                                                        ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (12, 43, N'Jean27-1.jpg                                                                                        ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (13, 44, N'Jean30-1.jpg                                                                                        ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (14, 45, N'Jean33-1.jpg                                                                                        ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (15, 46, N'Jean01-1.jpg                                                                                        ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (16, 47, N'Jean02-1.jpg                                                                                        ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (17, 48, N'Jean04-1.jpg                                                                                        ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (18, 49, N'AoSoMiSeafarer18-1.jpg                                                                              ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (19, 50, N'AoSoMi77-22-1.jpg                                                                                   ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (30, 73, N'GiayTayCotDay-1.jpg                                                                                 ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (31, 72, N'GiayTayLuoi-1.jpg                                                                                   ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (31, 80, N'GiayTayLuoiA4-1.jpg                                                                                 ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (32, 73, N'GiayTayCotDay-1.jpg                                                                                 ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (33, 72, N'SoMiGioCat01-1.jpg                                                                                  ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (33, 80, N'GiayTayLuoiA4-1.jpg                                                                                 ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (34, 86, N'GiayTayCotDay44-1.jpg                                                                               ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (35, 88, N'GiayTayLuoi23-1.jpg                                                                                 ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (36, 89, N'GiayTayCộtDâyA5-1.jpg                                                                               ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (37, 90, N'GiayCasualGioCat15-1.jpg                                                                            ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (38, 93, N'GiayCasualGioCat18-1.jpg                                                                            ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (39, 94, N'BaloGenToB352-1.jpg                                                                                 ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (41, 100, N'BaloGentoB350-1.jpg                                                                                 ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (42, 101, N'BaloSpeed52-1.jpg                                                                                   ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (43, 102, N'BaloVer6-1.jpg                                                                                      ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (44, 103, N'BaloJHS59-1.jpg                                                                                     ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (45, 105, N'BaloM7-1.jpg                                                                                        ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (46, 106, N'BaloGioCat04-1.jpg                                                                                  ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (47, 107, N'BaloGioCat02-1.jpg                                                                                  ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (48, 108, N'BaloGioCat09-1.jpg                                                                                  ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (49, 120, N'seafarer5-1.jpg                                                                                     ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (50, 121, N'seafarer18-1.jpg                                                                                    ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (52, 123, N'seafarer1-1.jpg                                                                                     ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (53, 124, N'seafarer15-1.jpg                                                                                    ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (54, 127, N'seafarer8-1.jpg                                                                                     ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (55, 128, N'seafarer16-1.jpg                                                                                    ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (56, 129, N'seafarer17-1.jpg                                                                                    ')
INSERT [dbo].[HinhAnhSP] ([id], [MaSanPham], [HinhAnh]) VALUES (57, 130, N'seafarer6-1.jpg                                                                                     ')
SET IDENTITY_INSERT [dbo].[HinhAnhSP] OFF
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'0LM8T7CK9R                                        ', N'Mua Giảm Giá', CAST(N'2024-05-11 15:10:05.563' AS DateTime), CAST(N'2024-06-30 00:00:00.000' AS DateTime), N'Giảm Giá', 10, 0, 5)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'0VSEFQ3LLN                                        ', N'Mua Giảm Giá', CAST(N'2024-06-14 09:59:45.637' AS DateTime), CAST(N'2024-06-29 09:59:45.637' AS DateTime), N'Giảm Giá', 5, 0, 12)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'2TT8WV85G4                                        ', N'Mua Giảm Giá', CAST(N'2024-06-14 10:00:56.197' AS DateTime), CAST(N'2024-06-29 10:00:56.197' AS DateTime), N'Giảm Giá', 5, 0, 12)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'418M1BLH6O                                        ', N'Mua Giảm Giá', CAST(N'2024-11-07 19:16:35.253' AS DateTime), CAST(N'2024-11-22 19:16:35.253' AS DateTime), N'Giảm Giá', 5, 0, 5)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'50ZFXGR7TL                                        ', N'Mua Giảm Giá', CAST(N'2024-10-06 11:59:51.657' AS DateTime), CAST(N'2024-10-21 11:59:51.657' AS DateTime), N'Giảm Giá', 5, 0, 5)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'6ALGD3ART5                                        ', N'Mua Giảm Giá', CAST(N'2024-10-06 11:47:32.073' AS DateTime), CAST(N'2024-10-21 11:47:32.073' AS DateTime), N'Giảm Giá', 5, 0, 5)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'7ENGR53FXI                                        ', N'Chương trình giảm giá sốc ', CAST(N'2024-06-02 00:00:00.000' AS DateTime), CAST(N'2024-06-03 00:00:00.000' AS DateTime), N'iu thầy Vinh', 20, NULL, NULL)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'7RRSGOWXDW                                        ', N'Mua Giảm Giá', CAST(N'2024-11-08 13:37:09.317' AS DateTime), CAST(N'2024-11-23 13:37:09.317' AS DateTime), N'Giảm Giá', 10, 0, 5)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'8A35WQZ9G7                                        ', N'Mua Giảm Giá', CAST(N'2024-10-06 11:42:55.663' AS DateTime), CAST(N'2024-10-21 11:42:55.663' AS DateTime), N'Giảm Giá', 10, 0, 5)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'A4L48IATMS                                        ', N'Mua Giảm Giá', CAST(N'2024-05-12 14:13:00.573' AS DateTime), CAST(N'2024-05-27 14:13:00.573' AS DateTime), N'Giảm Giá', 5, 0, 7)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'AIFFQRDLXK                                        ', N'Mua Giảm Giá', CAST(N'2024-10-19 11:33:14.983' AS DateTime), CAST(N'2024-11-03 11:33:14.983' AS DateTime), N'Giảm Giá', 5, 0, 5)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'BMYX2IIPT7                                        ', N'KhangKhaiDung', CAST(N'2003-05-22 00:00:00.000' AS DateTime), CAST(N'2024-12-23 00:00:00.000' AS DateTime), N'KHANG KHAI DUNG DA CHO BAN GIAM GIA', 10, NULL, NULL)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'C4ZS8EP8BH                                        ', N'Mua Giảm Giá', CAST(N'2024-10-06 11:56:12.957' AS DateTime), CAST(N'2024-10-21 11:56:12.957' AS DateTime), N'Giảm Giá', 10, 0, 5)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'G5W6DSMTKE                                        ', N'Mua Giảm Giá', CAST(N'2024-10-06 12:11:34.760' AS DateTime), CAST(N'2024-10-21 12:11:34.760' AS DateTime), N'Giảm Giá', 5, 0, 5)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'GI4LV54H40                                        ', N'Mua Giảm Giá', CAST(N'2024-11-07 19:18:21.943' AS DateTime), CAST(N'2024-11-22 19:18:21.943' AS DateTime), N'Giảm Giá', 5, 0, 5)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'GKM43NTHPV                                        ', N'Giảm Giá 10%', CAST(N'2024-05-23 00:00:00.000' AS DateTime), CAST(N'2024-06-23 00:00:00.000' AS DateTime), N'giảm', 10, NULL, NULL)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'J2LGOEBC6X                                        ', N'Mua Giảm Giá', CAST(N'2024-05-13 11:31:21.470' AS DateTime), CAST(N'2024-05-28 11:31:21.470' AS DateTime), N'Giảm Giá', 5, 0, 5)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'JAAZ6T4LGF                                        ', N'Mua Giảm Giá', CAST(N'2024-10-06 12:00:30.647' AS DateTime), CAST(N'2024-10-21 12:00:30.647' AS DateTime), N'Giảm Giá', 5, 0, 5)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'JQAGXH810Z                                        ', N'Mua Giảm Giá', CAST(N'2024-10-06 12:06:44.630' AS DateTime), CAST(N'2024-10-21 12:06:44.630' AS DateTime), N'Giảm Giá', 5, 0, 5)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'N4CFR6650V                                        ', N'Mua Giảm Giá', CAST(N'2024-11-07 19:19:26.587' AS DateTime), CAST(N'2024-11-22 19:19:26.587' AS DateTime), N'Giảm Giá', 5, 0, 5)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'NN621V4IDQ                                        ', N'Mua Giảm Giá', CAST(N'2024-10-06 12:03:55.813' AS DateTime), CAST(N'2024-10-21 12:03:55.813' AS DateTime), N'Giảm Giá', 5, 0, 5)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'P5TRP91XYV                                        ', N'Mua Giảm Giá', CAST(N'2024-11-08 13:39:04.483' AS DateTime), CAST(N'2024-11-23 13:39:04.483' AS DateTime), N'Giảm Giá', 10, 0, 5)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'PPPLWE1HWT                                        ', N'Mua Giảm Giá', CAST(N'2024-06-02 14:03:39.037' AS DateTime), CAST(N'2024-06-17 14:03:39.037' AS DateTime), N'Giảm Giá', 5, 0, 23)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'PUH8INUIDX                                        ', N'Chương trình giảm giá sốc ', CAST(N'2024-06-01 00:00:00.000' AS DateTime), CAST(N'2024-06-03 00:00:00.000' AS DateTime), N'giảm giá', 17, NULL, NULL)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'Q36SW9ZV9C                                        ', N'Mua Giảm Giá', CAST(N'2024-06-13 19:47:50.237' AS DateTime), CAST(N'2024-06-28 19:47:50.237' AS DateTime), N'Giảm Giá', 5, 0, 26)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'Q9HILPZHAE                                        ', N'Mua Giảm Giá', CAST(N'2024-05-12 11:51:04.020' AS DateTime), CAST(N'2024-05-27 11:51:04.020' AS DateTime), N'Giảm Giá', 5, 0, 5)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'QIM7BDI6T2                                        ', N'Mua Giảm Giá', CAST(N'2024-05-11 15:36:40.043' AS DateTime), CAST(N'2024-05-26 15:36:40.043' AS DateTime), N'Giảm Giá', 5, 0, 5)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'QU31JFZX5N                                        ', N'Mua Giảm Giá', CAST(N'2024-11-07 18:47:00.010' AS DateTime), CAST(N'2024-11-22 18:47:00.010' AS DateTime), N'Giảm Giá', 5, 0, 5)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'RL2Y7A6M0X                                        ', N'Mua Giảm Giá', CAST(N'2024-10-06 12:05:45.917' AS DateTime), CAST(N'2024-10-21 12:05:45.917' AS DateTime), N'Giảm Giá', 5, 0, 5)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'RLF833LG34                                        ', N'Giảm Giá 5%', CAST(N'2024-05-23 00:00:00.000' AS DateTime), CAST(N'2024-06-23 00:00:00.000' AS DateTime), N'Giảm Giá 5%', 5, NULL, NULL)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'S9LJT556M6                                        ', N'Mua Giảm Giá', CAST(N'2024-05-17 13:53:07.593' AS DateTime), CAST(N'2024-06-01 13:53:07.593' AS DateTime), N'Giảm Giá', 5, 0, 7)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'TDOCRIOWI5                                        ', N'Mua Giảm Giá', CAST(N'2024-05-11 15:17:24.483' AS DateTime), CAST(N'2024-05-26 15:17:24.483' AS DateTime), N'Giảm Giá', 5, 0, 5)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'TKMQWKRFZV                                        ', N'Mua Giảm Giá', CAST(N'2024-11-06 12:24:23.947' AS DateTime), CAST(N'2024-11-21 12:24:23.947' AS DateTime), N'Giảm Giá', 5, 0, 5)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'XTVVFTM1ID                                        ', N'Mua Giảm Giá', CAST(N'2024-12-21 22:07:49.167' AS DateTime), CAST(N'2025-01-05 22:07:49.167' AS DateTime), N'Giảm Giá', 10, 0, 5)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'Y8UEXW182A                                        ', N'Mua Giảm Giá', CAST(N'2024-06-02 10:55:52.847' AS DateTime), CAST(N'2024-06-17 10:55:52.847' AS DateTime), N'Giảm Giá', 5, 0, 5)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'YDSPHSONQR                                        ', N'Mua Giảm Giá', CAST(N'2024-10-19 11:09:32.860' AS DateTime), CAST(N'2024-11-03 11:09:32.860' AS DateTime), N'Giảm Giá', 5, 0, 5)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'YWQNK0062L                                        ', N'Mua Giảm Giá', CAST(N'2024-05-12 14:11:05.640' AS DateTime), CAST(N'2024-05-27 14:11:05.640' AS DateTime), N'Giảm Giá', 5, 0, 5)
INSERT [dbo].[KhuyenMai] ([MaVoucher], [TenChuongTrinh], [ThoiGianBatDau], [ThoiGianKetThuc], [GhiChu], [PhanTramGiam], [SoLan], [id]) VALUES (N'ZCOVSSN6MO                                        ', N'Mua Giảm Giá', CAST(N'2024-10-06 12:07:55.330' AS DateTime), CAST(N'2024-10-21 12:07:55.330' AS DateTime), N'Giảm Giá', 10, 0, 5)
SET IDENTITY_INSERT [dbo].[LoaiSP] ON 

INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP], [Slug]) VALUES (1, N'Áo Thun', N'ao-thun')
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP], [Slug]) VALUES (2, N'Áo Sơ Mi', N'ao-so-mi')
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP], [Slug]) VALUES (3, N'Giày', N'giay')
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP], [Slug]) VALUES (4, N'Balo', N'balo')
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP], [Slug]) VALUES (5, N'Quần Jean', N'quan-jean')
SET IDENTITY_INSERT [dbo].[LoaiSP] OFF
SET IDENTITY_INSERT [dbo].[PhanHoiDanhGia] ON 

INSERT [dbo].[PhanHoiDanhGia] ([MaPhanHoi], [MaDanhGia], [PhanHoi]) VALUES (1, N'YUDE2WB4F6', N'cám ơn bạn đã ủng hộ shop ')
INSERT [dbo].[PhanHoiDanhGia] ([MaPhanHoi], [MaDanhGia], [PhanHoi]) VALUES (3, N'4WEEMNQ7FH', N'căm ơn bạn đã ủng hộ shop dài lâu')
INSERT [dbo].[PhanHoiDanhGia] ([MaPhanHoi], [MaDanhGia], [PhanHoi]) VALUES (4, N'RB2U3AC9RJ', N'căm ơn bạn đã ủng hộ shop dài lâu')
INSERT [dbo].[PhanHoiDanhGia] ([MaPhanHoi], [MaDanhGia], [PhanHoi]) VALUES (5, N'4WEEMNQ7FH', N'hehe')
INSERT [dbo].[PhanHoiDanhGia] ([MaPhanHoi], [MaDanhGia], [PhanHoi]) VALUES (6, N'4WEEMNQ7FH', N'hehe')
INSERT [dbo].[PhanHoiDanhGia] ([MaPhanHoi], [MaDanhGia], [PhanHoi]) VALUES (7, N'4WEEMNQ7FH', N'de')
INSERT [dbo].[PhanHoiDanhGia] ([MaPhanHoi], [MaDanhGia], [PhanHoi]) VALUES (8, N'RLFNB18L4C', N'cám ơn nha')
INSERT [dbo].[PhanHoiDanhGia] ([MaPhanHoi], [MaDanhGia], [PhanHoi]) VALUES (9, N'RD780SZC2L', N'cám ơn đã iu mến thầy')
SET IDENTITY_INSERT [dbo].[PhanHoiDanhGia] OFF
INSERT [dbo].[PhanQuyenNhanVien] ([MaChucNang], [idNhanVien], [GhiChu]) VALUES (1, 7, N'Sản Phẩm                                                                                                                                                                                                                                                       ')
INSERT [dbo].[PhanQuyenNhanVien] ([MaChucNang], [idNhanVien], [GhiChu]) VALUES (2, 7, NULL)
INSERT [dbo].[PhanQuyenNhanVien] ([MaChucNang], [idNhanVien], [GhiChu]) VALUES (3, 7, NULL)
INSERT [dbo].[PhanQuyenNhanVien] ([MaChucNang], [idNhanVien], [GhiChu]) VALUES (4, 7, NULL)
INSERT [dbo].[PhanQuyenNhanVien] ([MaChucNang], [idNhanVien], [GhiChu]) VALUES (5, 7, NULL)
INSERT [dbo].[PhanQuyenNhanVien] ([MaChucNang], [idNhanVien], [GhiChu]) VALUES (6, 7, NULL)
INSERT [dbo].[PhanQuyenNhanVien] ([MaChucNang], [idNhanVien], [GhiChu]) VALUES (7, 7, NULL)
INSERT [dbo].[PhanQuyenNhanVien] ([MaChucNang], [idNhanVien], [GhiChu]) VALUES (8, 7, NULL)
INSERT [dbo].[PhanQuyenNhanVien] ([MaChucNang], [idNhanVien], [GhiChu]) VALUES (9, 7, NULL)
INSERT [dbo].[PhanQuyenNhanVien] ([MaChucNang], [idNhanVien], [GhiChu]) VALUES (10, 7, N'Khuyến Mãi                                                                                                                                                                                                                                                     ')
INSERT [dbo].[PhanQuyenNhanVien] ([MaChucNang], [idNhanVien], [GhiChu]) VALUES (11, 7, N'Số Lương                                                                                                                                                                                                                                                       ')
INSERT [dbo].[PhanQuyenNhanVien] ([MaChucNang], [idNhanVien], [GhiChu]) VALUES (12, 7, NULL)
INSERT [dbo].[PhanQuyenNhanVien] ([MaChucNang], [idNhanVien], [GhiChu]) VALUES (13, 7, NULL)
INSERT [dbo].[PhanQuyenNhanVien] ([MaChucNang], [idNhanVien], [GhiChu]) VALUES (14, 13, N'Đơn Hàng                                                                                                                                                                                                                                                       ')
INSERT [dbo].[PhanQuyenNhanVien] ([MaChucNang], [idNhanVien], [GhiChu]) VALUES (15, 13, NULL)
INSERT [dbo].[PhanQuyenNhanVien] ([MaChucNang], [idNhanVien], [GhiChu]) VALUES (16, 13, NULL)
INSERT [dbo].[PhanQuyenNhanVien] ([MaChucNang], [idNhanVien], [GhiChu]) VALUES (17, 13, N'Đánh Giá                                                                                                                                                                                                                                                       ')
INSERT [dbo].[PhanQuyenNhanVien] ([MaChucNang], [idNhanVien], [GhiChu]) VALUES (18, 13, NULL)
INSERT [dbo].[PhanQuyenNhanVien] ([MaChucNang], [idNhanVien], [GhiChu]) VALUES (19, 14, N'Tài Khoản                                                                                                                                                                                                                                                      ')
INSERT [dbo].[PhanQuyenNhanVien] ([MaChucNang], [idNhanVien], [GhiChu]) VALUES (20, 14, NULL)
INSERT [dbo].[PhanQuyenNhanVien] ([MaChucNang], [idNhanVien], [GhiChu]) VALUES (21, 14, NULL)
INSERT [dbo].[PhanQuyenNhanVien] ([MaChucNang], [idNhanVien], [GhiChu]) VALUES (22, 14, NULL)
INSERT [dbo].[PhanQuyenNhanVien] ([MaChucNang], [idNhanVien], [GhiChu]) VALUES (23, 14, N'Resetpassword                                                                                                                                                                                                                                                  ')
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (11, N'Áo Thun Cổ Tròn Thể Thao Style 02', 1, 87000, N'AoThunStyle02.jpg', N'Áo Thun Cổ Tròn Tay Ngắn Sợi Nhân Tạo Mặc Không Cần Ủi Trơn Dáng Vừa Đơn Giản No Style 02', 1, 0, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (14, N'Áo Thun Cổ Tròn Tay Ngắn M36', 2, 257000, N'AoThunM36.jpg', N'Họa tiết ép silicon + rã + le mí - Thích hợp cho các hoạt động thể thao, vận động hàng ngày
', 1, 0, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (34, N'Áo Thun Cổ Tròn Tay Ngắn M9', 3, 150000, N'AoThunM9.jpg', N'- Co dãn 2 chiều - Thấm hút mồ hôi tốt mang lại cảm giác thoáng mát
', 1, 0, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (35, N'Áo Thun Cổ Tròn Tay Ngắn Ver36', 4, 200000, N'AoThunVer36.jpg', N'- Cổ áo, cổ tay, lai áo được bo vải gân -Họa tiết in dẻo + thêu đắp giống', 1, 0, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (36, N'Áo Thun Cổ Tròn Tay Ngắn M12', 5, 180000, N'AoThunM12.jpg', N'- Kiểm soát mùi - Điều hòa nhiệt -Họa tiết may đắp logo TPR
', 1, 0, NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (37, N'Áo Thun Cổ Tròn Tay Ngắn Ver52', 5, 140000, N'AoThunVer52.jpg', N'- Kiểm soát mùi - Điều hòa nhiệt -Họa tiết may miếng đắp', 1, 0, NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (38, N'Áo Thun Cổ Tròn Tay Dài M35', 6, 250000, N'AoThunM35.jpg', N'- Trọng lượng nhẹ - Làm mát cơ thể -Họa tiết in dẻo', 1, 0, NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (39, N'Áo Thun Cổ Tròn Tay Ngắn M28', 6, 270000, N'AoThunM28.jpg', N'- Mềm mại - Thoáng khí - Nhanh khô -Họa tiết nhãn ép', 1, 0, NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (40, N'Áo Thun Cổ Tròn Tay Ngắn M30', 6, 260000, N'AoThunM30.jpg', N'- Trọng lượng nhẹ - Làm mát cơ thể -Họa tiết in dẻo', 1, 0, NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (41, N'Áo Thun Cổ Tròn Tay Ngắn Ver50', 5, 140000, N'AoThunVer50.jpg', N'- Trọng lượng nhẹ - Làm mát cơ thể -Họa tiết in dẻo', 1, 0, NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (42, N'Quần Jean Lưng Gài Ống Đứng Ver28', 7, 300000, N'Jean28.jpg', N'- Độ bền - Co giãn nhẹ - Đứng phom', 5, 0, 5)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (43, N'Quần Jean Lưng Gài Ống Đứng Ver27', 7, 260000, N'Jean27.jpg', N'- Độ bền - Co giãn nhẹ - Đứng phom', 5, 0, 5)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (44, N'Quần Jean Lưng Gài Ống Đứng Ver30', 7, 270000, N'Jean30.jpg', N'- Độ bền - Co giãn nhẹ - Đứng phom', 5, 0, 5)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (45, N'Quần Jean Lưng Gài Ống Đứng Ver33', 7, 250000, N'Jean33.jpg', N'- Độ bền - Co giãn nhẹ - Đứng phom', 5, 0, 5)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (46, N'Quần Jean Lưng Gài Ống Rộng 01', 8, 400000, N'Jean01.jpg', N'- 2 túi đắp phía sau rộng, đường may chắc chắn dễ dàng để các vật dụng như ví, điện thoại - Túi đồng hồ bên phải khi mặc,', 5, 0, 5)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (47, N'Quần Jean Lưng Gài Ống Đứng 02', 8, 450000, N'Jean02.jpg', N'- 2 túi đắp phía sau rộng, đường may chắc chắn dễ dàng để các vật dụng như ví, điện thoại - Túi đồng hồ bên phải khi mặc,', 5, 0, NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (48, N'Quần Jean Lưng Gài Ống Đứng 04', 8, 350000, N'Jean04.jpg', N'- 2 túi đắp phía sau rộng, đường may chắc chắn dễ dàng để các vật dụng như ví, điện thoại - Túi đồng hồ bên phải khi mặc,', 5, 0, NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (49, N'Áo Sơ Mi Cổ Mở Tay Ngắn Seafarer 18', 9, 250000, N'AoSoMiSeafarer18.jpg', N'- Khả năng kháng khuẩn và nấm mốc - Độ bền cao - Màu sắc lâu phai', 2, 0, NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (50, N'Áo Sơ Mi Cổ Bẻ Tay Ngắn Seventy Seven 22', 9, 210000, N'AoSoMi77-22.jpg', N'- Khả năng kháng khuẩn và nấm mốc - Độ bền cao - Màu sắc lâu phai', 2, 0, NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (72, N'Áo Sơ Mi Cổ Bẻ Tay Dài Sợi Nhân Tạo Thấm Hút Trơn Dáng Rộng BST Thiết Kế Miền Gió Cát 22', 10, 297000, N'somivaikakinhungmem.jpg', N'Thành phần: 100% Polyester
- Kỹ thuật: Thêu', 2, 1, NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (73, N'Giày Tây Cột Dây Da Phụ Kiện A8 2023
', 14, 800000, N'GiayTayCotDay.jpg', N'- Đế cao su tăng chiều cao - May đế', 3, 0, NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (80, N'Giày Tây Lười Da Phụ Kiện A4 2023
', 15, 800000, N'GiayTayLuoiA4.jpg', N'- Mảnh thun co giãn kéo dài từ cổ giày xuống dưới mắt cá nhưng không dài đến đế giày - Đế cao su 100% - May đế', 3, 0, NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (86, N'Giày Tây Cột Dây Da Phụ Kiện Style 44 2023
', 12, 1000000, N'GiayTayCotDay44.jpg', N'- Mảnh thun co giãn kéo dài từ cổ giày xuống dưới mắt cá nhưng không dài đến đế giày - Đế cao su 100% - May đế', 3, 0, 3)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (88, N'Giày Tây Lười Da Phụ Kiện Style 23
', 15, 700000, N'GiayTayLuoi23.jpg', N'- Đế cao su nguyên chất, đế cao 3,5cm - Lót talon sử dụng Mousse Memory Foam lót dưới bàn chân êm ái khi sử dụng', 3, 0, 3)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (89, N'Giày Tây Cột Dây Nguyên Bản A5 2022
', 14, 600000, N'GiayTayCộtDâyA5.jpg', N'- Đế cao su - Dây tròn sáp 3.0mm - May đế', 3, 0, 3)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (90, N'Giày Casual Phụ Kiện Miền Gió Cát 15
', 13, 580000, N'GiayCasualGioCat15.jpg', N'- Lót Vòng cổ Microfiber - Lót thân + lưỡi mũi Mousse 3mm + Mesh êm chân - Talon mesh+ mousse 3.5mm - Đế cao su', 3, 1, 3)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (93, N'Giày Casual Phụ Kiện Miền Gió Cát 18
', 13, 590000, N'GiayCasualGioCat18.jpg', N'-Lót thân + lưỡi gà Mousse 3mm + Mesh êm chân -Talon mesh + mousse 3.5mm - Đế cao su - May đế', 3, 1, NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (94, N'Balo nam da bò Gento B352
', 15, 2000000, N'BaloGenToB352.jpg', N'-Vật liệu nhập khẩu từ Italy -Được may hoàn toàn thủ công -Thiết kế đơn giản nhưng không kém phần sang trọng', 4, 0, NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (100, N'Balo túi xách nhỏ gọn Gento B350
', 12, 2200000, N'BaloGentoB350.jpg', N'-Vật liệu nhập khẩu từ Italy -Được may hoàn toàn thủ công -Thiết kế đơn giản nhưng không kém phần sang trọng', 4, 0, 4)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (101, N'Balo Modern BST Thiết Kế SPEED 52
', 11, 500000, N'BaloSpeed52.jpg', N'- Ngăn chính rộng với sức chức lớn - Nhiều ngăn nhỏ tiện dụng - Dây móc chìa khóa tiện lợi', 4, 0, 4)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (102, N'Balo Daily Phụ Kiện Nguyên Bản Ver6
', 11, 400000, N'BaloVer6.jpg', N'- Lót 210PU Đen logo chữ Y mặt trái - Dây kéo YKK #5/8 - Đầu kéo YKK#5/8 - Thêu Y2010 - Thiết kế nhiều ngăn tiện dụng', 4, 0, 4)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (103, N'Balo Modern BST Thiết Kế JHS 59
', 11, 600000, N'BaloJHS59.jpg', N'-Lót 210 PU Xám -PE foam 5mm/8mm chống sốc tuyệt đối -Dây kéo - Đầu kéo YKK #5/8 -Họa tiết in lụa', 4, 0, 4)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (105, N'Balo Modern Phụ Kiện M7
', 11, 300000, N'BaloM7.jpg', N'- Dây kéo - Đầu kéo YKK #5/8 - Nhãn dệt chữ Y/Ver3 - Logo TPR Y2010 - Thiết kế nhiều ngăn tiện dụng', 4, 0, 4)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (106, N'Balo Vintage Phụ Kiện Miền Gió Cát 04
', 12, 700000, N'BaloGioCat04.jpg', N'- Lót 210 Korea - Dây kéo YKK #5 - Khóa bóp - Kỹ thuật: Thêu đắp giống', 4, 1, NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (107, N'Balo Vintage Phụ Kiện Miền Gió Cát 02
', 12, 650000, N'BaloGioCat02.jpg', N'- Lót 210 Korea - Dây kéo YKK #5 - Khóa bóp - Kỹ thuật: Thêu đắp giống', 4, 1, 4)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (108, N'Balo Vintage Phụ Kiện Miền Gió Cát 09
', 12, 680000, N'BaloGioCat09.jpg', N'- Lót 210 Korea - Dây kéo YKK #5 - Khóa bóp - Kỹ thuật: Thêu đắp giống', 4, 1, NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (109, N'Áo Sơ Mi Cổ Bẻ Tay Dài Di Sản M4', 20, 330000, N'AoSoMiDiSanM4.jpg', N'- Fast Drying - Nhanh khô - Ice Cool Touch - Làm mát cơ thể - UV Protechtion - Chống nắng', 2, 2, NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (111, N'Áo Sơ Mi Cổ Bẻ Tay Dài Di Sản M4', 20, 330000, N'AoSoMiDiSanDenM4.jpg', N'- Fast Drying - Nhanh khô - Ice Cool Touch - Làm mát cơ thể - UV Protechtion - Chống nắng', 2, 2, NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (112, N'Áo Thun Cổ Tròn Tay Ngắn Di Sản Ver2', 10, 270000, N'AoThunDiSanVer2.jpg', N'- Kỹ thuật Ép nhãn cực quang - In bóng - Thiết kế cổ tròn - Sử dụng bo dệt cotton làm cổ áo', 1, 2, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (113, N'Áo Thun Cổ Tròn Tay Ngắn Di Sản Ver4', 10, 260000, N'AoThunDiSanVer4.jpg', N'- Kỹ thuật Ép nhãn cực quang - In bóng - Thiết kế cổ tròn - Sử dụng bo dệt cotton làm cổ áo', 1, 2, NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (114, N'Áo Thun Cổ Tròn Tay Ngắn Di Sản Ver2', 10, 310000, N'AoThunDiSanAnubis.jpg', N'- Kỹ thuật: In Nhũ - Thiết kế cổ tròn - Sử dụng bo dệt cotton làm cổ áo', 1, 2, NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (115, N'Áo Thun Cổ Tròn Tay Ngắn Di Sản Ver2', 10, 300000, N'AoThunDiSanAnubisTrang.jpg', N'- Kỹ thuật: In Nhũ - Thiết kế cổ tròn - Sử dụng bo dệt cotton làm cổ áo', 1, 2, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (120, N'Áo Thun Cổ Tròn Tay Ngắn Seafarer 05', 10, 287000, N'seafarer5.jpg', N'Thấm hút- Thoát ẩm tốt
- Bề mặt mềm mại
- Kiểm soát mùi
- Điều hòa nhiệt', 1, 3, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (121, N'Áo Sơ Mi Cổ Mở Tay Ngắn Seafarer 18', 1, 297000, N'seafarer18.jpg', N'Kháng khuẩn và nấm mốc
- Độ bền cao
- Màu sắc lâu phai', 2, 3, 2)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (123, N'Áo Thun Cổ Tròn Tay Ngắn Seafarer 01', 10, 287000, N'seafarer1.jpg', N'100% Cotton
- Thấm hút
- Thoát ẩm tốt
- Bề mặt mềm mại
- Kiểm soát mùi
- Điều hòa nhiệt', 1, 3, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (124, N'Áo Sơ Mi Cổ Bẻ Tay Dài  Seafarer 15', 12, 327000, N'seafarer15.jpg', N'12% Modal 88% Polyester
- Kháng khuẩn
- Thoáng mát', 2, 3, NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (127, N'Áo Thun Cổ Tròn 3 Lỗ Seafarer 08', 1, 227000, N'seafarer8.jpg', N'100% Polyester
- Mềm mại
- Thoáng khí
- Nhanh khô
-Nhẹ, hạn chế co rút', 1, 3, NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (128, N'Áo khoác Không Nón Vải Kaki Seafarer 16', 11, 557000, N'seafarer16.jpg', N'98% Cotton 2% Spandex
- Thấm hút tốt
- Co giãn tốt', 2, 3, NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (129, N'Áo Thun Cổ Tròn Tay Dài Seafarer 07', 10, 357000, N'seafarer17.jpg', N'100% Cotton
- Thấm hút thoát ẩm
- Mềm mại
- Thân thiện với môi trường
- Kiểm soát mùi
- Điều hòa nhiệt', 1, 3, NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaVatLieu], [Gia], [HinhAnh], [MoTa], [MaLoaiSP], [MaBoSuuTap], [MaChiTietGiam]) VALUES (130, N'Áo Thun Cổ Tròn Tay Ngắn Seafarer 06', 1, 287000, N'seafarer6.jpg', N'<p>100% Cotton - Thấm h&uacute;t - Tho&aacute;t ẩm tốt - Bề mặt mềm mại - Kiểm so&aacute;t m&ugrave;i - Điều h&ograve;a nhiệt</p>
', 1, 3, NULL)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([id], [TenDangNhap], [MatKhau], [LoaiTK], [idTK]) VALUES (5, N'admin                                                  ', N'202cb962ac59075b964b07152d234b70                       ', N'admin                                                  ', 1)
INSERT [dbo].[TaiKhoan] ([id], [TenDangNhap], [MatKhau], [LoaiTK], [idTK]) VALUES (7, N'KDK                                                    ', N'202cb962ac59075b964b07152d234b70                       ', N'Nhân Viên                                              ', 5)
INSERT [dbo].[TaiKhoan] ([id], [TenDangNhap], [MatKhau], [LoaiTK], [idTK]) VALUES (12, N'huukhai                                                ', N'202cb962ac59075b964b07152d234b70                       ', N'User                                                   ', 26)
INSERT [dbo].[TaiKhoan] ([id], [TenDangNhap], [MatKhau], [LoaiTK], [idTK]) VALUES (13, N'NhanVien1                                              ', N'202cb962ac59075b964b07152d234b70                       ', N'Nhân Viên                                              ', 13)
INSERT [dbo].[TaiKhoan] ([id], [TenDangNhap], [MatKhau], [LoaiTK], [idTK]) VALUES (14, N'NhanVien2                                              ', N'202cb962ac59075b964b07152d234b70                       ', N'Nhân Viên                                              ', 14)
INSERT [dbo].[TaiKhoan] ([id], [TenDangNhap], [MatKhau], [LoaiTK], [idTK]) VALUES (15, N'kikyou695057785                                        ', N'cae5a2f0fc716390c2cfc2eeb2b1a75d                       ', N'User                                                   ', 15)
INSERT [dbo].[TaiKhoan] ([id], [TenDangNhap], [MatKhau], [LoaiTK], [idTK]) VALUES (23, N'YeuThayVinh                                            ', N'202cb962ac59075b964b07152d234b70                       ', N'User                                                   ', 35)
INSERT [dbo].[TaiKhoan] ([id], [TenDangNhap], [MatKhau], [LoaiTK], [idTK]) VALUES (24, N'kikyoutnt55@gmail.com                                  ', N'202cb962ac59075b964b07152d234b70                       ', N'User                                                   ', 36)
INSERT [dbo].[TaiKhoan] ([id], [TenDangNhap], [MatKhau], [LoaiTK], [idTK]) VALUES (26, N'DungNu                                                 ', N'202cb962ac59075b964b07152d234b70                       ', N'User                                                   ', 38)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
SET IDENTITY_INSERT [dbo].[ThongTinCaNhan] ON 

INSERT [dbo].[ThongTinCaNhan] ([idTK], [HoTen], [Email], [Sdt], [DiaChi], [IsEmailConfirmed], [ConfirmationCode], [TrangThai], [NgayBatDau], [NgayKetThuc]) VALUES (1, N'adminKDK', N'nguyenhuukhai22052003@gmail.com', N'0902429972', N'TP Hồ Chí Minh', 1, 999999, N'Mở', NULL, NULL)
INSERT [dbo].[ThongTinCaNhan] ([idTK], [HoTen], [Email], [Sdt], [DiaChi], [IsEmailConfirmed], [ConfirmationCode], [TrangThai], [NgayBatDau], [NgayKetThuc]) VALUES (2, N'admin', N'ekl46580@nezid.com', N'111111', N'1111', 1, 783361, N'Mở', NULL, NULL)
INSERT [dbo].[ThongTinCaNhan] ([idTK], [HoTen], [Email], [Sdt], [DiaChi], [IsEmailConfirmed], [ConfirmationCode], [TrangThai], [NgayBatDau], [NgayKetThuc]) VALUES (5, N'KDK', N'nguyenhuukhai220520031@gmail.com', N'11', N'assa', 1, NULL, N'Mở', NULL, NULL)
INSERT [dbo].[ThongTinCaNhan] ([idTK], [HoTen], [Email], [Sdt], [DiaChi], [IsEmailConfirmed], [ConfirmationCode], [TrangThai], [NgayBatDau], [NgayKetThuc]) VALUES (13, N'kikyou', N'kikyoutnt33@gmail.com', N'0', NULL, 1, NULL, N'Mở', NULL, NULL)
INSERT [dbo].[ThongTinCaNhan] ([idTK], [HoTen], [Email], [Sdt], [DiaChi], [IsEmailConfirmed], [ConfirmationCode], [TrangThai], [NgayBatDau], [NgayKetThuc]) VALUES (14, N'KhảiHữuNguyễn', N'nguyenhuukhai220520033@gmail.com', N'0', NULL, 1, NULL, N'Khóa', CAST(N'2024-05-25 00:00:00.000' AS DateTime), CAST(N'2024-05-30 00:00:00.000' AS DateTime))
INSERT [dbo].[ThongTinCaNhan] ([idTK], [HoTen], [Email], [Sdt], [DiaChi], [IsEmailConfirmed], [ConfirmationCode], [TrangThai], [NgayBatDau], [NgayKetThuc]) VALUES (15, N'kik you', N'kikyou695057785', N'0', NULL, 1, NULL, N'Mở', NULL, NULL)
INSERT [dbo].[ThongTinCaNhan] ([idTK], [HoTen], [Email], [Sdt], [DiaChi], [IsEmailConfirmed], [ConfirmationCode], [TrangThai], [NgayBatDau], [NgayKetThuc]) VALUES (26, N'Nguyen Huu Khai', N'nguyenhuukhai220520031@gmail.com', N'12312321311', N'12212', 1, 710599, N'Mở', NULL, NULL)
INSERT [dbo].[ThongTinCaNhan] ([idTK], [HoTen], [Email], [Sdt], [DiaChi], [IsEmailConfirmed], [ConfirmationCode], [TrangThai], [NgayBatDau], [NgayKetThuc]) VALUES (35, N'YeuThayVinh', N'trongkhangdinh@gmail.com', N'0902429978', N'tphcm', 1, 657140, N'Mở', NULL, NULL)
INSERT [dbo].[ThongTinCaNhan] ([idTK], [HoTen], [Email], [Sdt], [DiaChi], [IsEmailConfirmed], [ConfirmationCode], [TrangThai], [NgayBatDau], [NgayKetThuc]) VALUES (36, N'YouKik', N'kikyoutnt55@gmail.com', NULL, NULL, 1, NULL, N'Mở', NULL, NULL)
INSERT [dbo].[ThongTinCaNhan] ([idTK], [HoTen], [Email], [Sdt], [DiaChi], [IsEmailConfirmed], [ConfirmationCode], [TrangThai], [NgayBatDau], [NgayKetThuc]) VALUES (38, N'Nguyen Huu Khai', N'dung@gmail.com', N'0902429971', N'tphcm', 1, 872066, N'Mở', NULL, NULL)
INSERT [dbo].[ThongTinCaNhan] ([idTK], [HoTen], [Email], [Sdt], [DiaChi], [IsEmailConfirmed], [ConfirmationCode], [TrangThai], [NgayBatDau], [NgayKetThuc]) VALUES (39, N'sadasd', N'Dung12@gmail.com', N'0902429981', N'ádasdasdasd', 1, 832610, N'Mở', NULL, NULL)
INSERT [dbo].[ThongTinCaNhan] ([idTK], [HoTen], [Email], [Sdt], [DiaChi], [IsEmailConfirmed], [ConfirmationCode], [TrangThai], [NgayBatDau], [NgayKetThuc]) VALUES (40, N'adminKDK', N'Dungxc@gmail.com', N'09029283645', N'tphcm', 1, 319116, N'Mở', NULL, NULL)
SET IDENTITY_INSERT [dbo].[ThongTinCaNhan] OFF
INSERT [dbo].[VatLieu] ([MaVatLieu], [TenVatLieu]) VALUES (1, N'93% Polyester 7% Spandex')
INSERT [dbo].[VatLieu] ([MaVatLieu], [TenVatLieu]) VALUES (2, N'Nylon Fabric')
INSERT [dbo].[VatLieu] ([MaVatLieu], [TenVatLieu]) VALUES (3, N'Hexagon Poly Fabric')
INSERT [dbo].[VatLieu] ([MaVatLieu], [TenVatLieu]) VALUES (4, N'French Terry')
INSERT [dbo].[VatLieu] ([MaVatLieu], [TenVatLieu]) VALUES (5, N'Cotton Compact 4C')
INSERT [dbo].[VatLieu] ([MaVatLieu], [TenVatLieu]) VALUES (6, N'Vải Thun')
INSERT [dbo].[VatLieu] ([MaVatLieu], [TenVatLieu]) VALUES (7, N'Vải Jean')
INSERT [dbo].[VatLieu] ([MaVatLieu], [TenVatLieu]) VALUES (8, N'Jean Cotton Spandex')
INSERT [dbo].[VatLieu] ([MaVatLieu], [TenVatLieu]) VALUES (9, N'Poly')
INSERT [dbo].[VatLieu] ([MaVatLieu], [TenVatLieu]) VALUES (10, N'Cotton Compact 2S')
INSERT [dbo].[VatLieu] ([MaVatLieu], [TenVatLieu]) VALUES (11, N' Kaki Nhung')
INSERT [dbo].[VatLieu] ([MaVatLieu], [TenVatLieu]) VALUES (12, N'Da bò 100%')
INSERT [dbo].[VatLieu] ([MaVatLieu], [TenVatLieu]) VALUES (13, N'Microfiber')
INSERT [dbo].[VatLieu] ([MaVatLieu], [TenVatLieu]) VALUES (14, N'Da bò vân mill')
INSERT [dbo].[VatLieu] ([MaVatLieu], [TenVatLieu]) VALUES (15, N'900DPU Đen + 600D PU in chuyển nhiệt Xám Đậm')
INSERT [dbo].[VatLieu] ([MaVatLieu], [TenVatLieu]) VALUES (16, N'900HD PU Đen + 900HD PU Trắng in chuyển nhiệt
')
INSERT [dbo].[VatLieu] ([MaVatLieu], [TenVatLieu]) VALUES (17, N'Simily Trắng in lụa')
INSERT [dbo].[VatLieu] ([MaVatLieu], [TenVatLieu]) VALUES (18, N'900HD PU in chuyển nhiệt + Lót 210PU
')
INSERT [dbo].[VatLieu] ([MaVatLieu], [TenVatLieu]) VALUES (19, N'Vải Canvas')
INSERT [dbo].[VatLieu] ([MaVatLieu], [TenVatLieu]) VALUES (20, N'Vải cà phê ')
INSERT [dbo].[Wishlist] ([WishlistID], [id]) VALUES (N'10581     ', 12)
INSERT [dbo].[Wishlist] ([WishlistID], [id]) VALUES (N'2024042620', 7)
INSERT [dbo].[Wishlist] ([WishlistID], [id]) VALUES (N'2024050323', 14)
INSERT [dbo].[Wishlist] ([WishlistID], [id]) VALUES (N'2024060214', 23)
INSERT [dbo].[Wishlist] ([WishlistID], [id]) VALUES (N'97760     ', 5)
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_ChiTietKichThuoc] FOREIGN KEY([MaChiTiet], [MaSanPham])
REFERENCES [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_ChiTietKichThuoc]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonHang] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_GioHang] FOREIGN KEY([MaGioHang])
REFERENCES [dbo].[GioHang] ([MaGioHang])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_GioHang]
GO
ALTER TABLE [dbo].[ChiTietGioHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietGioHang_ChiTietKichThuoc] FOREIGN KEY([MaChiTiet], [MaSanPham])
REFERENCES [dbo].[ChiTietKichThuoc] ([MaChiTiet], [MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietGioHang] CHECK CONSTRAINT [FK_ChiTietGioHang_ChiTietKichThuoc]
GO
ALTER TABLE [dbo].[ChiTietGioHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietGioHang_GioHang] FOREIGN KEY([MaGioHang])
REFERENCES [dbo].[GioHang] ([MaGioHang])
GO
ALTER TABLE [dbo].[ChiTietGioHang] CHECK CONSTRAINT [FK_ChiTietGioHang_GioHang]
GO
ALTER TABLE [dbo].[ChiTietGioHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietGioHang_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietGioHang] CHECK CONSTRAINT [FK_ChiTietGioHang_SanPham]
GO
ALTER TABLE [dbo].[ChiTietKhuyenMai]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietKhuyenMai_KhuyenMai] FOREIGN KEY([MaVoucher])
REFERENCES [dbo].[KhuyenMai] ([MaVoucher])
GO
ALTER TABLE [dbo].[ChiTietKhuyenMai] CHECK CONSTRAINT [FK_ChiTietKhuyenMai_KhuyenMai]
GO
ALTER TABLE [dbo].[ChiTietKichThuoc]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietKichThuoc_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietKichThuoc] CHECK CONSTRAINT [FK_ChiTietKichThuoc_SanPham]
GO
ALTER TABLE [dbo].[ChiTietWishlist]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietWishlist_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietWishlist] CHECK CONSTRAINT [FK_ChiTietWishlist_SanPham]
GO
ALTER TABLE [dbo].[ChiTietWishlist]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietWishlist_Wishlist] FOREIGN KEY([WishlistID])
REFERENCES [dbo].[Wishlist] ([WishlistID])
GO
ALTER TABLE [dbo].[ChiTietWishlist] CHECK CONSTRAINT [FK_ChiTietWishlist_Wishlist]
GO
ALTER TABLE [dbo].[ChucNang]  WITH CHECK ADD  CONSTRAINT [FK_ChucNang_PhanQuyenNhanVien] FOREIGN KEY([MaChucNang])
REFERENCES [dbo].[PhanQuyenNhanVien] ([MaChucNang])
GO
ALTER TABLE [dbo].[ChucNang] CHECK CONSTRAINT [FK_ChucNang_PhanQuyenNhanVien]
GO
ALTER TABLE [dbo].[DanhGiaSP]  WITH CHECK ADD  CONSTRAINT [FK_DanhGiaSP_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[DanhGiaSP] CHECK CONSTRAINT [FK_DanhGiaSP_SanPham]
GO
ALTER TABLE [dbo].[DanhGiaSP]  WITH CHECK ADD  CONSTRAINT [FK_DanhGiaSP_TaiKhoan] FOREIGN KEY([id])
REFERENCES [dbo].[TaiKhoan] ([id])
GO
ALTER TABLE [dbo].[DanhGiaSP] CHECK CONSTRAINT [FK_DanhGiaSP_TaiKhoan]
GO
ALTER TABLE [dbo].[HinhAnhSP]  WITH CHECK ADD  CONSTRAINT [FK_HinhAnhSP_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[HinhAnhSP] CHECK CONSTRAINT [FK_HinhAnhSP_SanPham]
GO
ALTER TABLE [dbo].[KhuyenMai]  WITH CHECK ADD  CONSTRAINT [FK_KhuyenMai_TaiKhoan] FOREIGN KEY([id])
REFERENCES [dbo].[TaiKhoan] ([id])
GO
ALTER TABLE [dbo].[KhuyenMai] CHECK CONSTRAINT [FK_KhuyenMai_TaiKhoan]
GO
ALTER TABLE [dbo].[PhanHoiDanhGia]  WITH CHECK ADD  CONSTRAINT [FK_PhanHoiDanhGia_DanhGiaSP] FOREIGN KEY([MaDanhGia])
REFERENCES [dbo].[DanhGiaSP] ([MaDanhGia])
GO
ALTER TABLE [dbo].[PhanHoiDanhGia] CHECK CONSTRAINT [FK_PhanHoiDanhGia_DanhGiaSP]
GO
ALTER TABLE [dbo].[PhanQuyenNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_PhanQuyenNhanVien_TaiKhoan] FOREIGN KEY([idNhanVien])
REFERENCES [dbo].[TaiKhoan] ([id])
GO
ALTER TABLE [dbo].[PhanQuyenNhanVien] CHECK CONSTRAINT [FK_PhanQuyenNhanVien_TaiKhoan]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_BoSuuTap] FOREIGN KEY([MaBoSuuTap])
REFERENCES [dbo].[BoSuuTap] ([MaBoSuuTap])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_BoSuuTap]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_ChiTietKhuyenMai] FOREIGN KEY([MaChiTietGiam], [MaSanPham])
REFERENCES [dbo].[ChiTietKhuyenMai] ([MaChiTietGiam], [MaSanPham])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_ChiTietKhuyenMai]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSP] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSP] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSP]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_VatLieu] FOREIGN KEY([MaVatLieu])
REFERENCES [dbo].[VatLieu] ([MaVatLieu])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_VatLieu]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_ThongTinCaNhan] FOREIGN KEY([idTK])
REFERENCES [dbo].[ThongTinCaNhan] ([idTK])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_ThongTinCaNhan]
GO
ALTER TABLE [dbo].[Wishlist]  WITH CHECK ADD  CONSTRAINT [FK_Wishlist_TaiKhoan] FOREIGN KEY([id])
REFERENCES [dbo].[TaiKhoan] ([id])
GO
ALTER TABLE [dbo].[Wishlist] CHECK CONSTRAINT [FK_Wishlist_TaiKhoan]
GO
USE [master]
GO
ALTER DATABASE [ThoiTrangNamKDK] SET  READ_WRITE 
GO
