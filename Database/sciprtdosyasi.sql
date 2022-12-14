USE [master]
GO
/****** Object:  Database [OmerIrmakProje]    Script Date: 9.06.2022 22:53:13 ******/
CREATE DATABASE [OmerIrmakProje]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OmerIrmakProje', FILENAME = N'D:\SQL\MSSQL15.MSSQLSERVER\MSSQL\DATA\OmerIrmakProje.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OmerIrmakProje_log', FILENAME = N'D:\SQL\MSSQL15.MSSQLSERVER\MSSQL\DATA\OmerIrmakProje_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [OmerIrmakProje] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OmerIrmakProje].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OmerIrmakProje] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OmerIrmakProje] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OmerIrmakProje] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OmerIrmakProje] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OmerIrmakProje] SET ARITHABORT OFF 
GO
ALTER DATABASE [OmerIrmakProje] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OmerIrmakProje] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OmerIrmakProje] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OmerIrmakProje] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OmerIrmakProje] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OmerIrmakProje] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OmerIrmakProje] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OmerIrmakProje] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OmerIrmakProje] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OmerIrmakProje] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OmerIrmakProje] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OmerIrmakProje] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OmerIrmakProje] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OmerIrmakProje] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OmerIrmakProje] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OmerIrmakProje] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OmerIrmakProje] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OmerIrmakProje] SET RECOVERY FULL 
GO
ALTER DATABASE [OmerIrmakProje] SET  MULTI_USER 
GO
ALTER DATABASE [OmerIrmakProje] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OmerIrmakProje] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OmerIrmakProje] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OmerIrmakProje] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OmerIrmakProje] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OmerIrmakProje] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'OmerIrmakProje', N'ON'
GO
ALTER DATABASE [OmerIrmakProje] SET QUERY_STORE = OFF
GO
USE [OmerIrmakProje]
GO
/****** Object:  Table [dbo].[Tbl_Anasayfa]    Script Date: 9.06.2022 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Anasayfa](
	[KarsilamaMetni] [nvarchar](2000) NULL,
	[KarsilamaResmi] [nvarchar](200) NULL,
	[AktifMi] [bit] NULL,
	[EklenmeTarihi] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Iletisim]    Script Date: 9.06.2022 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Iletisim](
	[Ad] [nvarchar](50) NULL,
	[Soyad] [nvarchar](50) NULL,
	[E_mail] [nvarchar](50) NULL,
	[Telefon] [nvarchar](50) NULL,
	[Mesaj] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Ozgecmis]    Script Date: 9.06.2022 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Ozgecmis](
	[Ozgecmis] [nvarchar](2000) NULL,
	[VideoLinki] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Proje]    Script Date: 9.06.2022 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Proje](
	[ProjeID] [int] IDENTITY(1,1) NOT NULL,
	[ProjeAdi] [nvarchar](50) NULL,
	[ProjeAciklama] [nvarchar](500) NULL,
	[ProjeYili] [int] NULL,
 CONSTRAINT [PK_Tbl_Proje] PRIMARY KEY CLUSTERED 
(
	[ProjeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Proje2]    Script Date: 9.06.2022 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Proje2](
	[ProjeID] [int] NULL,
	[ProjeAdi] [nvarchar](50) NULL,
	[ProjeAciklamasi] [nvarchar](500) NULL,
	[ProjeYili] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Tbl_Anasayfa] ([KarsilamaMetni], [KarsilamaResmi], [AktifMi], [EklenmeTarihi]) VALUES (N'Merhabalar bu uygulamamda (blog sayfasında) Web Programlama Final Projesi için yaptığım sayfayı tanıtacağım öncelikle sayfamızda gelen bilgilerin yüzde doksanı veritabanımızdan gelmektedir. Sayfada 5 adet menü bulunmaktadır, bunlar; Anasayfa, Hakkımda, Projeler, Galeri ve İletişimdir. Şimdi bu 5 sayfayı ve içeriklerini size tanıtacağım. Uygulamanın devamında ise bu dinamik verilerinin nasıl işlendiğini göstereceğim (bu sayfalar ne yapar, ne gibi işleri görür)', N'Omer1.jpg', 1, CAST(N'2022-06-09T18:14:47.357' AS DateTime))
INSERT [dbo].[Tbl_Anasayfa] ([KarsilamaMetni], [KarsilamaResmi], [AktifMi], [EklenmeTarihi]) VALUES (N'Anasayfa; Anasayfa sayfamız sayfa açılınca karşımıza çıkar ve bize karşılama metni ve 2 adet resim gösterir (dinamik verilerden). Hakkımda; Hakkımda sayfası bir mini resume görevi görür bana ve hayatıma dair özet bilgiler içerir. Projeler; Projeler sayfasında yaptığım ve çalıştığım projeler üzerine bilgiler vardır. Galeri; Kendime ait 10 adet görsel ve sevdiğim (yazılım alanında) 2 adet video vardır. Son olarak İletişim; Bu sayfada ise sizi bir form karşılıyor ve girdiğiniz veri veritabanında saklanıyor, günün birinde lazım olur.', N'Omer2.jpg', 1, CAST(N'2022-06-09T18:54:31.540' AS DateTime))
GO
INSERT [dbo].[Tbl_Iletisim] ([Ad], [Soyad], [E_mail], [Telefon], [Mesaj]) VALUES (N'Ömer Faruk', N'IRMAK', N'omerirmak92@gmail.com', N'0', N'Ben admin')
INSERT [dbo].[Tbl_Iletisim] ([Ad], [Soyad], [E_mail], [Telefon], [Mesaj]) VALUES (N'beyza', N'ırmak', N'beyzairmak2@hotmail.com', N'0', N'bu da 2. admin')
INSERT [dbo].[Tbl_Iletisim] ([Ad], [Soyad], [E_mail], [Telefon], [Mesaj]) VALUES (N'qweqwe', N'qweqwe', N'omerirmak92@gmail.com', N'545874521', N'asdasd')
INSERT [dbo].[Tbl_Iletisim] ([Ad], [Soyad], [E_mail], [Telefon], [Mesaj]) VALUES (N'qwe', N'qwe', N'asdasd@hotmail.com', N'555452', N'ben de addddminke')
INSERT [dbo].[Tbl_Iletisim] ([Ad], [Soyad], [E_mail], [Telefon], [Mesaj]) VALUES (N'qwe', N'qwe', N'asdasd@hotmail.com', N'55545225', N'ben de addddminke')
INSERT [dbo].[Tbl_Iletisim] ([Ad], [Soyad], [E_mail], [Telefon], [Mesaj]) VALUES (N'qwe', N'qwe', N'asdasd@hotmail.com', N'5459268825', N'ben de addddminke')
INSERT [dbo].[Tbl_Iletisim] ([Ad], [Soyad], [E_mail], [Telefon], [Mesaj]) VALUES (N'asd', N'asdasdasd', N'asdasd@gmail.com', N'0', N'asdadasd')
GO
INSERT [dbo].[Tbl_Ozgecmis] ([Ozgecmis], [VideoLinki]) VALUES (N'Çalışma hayatıma 2018 yılında Marmaris İçmeler''de Quadas Hotel''de bellboy olarak başladım daha sonra aynı yerde bir süre recepsiyonist olarak çalıştım ve yaz sonu işi bıraktım o sene Ekim ayında Polonya Varşova Teknoloji Üniversitene giderek dil eğitimi aldım( ertesi sene Computer Science eğitimi aldım) o süre içinde Uber''de kurye ve şoförlük yaptım. Koronadan sonra Türkiye''ye döndüm ve Eta Gold adlı kuyumcu mağazasında satış personeli olarak çalıştım 1 yıl süreyle, 2021 eylül ayında başladığım ve kendi işim olan gayrimenkul sektörünü ise 1 Haziran günü resmi olarak kapatıp kariyer planım olan yazılım alanına tam kapsamlı olarak yöneldim. Bundan sonraki süreçte planım kendimi Front-End alanında geliştirmek, bunun için şu sıra Javascript öğreniyorum şu ana kadarki süreçte HTML ve CSS alanında gerekli bilgileri öğrendim tabii geri kalmamak ve tazelenmek adına kendi bilgilerimi de bu süreçte güncelliyorum. ', N'https://www.youtube.com/embed/7uJGjbkp0-U')
GO
INSERT [dbo].[Tbl_Proje2] ([ProjeID], [ProjeAdi], [ProjeAciklamasi], [ProjeYili]) VALUES (1, N'Gold Price Tracker', N'Altın fiyatına göre alış ve satış fiyatlarını web''i scrap ederek bulan program', 2022)
INSERT [dbo].[Tbl_Proje2] ([ProjeID], [ProjeAdi], [ProjeAciklamasi], [ProjeYili]) VALUES (2, N'Limon', N'Web sayfası içeriği ile göz dolduran büyüleyici bir iş', 2022)
INSERT [dbo].[Tbl_Proje2] ([ProjeID], [ProjeAdi], [ProjeAciklamasi], [ProjeYili]) VALUES (3, N'Data Phone', N'Bir web sayfası içeriği ile 2022''ye ait bütün teknolojileri kullanıyor', 2021)
INSERT [dbo].[Tbl_Proje2] ([ProjeID], [ProjeAdi], [ProjeAciklamasi], [ProjeYili]) VALUES (4, N'Seyyar', N'Yapmak istediğim bir uygulama mobil üzerine henüz mobişl programlama deneyiyim yok ama uygulama ortalama bir akrgo firması gibi çalışacak', 2025)
GO
ALTER TABLE [dbo].[Tbl_Anasayfa] ADD  CONSTRAINT [DF_Tbl_Anasayfa_AktifMi]  DEFAULT ((1)) FOR [AktifMi]
GO
ALTER TABLE [dbo].[Tbl_Anasayfa] ADD  CONSTRAINT [DF_Tbl_Anasayfa_EklenmeTarihi]  DEFAULT (getdate()) FOR [EklenmeTarihi]
GO
/****** Object:  StoredProcedure [dbo].[Sp_AnasayfaIslemleri]    Script Date: 9.06.2022 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Sp_AnasayfaIslemleri]

AS

SELECT [KarsilamaMetni], [KarsilamaResmi], [AktifMi], [EklenmeTarihi] from Tbl_Anasayfa
GO
/****** Object:  StoredProcedure [dbo].[Sp_IletisimIslemleri]    Script Date: 9.06.2022 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Sp_IletisimIslemleri]
(
	@Ad NVARCHAR(50),
	@Soyad NVARCHAR(50),
	@E_mail NVARCHAR(50),
	@Telefon INT,
	@Mesaj NVARCHAR(50)
)

AS

INSERT INTO Tbl_Iletisim
(Ad, Soyad, E_mail, Telefon, Mesaj)
VALUES
(@Ad, @Soyad, @E_mail, @Telefon, @Mesaj)
GO
/****** Object:  StoredProcedure [dbo].[Sp_OzgecmisIslemleri]    Script Date: 9.06.2022 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Sp_OzgecmisIslemleri]

AS

SELECT [Ozgecmis], [VideoLinki] from Tbl_Ozgecmis
GO
/****** Object:  StoredProcedure [dbo].[Sp_Proje2Islemleri]    Script Date: 9.06.2022 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Sp_Proje2Islemleri]

AS

SELECT [ProjeID], [ProjeAdi], [ProjeAciklamasi], [ProjeYili] from Tbl_Proje2
GO
/****** Object:  StoredProcedure [dbo].[Sp_ProjeIslemleri]    Script Date: 9.06.2022 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Sp_ProjeIslemleri]

AS

SELECT [ProjeID], [ProjeAdi], [ProjeAciklama], [ProjeYili] from Tbl_Proje
GO
USE [master]
GO
ALTER DATABASE [OmerIrmakProje] SET  READ_WRITE 
GO
