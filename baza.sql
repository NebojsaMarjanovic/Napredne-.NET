USE [master]
GO
/****** Object:  Database [VinskiTurizam]    Script Date: 8/25/2022 11:46:37 PM ******/
CREATE DATABASE [VinskiTurizam]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VinskiTurizam', FILENAME = N'C:\Users\Korisnik\VinskiTurizam.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'VinskiTurizam_log', FILENAME = N'C:\Users\Korisnik\VinskiTurizam_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [VinskiTurizam] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VinskiTurizam].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VinskiTurizam] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VinskiTurizam] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VinskiTurizam] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VinskiTurizam] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VinskiTurizam] SET ARITHABORT OFF 
GO
ALTER DATABASE [VinskiTurizam] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [VinskiTurizam] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VinskiTurizam] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VinskiTurizam] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VinskiTurizam] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VinskiTurizam] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VinskiTurizam] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VinskiTurizam] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VinskiTurizam] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VinskiTurizam] SET  ENABLE_BROKER 
GO
ALTER DATABASE [VinskiTurizam] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VinskiTurizam] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VinskiTurizam] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VinskiTurizam] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VinskiTurizam] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VinskiTurizam] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [VinskiTurizam] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VinskiTurizam] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [VinskiTurizam] SET  MULTI_USER 
GO
ALTER DATABASE [VinskiTurizam] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VinskiTurizam] SET DB_CHAINING OFF 
GO
ALTER DATABASE [VinskiTurizam] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [VinskiTurizam] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [VinskiTurizam] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [VinskiTurizam] SET QUERY_STORE = OFF
GO
USE [VinskiTurizam]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [VinskiTurizam]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 8/25/2022 11:46:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admini]    Script Date: 8/25/2022 11:46:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admini](
	[Id] [nvarchar](450) NOT NULL,
	[DatumZaposlenja] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Admini] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 8/25/2022 11:46:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 8/25/2022 11:46:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 8/25/2022 11:46:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 8/25/2022 11:46:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 8/25/2022 11:46:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 8/25/2022 11:46:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Ime] [nvarchar](max) NULL,
	[Prezime] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 8/25/2022 11:46:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gradovi]    Script Date: 8/25/2022 11:46:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gradovi](
	[GradId] [int] IDENTITY(1,1) NOT NULL,
	[NazivGrada] [nvarchar](max) NULL,
	[Opis] [nvarchar](max) NULL,
	[Slika] [nvarchar](max) NULL,
	[BrojSlobodnihMesta] [int] NOT NULL,
	[ProgramPutovanja] [nvarchar](max) NULL,
	[CenaPoOsobi] [float] NOT NULL,
	[DatumPolaska] [datetime2](7) NOT NULL,
	[DatumPovratka] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Gradovi] PRIMARY KEY CLUSTERED 
(
	[GradId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hoteli]    Script Date: 8/25/2022 11:46:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoteli](
	[HotelId] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](max) NULL,
	[Opis] [nvarchar](max) NULL,
	[GradId] [int] NOT NULL,
 CONSTRAINT [PK_Hoteli] PRIMARY KEY CLUSTERED 
(
	[HotelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Klijenti]    Script Date: 8/25/2022 11:46:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Klijenti](
	[Id] [nvarchar](450) NOT NULL,
	[BrLicneKarte] [nvarchar](max) NULL,
 CONSTRAINT [PK_Klijenti] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rezervacije]    Script Date: 8/25/2022 11:46:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rezervacije](
	[GradId] [int] NOT NULL,
	[KorisnikId] [nvarchar](450) NOT NULL,
	[RezervacijaId] [nvarchar](450) NOT NULL,
	[Napomena] [nvarchar](max) NULL,
	[Cena] [float] NOT NULL,
	[DorucakUHotelu] [bit] NOT NULL,
	[VeceraUVinariji] [bit] NOT NULL,
	[brojOsoba] [int] NOT NULL,
 CONSTRAINT [PK_Rezervacije] PRIMARY KEY CLUSTERED 
(
	[GradId] ASC,
	[KorisnikId] ASC,
	[RezervacijaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vina]    Script Date: 8/25/2022 11:46:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vina](
	[VinoId] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](max) NULL,
 CONSTRAINT [PK_Vina] PRIMARY KEY CLUSTERED 
(
	[VinoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VinarijaVino]    Script Date: 8/25/2022 11:46:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VinarijaVino](
	[VinaVinoId] [int] NOT NULL,
	[VinarijeVinarijaId] [int] NOT NULL,
 CONSTRAINT [PK_VinarijaVino] PRIMARY KEY CLUSTERED 
(
	[VinaVinoId] ASC,
	[VinarijeVinarijaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vinarije]    Script Date: 8/25/2022 11:46:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vinarije](
	[VinarijaId] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](max) NULL,
	[Opis] [nvarchar](max) NULL,
	[GradId] [int] NOT NULL,
 CONSTRAINT [PK_Vinarije] PRIMARY KEY CLUSTERED 
(
	[VinarijaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220731192417_KreiranjeTabelaIKardinalnosti', N'5.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220801091849_IzmeneRezervacije', N'5.0.1')
GO
INSERT [dbo].[Admini] ([Id], [DatumZaposlenja]) VALUES (N'7f0611d1-0110-4c9d-902e-a8f6e4c459da', CAST(N'2021-08-01T21:48:50.9500000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] ON 

INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1, N'd0d9a4ab-b0d4-4566-a0d4-ee22eff26a72', N'role', N'Klijent')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (2, N'd0d9a4ab-b0d4-4566-a0d4-ee22eff26a72', N'username', N'sone123')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3, N'd0d9a4ab-b0d4-4566-a0d4-ee22eff26a72', N'userId', N'd0d9a4ab-b0d4-4566-a0d4-ee22eff26a72')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4, N'7f0611d1-0110-4c9d-902e-a8f6e4c459da', N'role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (5, N'7f0611d1-0110-4c9d-902e-a8f6e4c459da', N'username', N'soneAdmin123')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (6, N'7f0611d1-0110-4c9d-902e-a8f6e4c459da', N'userId', N'7f0611d1-0110-4c9d-902e-a8f6e4c459da')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (7, N'f1ad57ba-dc04-4d60-b0b2-973d9ea8abf2', N'role', N'Klijent')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (8, N'f1ad57ba-dc04-4d60-b0b2-973d9ea8abf2', N'username', N'mika123')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (9, N'f1ad57ba-dc04-4d60-b0b2-973d9ea8abf2', N'userId', N'f1ad57ba-dc04-4d60-b0b2-973d9ea8abf2')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (10, N'69cd11f0-d7b6-4fdb-b140-7d2573ac79b2', N'role', N'Klijent')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (11, N'69cd11f0-d7b6-4fdb-b140-7d2573ac79b2', N'username', N'zika123')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (12, N'69cd11f0-d7b6-4fdb-b140-7d2573ac79b2', N'userId', N'69cd11f0-d7b6-4fdb-b140-7d2573ac79b2')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (13, N'9b5fef1e-bb19-40e8-a114-7671e6606d5e', N'role', N'Klijent')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (14, N'9b5fef1e-bb19-40e8-a114-7671e6606d5e', N'username', N'mikavolinebu')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (15, N'9b5fef1e-bb19-40e8-a114-7671e6606d5e', N'userId', N'9b5fef1e-bb19-40e8-a114-7671e6606d5e')
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] OFF
GO
INSERT [dbo].[AspNetUsers] ([Id], [Ime], [Prezime], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'69cd11f0-d7b6-4fdb-b140-7d2573ac79b2', N'Zika', N'Zikic', N'zika123', N'ZIKA123', N'zika@gmail.com', N'ZIKA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEG00jqAeyRCVFz9BJM2EjH0FQj3/h1Z82qHwlZyUQVy3zUFEO0Q8jckd2E4YaJH6Tw==', N'4AR44IYJ3PIRRC2SX3MB366GL6ZHYPWX', N'b00aaa1e-7957-4620-a30b-ea8181d2b588', N'123-456', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Ime], [Prezime], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7f0611d1-0110-4c9d-902e-a8f6e4c459da', N'Nebojsa', N'Marjanovic', N'soneAdmin123', N'SONEADMIN123', N'sone@example.com', N'SONE@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAECa2AfF1gYNX31bVdINWPGClPSXBlH81Jdc2KF6VbMHyas8HhUus/2dsbODIcDCsEA==', N'E6ABU3UBJIXXB3ESHI3H3QLVBSYROPSJ', N'3adc88dd-1c9c-451a-9fae-34253c37a0ee', N'123-456', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Ime], [Prezime], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9b5fef1e-bb19-40e8-a114-7671e6606d5e', N'Milena', N'Rabrenovic', N'mikavolinebu', N'MIKAVOLINEBU', N'milena.rabrenovic99@gmail.com', N'MILENA.RABRENOVIC99@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGfWjsRQqzDLwskoEl9CY1jbbIT87ncAuMULphyMo9noaTRCz4yg38AOI/Ce/d0JDA==', N'7XQKNIB367MQS5P74AFRXYTLE5F6EU6J', N'e2123be9-e0b6-4a50-ac31-8c96b19b4a3f', N'068083866', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Ime], [Prezime], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd0d9a4ab-b0d4-4566-a0d4-ee22eff26a72', N'Nebojsa', N'Marjanovic', N'sone123', N'SONE123', N'sone@gmail.com', N'SONE@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEEDT1M6io0TFnuXMFM4zjnIyYwp3Ja84WmcqHOFdDGK0eaBF17suwO1pgRo5IvSqog==', N'2VSB2MK5PGYV46AQMMFEU2SK6AAFAH2B', N'13898e0c-441f-4fd3-9ed2-99673e3bc983', N'123-456', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Ime], [Prezime], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f1ad57ba-dc04-4d60-b0b2-973d9ea8abf2', N'Milena', N'Rabrenovic', N'mika123', N'MIKA123', N'mika@gmail.com', N'MIKA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGAPLMOEC8i53eJG/9NR7Ri14hOTrykktyrl0PkFehVM5g00lx3WKEi7mdVzc4wTdw==', N'5EO4CB2D3PUXVN7LVLB2NHXBS3DMD4GU', N'5b38acc3-606f-4c59-b3af-cd778f34f330', N'123-456', 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Gradovi] ON 

INSERT [dbo].[Gradovi] ([GradId], [NazivGrada], [Opis], [Slika], [BrojSlobodnihMesta], [ProgramPutovanja], [CenaPoOsobi], [DatumPolaska], [DatumPovratka]) VALUES (3, N'Sremski Karlovci', N'Na desnoj obali Dunava, na najnižim padinama Fruške gore, nalazi se gradić bogatog kulturno-istorijskog nasleđa. Ovaj gradić krase Patrijaršijski dvor, Saobrna Crkva i Karlovačka gimanazija. Od kada se pominju Sremski Karlovci, od tada se pominje i visokokvalitetno karlovačko vino. ', N'SremskiKarlovci.jpg', 30, N'Vinski vikend uz tamburaše|Dolazak u Sremske Karlovce, u ranim popodnevnim časovima. Obilazak grada u pratnji turističkog vodiča, posjeta najistaknutijih atrakcija - Patrijaršijski dvor, Saborna crkva, Kapela mira, Bogoslovija, Karlovačka gimnazija. U večernjim časovima planiran je večera i degustacija vina u lokalnoj vinariji Kiš koja je dobitnica mnogih prestižnih nagrada za vino.|Posle doručka u hotelu, putuje se do poznatog vidikovca na Fruškoj gori - Stražilovo koji je poznat po našem pesniku Branku Radičeviću. U popodnevnim satima planiran je povratak za Beograd.', 32, CAST(N'2022-01-08T10:00:00.0000000' AS DateTime2), CAST(N'2022-02-08T17:00:00.0000000' AS DateTime2))
INSERT [dbo].[Gradovi] ([GradId], [NazivGrada], [Opis], [Slika], [BrojSlobodnihMesta], [ProgramPutovanja], [CenaPoOsobi], [DatumPolaska], [DatumPovratka]) VALUES (15, N'Smederevo', N'Grad burne istorijske prošlosti, drevna kapija Dunava, Smederevo je romantična destinacija koja očarava srednjovekovnom tvrđavom, širokim Dunavom i ukusnim vinima. Nekadašnja prestonica čuva tajne srpske istorije u zidanama tvrđave i u gradskom muzeju. Neke id atrakcija grada: Gradski trg sa crkvom Sv. Georgija, Karađorđev dud, Crkva Usprenja Presvete Bogorodice, Vila Zlatni breg. ', N'Smederevo.jpg', 25, N'Na romantičnom sastanku sa vitezovima|Očekivani dolazak u Smederevo  popodne, smeštaj u hotel. Obilazak grada sa profesionalnim turističkim vodičem u srednjovekovnoj atmosferi. Tura kroz najočuvaniju Dunavsku tvrđavu. Odlazak do vinarije, gde je organizovana večera sa degustacijom najkavalitetnijih vina iz Podunavskog okruga.|Nakon doručka u hotelu, planirano je krstanje Dunavom u ručno građenom brodiću. Nakon krstarenja, planiran je povratak u Beograd 
', 27, CAST(N'2022-10-08T11:00:00.0000000' AS DateTime2), CAST(N'2022-11-08T17:00:00.0000000' AS DateTime2))
INSERT [dbo].[Gradovi] ([GradId], [NazivGrada], [Opis], [Slika], [BrojSlobodnihMesta], [ProgramPutovanja], [CenaPoOsobi], [DatumPolaska], [DatumPovratka]) VALUES (30, N'Palić', N'Otkrijte nežna "vina sa peska" i probajte specijalitete srpske, mađarske i bunjevačke kuhinje. Mali gradić na samom severu Srbije, prepoznatljiv je po svojim lepim vinarijama i jezeru. Palić je, prema legendi koju će vam meštani rado ispričati, jezero nastalo od suza pastira Pavla koji je tu izgubio svoje stado pa je zato voda u jezeru slana. Okolina je zaštićeni park prirode u Srbiji, a u njemu posetioci mogu da vide mnogobrojne vrste od kojih su mnoge svetske prirode retkosti.', N'Palic.jpg', 23, N'Wellness & wine|Polazak iz Beograda u ranim jutarnjim časovima, nakon četvoro časovne vožnje sa par kraćih pauza i jednom dužom pauzom u selu Zobatnici kod Bačke Topole, gde je planiran obilazak ergele. Po dolasku planiran je smeštaj u hotel i slobodno vreme. U večernjim časovima planiran je odlazak u čuvenu vinariju Zvonko Bogdan, gde je organizovana večera sa degustacijom vina uz čarobne zvuke tamburice.|U jutarnjim časovima planiran je doručak u hotelu, i nakon doručka sledi slobodno vreme. Polazak za Beograd u popodnevnim časovima. Na putu ka Beogradu, obilazi se Ečka kod Zrenjanina.', 38, CAST(N'2022-08-12T09:00:00.0000000' AS DateTime2), CAST(N'2022-08-13T18:00:00.0000000' AS DateTime2))
INSERT [dbo].[Gradovi] ([GradId], [NazivGrada], [Opis], [Slika], [BrojSlobodnihMesta], [ProgramPutovanja], [CenaPoOsobi], [DatumPolaska], [DatumPovratka]) VALUES (37, N'Sremska Mitrovica', N'Padine Fruške gore zahvaljujući odličnom geografskom položaju i klimi imaju idealne uslove za uzgoj raznih sorti vinove loze i proizvodnju kvalitetnih vina. Zbog toga je Srem i Sremska Mitrovica od davnina bila poznata, ne samo kao grad zanatlija, već i kao centar trgovine vinom.Car Marko Aurelije Prob u trećem veku nove ere ukinuo je skoro dva veka dugu zabranu proizvodnje vina u rimskim provincijama i zasadio prvu lozu na ovim prostorima u okolini sela Divoš i Grgurevci. Grad na Savi, poznat je po rimskoj prestonici Sirmiumu, Muzeju Srema i Specijalnom priodnom rezervatu "Zasavica".', N'SremskaMitrovica.jpg', 19, N'Čaša Probovog vina|Polazak iz Beograda u jutarnjim satima, dolazak u Sremsku Mitrovicu. Smeštaj u hotel. Odlazak u vinariju M.A.Probus - Carski vinogradi. Planirana je tura ktoz celu vinariju. Vlasnici vinarije održavaju edukativni program o samom procesu dobijanja vina u vinariji. Nakon prezentacije gosti će biti sprovedeni kroz celi proces proizvodnje vina. Na završetku edukativnog dela, organizovana je večera u vinariji i degustacija carskih vina.|Po završetku doručka, planiran je obilazak arheološkog nalazišta Sirmium sa turističkim vodičem i odlazak u SRP ""Zasavica"". Nakon boravka u prirodi, planiran je povratak u Beograd.', 35, CAST(N'2022-08-05T10:00:00.0000000' AS DateTime2), CAST(N'2022-08-06T18:00:00.0000000' AS DateTime2))
INSERT [dbo].[Gradovi] ([GradId], [NazivGrada], [Opis], [Slika], [BrojSlobodnihMesta], [ProgramPutovanja], [CenaPoOsobi], [DatumPolaska], [DatumPovratka]) VALUES (45, N'Vršac', N'Vršac, lepa varoš - grad umetnosti, biznisa i sporta. Smešten u podnožju Vršačkih planina, sa kojih se spušta svež vazduh šuma i dah vinograda, ovaj grad u sebi slikovito odražava i tradiciju i savremenost. Atrakcije Vršca: Vršačka kula, Sterijina kuća, Vršački breg, Apoteka na stepenicama, Muzej Konkordija, Gradska kuća - Magistrat.', N'Vrsac.jpg', 25, N'Vršac… Lepa Varoš… A vino još lepše|Polazak iz Beograda u ranim jutarnjim časovima, na putu ka Vršcu obilazi se SRP ""Deliblatska pešćara"" i gradić Bela Crkva. Po dolasku u Vršac, sledi smeštaj u hotel, odmor. Nakon slobodnog vremena, obilazi se grad uz pratnju turističkog vodiča. U večernjim satima, u porodičnoj vinariji Vinik. Organizovana je večera i degustacija belih vina po koijima je kraj poznat.|U jutarnjim časovima, posle doručka obilazi  se manastir Mešić i njegovi vinogradi. Pre polaska u Beogradm sledi slobodno vreme koje može da s eiskoristi na različite načine.', 32, CAST(N'2022-08-20T11:00:00.0000000' AS DateTime2), CAST(N'2022-08-21T17:00:00.0000000' AS DateTime2))
INSERT [dbo].[Gradovi] ([GradId], [NazivGrada], [Opis], [Slika], [BrojSlobodnihMesta], [ProgramPutovanja], [CenaPoOsobi], [DatumPolaska], [DatumPovratka]) VALUES (59, N'Topola', N'Na svega 80 km udaljenosti od Beograda, prostire se veličanstvena Topola u svom punom sjaju. Nalazi se nadomak tri značajna grada u Srbiji: Gornjeg Milanovca, Aranđelovca i Kragujevca. Jedan od posebno prepoznatljivih i važnih simbola Topole jesu njene prostrane, guste i izuzetno bujne šume koje preovladavaju ovim gradom čija nadmorska visina iznosi 250 m. Topola će vam pružiti svežu, izrazito prijatnu klimu, fantastične pejzaže, prirodu koja je još uvek neukroćena i netaknuta, kao i pregršt popularnih atrakcija.', N'Topola.jpg', 25, N'Kraljevskim vinogradima Šumadije|Dolazak u Aranđelovac u jutarnjim časovima, obilazak grada. Odlazak u Risovačku pećinu, obilazak pećine sa profesionalnim vodičem. Dolazak u Topolu, obilazak grada. Smeštaj u hotelu. U kasnim popodnevnim časovima, planiran je odlazak u Kraljevu vinariju, gde je organizovana večera i degustacija vina iz okoline Topole.|Nakon doručka, planiran je odlazak u u Oplenac, gde se posećuju znamenita mesta iz srpse istorije. Povratak u Beograd.', 38, CAST(N'2022-08-15T09:00:00.0000000' AS DateTime2), CAST(N'2022-08-16T17:00:00.0000000' AS DateTime2))
INSERT [dbo].[Gradovi] ([GradId], [NazivGrada], [Opis], [Slika], [BrojSlobodnihMesta], [ProgramPutovanja], [CenaPoOsobi], [DatumPolaska], [DatumPovratka]) VALUES (72, N'Negotin', N'Bogato istorijsko i kulturno nasleđe uključujući arheološke nalaze iz neolita, ostatke Rimske kulture iz doba tetrarhije, srednjevekovne manastire i spomenike iz novije istorije koji zajedno sa netaknutom prirodom i i razvijenim seoskim turizmom čine Opštinu Negotin jednom od najatraktivnijih turističkih destinacija u Srbiji. Kao da je neko namerno stavio Negotin tamo „skroz desno na karti“, kako bi ga dobro sakrio i sačuvao.  Uostalom i Hajduk Veljko je radije dao život nego Krajinu. Verovatno ste čuli za Negotin, ali vreme je da saznate mnogo više!', N'Negotin.jpg', 25, N'Vikend Istočne tradicije ispijanja vina|Polazak iz Beograda u ranim jutarnjim časovima. U toku putovanja do Negotina, prolazi se atraktivnim Nacionalnim parkom ""Đerdap"". Mesta pauze : Golubac, arheološko nalazište Lepenski vir, Kladovo, hidroelektrana Đerdap. Smeštaj u hotel, sobodno vreme. Nakon kratke pauze, obilazi se gradsko jezgro i odlazi se u vinariju gde je organizovans degustacija vina Krajine i večera uz Mokranjčeve note.|Nakon doručka, planiran je odlazak u Rajačke i Rogljeve pimnice, gde lokalni vodiči predstavljaju proces proizvodnje vina u podrumima vina. Nakon obilaska, planirran je povratak u Beograd.', 35, CAST(N'2022-08-12T10:00:00.0000000' AS DateTime2), CAST(N'2022-08-13T18:00:00.0000000' AS DateTime2))
INSERT [dbo].[Gradovi] ([GradId], [NazivGrada], [Opis], [Slika], [BrojSlobodnihMesta], [ProgramPutovanja], [CenaPoOsobi], [DatumPolaska], [DatumPovratka]) VALUES (82, N'Aleksandrovac', N'Najpoznatija i nadaleko cuvena znamenitost ovog kraja jeste proizvodnja vina. Specifican reljef, odgovarajuca nadmorska visina, povoljna klima i plodno zemljiište stvorili su od ovog mesta najstarije i najpoznatije vinogorje Srbije. A francuski konzul Deko ga je 1904. Nazivao i srpskom Šampanjom. Deo pešacke zone u samom centru grada pretvara se u Vinsku ulicu. Iz fontane u centru grada, u kojoj se nalazi skulptura grožda, kao simbola radanja i trajanja Župe, u vreme manifestacije uzlete mlazevi rujnog vina koje se posetiocima deli besplatno. U Aleksandrovcu postoji muzej posvecen vinu u kome se cuvaju Župske boginje, figurine iz neolita u prirodnoj velicini.', N'Aleksandrovac.jpg', 21, N'U Župu na čašu vina|Polazak iz Beograda u ranim jutarnjim časovima, na putu ka Aleksandrovcu, prave se dve pauze sa kraćim obilascima u Topoli, Kragujevcu i Trsteniku. Po dolasku u Aleksandrovac, planiran je smeštaj u hotel, pa obilazak grada uz pratnju vodiča i slobodno vreme. U večernjim časovima, organizovana je večera u vinariji Ivanović u prelepom ambijentu.|Nakon doručka, planiran je povratak za Beograd. Na putu ka Beogradu obilazi se Kruševac - Lazarev grad. Pauze u Ćupriji i Velikoj Plani.', 38, CAST(N'2022-08-17T09:00:00.0000000' AS DateTime2), CAST(N'2022-08-18T17:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Gradovi] OFF
GO
SET IDENTITY_INSERT [dbo].[Hoteli] ON 

INSERT [dbo].[Hoteli] ([HotelId], [Naziv], [Opis], [GradId]) VALUES (1, N'Premier Prezident', N'U strogom centru Sremskih Karlovaca, odmah pored velelepne Bogoslovije Svetog Arsenija, lociran je Premier Prezident Garni Hotel *****.

Arhitektonski usklađen sa bajkovitim gradićem, a svojim eksterijerom i enterijerom pleni posebnu pažnju posetilaca!Idealno pozicioniran, svega desetak kilometara od Novog Sada, a 80 km od Beograda, pruža Vam mogućnost da barem na kratko pobegnete iz stvarnosti i da na kvalitetan način provedete svoje slobodne, dragocene trenutke!', 3)
INSERT [dbo].[Hoteli] ([HotelId], [Naziv], [Opis], [GradId]) VALUES (4, N'Vila Jugovo', N'Vila Jugovo S" se nalazi na obali Dunava u naselju Jugovo na 5 km od centra grada Smedereva.

Vila raspolaže sa 9 moderno opremljenih soba po najsavremenijim standardima,
maksimalno prilagodjenim potrebama i najzahtevnijih gostiju. Sve sobe imaju King size krevete sa mogućnošću razdvajanja na zahtev gostiju, kao i pomocni ležaj. Sve sobe su svetle, komforne i tihe, sa francuskim balkonima i terasama.

 

Gostima je na raspolaganju a la cart restoran sa terasom kapaciteta 70 osoba.

Za svakog gosta je obezbeđen i besplatan parking prostor', 15)
INSERT [dbo].[Hoteli] ([HotelId], [Naziv], [Opis], [GradId]) VALUES (7, N'Hotel & Spa Palić Resort', N'U samom srcu romantičnog Palića, na par minuta hoda od čuvene Velike terase, Letnje pozornice, teniskih terena, jezera i Zoo vrta, okružen neverovatnim Parkom prirode projektovanim u engleskom stilu, nalazi se Hotel Palić resort koji je u vlasništvu doo SMB gradnja.

Hotel Palić Resort se nalazi na 150 m od obale jezera. Hotelski kompleks se sastoji od: 17 smeštajnih jedinica, Spa i wellness centra (hotel ima toplu vezu sa spa centrom), kafe bara, zatvorenog bazena, fitnes centra, pansionskog restorana, lifta, aperitif bara, parkinga, recepcije (00-24)', 30)
INSERT [dbo].[Hoteli] ([HotelId], [Naziv], [Opis], [GradId]) VALUES (9, N'Srem', N'U uzbudljivoj okolini i blizini reke Save, okruženi zelenilom, ergelom konja, istorijom koju nosi zatvorska ćelija od 1895. godine ali i drugim neočekivanim detaljima, Hotel Srem je spreman i da Vas ugosti i da nadmaši Vaša očekivanja. Hotel raspolaže sa ukupno 18 smeštajnih jedinica uključujući i 1 apartman. Sobe su prijatnih tonova, moderne i funkcionalno uređene u skladu sa autentičnim konceptom hotela. Odraz su jednostavnosti i komfora za prijatan i udoban boravak.', 37)
INSERT [dbo].[Hoteli] ([HotelId], [Naziv], [Opis], [GradId]) VALUES (10, N'Srbija', N'Hotel Srbija, kapaciteta 302 sobe (650 ležaja), nalazi se u Ustaničkoj ulici i lokacijski je idealan za smeštaj velikog broja grupa u prolazu, zahvaljujući blizini autoputa. Kompletno renoviran 2005. godine pruža osećaj udobnosti i komfora. Četiri konferencijske sale ukupne površine 400 m2 predstavljaju osnov za organizaciju svih vrsta konferencija, poslovnih sastanaka, banketa i svečanosti. Pansionski restoran, kapaciteta 380 mesta, se nalazi na XVII spratu hotela sa kojeg se pruža izvanredan pogled na ceo grad i predstavlja savršeno mesto za početak dana uz doručak sa našeg prepoznatljivog švedskog stola.', 45)
INSERT [dbo].[Hoteli] ([HotelId], [Naziv], [Opis], [GradId]) VALUES (11, N'Oplenac', N'Hotel, kao i varošica u kojoj je smešten, od Beograda su udaljeni oko 80 km, a od Kragujevca 40 km.

Hotel je podignut iz potrebe za smeštajem sve većeg broja posetilaca crkve sv. Đorđa na Oplencu. Idejni tvorac hotela, kao i čitavog zadužbinskog kompleksa je kralj Petar I Karađorđević. 1933. godine raspisan je konkurs za izgradnju hotela, a već u proleće 1934. godine hotel je u potpunosti osposobljen za prijem gostiju. Kralj Aleksandar I Karađorđević ga je iste godine i otvorio.

2014. godine hotel je u potpunosti renoviran. Hotel odiše istorijom i tradicijom, a opet je dovoljno savremen da zadovolji potrebe različitih vrsta gostiju.', 59)
INSERT [dbo].[Hoteli] ([HotelId], [Naziv], [Opis], [GradId]) VALUES (14, N'Index', N'
Pansion sa uslugom doručka Inex Negotin nalazi se u centru Negotina i nudi vrt i zajednički salon. Gostima je na raspolaganju recepcija koja radi non-stop i besplatan WiFi u zajedničkim prostorijama.

Sve sobe sadrže TV, frižider i sopstveno kupatilo opremljeno kadom ili tušem i besplatnim toaletnim priborom. Sobe u pansionu sa uslugom doručka Inex Negotin takođe nude pogled na grad.

Kontinentalni doručak služi se svakog jutra u okviru objekta. Gosti mogu da uživaju uz obroke u restoranu u okviru objekta koji služi razna lokalna jela.

Pansion sa uslugom doručka Inex Negotin smešten je na 46 km od grada Drobeta-Turnu Severin i na 39 km od Bora. Privatni parking u okviru objekta može besplatno da se koristi.', 72)
INSERT [dbo].[Hoteli] ([HotelId], [Naziv], [Opis], [GradId]) VALUES (15, N'Rooms S&S Milicevic', N'Rooms S&S Milicevic se nalazi u Aleksandrovcu. U ponudi je smeštaj sa pogledom na grad, besplatnim WiFi internetom i besplatnim privatnim parkingom. Apartman sadrži flat-screen TV i sopstveno kupatilo sa fenom za kosu, besplatnim toaletnim priborom i tušem. Peškiri i posteljina mogu se dobiti uz doplatu.

', 82)
SET IDENTITY_INSERT [dbo].[Hoteli] OFF
GO
INSERT [dbo].[Klijenti] ([Id], [BrLicneKarte]) VALUES (N'69cd11f0-d7b6-4fdb-b140-7d2573ac79b2', N'123123')
INSERT [dbo].[Klijenti] ([Id], [BrLicneKarte]) VALUES (N'9b5fef1e-bb19-40e8-a114-7671e6606d5e', N'290999928')
INSERT [dbo].[Klijenti] ([Id], [BrLicneKarte]) VALUES (N'd0d9a4ab-b0d4-4566-a0d4-ee22eff26a72', N'123123')
INSERT [dbo].[Klijenti] ([Id], [BrLicneKarte]) VALUES (N'f1ad57ba-dc04-4d60-b0b2-973d9ea8abf2', N'123123')
GO
INSERT [dbo].[Rezervacije] ([GradId], [KorisnikId], [RezervacijaId], [Napomena], [Cena], [DorucakUHotelu], [VeceraUVinariji], [brojOsoba]) VALUES (3, N'7f0611d1-0110-4c9d-902e-a8f6e4c459da', N'859cbc48-05ce-4ae2-ac46-49ab089807f9', N'Mnogo smo gladni.
Mnogo smo gladni.
Mnogo smo gladni.
Mnogo smo gladni.
Mnogo smo gladni.
', 104, 0, 1, 2)
INSERT [dbo].[Rezervacije] ([GradId], [KorisnikId], [RezervacijaId], [Napomena], [Cena], [DorucakUHotelu], [VeceraUVinariji], [brojOsoba]) VALUES (3, N'7f0611d1-0110-4c9d-902e-a8f6e4c459da', N'85cf99e7-e6c5-4d44-a981-bf9fcadd3468', N'Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.', 104, 0, 1, 2)
INSERT [dbo].[Rezervacije] ([GradId], [KorisnikId], [RezervacijaId], [Napomena], [Cena], [DorucakUHotelu], [VeceraUVinariji], [brojOsoba]) VALUES (3, N'7f0611d1-0110-4c9d-902e-a8f6e4c459da', N'c7064180-6726-46fc-8b97-e65d0fc40d95', N'Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.', 32, 0, 0, 1)
INSERT [dbo].[Rezervacije] ([GradId], [KorisnikId], [RezervacijaId], [Napomena], [Cena], [DorucakUHotelu], [VeceraUVinariji], [brojOsoba]) VALUES (15, N'7f0611d1-0110-4c9d-902e-a8f6e4c459da', N'6ae50cf4-822c-4e32-9c11-e4c9be3dd576', N'', 141, 0, 1, 3)
INSERT [dbo].[Rezervacije] ([GradId], [KorisnikId], [RezervacijaId], [Napomena], [Cena], [DorucakUHotelu], [VeceraUVinariji], [brojOsoba]) VALUES (15, N'9b5fef1e-bb19-40e8-a114-7671e6606d5e', N'fc67aa05-53af-48b7-8db1-97c909316e67', N'', 47, 0, 1, 1)
INSERT [dbo].[Rezervacije] ([GradId], [KorisnikId], [RezervacijaId], [Napomena], [Cena], [DorucakUHotelu], [VeceraUVinariji], [brojOsoba]) VALUES (15, N'd0d9a4ab-b0d4-4566-a0d4-ee22eff26a72', N'6f202ae0-2a2f-4ee5-b66d-3bf6005b83e8', N'Mnogo lepo volim', 285, 1, 1, 5)
INSERT [dbo].[Rezervacije] ([GradId], [KorisnikId], [RezervacijaId], [Napomena], [Cena], [DorucakUHotelu], [VeceraUVinariji], [brojOsoba]) VALUES (30, N'7f0611d1-0110-4c9d-902e-a8f6e4c459da', N'698d7755-b340-4f2a-bdbe-ac52106d77e0', N'Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.', 38, 0, 0, 1)
INSERT [dbo].[Rezervacije] ([GradId], [KorisnikId], [RezervacijaId], [Napomena], [Cena], [DorucakUHotelu], [VeceraUVinariji], [brojOsoba]) VALUES (30, N'7f0611d1-0110-4c9d-902e-a8f6e4c459da', N'a59c0c41-9b18-49c4-8325-7b3bf6778555', N'Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.Mnogo smo gladni.', 38, 0, 0, 1)
INSERT [dbo].[Rezervacije] ([GradId], [KorisnikId], [RezervacijaId], [Napomena], [Cena], [DorucakUHotelu], [VeceraUVinariji], [brojOsoba]) VALUES (37, N'7f0611d1-0110-4c9d-902e-a8f6e4c459da', N'3ede11c2-ab95-43de-8ac6-813df99d36b4', N'', 195, 1, 1, 3)
INSERT [dbo].[Rezervacije] ([GradId], [KorisnikId], [RezervacijaId], [Napomena], [Cena], [DorucakUHotelu], [VeceraUVinariji], [brojOsoba]) VALUES (37, N'd0d9a4ab-b0d4-4566-a0d4-ee22eff26a72', N'02f346af-54cf-4e92-800c-74b8dc5a03db', N'Mi smo vegani', 195, 1, 1, 3)
INSERT [dbo].[Rezervacije] ([GradId], [KorisnikId], [RezervacijaId], [Napomena], [Cena], [DorucakUHotelu], [VeceraUVinariji], [brojOsoba]) VALUES (82, N'7f0611d1-0110-4c9d-902e-a8f6e4c459da', N'3799a957-21d1-4f89-a251-3e5c8ca05093', N'', 232, 0, 1, 4)
GO
SET IDENTITY_INSERT [dbo].[Vina] ON 

INSERT [dbo].[Vina] ([VinoId], [Naziv]) VALUES (1, N'Bermet')
INSERT [dbo].[Vina] ([VinoId], [Naziv]) VALUES (2, N'Cabernet Sauvignon')
INSERT [dbo].[Vina] ([VinoId], [Naziv]) VALUES (3, N'Italijanski Rizling')
INSERT [dbo].[Vina] ([VinoId], [Naziv]) VALUES (4, N'Rajnski Rizling')
INSERT [dbo].[Vina] ([VinoId], [Naziv]) VALUES (5, N'Sauvignon Blanc')
INSERT [dbo].[Vina] ([VinoId], [Naziv]) VALUES (22, N'Sonata')
INSERT [dbo].[Vina] ([VinoId], [Naziv]) VALUES (23, N'Kanon')
INSERT [dbo].[Vina] ([VinoId], [Naziv]) VALUES (24, N'Smederevka')
INSERT [dbo].[Vina] ([VinoId], [Naziv]) VALUES (25, N'Tamnjanika')
INSERT [dbo].[Vina] ([VinoId], [Naziv]) VALUES (26, N'Chardonnay')
INSERT [dbo].[Vina] ([VinoId], [Naziv]) VALUES (27, N'Kadarka')
INSERT [dbo].[Vina] ([VinoId], [Naziv]) VALUES (28, N'Kevedinka')
INSERT [dbo].[Vina] ([VinoId], [Naziv]) VALUES (29, N'Muscat')
INSERT [dbo].[Vina] ([VinoId], [Naziv]) VALUES (30, N'Magis')
INSERT [dbo].[Vina] ([VinoId], [Naziv]) VALUES (31, N'Traminac')
INSERT [dbo].[Vina] ([VinoId], [Naziv]) VALUES (32, N'Belim')
INSERT [dbo].[Vina] ([VinoId], [Naziv]) VALUES (33, N'Cabernet ')
INSERT [dbo].[Vina] ([VinoId], [Naziv]) VALUES (34, N'Trijumf')
INSERT [dbo].[Vina] ([VinoId], [Naziv]) VALUES (35, N'Rose')
INSERT [dbo].[Vina] ([VinoId], [Naziv]) VALUES (36, N'Barrique')
INSERT [dbo].[Vina] ([VinoId], [Naziv]) VALUES (37, N'Merlot')
INSERT [dbo].[Vina] ([VinoId], [Naziv]) VALUES (38, N'Game')
INSERT [dbo].[Vina] ([VinoId], [Naziv]) VALUES (39, N'Plot')
INSERT [dbo].[Vina] ([VinoId], [Naziv]) VALUES (40, N'Zenit')
INSERT [dbo].[Vina] ([VinoId], [Naziv]) VALUES (41, N'Prokupac')
INSERT [dbo].[Vina] ([VinoId], [Naziv]) VALUES (42, N'Župski Bojadiser')
SET IDENTITY_INSERT [dbo].[Vina] OFF
GO
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (1, 3)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (2, 3)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (3, 3)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (4, 3)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (5, 3)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (22, 7)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (23, 7)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (24, 7)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (25, 7)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (26, 7)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (3, 13)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (4, 13)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (27, 13)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (28, 13)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (29, 13)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (5, 15)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (26, 15)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (30, 15)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (31, 15)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (32, 15)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (3, 16)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (5, 16)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (24, 16)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (29, 16)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (33, 16)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (5, 17)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (31, 17)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (35, 17)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (36, 17)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (37, 17)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (5, 21)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (25, 21)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (38, 21)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (39, 21)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (40, 21)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (25, 22)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (33, 22)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (37, 22)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (41, 22)
INSERT [dbo].[VinarijaVino] ([VinaVinoId], [VinarijeVinarijaId]) VALUES (42, 22)
GO
SET IDENTITY_INSERT [dbo].[Vinarije] ON 

INSERT [dbo].[Vinarije] ([VinarijaId], [Naziv], [Opis], [GradId]) VALUES (3, N'Kiš', N'"Vinarija “Kiš” jedna je od najzaslužnijih u Sremskim Karlovcima kada je u pitanju promocija bermeta i vraćanje starog sjaja ovog zaista posebnog vina. Vinarija “Kiš” datira još iz davne 1830. godine. Počeci se vezuju za najstarijeg člana loze Kiš, Stevana, koji je kupio prvi vinograd i započeo proizvodnju vina. Njegovi naslednici su postepeno povećavali površine i proizvodili sve veće količine grožđa, te su na taj način postavili čvrste temelje na kojima danas počiva Vinarija “Kiš”. Proizvode vrhunska vina kao što su: rajnski rizling, italijanski rizling, merlo, chardonnay, beli i crni bermet.
 
Pored proizvodnje vina, Vinarija “Kiš” se bavi i vinskim turizmom. Poseduje degustacionu salu kapaciteta 30 osoba, u kojoj organizuju degustacije vina."', 3)
INSERT [dbo].[Vinarije] ([VinarijaId], [Naziv], [Opis], [GradId]) VALUES (7, N'Jeremić', N'"Vinarija Jeremić je moderna vinarija sa porodičnom tradicijom pravljenja domaćih kvalitetnih vina i gajenja vinove loze, koja u punom sjaju predstavlja smederevski vinski region. Vinarija Jeremić se nalazi u Smederevu, u Jugovu, 40km od Beograda. Idealan položaj Vinarije Jeremić, sa dalekim vidikovcem i pogledom na Dunav, daje posebnu draž vinogradima koje sunce miluje i koji stoga daju raskošni rod. Zahvaljujući idealnoj poziciji vinograda  na Jugovu grožđe sazreva znatno ranije i može imati 1 do 2 procenta šećera više nego inače. Vino može da odležava u malim ili velikim buradima, najčešće od hrastovine, kao i u neutralnim posudama poput posuda od nerđajućeg čelika."', 15)
INSERT [dbo].[Vinarije] ([VinarijaId], [Naziv], [Opis], [GradId]) VALUES (13, N'Čoka', N'Izgradnju ovog velelepnog podruma počeo je Artur Lederer 1903. godine, a Vinarija Čoka danas spada među najveće i najlepše podrume podzemnog tipa na Balkanu.Svakog posetioca na ulazu u podrum dočekaće ispis „IN VINO VERITAS“, koji su braća Lederer na svom grbu, pored svojih imena, utisnuli u gvozdenu kapiju. Danas, Vinarija Čoka je moderna kompanija koja vraća staru slavu čokanskih majstora. Pored oživljavanja proizvodnje, ponovnog podizanja postojećih i uvođenja novih receptura i brendova, investirano je u savremenu liniju za hladno punjenje vina, koja omogućava da vino zadrži sve svoje karakteristike i kvalitet.', 30)
INSERT [dbo].[Vinarije] ([VinarijaId], [Naziv], [Opis], [GradId]) VALUES (15, N'M.A.Probus - Carski vinogradi', N'Na obroncima Fruške gore, na samoj granici Nacionalnog parka, turistička ponuda bogatija je postojanjem vinarije M.A. PROBUS- CARSKI VINOGRADI. Vinogradi, na površini od 16 ha, su okruženi Nacionalnim parkom Fruška gora sa jedne strane i fantastičnom panoramom Srema sa druge strane. Na Šuljamačku glavicu, gde se nalazi “Probusovo” vinogorje, Marko Aurelije Probus je svojevremeno doneo vinovu lozu i tu je krenula priča o vinu u Sremu. Po njemu i vinarija nosi ime. U okviru ove vinarije planirana je i hladnjača za čuvanje voća i povrća, čime će dodatno biti podržan razvoj poljoprivrede u ovom kraju.', 37)
INSERT [dbo].[Vinarije] ([VinarijaId], [Naziv], [Opis], [GradId]) VALUES (16, N'K-ing', N'Vinogradi i voćnjaci (oko 35 ha) nalaze se u očuvanoj životnoj sredini, na obroncima Vršačkih planina (Gudurica) i u neposrednoj blizini Specijalnog rezervata prirode Deliblastka peščara (Banatski Karlovac i Orešac). Uz povoljne prirodne uslove i odabrane agrotehničke mere dobijamo kvalitetno voće (grožđe, šljiva, višnja) koje prerađujemo u sopstvenim pogonima.

Prednosti brdovitog i peskovitog tla, insolacije i košave pretočene su u naša vina. Najlepše osobine ručno ubranih, zrelih grozdova čuvaju se vrhunskom tehnologijom proizvodnje. Zrenjem i pažljivim negovanjem vina, nastaje prepoznatljiva harmonija ukusa raskošnih kapljica.', 45)
INSERT [dbo].[Vinarije] ([VinarijaId], [Naziv], [Opis], [GradId]) VALUES (17, N'Aleksandrović', N'Vinarija se nalazi u selu Vinča, četiri kilometara od Topole i hrama na Oplencu. Godišnje proizvodi oko 300.000 boca vina od grožđa sa 75 hektara sopstvenih vinograda. 

U okviru vinarije nalaze se moderna konferencijska sala, prostrana degustaciona dvorana s terasom odakle se pruža fantastičan pogled na vinograde i tipičan šumadijski krajolik, te bogato snabdevena prodavnica vina ekskluzivnih pakovanja, poklona i rakija ovog proizvođača. ', 59)
INSERT [dbo].[Vinarije] ([VinarijaId], [Naziv], [Opis], [GradId]) VALUES (21, N'Matalj', N'Matalj Vinarija nastaje na temeljima viševekovne tradicije uzgajanja vinove loze u Negotinskoj Krajini, a sa ciljem nastavljanja proizvodnje vrhinskog vina sa pečatom podneblja.Trenutno Matalj Vinarija obražuje svojih 20ha vinograda u okviru tri vinogorja u rejonu Negotinske Krajine.Vinogradi Kremen, Terasa i Bukovo predstavljaju posebnu mikro celinu sa svojim specifičnostima u pogledu zemlje i klime i čine osnovu naše proizvodnje i našeg kvaliteta. Novi moderan podrum na lokaciji Bukovo u samom vinogradu može da preradi i proizvede 200.000 litara najkvalitetnijeg vina.', 72)
INSERT [dbo].[Vinarije] ([VinarijaId], [Naziv], [Opis], [GradId]) VALUES (22, N'Ivanović', N'Župa, mala pitoma kotlina oivičena sa severa obroncima Goča, sa juga Kopaonikom, a sa zapada zaštitnikom cele Župe - Željinom, je okvir u kome se nalaze vinogradi porodice Ivanović. Oni se danas prostiru na više parcela ukupne površine 3,2 hektara i nadmorskoj visini od 260 do 400 metara, od kojih su neke praktično u centru grada Aleksandrovca, a nalaze se na južnim pozicijama Aleksandrovac Prisoje, Malo Borje i Varina. Podloga je uglavnom silikatno-krečnjačka, u Varini izrazito, gotovo kreda, dok u drugim vinogradima ima i oblog šljunka što navodi na pomisao da je ovde nekada bilo dno jezera ili mora. Najstariji je vinograd prokupca posađen 1923. godine, ostali su sađeni od 2003. pa zaključno s 2018. godinom.', 82)
SET IDENTITY_INSERT [dbo].[Vinarije] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 8/25/2022 11:46:38 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 8/25/2022 11:46:38 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 8/25/2022 11:46:38 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 8/25/2022 11:46:38 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 8/25/2022 11:46:38 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 8/25/2022 11:46:38 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 8/25/2022 11:46:38 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Hoteli_GradId]    Script Date: 8/25/2022 11:46:38 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Hoteli_GradId] ON [dbo].[Hoteli]
(
	[GradId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Rezervacije_KorisnikId]    Script Date: 8/25/2022 11:46:38 PM ******/
CREATE NONCLUSTERED INDEX [IX_Rezervacije_KorisnikId] ON [dbo].[Rezervacije]
(
	[KorisnikId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_VinarijaVino_VinarijeVinarijaId]    Script Date: 8/25/2022 11:46:38 PM ******/
CREATE NONCLUSTERED INDEX [IX_VinarijaVino_VinarijeVinarijaId] ON [dbo].[VinarijaVino]
(
	[VinarijeVinarijaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Vinarije_GradId]    Script Date: 8/25/2022 11:46:38 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Vinarije_GradId] ON [dbo].[Vinarije]
(
	[GradId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Rezervacije] ADD  DEFAULT (CONVERT([bit],(0))) FOR [DorucakUHotelu]
GO
ALTER TABLE [dbo].[Rezervacije] ADD  DEFAULT (CONVERT([bit],(0))) FOR [VeceraUVinariji]
GO
ALTER TABLE [dbo].[Rezervacije] ADD  DEFAULT ((0)) FOR [brojOsoba]
GO
ALTER TABLE [dbo].[Admini]  WITH CHECK ADD  CONSTRAINT [FK_Admini_AspNetUsers_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Admini] CHECK CONSTRAINT [FK_Admini_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Hoteli]  WITH CHECK ADD  CONSTRAINT [FK_Hoteli_Gradovi_GradId] FOREIGN KEY([GradId])
REFERENCES [dbo].[Gradovi] ([GradId])
GO
ALTER TABLE [dbo].[Hoteli] CHECK CONSTRAINT [FK_Hoteli_Gradovi_GradId]
GO
ALTER TABLE [dbo].[Klijenti]  WITH CHECK ADD  CONSTRAINT [FK_Klijenti_AspNetUsers_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Klijenti] CHECK CONSTRAINT [FK_Klijenti_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[Rezervacije]  WITH CHECK ADD  CONSTRAINT [FK_Rezervacije_AspNetUsers_KorisnikId] FOREIGN KEY([KorisnikId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Rezervacije] CHECK CONSTRAINT [FK_Rezervacije_AspNetUsers_KorisnikId]
GO
ALTER TABLE [dbo].[Rezervacije]  WITH CHECK ADD  CONSTRAINT [FK_Rezervacije_Gradovi_GradId] FOREIGN KEY([GradId])
REFERENCES [dbo].[Gradovi] ([GradId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Rezervacije] CHECK CONSTRAINT [FK_Rezervacije_Gradovi_GradId]
GO
ALTER TABLE [dbo].[VinarijaVino]  WITH CHECK ADD  CONSTRAINT [FK_VinarijaVino_Vina_VinaVinoId] FOREIGN KEY([VinaVinoId])
REFERENCES [dbo].[Vina] ([VinoId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VinarijaVino] CHECK CONSTRAINT [FK_VinarijaVino_Vina_VinaVinoId]
GO
ALTER TABLE [dbo].[VinarijaVino]  WITH CHECK ADD  CONSTRAINT [FK_VinarijaVino_Vinarije_VinarijeVinarijaId] FOREIGN KEY([VinarijeVinarijaId])
REFERENCES [dbo].[Vinarije] ([VinarijaId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VinarijaVino] CHECK CONSTRAINT [FK_VinarijaVino_Vinarije_VinarijeVinarijaId]
GO
ALTER TABLE [dbo].[Vinarije]  WITH CHECK ADD  CONSTRAINT [FK_Vinarije_Gradovi_GradId] FOREIGN KEY([GradId])
REFERENCES [dbo].[Gradovi] ([GradId])
GO
ALTER TABLE [dbo].[Vinarije] CHECK CONSTRAINT [FK_Vinarije_Gradovi_GradId]
GO
USE [master]
GO
ALTER DATABASE [VinskiTurizam] SET  READ_WRITE 
GO
