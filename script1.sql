/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.4001)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [master]
GO
/****** Object:  Database [Deals2PartyDB]    Script Date: 10/15/2017 10:14:04 PM ******/
CREATE DATABASE [Deals2PartyDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Deals2PartyDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS01\MSSQL\DATA\Deals2PartyDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Deals2PartyDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS01\MSSQL\DATA\Deals2PartyDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Deals2PartyDB] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Deals2PartyDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Deals2PartyDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Deals2PartyDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Deals2PartyDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Deals2PartyDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Deals2PartyDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [Deals2PartyDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Deals2PartyDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Deals2PartyDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Deals2PartyDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Deals2PartyDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Deals2PartyDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Deals2PartyDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Deals2PartyDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Deals2PartyDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Deals2PartyDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Deals2PartyDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Deals2PartyDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Deals2PartyDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Deals2PartyDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Deals2PartyDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Deals2PartyDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Deals2PartyDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Deals2PartyDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Deals2PartyDB] SET  MULTI_USER 
GO
ALTER DATABASE [Deals2PartyDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Deals2PartyDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Deals2PartyDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Deals2PartyDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Deals2PartyDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Deals2PartyDB] SET QUERY_STORE = OFF
GO
USE [Deals2PartyDB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Deals2PartyDB]
GO
/****** Object:  Table [dbo].[Course_Type]    Script Date: 10/15/2017 10:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course_Type](
	[Course_Type_ID] [int] IDENTITY(1,1) NOT NULL,
	[Course_Type_CD] [varchar](10) NULL,
	[Description] [varchar](100) NULL,
	[CreatedBy] [varchar](8) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](8) NULL,
	[UpdatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Course_Type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cuisines_Type]    Script Date: 10/15/2017 10:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cuisines_Type](
	[Cuisines_Type_ID] [int] IDENTITY(1,1) NOT NULL,
	[Cuisines_Type_CD] [varchar](10) NULL,
	[Description] [varchar](100) NULL,
	[CreatedBy] [varchar](8) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](8) NULL,
	[UpdatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cuisines_Type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer_Master]    Script Date: 10/15/2017 10:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Master](
	[Cust_Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Id] [int] NOT NULL,
	[Address] [varchar](100) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Pin] [varchar](6) NULL,
	[Contact_No] [varchar](100) NOT NULL,
	[ImgPath] [varchar](200) NULL,
	[CreatedBy] [varchar](8) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [varchar](8) NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cust_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dishes_Master]    Script Date: 10/15/2017 10:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dishes_Master](
	[Dish_Id] [int] IDENTITY(1,1) NOT NULL,
	[Vendor_Id] [int] NULL,
	[Cuisines_Type_ID] [int] NULL,
	[Course_Type_ID] [int] NULL,
	[Dish_Type_ID] [int] NULL,
	[Description] [varchar](100) NULL,
	[Price] [float] NULL,
	[CreatedBy] [varchar](8) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](8) NULL,
	[UpdatedOn] [datetime] NULL,
	[Dish_Image_Path] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Dish_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dishes_Type]    Script Date: 10/15/2017 10:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dishes_Type](
	[Dish_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Dish_Type_CD] [varchar](10) NULL,
	[Description] [varchar](100) NULL,
	[CreatedBy] [varchar](8) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](8) NULL,
	[UpdatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Dish_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facilities_Master]    Script Date: 10/15/2017 10:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facilities_Master](
	[Facility_CD] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](100) NULL,
	[CreatedBy] [varchar](8) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](8) NULL,
	[UpdatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Facility_CD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu_Dtl]    Script Date: 10/15/2017 10:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu_Dtl](
	[Menu_Dtl_Id] [int] IDENTITY(1,1) NOT NULL,
	[Vender_Pkg_Mst_Id] [int] NOT NULL,
	[Dish_Id] [int] NOT NULL,
	[Dish_Img_Path] [varchar](200) NULL,
	[CreatedBy] [varchar](8) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [varchar](8) NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Menu_Dtl_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[occasion_type]    Script Date: 10/15/2017 10:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[occasion_type](
	[Occasion_Type_CD] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](100) NULL,
	[CreatedBy] [varchar](8) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](8) NULL,
	[UpdatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Occasion_Type_CD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Details]    Script Date: 10/15/2017 10:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Details](
	[Order_Dtl_Id] [int] IDENTITY(1,1) NOT NULL,
	[Order_Id] [int] NOT NULL,
	[Vender_Pkg_Mst_Id] [int] NOT NULL,
	[Menu_Dtl_Id] [int] NULL,
	[No_Of_persons] [int] NULL,
	[CreatedBy] [varchar](8) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [varchar](8) NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Order_Dtl_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Master]    Script Date: 10/15/2017 10:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Master](
	[Order_Id] [int] IDENTITY(1,1) NOT NULL,
	[Order_Date] [datetime] NOT NULL,
	[Cust_Id] [int] NOT NULL,
	[Invoice_No] [varchar](20) NOT NULL,
	[Order_Status_CD] [int] NULL,
	[Address] [varchar](100) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Pin] [varchar](6) NULL,
	[Contact_No] [varchar](100) NOT NULL,
	[Payment_Method_Type_CD] [int] NULL,
	[Payment_Status_CD] [int] NULL,
	[Total_Amount] [float] NOT NULL,
	[Total_Discount] [float] NOT NULL,
	[Tax_Prct] [float] NOT NULL,
	[Total_Commission] [float] NOT NULL,
	[CreatedBy] [varchar](8) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [varchar](8) NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Order_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Status_Master]    Script Date: 10/15/2017 10:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Status_Master](
	[Order_Status_CD] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](100) NULL,
	[CreatedBy] [varchar](8) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](8) NULL,
	[UpdatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Order_Status_CD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment_Method_Type]    Script Date: 10/15/2017 10:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment_Method_Type](
	[Payment_Method_Type_CD] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](100) NULL,
	[CreatedBy] [varchar](8) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](8) NULL,
	[UpdatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Payment_Method_Type_CD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment_Status_Master]    Script Date: 10/15/2017 10:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment_Status_Master](
	[Payment_Status_CD] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](100) NULL,
	[CreatedBy] [varchar](8) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](8) NULL,
	[UpdatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Payment_Status_CD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Master]    Script Date: 10/15/2017 10:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Master](
	[User_Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Type_CD] [int] NULL,
	[Login_Id] [varchar](20) NOT NULL,
	[Password] [nvarchar](25) NULL,
	[Name] [varchar](100) NOT NULL,
	[Email_id] [varchar](100) NOT NULL,
	[Mobile_No] [varchar](10) NOT NULL,
	[CreatedBy] [varchar](8) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](8) NULL,
	[UpdatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[User_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Type]    Script Date: 10/15/2017 10:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Type](
	[User_Type_CD] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](100) NULL,
	[CreatedBy] [varchar](8) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](8) NULL,
	[UpdatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[User_Type_CD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendor_Address]    Script Date: 10/15/2017 10:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor_Address](
	[Vender_Add_Id] [int] IDENTITY(1,1) NOT NULL,
	[Vendor_Id] [int] NOT NULL,
	[Email_id] [varchar](100) NULL,
	[Address] [varchar](100) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Pin] [varchar](6) NULL,
	[Contact_No] [varchar](100) NOT NULL,
	[LocationMap] [varchar](200) NULL,
	[CreatedBy] [varchar](8) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](8) NULL,
	[UpdatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Vender_Add_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendor_Caterer_Package_Course]    Script Date: 10/15/2017 10:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor_Caterer_Package_Course](
	[Vendor_Caterer_Package_Course_ID] [int] IDENTITY(1,1) NOT NULL,
	[Vender_Pkg_Mst_Id] [int] NULL,
	[Course_Type_ID] [int] NOT NULL,
	[pkg_Course_Max_Selection] [int] NOT NULL,
	[CreatedBy] [varchar](8) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](8) NULL,
	[UpdatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Vendor_Caterer_Package_Course_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendor_Caterer_Package_Master]    Script Date: 10/15/2017 10:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor_Caterer_Package_Master](
	[Vender_Pkg_Mst_Id] [int] IDENTITY(1,1) NOT NULL,
	[Vendor_Id] [int] NOT NULL,
	[Package_Name] [varchar](100) NOT NULL,
	[Package_Desc] [varchar](255) NULL,
	[Capacity] [int] NULL,
	[Package_Price] [float] NULL,
	[Package_Ratings] [varchar](50) NULL,
	[Discount_Prct] [float] NULL,
	[Commision_Prct] [float] NULL,
	[Package_Img_Path] [varchar](200) NULL,
	[CreatedBy] [varchar](8) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](8) NULL,
	[UpdatedOn] [datetime] NULL,
	[MaxSelection] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Vender_Pkg_Mst_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendor_Caterer_Package_Menu]    Script Date: 10/15/2017 10:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor_Caterer_Package_Menu](
	[Vendor_Caterer_Package_Menu_ID] [int] IDENTITY(1,1) NOT NULL,
	[Vender_Pkg_Mst_Id] [int] NULL,
	[Dish_ID] [int] NOT NULL,
	[CreatedBy] [varchar](8) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](8) NULL,
	[UpdatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Vendor_Caterer_Package_Menu_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendor_Caterer_Package_Offers]    Script Date: 10/15/2017 10:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor_Caterer_Package_Offers](
	[Vendor_Caterer_Package_Offers] [int] IDENTITY(1,1) NOT NULL,
	[Vender_Pkg_Mst_Id] [int] NULL,
	[RangeFrom] [int] NULL,
	[RangeTo] [int] NULL,
	[Offer_Price] [float] NULL,
	[Offer_Discount_Prct] [float] NULL,
	[CreatedBy] [varchar](8) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](8) NULL,
	[UpdatedOn] [datetime] NULL,
	[Deliveryupto] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Vendor_Caterer_Package_Offers] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendor_Facilities_Dtl]    Script Date: 10/15/2017 10:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor_Facilities_Dtl](
	[Vender_Facilities_Dtl_Id] [int] IDENTITY(1,1) NOT NULL,
	[Vendor_Id] [int] NOT NULL,
	[Facility_CD] [int] NULL,
	[CreatedBy] [varchar](8) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [varchar](8) NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Vender_Facilities_Dtl_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendor_Master]    Script Date: 10/15/2017 10:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor_Master](
	[Vendor_Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Id] [int] NULL,
	[Vendor_Type_CD] [int] NULL,
	[Vendor_Name] [varchar](100) NULL,
	[Owner_name] [varchar](100) NULL,
	[Email_id] [varchar](100) NULL,
	[Address] [varchar](100) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Pin] [varchar](6) NULL,
	[Contact_No] [varchar](100) NULL,
	[WebsiteURL] [varchar](200) NULL,
	[LogoPath] [varchar](200) NULL,
	[Registration_Number] [varchar](50) NULL,
	[Establishment_Date] [datetime] NULL,
	[CreatedBy] [varchar](8) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](8) NULL,
	[UpdatedOn] [datetime] NULL,
	[Location] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Vendor_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendor_Package_Master]    Script Date: 10/15/2017 10:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor_Package_Master](
	[Vender_Pkg_Mst_Id] [int] IDENTITY(1,1) NOT NULL,
	[Vendor_Id] [int] NOT NULL,
	[Vendor_Type_CD] [int] NULL,
	[Package_Name] [varchar](100) NOT NULL,
	[Package_Desc] [varchar](255) NULL,
	[Capacity] [int] NULL,
	[Package_Price] [float] NULL,
	[Package_Ratings] [varchar](50) NULL,
	[Discount_Prct] [float] NULL,
	[Commision_Prct] [float] NULL,
	[Package_Img_Path] [varchar](200) NULL,
	[CreatedBy] [varchar](8) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [varchar](8) NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Vender_Pkg_Mst_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendor_Type]    Script Date: 10/15/2017 10:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor_Type](
	[Vendor_Type_CD] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](100) NULL,
	[CreatedBy] [varchar](8) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](8) NULL,
	[UpdatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Vendor_Type_CD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendor_Type_Dtl]    Script Date: 10/15/2017 10:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor_Type_Dtl](
	[Vender_Type_Dtl_Id] [int] IDENTITY(1,1) NOT NULL,
	[Vendor_Id] [int] NOT NULL,
	[Vendor_Type_CD] [int] NULL,
	[CreatedBy] [varchar](8) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](8) NULL,
	[UpdatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Vender_Type_Dtl_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venue_Type]    Script Date: 10/15/2017 10:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venue_Type](
	[Venue_Type_CD] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](100) NULL,
	[CreatedBy] [varchar](8) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](8) NULL,
	[UpdatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Venue_Type_CD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venue_Type_Dtl]    Script Date: 10/15/2017 10:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venue_Type_Dtl](
	[Venue_Type_Dtl_Id] [int] IDENTITY(1,1) NOT NULL,
	[Vendor_Id] [int] NOT NULL,
	[Venue_Type_CD] [int] NULL,
	[CreatedBy] [varchar](8) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [varchar](8) NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Venue_Type_Dtl_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Course_Type] ON 

INSERT [dbo].[Course_Type] ([Course_Type_ID], [Course_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (1, NULL, N'Soup', NULL, NULL, NULL, NULL)
INSERT [dbo].[Course_Type] ([Course_Type_ID], [Course_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (2, NULL, N'Appetizer', NULL, NULL, NULL, NULL)
INSERT [dbo].[Course_Type] ([Course_Type_ID], [Course_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (3, NULL, N'Salad', NULL, NULL, NULL, NULL)
INSERT [dbo].[Course_Type] ([Course_Type_ID], [Course_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (4, NULL, N'Main Course', NULL, NULL, NULL, NULL)
INSERT [dbo].[Course_Type] ([Course_Type_ID], [Course_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (5, NULL, N'Dessert', NULL, NULL, NULL, NULL)
INSERT [dbo].[Course_Type] ([Course_Type_ID], [Course_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (6, NULL, N'Yogurt', NULL, NULL, NULL, NULL)
INSERT [dbo].[Course_Type] ([Course_Type_ID], [Course_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (7, NULL, N'Burgers', NULL, NULL, NULL, NULL)
INSERT [dbo].[Course_Type] ([Course_Type_ID], [Course_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (8, NULL, N'Snacks', NULL, NULL, NULL, NULL)
INSERT [dbo].[Course_Type] ([Course_Type_ID], [Course_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (9, NULL, N'Pizza', NULL, NULL, NULL, NULL)
INSERT [dbo].[Course_Type] ([Course_Type_ID], [Course_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (10, NULL, N'Sandwich', NULL, NULL, NULL, NULL)
INSERT [dbo].[Course_Type] ([Course_Type_ID], [Course_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (11, NULL, N'Pasta', NULL, NULL, NULL, NULL)
INSERT [dbo].[Course_Type] ([Course_Type_ID], [Course_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (12, NULL, N'Spaghetti', NULL, NULL, NULL, NULL)
INSERT [dbo].[Course_Type] ([Course_Type_ID], [Course_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (13, NULL, N'Noodles', NULL, NULL, NULL, NULL)
INSERT [dbo].[Course_Type] ([Course_Type_ID], [Course_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (14, NULL, N'Rice', NULL, NULL, NULL, NULL)
INSERT [dbo].[Course_Type] ([Course_Type_ID], [Course_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (15, NULL, N'Roti', NULL, NULL, NULL, NULL)
INSERT [dbo].[Course_Type] ([Course_Type_ID], [Course_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (16, NULL, N'Dal', NULL, NULL, NULL, NULL)
INSERT [dbo].[Course_Type] ([Course_Type_ID], [Course_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (17, NULL, N'Dessert', NULL, NULL, NULL, NULL)
INSERT [dbo].[Course_Type] ([Course_Type_ID], [Course_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (18, NULL, N'STARTER', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Course_Type] OFF
SET IDENTITY_INSERT [dbo].[Cuisines_Type] ON 

INSERT [dbo].[Cuisines_Type] ([Cuisines_Type_ID], [Cuisines_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (1, NULL, N'American', NULL, NULL, NULL, NULL)
INSERT [dbo].[Cuisines_Type] ([Cuisines_Type_ID], [Cuisines_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (2, NULL, N'Chinise', NULL, NULL, NULL, NULL)
INSERT [dbo].[Cuisines_Type] ([Cuisines_Type_ID], [Cuisines_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (3, NULL, N'Continantal', NULL, NULL, NULL, NULL)
INSERT [dbo].[Cuisines_Type] ([Cuisines_Type_ID], [Cuisines_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (4, NULL, N'Cuban', NULL, NULL, NULL, NULL)
INSERT [dbo].[Cuisines_Type] ([Cuisines_Type_ID], [Cuisines_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (5, NULL, N'Greek', NULL, NULL, NULL, NULL)
INSERT [dbo].[Cuisines_Type] ([Cuisines_Type_ID], [Cuisines_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (6, NULL, N'India', NULL, NULL, NULL, NULL)
INSERT [dbo].[Cuisines_Type] ([Cuisines_Type_ID], [Cuisines_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (7, NULL, N'Italian', NULL, NULL, NULL, NULL)
INSERT [dbo].[Cuisines_Type] ([Cuisines_Type_ID], [Cuisines_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (8, NULL, N'Japanese', NULL, NULL, NULL, NULL)
INSERT [dbo].[Cuisines_Type] ([Cuisines_Type_ID], [Cuisines_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (9, NULL, N'Korean', NULL, NULL, NULL, NULL)
INSERT [dbo].[Cuisines_Type] ([Cuisines_Type_ID], [Cuisines_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (10, NULL, N'Maxican', NULL, NULL, NULL, NULL)
INSERT [dbo].[Cuisines_Type] ([Cuisines_Type_ID], [Cuisines_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (11, NULL, N'Thai', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Cuisines_Type] OFF
SET IDENTITY_INSERT [dbo].[Dishes_Master] ON 

INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (1, 2, 6, 1, 1, N'Cream of Tomato', 110, NULL, NULL, NULL, NULL, N'C:\Users\dstha\Pictures\soup22222.jpg')
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (2, 2, 6, 1, 1, N'Cream of Mushroom', 130, NULL, NULL, NULL, NULL, N'C:\Users\dstha\Pictures\Soupxxx.jpg')
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (3, 2, 6, 1, 1, N'Cream of Spinach', 110, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (4, 2, 6, 1, 1, N'Veg Sweet Corn', 120, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (5, 2, 6, 1, 1, N'Veg Clear', 80, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (6, 2, 6, 1, 1, N'Veg Manchow', 120, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (7, 2, 6, 1, 1, N'Veg Hot and Sour', 120, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (8, 2, 6, 1, 2, N'Chicken Sweet Corn', 140, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (9, 2, 6, 1, 2, N'Chicken Clear', 100, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (10, 2, 6, 1, 2, N'Chicken Manchow', 150, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (11, 2, 6, 1, 2, N'Chicken Hot & Sour', 150, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (12, 2, 6, 1, 2, N'Chicken Sweet Corn Soup', 140, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (13, 2, 6, 3, 1, N'Green Salad', 80, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (14, 2, 6, 3, 1, N'Greek Salad', 130, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (15, 2, 6, 3, 1, N'Russian Salad', 150, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (16, 2, 6, 3, 1, N'Potatao Herb''s Salad', 130, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (17, 2, 6, 3, 1, N'Veg Ceaser Salad', 130, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (18, 2, 6, 3, 2, N'Chicken Ceaser Salad', 150, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (19, 2, 6, 6, 1, N'Plain Curd', 40, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (20, 2, 6, 6, 1, N'Raita(Bundi,Pineapple,Mix veg)', 80, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (21, 2, 6, 7, 1, N'Veg Burger', 100, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (22, 2, 6, 7, 1, N'Veg Cheese Burger', 110, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (23, 2, 6, 7, 2, N'Chicken Burger', 120, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (24, 2, 6, 7, 2, N'Chicken Cheese Burger', 130, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (25, 2, 6, 8, 1, N'Vegetable Pakora', 80, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (26, 2, 6, 8, 1, N'Paneer Pakoda', 100, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (27, 2, 6, 8, 1, N'Garlic Bread', 90, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (28, 2, 6, 8, 1, N'Cheese Garlic Bread', 100, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (29, 2, 6, 8, 1, N'Cheese Chilli Toast', 120, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (30, 2, 6, 8, 1, N'Cheese Cherry Pineapple', 140, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (31, 2, 6, 8, 1, N'Corn Cheese Ball', 160, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (32, 2, 6, 8, 1, N'Cheese Pakoda', 130, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (33, 2, 6, 8, 1, N'Cheesey Potato Fries', 100, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (34, 2, 6, 8, 1, N'French Fries', 100, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (35, 2, 6, 8, 1, N'Potato Wedges', 80, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (36, 2, 6, 8, 1, N'Crispy Corn Chilli Pepper', 150, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (37, 2, 6, 8, 1, N'Crispy Chilli Potato', 120, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (38, 2, 6, 8, 1, N'Crispy Chilli Babycorn', 130, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (39, 2, 6, 8, 1, N'Grilled Baked Mushroom', 120, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (40, 2, 6, 8, 1, N'Chips & Salsa', 90, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (41, 2, 6, 8, 1, N'Nachos (veg)', 140, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (42, 2, 6, 8, 2, N'Nachos (non veg)', 160, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (43, 2, 6, 8, 2, N'Roasted Barbeque Chicken', 180, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (44, 2, 6, 8, 2, N'Fish Finger', 380, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (45, 2, 6, 9, 1, N'Veg Classic Margarita', 200, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (46, 2, 6, 9, 1, N'Veg Mamamia', 240, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (47, 2, 6, 9, 1, N'Veg Piri Piri Pino', 230, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (48, 2, 6, 9, 1, N'Veg Paneer Pizza', 200, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (49, 2, 6, 9, 1, N'Veg Onion &Capcicum', 200, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (50, 2, 6, 9, 2, N'Ferri Chicken Pizza', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (51, 2, 6, 9, 2, N'BBQ Chicken Pizza', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (52, 2, 6, 9, 2, N'Pizza Pazza', 260, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (53, 2, 6, 10, 1, N'Bread Butter', 40, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (54, 2, 6, 10, 1, N'Toast Butter', 50, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (55, 2, 6, 10, 1, N'Cheese Tomato Sandwich', 80, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (56, 2, 6, 10, 1, N'Cheese Sandwich', 80, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (57, 2, 6, 10, 1, N'Onion Capcicum Sandwich', 100, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (58, 2, 6, 10, 1, N'Veg Club Sanwich', 120, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (59, 2, 6, 10, 1, N'Veg Grill Sandwich', 100, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (60, 2, 6, 10, 2, N'Chicken Cheese Sandwich', 120, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (61, 2, 6, 10, 2, N'Chicken Club Sandwich', 130, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (62, 2, 6, 11, 1, N'Veg Ala Pesto', 200, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (63, 2, 6, 11, 1, N'Veg Primavera', 220, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (64, 2, 6, 11, 1, N'Veg Alfredo', 200, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (65, 2, 6, 11, 2, N'Chicken Arrabiata', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (66, 2, 6, 11, 2, N'Chicken Ora', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (67, 2, 6, 11, 2, N'Chicken Pesto', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (68, 2, 6, 11, 2, N'Chicken Alfredo', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (69, 2, 6, 12, 2, N'Spaghetti Meatball', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (70, 2, 6, 12, 1, N'Spaghetti Neapolitan', 230, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (71, 2, 6, 12, 1, N'Spaghetti Bolognese', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (72, 2, 6, 12, 1, N'Spaghetti With Sauces', 230, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (73, 2, 6, 13, 1, N'Veg Hakka Noodles', 190, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (74, 2, 6, 13, 1, N'Veg Chilli Garlic Noodles', 190, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (75, 2, 6, 13, 1, N'Veg Schezwan Hakka Noodles', 240, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (76, 2, 6, 13, 2, N'Chicken Hakka Noodles', 230, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (77, 2, 6, 13, 2, N'Chicken Chilli Garlic Noodles', 230, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (78, 2, 6, 13, 2, N'Chicken Schezwzn Noodles', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (79, 2, 6, 18, 1, N'Veg Seekh Kabab', 220, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (80, 2, 6, 18, 1, N'Veg Sholay', 220, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (81, 2, 6, 18, 1, N'Veg Spring Roll', 200, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (82, 2, 6, 18, 1, N'Veg Crispy', 210, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (83, 2, 6, 18, 1, N'Veg Manchurian', 190, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (84, 2, 6, 18, 1, N'Veg Cheese Kabab', 240, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (85, 2, 6, 18, 1, N'Cottage Cheese BBQ', 220, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (86, 2, 6, 18, 1, N'Paneer Tikka', 240, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (87, 2, 6, 18, 1, N'Paneer Reshmi', 240, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (88, 2, 6, 18, 1, N'Paneer Hariyali', 240, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (89, 2, 6, 18, 1, N'Paneer Malai Tikka', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (90, 2, 6, 18, 1, N'Paneer Achari', 230, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (91, 2, 6, 18, 1, N'Paneer Banjara', 240, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (92, 2, 6, 18, 1, N'Paneer Sholay', 240, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (93, 2, 6, 18, 1, N'Paneer Chilli', 200, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (94, 2, 6, 18, 1, N'Paneer 65', 200, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (95, 2, 6, 18, 1, N'Paneer Hot Garlic Sauce', 200, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (96, 2, 6, 18, 1, N'Paneer Manchurian Dry', 200, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (97, 2, 6, 18, 1, N'paneer Seekh Kabab', 220, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (98, 2, 6, 18, 1, N'Aloo Angara', 200, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (99, 2, 6, 18, 1, N'Tandoori Aloo', 200, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (100, 2, 6, 18, 1, N'Aloo Tikka', 180, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (101, 2, 6, 18, 1, N'Baby Corn Chilli', 190, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (102, 2, 6, 18, 1, N'Crispy Corn Chilli ', 190, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (103, 2, 6, 18, 1, N'Mushroom Chilli', 190, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (104, 2, 6, 18, 1, N'Cheese Mushroom', 220, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (105, 2, 6, 18, 1, N'Mushroom Tikka', 200, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (106, 2, 6, 18, 1, N'Baked Vegetables', 280, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (107, 2, 6, 18, 1, N'Assorted Veg Platter', 400, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (108, 2, 6, 18, 2, N'Tandoori Full', 420, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (109, 2, 6, 18, 2, N'Tandoori Half', 240, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (110, 2, 6, 18, 2, N'Chicken Chatpata', 260, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (111, 2, 6, 18, 2, N'Chicken Sholay', 260, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (112, 2, 6, 18, 2, N'Chicken Black Pepper', 270, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (113, 2, 6, 18, 2, N'Chicken Spring Roll', 220, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (114, 2, 6, 18, 2, N'Chicken Crispy', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (115, 2, 6, 18, 2, N'Chicken Chilli', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (116, 2, 6, 18, 2, N'Chicken 65', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (117, 2, 6, 18, 2, N'Chicken Hot Garlic Sauce', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (118, 2, 6, 18, 2, N'Chicken Manchurian', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (119, 2, 6, 18, 2, N'Chicken Lollypop', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (120, 2, 6, 18, 2, N'Chicken Barbeque', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (121, 2, 6, 18, 2, N'Chicken Fry', 280, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (122, 2, 6, 18, 2, N'Chicken Platter', 500, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (123, 2, 6, 18, 2, N'Chicken Reshmi Kabab', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (124, 2, 6, 18, 2, N'Chicken Tikka Kabab', 260, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (125, 2, 6, 18, 2, N'Chicken Garlic Kabab', 260, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (126, 2, 6, 18, 2, N'Chicken Dum Kabab', 280, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (127, 2, 6, 18, 2, N'Chicken Tangadi Kabab', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (128, 2, 6, 18, 2, N'Chicken Haryali/Banjara', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (129, 2, 6, 18, 2, N'Sizziling Angara Kabab', 280, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (130, 2, 6, 18, 2, N'Mutton Seekh Kabab', 380, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (131, 2, 6, 18, 2, N'Mutton Achari Kabab', 400, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (132, 2, 6, 18, 2, N'Mutton Banjara Kabab', 400, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (133, 2, 6, 18, 2, N'Mutton Fry', 400, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (134, 2, 6, 18, 2, N'Fish Tikka', 380, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (135, 2, 6, 18, 2, N'Fish Tikka Ajwain', 380, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (136, 2, 6, 18, 2, N'Fish Haryali', 380, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (137, 2, 6, 18, 2, N'Fish Banjara', 380, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (138, 2, 6, 18, 2, N'Fish Finger', 380, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (139, 2, 6, 18, 2, N'Fish and Chips', 380, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (140, 2, 6, 18, 2, N'Fish Koliwada', 380, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (141, 2, 6, 18, 2, N'Prawn Koliwada', 400, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (142, 2, 6, 4, 1, N'Aloo Mutter', 170, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (143, 2, 6, 4, 1, N'Aloo Jeera', 170, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (144, 2, 6, 4, 1, N'Aloo Gobi', 170, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (145, 2, 6, 4, 1, N'Dum Aloo', 200, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (146, 2, 6, 4, 1, N'Green Peas Masala', 150, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (147, 2, 6, 4, 1, N'Kaju Masala', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (148, 2, 6, 4, 1, N'Mushroom Masala', 200, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (149, 2, 6, 4, 1, N'Mushroom Achari Masala', 200, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (150, 2, 6, 4, 1, N'Palak Mushroom', 200, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (151, 2, 6, 4, 1, N'Veg Bhoona', 200, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (152, 2, 6, 4, 1, N'Veg Lahori', 200, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (153, 2, 6, 4, 1, N'Veg Makhanwala', 220, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (154, 2, 6, 4, 1, N'Veg Kolhapuri', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (155, 2, 6, 4, 1, N'Veg Maratha', 240, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (156, 2, 6, 4, 1, N'Veg Handi', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (157, 2, 6, 4, 1, N'Veg Lababdar', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (158, 2, 6, 4, 1, N'Veg Kadai', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (159, 2, 6, 4, 1, N'Mix Veg', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (160, 2, 6, 4, 1, N'Tawa Veg', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (161, 2, 6, 4, 1, N'Tawa Paneer', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (162, 2, 6, 4, 1, N'Paneer Angara', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (163, 2, 6, 4, 1, N'Paneer Tikka Masala', 260, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (164, 2, 6, 4, 1, N'Paneer Butter Masala', 260, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (165, 2, 6, 4, 1, N'Paneer Bhurji', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (166, 2, 6, 4, 1, N'Paneer Lababdar', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (167, 2, 6, 4, 1, N'Paneer Kadai', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (168, 2, 6, 4, 1, N'Paneer Handi', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (169, 2, 6, 4, 1, N'Palak Paneer', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (170, 2, 6, 4, 1, N'Mutter Paneer', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (171, 2, 6, 4, 1, N'Green 9 Special', 300, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (172, 2, 6, 4, 2, N'Chicken Handi (Full)', 550, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (173, 2, 6, 4, 2, N'Chicken Handi (Half)', 350, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (174, 2, 6, 4, 2, N'Chicken Angara', 300, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (175, 2, 6, 4, 2, N'Chicken Tikka Masala', 300, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (176, 2, 6, 4, 2, N'Chicken Dhaniya', 280, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (177, 2, 6, 4, 2, N'Chicken Achari', 260, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (178, 2, 6, 4, 2, N'Chicken Keema Masala', 280, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (179, 2, 6, 4, 2, N'Chicken Rogan Josh', 300, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (180, 2, 6, 4, 2, N'Chicken Patiyala', 300, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (181, 2, 6, 4, 2, N'Chicken Masala', 280, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (182, 2, 6, 4, 2, N'Chicken Kolhapuri', 280, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (183, 2, 6, 4, 2, N'Chicken Lababdar', 280, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (184, 2, 6, 4, 2, N'Chicken Kadai', 280, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (185, 2, 6, 4, 2, N'Butter Chicken ', 290, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (186, 2, 6, 4, 2, N'Green 9 Special Chicken', 400, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (187, 2, 6, 4, 2, N'Mutton Achari', 380, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (188, 2, 6, 4, 2, N'Mutton Dhaniya', 380, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (189, 2, 6, 4, 2, N'Mutton Saagwala', 380, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (190, 2, 6, 4, 2, N'Mutton Fry', 400, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (191, 2, 6, 4, 2, N'Mutton Kolhapuri', 380, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (192, 2, 6, 4, 2, N'Mutton Angara', 380, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (193, 2, 6, 4, 2, N'Mutton Masala', 380, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (194, 2, 6, 4, 2, N'Mutton Keema ', 400, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (195, 2, 6, 4, 2, N'Mutton Rogan josh', 400, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (196, 2, 6, 4, 2, N'Fried Fish Goan', 400, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (197, 2, 6, 4, 2, N'Fish Koliwada', 400, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (198, 2, 6, 4, 2, N'Fish Hara Bhara', 400, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (199, 2, 6, 4, 2, N'Malwan Fish Curry', 400, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (200, 2, 6, 4, 2, N'Prawn Gassi', 420, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (201, 2, 6, 4, 2, N'Prawn Green Masala', 420, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (202, 2, 6, 4, 2, N'Prawn Koliwada', 420, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (203, 2, 6, 4, 2, N'Tawa Jhinga', 420, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (204, 2, 6, 15, 1, N'Roti', 20, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (205, 2, 6, 15, 1, N'Butter Roti', 25, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (206, 2, 6, 15, 1, N'Paratha Lachha', 40, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (207, 2, 6, 15, 1, N'Butter Paratha Lachha', 50, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (208, 2, 6, 15, 1, N'Aloo Parataha', 60, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (209, 2, 6, 15, 1, N'Gobi Paratha', 50, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (210, 2, 6, 15, 1, N'Onion Paratha', 60, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (211, 2, 6, 15, 1, N'Methi Paratha', 60, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (212, 2, 6, 15, 1, N'Pudina Paratha', 60, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (213, 2, 6, 15, 1, N'Naan', 30, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (214, 2, 6, 15, 1, N'Butter Naan', 40, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (215, 2, 6, 15, 1, N'Garlic Naan', 45, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (216, 2, 6, 15, 1, N'Cheese Naan', 70, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (217, 2, 6, 15, 1, N'Cheese Garlic Naan', 90, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (218, 2, 6, 15, 1, N'Stuffed Naan', 80, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (219, 2, 6, 15, 1, N'Stuffed Kulcha', 70, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (220, 2, 6, 14, 1, N'Steam Rice ', 140, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (221, 2, 6, 14, 1, N'Jeera Rice', 160, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (222, 2, 6, 14, 1, N'Dal khichadi', 170, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (223, 2, 6, 14, 1, N'Curd Rice', 150, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (224, 2, 6, 14, 1, N'Veg Biryani', 200, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (225, 2, 6, 14, 1, N'Veg Fried Rice ', 180, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (226, 2, 6, 14, 1, N'Veg Peas Pulao', 190, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (227, 2, 6, 14, 1, N'Veg Schezwan Rice', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (228, 2, 6, 14, 1, N'Veg Tit Bit Rice', 300, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (229, 2, 6, 14, 2, N'Non Veg Triple Schezwan', 300, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (230, 2, 6, 14, 2, N'Chicken Schezwzn Rice', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (231, 2, 6, 14, 2, N'Chicken Biryani', 300, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (232, 2, 6, 14, 2, N'Chicken Fried Rice ', 250, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (233, 2, 6, 14, 2, N'Chicken Tit Bit Rice ', 350, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (234, 2, 6, 14, 2, N'Mutton Biryani', 400, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (235, 2, 6, 14, 2, N'Prawns Biryani', 420, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (236, 2, 6, 14, 2, N'Prawns Fried Rice', 400, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (237, 2, 6, 14, 2, N'Prawns Schezwan Rice', 400, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (238, 2, 6, 16, 1, N'Dal Fry', 140, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (239, 2, 6, 16, 1, N'Dal Tadka', 150, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Dishes_Master] ([Dish_Id], [Vendor_Id], [Cuisines_Type_ID], [Course_Type_ID], [Dish_Type_ID], [Description], [Price], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Dish_Image_Path]) VALUES (240, 2, 6, 16, 1, N'Kali Dal (Makhani)', 180, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Dishes_Master] OFF
SET IDENTITY_INSERT [dbo].[Dishes_Type] ON 

INSERT [dbo].[Dishes_Type] ([Dish_Type_Id], [Dish_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (1, NULL, N'Veg', N'', CAST(N'2017-09-13T08:16:08.630' AS DateTime), N'', CAST(N'2017-09-13T08:16:08.630' AS DateTime))
INSERT [dbo].[Dishes_Type] ([Dish_Type_Id], [Dish_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (2, NULL, N'Non-Veg', N'', CAST(N'2017-09-13T08:16:08.630' AS DateTime), N'', CAST(N'2017-09-13T08:16:08.630' AS DateTime))
INSERT [dbo].[Dishes_Type] ([Dish_Type_Id], [Dish_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (3, NULL, N'Jain', N'', CAST(N'2017-09-13T08:16:08.630' AS DateTime), N'', CAST(N'2017-09-13T08:16:08.630' AS DateTime))
INSERT [dbo].[Dishes_Type] ([Dish_Type_Id], [Dish_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (4, NULL, N'Gujrati', N'', CAST(N'2017-09-13T08:16:08.647' AS DateTime), N'', CAST(N'2017-09-13T08:16:08.647' AS DateTime))
SET IDENTITY_INSERT [dbo].[Dishes_Type] OFF
SET IDENTITY_INSERT [dbo].[Facilities_Master] ON 

INSERT [dbo].[Facilities_Master] ([Facility_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (1, N'Catering Available', NULL, NULL, NULL, NULL)
INSERT [dbo].[Facilities_Master] ([Facility_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (2, N'DJ Available', NULL, NULL, NULL, NULL)
INSERT [dbo].[Facilities_Master] ([Facility_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (3, N'Decorators Available', NULL, NULL, NULL, NULL)
INSERT [dbo].[Facilities_Master] ([Facility_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (4, N'MagicianAvailables', NULL, NULL, NULL, NULL)
INSERT [dbo].[Facilities_Master] ([Facility_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (5, N'Photographers Available', NULL, NULL, NULL, NULL)
INSERT [dbo].[Facilities_Master] ([Facility_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (6, N'Full Bar', NULL, NULL, NULL, NULL)
INSERT [dbo].[Facilities_Master] ([Facility_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (7, N'Power Backup', NULL, NULL, NULL, NULL)
INSERT [dbo].[Facilities_Master] ([Facility_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (8, N'Roof Top', NULL, NULL, NULL, NULL)
INSERT [dbo].[Facilities_Master] ([Facility_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (9, N'Smoking Area', NULL, NULL, NULL, NULL)
INSERT [dbo].[Facilities_Master] ([Facility_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (10, N'Valet Parking', NULL, NULL, NULL, NULL)
INSERT [dbo].[Facilities_Master] ([Facility_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (11, N'NightLife', NULL, NULL, NULL, NULL)
INSERT [dbo].[Facilities_Master] ([Facility_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (12, N'WiFi', NULL, NULL, NULL, NULL)
INSERT [dbo].[Facilities_Master] ([Facility_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (13, N'Live Music', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Facilities_Master] OFF
SET IDENTITY_INSERT [dbo].[occasion_type] ON 

INSERT [dbo].[occasion_type] ([Occasion_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (1, N'Birthday Party', NULL, NULL, NULL, NULL)
INSERT [dbo].[occasion_type] ([Occasion_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (2, N'Marriage anniversary', NULL, NULL, NULL, NULL)
INSERT [dbo].[occasion_type] ([Occasion_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (3, N'Bachelor  party', NULL, NULL, NULL, NULL)
INSERT [dbo].[occasion_type] ([Occasion_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (4, N'Friends get-together', NULL, NULL, NULL, NULL)
INSERT [dbo].[occasion_type] ([Occasion_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (5, N'Kitty party', NULL, NULL, NULL, NULL)
INSERT [dbo].[occasion_type] ([Occasion_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (6, N'Best friends reunion', NULL, NULL, NULL, NULL)
INSERT [dbo].[occasion_type] ([Occasion_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (7, N'House warming', NULL, NULL, NULL, NULL)
INSERT [dbo].[occasion_type] ([Occasion_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (8, N'Baby shower', NULL, NULL, NULL, NULL)
INSERT [dbo].[occasion_type] ([Occasion_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (9, N'Business inauguration', NULL, NULL, NULL, NULL)
INSERT [dbo].[occasion_type] ([Occasion_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (10, N'Retirement party', NULL, NULL, NULL, NULL)
INSERT [dbo].[occasion_type] ([Occasion_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (11, N'Residential society events', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[occasion_type] OFF
SET IDENTITY_INSERT [dbo].[Order_Status_Master] ON 

INSERT [dbo].[Order_Status_Master] ([Order_Status_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (1, N'Initiated', NULL, NULL, NULL, NULL)
INSERT [dbo].[Order_Status_Master] ([Order_Status_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (2, N'Placed', NULL, NULL, NULL, NULL)
INSERT [dbo].[Order_Status_Master] ([Order_Status_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (3, N'Payment', NULL, NULL, NULL, NULL)
INSERT [dbo].[Order_Status_Master] ([Order_Status_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (4, N'Changed', NULL, NULL, NULL, NULL)
INSERT [dbo].[Order_Status_Master] ([Order_Status_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (5, N'Canceled', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Order_Status_Master] OFF
SET IDENTITY_INSERT [dbo].[Payment_Method_Type] ON 

INSERT [dbo].[Payment_Method_Type] ([Payment_Method_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (1, N'Credit card', NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Method_Type] ([Payment_Method_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (2, N'Debit card', NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Method_Type] ([Payment_Method_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (3, N'Netbanking', NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Method_Type] ([Payment_Method_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (4, N'PayTM', NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Method_Type] ([Payment_Method_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (5, N'Cash on Delivery', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Payment_Method_Type] OFF
SET IDENTITY_INSERT [dbo].[Payment_Status_Master] ON 

INSERT [dbo].[Payment_Status_Master] ([Payment_Status_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (1, N'Initiated', NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Status_Master] ([Payment_Status_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (2, N'Pending', NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Status_Master] ([Payment_Status_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (3, N'Done', NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Status_Master] ([Payment_Status_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (4, N'Failed', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Payment_Status_Master] OFF
SET IDENTITY_INSERT [dbo].[User_Master] ON 

INSERT [dbo].[User_Master] ([User_Id], [User_Type_CD], [Login_Id], [Password], [Name], [Email_id], [Mobile_No], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (1, 2, N'Green9Owner', N'Green9Owner', N'Green9Owner', N'Green9@abc.com', N'7218700909', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[User_Master] OFF
SET IDENTITY_INSERT [dbo].[User_Type] ON 

INSERT [dbo].[User_Type] ([User_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (1, N'Admin', NULL, NULL, NULL, NULL)
INSERT [dbo].[User_Type] ([User_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (2, N'Vendor', NULL, NULL, NULL, NULL)
INSERT [dbo].[User_Type] ([User_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (3, N'Customer', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[User_Type] OFF
SET IDENTITY_INSERT [dbo].[Vendor_Address] ON 

INSERT [dbo].[Vendor_Address] ([Vender_Add_Id], [Vendor_Id], [Email_id], [Address], [City], [State], [Pin], [Contact_No], [LocationMap], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (1, 2, N'Contact@green9.in', N'A/P Wagholi, Kesnand Road, Gat No. 668, Tal. Haveli, Dist.', N'Pune', N'MH', N'412207', N'917219700909', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Vendor_Address] OFF
SET IDENTITY_INSERT [dbo].[Vendor_Caterer_Package_Course] ON 

INSERT [dbo].[Vendor_Caterer_Package_Course] ([Vendor_Caterer_Package_Course_ID], [Vender_Pkg_Mst_Id], [Course_Type_ID], [pkg_Course_Max_Selection], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (1, 12, 1, 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Course] ([Vendor_Caterer_Package_Course_ID], [Vender_Pkg_Mst_Id], [Course_Type_ID], [pkg_Course_Max_Selection], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (2, 12, 3, 4, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Course] ([Vendor_Caterer_Package_Course_ID], [Vender_Pkg_Mst_Id], [Course_Type_ID], [pkg_Course_Max_Selection], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (3, 12, 4, 6, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Course] ([Vendor_Caterer_Package_Course_ID], [Vender_Pkg_Mst_Id], [Course_Type_ID], [pkg_Course_Max_Selection], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (4, 11, 1, 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Course] ([Vendor_Caterer_Package_Course_ID], [Vender_Pkg_Mst_Id], [Course_Type_ID], [pkg_Course_Max_Selection], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (5, 11, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Course] ([Vendor_Caterer_Package_Course_ID], [Vender_Pkg_Mst_Id], [Course_Type_ID], [pkg_Course_Max_Selection], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (6, 11, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Course] ([Vendor_Caterer_Package_Course_ID], [Vender_Pkg_Mst_Id], [Course_Type_ID], [pkg_Course_Max_Selection], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (7, 11, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Course] ([Vendor_Caterer_Package_Course_ID], [Vender_Pkg_Mst_Id], [Course_Type_ID], [pkg_Course_Max_Selection], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (8, 11, 7, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Course] ([Vendor_Caterer_Package_Course_ID], [Vender_Pkg_Mst_Id], [Course_Type_ID], [pkg_Course_Max_Selection], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (9, 11, 8, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Course] ([Vendor_Caterer_Package_Course_ID], [Vender_Pkg_Mst_Id], [Course_Type_ID], [pkg_Course_Max_Selection], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (10, 11, 9, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Course] ([Vendor_Caterer_Package_Course_ID], [Vender_Pkg_Mst_Id], [Course_Type_ID], [pkg_Course_Max_Selection], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (11, 11, 10, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Course] ([Vendor_Caterer_Package_Course_ID], [Vender_Pkg_Mst_Id], [Course_Type_ID], [pkg_Course_Max_Selection], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (12, 11, 11, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Course] ([Vendor_Caterer_Package_Course_ID], [Vender_Pkg_Mst_Id], [Course_Type_ID], [pkg_Course_Max_Selection], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (13, 11, 12, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Course] ([Vendor_Caterer_Package_Course_ID], [Vender_Pkg_Mst_Id], [Course_Type_ID], [pkg_Course_Max_Selection], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (14, 11, 13, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Course] ([Vendor_Caterer_Package_Course_ID], [Vender_Pkg_Mst_Id], [Course_Type_ID], [pkg_Course_Max_Selection], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (15, 11, 14, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Course] ([Vendor_Caterer_Package_Course_ID], [Vender_Pkg_Mst_Id], [Course_Type_ID], [pkg_Course_Max_Selection], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (16, 11, 15, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Course] ([Vendor_Caterer_Package_Course_ID], [Vender_Pkg_Mst_Id], [Course_Type_ID], [pkg_Course_Max_Selection], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (17, 11, 16, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Course] ([Vendor_Caterer_Package_Course_ID], [Vender_Pkg_Mst_Id], [Course_Type_ID], [pkg_Course_Max_Selection], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (18, 11, 18, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Course] ([Vendor_Caterer_Package_Course_ID], [Vender_Pkg_Mst_Id], [Course_Type_ID], [pkg_Course_Max_Selection], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (20, 12, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Course] ([Vendor_Caterer_Package_Course_ID], [Vender_Pkg_Mst_Id], [Course_Type_ID], [pkg_Course_Max_Selection], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (21, 12, 7, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Course] ([Vendor_Caterer_Package_Course_ID], [Vender_Pkg_Mst_Id], [Course_Type_ID], [pkg_Course_Max_Selection], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (22, 12, 8, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Course] ([Vendor_Caterer_Package_Course_ID], [Vender_Pkg_Mst_Id], [Course_Type_ID], [pkg_Course_Max_Selection], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (23, 12, 9, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Course] ([Vendor_Caterer_Package_Course_ID], [Vender_Pkg_Mst_Id], [Course_Type_ID], [pkg_Course_Max_Selection], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (24, 12, 10, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Course] ([Vendor_Caterer_Package_Course_ID], [Vender_Pkg_Mst_Id], [Course_Type_ID], [pkg_Course_Max_Selection], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (25, 12, 11, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Course] ([Vendor_Caterer_Package_Course_ID], [Vender_Pkg_Mst_Id], [Course_Type_ID], [pkg_Course_Max_Selection], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (26, 12, 12, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Course] ([Vendor_Caterer_Package_Course_ID], [Vender_Pkg_Mst_Id], [Course_Type_ID], [pkg_Course_Max_Selection], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (27, 12, 13, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Course] ([Vendor_Caterer_Package_Course_ID], [Vender_Pkg_Mst_Id], [Course_Type_ID], [pkg_Course_Max_Selection], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (28, 12, 14, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Course] ([Vendor_Caterer_Package_Course_ID], [Vender_Pkg_Mst_Id], [Course_Type_ID], [pkg_Course_Max_Selection], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (29, 12, 15, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Course] ([Vendor_Caterer_Package_Course_ID], [Vender_Pkg_Mst_Id], [Course_Type_ID], [pkg_Course_Max_Selection], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (30, 12, 16, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Course] ([Vendor_Caterer_Package_Course_ID], [Vender_Pkg_Mst_Id], [Course_Type_ID], [pkg_Course_Max_Selection], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (31, 12, 18, 0, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Vendor_Caterer_Package_Course] OFF
SET IDENTITY_INSERT [dbo].[Vendor_Caterer_Package_Master] ON 

INSERT [dbo].[Vendor_Caterer_Package_Master] ([Vender_Pkg_Mst_Id], [Vendor_Id], [Package_Name], [Package_Desc], [Capacity], [Package_Price], [Package_Ratings], [Discount_Prct], [Commision_Prct], [Package_Img_Path], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MaxSelection]) VALUES (11, 2, N'Silver', N'best for small party', 30, 300, NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Master] ([Vender_Pkg_Mst_Id], [Vendor_Id], [Package_Name], [Package_Desc], [Capacity], [Package_Price], [Package_Ratings], [Discount_Prct], [Commision_Prct], [Package_Img_Path], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MaxSelection]) VALUES (12, 2, N'Gold', N'best for mid size  party', 100, 500, NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Master] ([Vender_Pkg_Mst_Id], [Vendor_Id], [Package_Name], [Package_Desc], [Capacity], [Package_Price], [Package_Ratings], [Discount_Prct], [Commision_Prct], [Package_Img_Path], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MaxSelection]) VALUES (13, 2, N'Diamond', N'best for big size  party', 300, 800, NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Vendor_Caterer_Package_Master] OFF
SET IDENTITY_INSERT [dbo].[Vendor_Caterer_Package_Menu] ON 

INSERT [dbo].[Vendor_Caterer_Package_Menu] ([Vendor_Caterer_Package_Menu_ID], [Vender_Pkg_Mst_Id], [Dish_ID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (3, 11, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Menu] ([Vendor_Caterer_Package_Menu_ID], [Vender_Pkg_Mst_Id], [Dish_ID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (4, 11, 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Menu] ([Vendor_Caterer_Package_Menu_ID], [Vender_Pkg_Mst_Id], [Dish_ID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (5, 11, 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Menu] ([Vendor_Caterer_Package_Menu_ID], [Vender_Pkg_Mst_Id], [Dish_ID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (9, 12, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Menu] ([Vendor_Caterer_Package_Menu_ID], [Vender_Pkg_Mst_Id], [Dish_ID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (10, 12, 6, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Menu] ([Vendor_Caterer_Package_Menu_ID], [Vender_Pkg_Mst_Id], [Dish_ID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (11, 12, 7, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Caterer_Package_Menu] ([Vendor_Caterer_Package_Menu_ID], [Vender_Pkg_Mst_Id], [Dish_ID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (12, 12, 9, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Vendor_Caterer_Package_Menu] OFF
SET IDENTITY_INSERT [dbo].[Vendor_Caterer_Package_Offers] ON 

INSERT [dbo].[Vendor_Caterer_Package_Offers] ([Vendor_Caterer_Package_Offers], [Vender_Pkg_Mst_Id], [RangeFrom], [RangeTo], [Offer_Price], [Offer_Discount_Prct], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Deliveryupto]) VALUES (13, 11, 20, 50, 260, 4, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[Vendor_Caterer_Package_Offers] ([Vendor_Caterer_Package_Offers], [Vender_Pkg_Mst_Id], [RangeFrom], [RangeTo], [Offer_Price], [Offer_Discount_Prct], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Deliveryupto]) VALUES (14, 11, 50, 100, 250, 7, NULL, NULL, NULL, NULL, 10)
INSERT [dbo].[Vendor_Caterer_Package_Offers] ([Vendor_Caterer_Package_Offers], [Vender_Pkg_Mst_Id], [RangeFrom], [RangeTo], [Offer_Price], [Offer_Discount_Prct], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Deliveryupto]) VALUES (15, 11, 100, 150, 240, 8, NULL, NULL, NULL, NULL, 15)
SET IDENTITY_INSERT [dbo].[Vendor_Caterer_Package_Offers] OFF
SET IDENTITY_INSERT [dbo].[Vendor_Facilities_Dtl] ON 

INSERT [dbo].[Vendor_Facilities_Dtl] ([Vender_Facilities_Dtl_Id], [Vendor_Id], [Facility_CD], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (1, 2, 1, N'', CAST(N'2017-09-12T10:04:35.393' AS DateTime), N'', CAST(N'2017-09-12T10:04:35.393' AS DateTime))
SET IDENTITY_INSERT [dbo].[Vendor_Facilities_Dtl] OFF
SET IDENTITY_INSERT [dbo].[Vendor_Master] ON 

INSERT [dbo].[Vendor_Master] ([Vendor_Id], [User_Id], [Vendor_Type_CD], [Vendor_Name], [Owner_name], [Email_id], [Address], [City], [State], [Pin], [Contact_No], [WebsiteURL], [LogoPath], [Registration_Number], [Establishment_Date], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Location]) VALUES (1, 1, NULL, N'--- SELECT ------', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Master] ([Vendor_Id], [User_Id], [Vendor_Type_CD], [Vendor_Name], [Owner_name], [Email_id], [Address], [City], [State], [Pin], [Contact_No], [WebsiteURL], [LogoPath], [Registration_Number], [Establishment_Date], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Location]) VALUES (2, 1, 1, N'Green 9', N'Green9Owner', N'Contact@green9.in', N'A/P Wagholi, Kesnand Road, Gat No. 668, Tal. Haveli, Dist.', N'Pune', N'Pune', N'412207', N'2065007711', N'', N'', N'1111111', CAST(N'2017-09-16T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, N'18.575411134757747|73.97875249385834')
INSERT [dbo].[Vendor_Master] ([Vendor_Id], [User_Id], [Vendor_Type_CD], [Vendor_Name], [Owner_name], [Email_id], [Address], [City], [State], [Pin], [Contact_No], [WebsiteURL], [LogoPath], [Registration_Number], [Establishment_Date], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Location]) VALUES (3, NULL, 2, N'fdsfsd', N'dsfsdf', N'', N'', N'', N'', N'0', N'0', N'', N'', N'asdasd', CAST(N'2017-09-08T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, N'18.537599659131004|73.90778285225678')
SET IDENTITY_INSERT [dbo].[Vendor_Master] OFF
SET IDENTITY_INSERT [dbo].[Vendor_Package_Master] ON 

INSERT [dbo].[Vendor_Package_Master] ([Vender_Pkg_Mst_Id], [Vendor_Id], [Vendor_Type_CD], [Package_Name], [Package_Desc], [Capacity], [Package_Price], [Package_Ratings], [Discount_Prct], [Commision_Prct], [Package_Img_Path], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (1, 1, 2, N'Siver buffet', N'Ideal for a classic party simple and sober.', 400, 500, N'', 0, 0, N'', N'', CAST(N'2017-09-12T11:00:47.920' AS DateTime), N'', CAST(N'2017-09-12T11:00:47.920' AS DateTime))
SET IDENTITY_INSERT [dbo].[Vendor_Package_Master] OFF
SET IDENTITY_INSERT [dbo].[Vendor_Type] ON 

INSERT [dbo].[Vendor_Type] ([Vendor_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (1, N'Venues', NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Type] ([Vendor_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (2, N'Caterers', NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Type] ([Vendor_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (3, N'Tent House', NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Type] ([Vendor_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (4, N'Decorators', NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Type] ([Vendor_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (5, N'Musicians', NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Type] ([Vendor_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (6, N'Magicians', NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor_Type] ([Vendor_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (7, N'Photographers', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Vendor_Type] OFF
SET IDENTITY_INSERT [dbo].[Vendor_Type_Dtl] ON 

INSERT [dbo].[Vendor_Type_Dtl] ([Vender_Type_Dtl_Id], [Vendor_Id], [Vendor_Type_CD], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (1, 1, 2, N'', CAST(N'2017-09-12T10:03:12.940' AS DateTime), N'', CAST(N'2017-09-12T10:03:12.940' AS DateTime))
SET IDENTITY_INSERT [dbo].[Vendor_Type_Dtl] OFF
SET IDENTITY_INSERT [dbo].[Venue_Type] ON 

INSERT [dbo].[Venue_Type] ([Venue_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (1, N'Banquet Halls', NULL, NULL, NULL, NULL)
INSERT [dbo].[Venue_Type] ([Venue_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (2, N'Bars', NULL, NULL, NULL, NULL)
INSERT [dbo].[Venue_Type] ([Venue_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (3, N'Restaurants', NULL, NULL, NULL, NULL)
INSERT [dbo].[Venue_Type] ([Venue_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (4, N'Farm Houses', NULL, NULL, NULL, NULL)
INSERT [dbo].[Venue_Type] ([Venue_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (5, N'Hotels', NULL, NULL, NULL, NULL)
INSERT [dbo].[Venue_Type] ([Venue_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (6, N'Clubs', NULL, NULL, NULL, NULL)
INSERT [dbo].[Venue_Type] ([Venue_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (7, N'Conference Rooms', NULL, NULL, NULL, NULL)
INSERT [dbo].[Venue_Type] ([Venue_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (8, N'Seminar Halls', NULL, NULL, NULL, NULL)
INSERT [dbo].[Venue_Type] ([Venue_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (9, N'Unique Venues', NULL, NULL, NULL, NULL)
INSERT [dbo].[Venue_Type] ([Venue_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (10, N'Resort', NULL, NULL, NULL, NULL)
INSERT [dbo].[Venue_Type] ([Venue_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (11, N'Art Gallery', NULL, NULL, NULL, NULL)
INSERT [dbo].[Venue_Type] ([Venue_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (12, N'Auditorium', NULL, NULL, NULL, NULL)
INSERT [dbo].[Venue_Type] ([Venue_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (13, N'Theater', NULL, NULL, NULL, NULL)
INSERT [dbo].[Venue_Type] ([Venue_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (14, N'Party Lawn', NULL, NULL, NULL, NULL)
INSERT [dbo].[Venue_Type] ([Venue_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (15, N'Pool Side', NULL, NULL, NULL, NULL)
INSERT [dbo].[Venue_Type] ([Venue_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (16, N'Roof Top', NULL, NULL, NULL, NULL)
INSERT [dbo].[Venue_Type] ([Venue_Type_CD], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (17, N'Amusement Park', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Venue_Type] OFF
ALTER TABLE [dbo].[Course_Type] ADD  DEFAULT (NULL) FOR [Course_Type_CD]
GO
ALTER TABLE [dbo].[Course_Type] ADD  DEFAULT (NULL) FOR [Description]
GO
ALTER TABLE [dbo].[Course_Type] ADD  DEFAULT (NULL) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Course_Type] ADD  DEFAULT (NULL) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Course_Type] ADD  DEFAULT (NULL) FOR [UpdatedBy]
GO
ALTER TABLE [dbo].[Course_Type] ADD  DEFAULT (NULL) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[Cuisines_Type] ADD  DEFAULT (NULL) FOR [Cuisines_Type_CD]
GO
ALTER TABLE [dbo].[Cuisines_Type] ADD  DEFAULT (NULL) FOR [Description]
GO
ALTER TABLE [dbo].[Cuisines_Type] ADD  DEFAULT (NULL) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Cuisines_Type] ADD  DEFAULT (NULL) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Cuisines_Type] ADD  DEFAULT (NULL) FOR [UpdatedBy]
GO
ALTER TABLE [dbo].[Cuisines_Type] ADD  DEFAULT (NULL) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[Customer_Master] ADD  DEFAULT (NULL) FOR [Address]
GO
ALTER TABLE [dbo].[Customer_Master] ADD  DEFAULT (NULL) FOR [City]
GO
ALTER TABLE [dbo].[Customer_Master] ADD  DEFAULT (NULL) FOR [State]
GO
ALTER TABLE [dbo].[Customer_Master] ADD  DEFAULT (NULL) FOR [Pin]
GO
ALTER TABLE [dbo].[Customer_Master] ADD  DEFAULT (NULL) FOR [ImgPath]
GO
ALTER TABLE [dbo].[Dishes_Master] ADD  DEFAULT (NULL) FOR [Description]
GO
ALTER TABLE [dbo].[Dishes_Master] ADD  DEFAULT (NULL) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Dishes_Master] ADD  DEFAULT (NULL) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Dishes_Master] ADD  DEFAULT (NULL) FOR [UpdatedBy]
GO
ALTER TABLE [dbo].[Dishes_Master] ADD  DEFAULT (NULL) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[Dishes_Type] ADD  DEFAULT (NULL) FOR [Dish_Type_CD]
GO
ALTER TABLE [dbo].[Dishes_Type] ADD  DEFAULT (NULL) FOR [Description]
GO
ALTER TABLE [dbo].[Facilities_Master] ADD  DEFAULT (NULL) FOR [Description]
GO
ALTER TABLE [dbo].[Facilities_Master] ADD  DEFAULT (NULL) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Facilities_Master] ADD  DEFAULT (NULL) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Facilities_Master] ADD  DEFAULT (NULL) FOR [UpdatedBy]
GO
ALTER TABLE [dbo].[Facilities_Master] ADD  DEFAULT (NULL) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[Menu_Dtl] ADD  DEFAULT (NULL) FOR [Dish_Img_Path]
GO
ALTER TABLE [dbo].[occasion_type] ADD  DEFAULT (NULL) FOR [Description]
GO
ALTER TABLE [dbo].[occasion_type] ADD  DEFAULT (NULL) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[occasion_type] ADD  DEFAULT (NULL) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[occasion_type] ADD  DEFAULT (NULL) FOR [UpdatedBy]
GO
ALTER TABLE [dbo].[occasion_type] ADD  DEFAULT (NULL) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[Order_Details] ADD  DEFAULT (NULL) FOR [Menu_Dtl_Id]
GO
ALTER TABLE [dbo].[Order_Details] ADD  DEFAULT (NULL) FOR [No_Of_persons]
GO
ALTER TABLE [dbo].[Order_Master] ADD  DEFAULT (NULL) FOR [Address]
GO
ALTER TABLE [dbo].[Order_Master] ADD  DEFAULT (NULL) FOR [City]
GO
ALTER TABLE [dbo].[Order_Master] ADD  DEFAULT (NULL) FOR [State]
GO
ALTER TABLE [dbo].[Order_Master] ADD  DEFAULT (NULL) FOR [Pin]
GO
ALTER TABLE [dbo].[Order_Status_Master] ADD  DEFAULT (NULL) FOR [Description]
GO
ALTER TABLE [dbo].[Order_Status_Master] ADD  DEFAULT (NULL) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Order_Status_Master] ADD  DEFAULT (NULL) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Order_Status_Master] ADD  DEFAULT (NULL) FOR [UpdatedBy]
GO
ALTER TABLE [dbo].[Order_Status_Master] ADD  DEFAULT (NULL) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[Payment_Method_Type] ADD  DEFAULT (NULL) FOR [Description]
GO
ALTER TABLE [dbo].[Payment_Method_Type] ADD  DEFAULT (NULL) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Payment_Method_Type] ADD  DEFAULT (NULL) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Payment_Method_Type] ADD  DEFAULT (NULL) FOR [UpdatedBy]
GO
ALTER TABLE [dbo].[Payment_Method_Type] ADD  DEFAULT (NULL) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[Payment_Status_Master] ADD  DEFAULT (NULL) FOR [Description]
GO
ALTER TABLE [dbo].[Payment_Status_Master] ADD  DEFAULT (NULL) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Payment_Status_Master] ADD  DEFAULT (NULL) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Payment_Status_Master] ADD  DEFAULT (NULL) FOR [UpdatedBy]
GO
ALTER TABLE [dbo].[Payment_Status_Master] ADD  DEFAULT (NULL) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[User_Type] ADD  DEFAULT (NULL) FOR [Description]
GO
ALTER TABLE [dbo].[User_Type] ADD  DEFAULT (NULL) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[User_Type] ADD  DEFAULT (NULL) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[User_Type] ADD  DEFAULT (NULL) FOR [UpdatedBy]
GO
ALTER TABLE [dbo].[User_Type] ADD  DEFAULT (NULL) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[Vendor_Address] ADD  DEFAULT (NULL) FOR [Email_id]
GO
ALTER TABLE [dbo].[Vendor_Address] ADD  DEFAULT (NULL) FOR [Address]
GO
ALTER TABLE [dbo].[Vendor_Address] ADD  DEFAULT (NULL) FOR [City]
GO
ALTER TABLE [dbo].[Vendor_Address] ADD  DEFAULT (NULL) FOR [State]
GO
ALTER TABLE [dbo].[Vendor_Address] ADD  DEFAULT (NULL) FOR [Pin]
GO
ALTER TABLE [dbo].[Vendor_Address] ADD  DEFAULT (NULL) FOR [LocationMap]
GO
ALTER TABLE [dbo].[Vendor_Caterer_Package_Course] ADD  DEFAULT (NULL) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Vendor_Caterer_Package_Course] ADD  DEFAULT (NULL) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Vendor_Caterer_Package_Course] ADD  DEFAULT (NULL) FOR [UpdatedBy]
GO
ALTER TABLE [dbo].[Vendor_Caterer_Package_Course] ADD  DEFAULT (NULL) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[Vendor_Caterer_Package_Master] ADD  DEFAULT (NULL) FOR [Package_Desc]
GO
ALTER TABLE [dbo].[Vendor_Caterer_Package_Master] ADD  DEFAULT (NULL) FOR [Capacity]
GO
ALTER TABLE [dbo].[Vendor_Caterer_Package_Master] ADD  DEFAULT (NULL) FOR [Package_Price]
GO
ALTER TABLE [dbo].[Vendor_Caterer_Package_Master] ADD  DEFAULT (NULL) FOR [Package_Ratings]
GO
ALTER TABLE [dbo].[Vendor_Caterer_Package_Master] ADD  DEFAULT (NULL) FOR [Discount_Prct]
GO
ALTER TABLE [dbo].[Vendor_Caterer_Package_Master] ADD  DEFAULT (NULL) FOR [Commision_Prct]
GO
ALTER TABLE [dbo].[Vendor_Caterer_Package_Master] ADD  DEFAULT (NULL) FOR [Package_Img_Path]
GO
ALTER TABLE [dbo].[Vendor_Caterer_Package_Master] ADD  DEFAULT (NULL) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Vendor_Caterer_Package_Master] ADD  DEFAULT (NULL) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Vendor_Caterer_Package_Master] ADD  DEFAULT (NULL) FOR [UpdatedBy]
GO
ALTER TABLE [dbo].[Vendor_Caterer_Package_Master] ADD  DEFAULT (NULL) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[Vendor_Caterer_Package_Menu] ADD  DEFAULT (NULL) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Vendor_Caterer_Package_Menu] ADD  DEFAULT (NULL) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Vendor_Caterer_Package_Menu] ADD  DEFAULT (NULL) FOR [UpdatedBy]
GO
ALTER TABLE [dbo].[Vendor_Caterer_Package_Menu] ADD  DEFAULT (NULL) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[Vendor_Caterer_Package_Offers] ADD  DEFAULT (NULL) FOR [Offer_Price]
GO
ALTER TABLE [dbo].[Vendor_Caterer_Package_Offers] ADD  DEFAULT (NULL) FOR [Offer_Discount_Prct]
GO
ALTER TABLE [dbo].[Vendor_Caterer_Package_Offers] ADD  DEFAULT (NULL) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Vendor_Caterer_Package_Offers] ADD  DEFAULT (NULL) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Vendor_Caterer_Package_Offers] ADD  DEFAULT (NULL) FOR [UpdatedBy]
GO
ALTER TABLE [dbo].[Vendor_Caterer_Package_Offers] ADD  DEFAULT (NULL) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[Vendor_Master] ADD  DEFAULT (NULL) FOR [Vendor_Name]
GO
ALTER TABLE [dbo].[Vendor_Master] ADD  DEFAULT (NULL) FOR [Owner_name]
GO
ALTER TABLE [dbo].[Vendor_Master] ADD  DEFAULT (NULL) FOR [Email_id]
GO
ALTER TABLE [dbo].[Vendor_Master] ADD  DEFAULT (NULL) FOR [Address]
GO
ALTER TABLE [dbo].[Vendor_Master] ADD  DEFAULT (NULL) FOR [City]
GO
ALTER TABLE [dbo].[Vendor_Master] ADD  DEFAULT (NULL) FOR [State]
GO
ALTER TABLE [dbo].[Vendor_Master] ADD  DEFAULT (NULL) FOR [Pin]
GO
ALTER TABLE [dbo].[Vendor_Master] ADD  DEFAULT (NULL) FOR [Contact_No]
GO
ALTER TABLE [dbo].[Vendor_Master] ADD  DEFAULT (NULL) FOR [WebsiteURL]
GO
ALTER TABLE [dbo].[Vendor_Master] ADD  DEFAULT (NULL) FOR [LogoPath]
GO
ALTER TABLE [dbo].[Vendor_Master] ADD  DEFAULT (NULL) FOR [Registration_Number]
GO
ALTER TABLE [dbo].[Vendor_Master] ADD  DEFAULT (NULL) FOR [Establishment_Date]
GO
ALTER TABLE [dbo].[Vendor_Package_Master] ADD  DEFAULT (NULL) FOR [Package_Desc]
GO
ALTER TABLE [dbo].[Vendor_Package_Master] ADD  DEFAULT (NULL) FOR [Capacity]
GO
ALTER TABLE [dbo].[Vendor_Package_Master] ADD  DEFAULT (NULL) FOR [Package_Price]
GO
ALTER TABLE [dbo].[Vendor_Package_Master] ADD  DEFAULT (NULL) FOR [Package_Ratings]
GO
ALTER TABLE [dbo].[Vendor_Package_Master] ADD  DEFAULT (NULL) FOR [Discount_Prct]
GO
ALTER TABLE [dbo].[Vendor_Package_Master] ADD  DEFAULT (NULL) FOR [Commision_Prct]
GO
ALTER TABLE [dbo].[Vendor_Package_Master] ADD  DEFAULT (NULL) FOR [Package_Img_Path]
GO
ALTER TABLE [dbo].[Vendor_Type] ADD  DEFAULT (NULL) FOR [Description]
GO
ALTER TABLE [dbo].[Vendor_Type] ADD  DEFAULT (NULL) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Vendor_Type] ADD  DEFAULT (NULL) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Vendor_Type] ADD  DEFAULT (NULL) FOR [UpdatedBy]
GO
ALTER TABLE [dbo].[Vendor_Type] ADD  DEFAULT (NULL) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[Venue_Type] ADD  DEFAULT (NULL) FOR [Description]
GO
ALTER TABLE [dbo].[Venue_Type] ADD  DEFAULT (NULL) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Venue_Type] ADD  DEFAULT (NULL) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Venue_Type] ADD  DEFAULT (NULL) FOR [UpdatedBy]
GO
ALTER TABLE [dbo].[Venue_Type] ADD  DEFAULT (NULL) FOR [UpdatedOn]
GO
/****** Object:  StoredProcedure [dbo].[CreateMenu]    Script Date: 10/15/2017 10:14:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Vendor_Id INTEGER,
--  Cuisines_Type_ID integer ,
--  Course_Type_ID integer ,
--  Dish_Type_ID integer ,
--  Description varchar(100) DEFAULT NULL,
--  CreatedBy varchar(8) DEFAULT NULL,
--  CreatedOn datetime DEFAULT NULL,
--  UpdatedBy varchar(8) DEFAULT NULL,
--  UpdatedOn datetime DEFAULT NULL,

--select DM.Dish_Id,VM.Vendor_Name,CuT.Description as CuisinesName,Ct.Description CourseName,DT.Description DishType from dbo.Dishes_Master DM
--left join Vendor_Master VM on DM.Vendor_Id=VM.Vendor_Id
--Left Join Cuisines_Type CuT on DM.Cuisines_Type_ID=CuT.Cuisines_Type_ID
--left join Course_Type CT on DM.Course_Type_ID = CT.Course_Type_ID
--left join Dishes_Type DT on DM.Dish_Id=DT.Dish_Type_Id 

--select * from dbo.Dishes_Master

CREATE PROCEDURE [dbo].[CreateMenu]
( @Vendor_id int, @Cuisines_Type_ID int ,  @Course_Type_ID int,@Dish_Type_ID INT, @Description VARCHAR(100),@Price float,@Dish_Image_Path NVARCHAR(200))
AS  
BEGIN
INSERT INTO dbo.Dishes_Master
(
    Vendor_Id,
    Cuisines_Type_ID,
    Course_Type_ID,
    Dish_Type_ID,
    Description,
	Price,
	Dish_Image_Path,
    CreatedBy,
    CreatedOn,
    UpdatedBy,
    UpdatedOn
)
VALUES
(   @Vendor_id,         -- Vendor_Id - int
    @Cuisines_Type_ID,         -- Cuisines_Type_ID - int
    @Course_Type_ID,         -- Course_Type_ID - int
    @Dish_Type_ID,         -- Dish_Type_ID - int
    @Description,        -- Description - varchar(100)
	@Price,
	@Dish_Image_Path,
    '',        -- CreatedBy - varchar(8)
    GETDATE(), -- CreatedOn - datetime
    '',        -- UpdatedBy - varchar(8)
    GETDATE()  -- UpdatedOn - datetime
)

END;  
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_Caterer_Package_Course_CRUD]    Script Date: 10/15/2017 10:14:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--CREATE TABLE dbo.Vendor_Caterer_Package_Course (  
--  Vendor_Caterer_Package_Course_ID integer identity,
--  Vender_Pkg_Mst_Id INTEGER,
--  Course_Type_ID INTEGER NOT NULL,  
--  pkg_Course_Max_Selection INTEGER NOT NULL,
--  CreatedBy varchar(8) DEFAULT NULL,
--  CreatedOn datetime  DEFAULT NULL,
--  UpdatedBy varchar(8) DEFAULT NULL,
--  UpdatedOn datetime DEFAULT NULL,
--  PRIMARY KEY (Vendor_Caterer_Package_Course_ID)
--) ;

--CREATE TABLE dbo.Vendor_Caterer_Package_Menu (  
--  Vendor_Caterer_Package_Menu_ID INTEGER identity,
--  Vender_Pkg_Mst_Id INTEGER,
--  Dish_ID INTEGER NOT NULL,  
--  CreatedBy varchar(8) DEFAULT NULL,
--  CreatedOn datetime  DEFAULT NULL,
--  UpdatedBy varchar(8) DEFAULT NULL,
--  UpdatedOn datetime DEFAULT NULL,
--  PRIMARY KEY (Vendor_Caterer_Package_Menu_ID)
--) ;

--select * from Vendor_Caterer_Package_Course 

CREATE procedure [dbo].[sp_Vendor_Caterer_Package_Course_CRUD]
(
  @Action varchar(20),
  @Vender_Pkg_Mst_Id				INTEGER,
  @Course_Type_ID					INTEGER  NULL,  
  @pkg_Course_Max_Selection			INTEGER  NULL
)
as
begin

SET NOCOUNT ON;

declare   @Vendor_Caterer_Package_Course_ID integer  
	SELECT @Vendor_Caterer_Package_Course_ID=Vendor_Caterer_Package_Course_ID  FROM dbo.Vendor_Caterer_Package_Course 
	where Vender_Pkg_Mst_Id=@Vender_Pkg_Mst_Id and Course_Type_ID=@Course_Type_ID

      --SELECT
    IF @Action = 'SELECT'
      BEGIN
            select Distinct VM.Vendor_ID, CT.Course_Type_ID,Ct.Description CourseName, PC.pkg_Course_Max_Selection 
			from dbo.Dishes_Master DM 
			join Vendor_Master VM on DM.Vendor_Id=VM.Vendor_Id 
			join Course_Type CT on DM.Course_Type_ID = CT.Course_Type_ID  
			join dbo.Vendor_Caterer_Package_Master VCM on VCM.Vendor_Id=VM.Vendor_Id
			left join dbo.Vendor_Caterer_Package_Course PC on PC.Course_Type_ID=DM.Course_Type_ID and PC.Vender_Pkg_Mst_Id=VCM.Vender_Pkg_Mst_Id
			where VCM.Vender_Pkg_Mst_Id =@Vender_Pkg_Mst_Id
      END

	       --UPDATE
    IF (@Action = 'UPDATE' or @Vendor_Caterer_Package_Course_ID is not null)
      BEGIN
            UPDATE dbo.Vendor_Caterer_Package_Course 
            SET Vender_Pkg_Mst_Id=@Vender_Pkg_Mst_Id,Course_Type_ID=@Course_Type_ID, pkg_Course_Max_Selection=@pkg_Course_Max_Selection
            WHERE Vendor_Caterer_Package_Course_ID = @Vendor_Caterer_Package_Course_ID
			return
      END

 
      --INSERT
    IF @Action = 'INSERT'
      BEGIN
	  	
            INSERT INTO dbo.Vendor_Caterer_Package_Course 
			(Vender_Pkg_Mst_Id,Course_Type_ID, pkg_Course_Max_Selection)
            VALUES (@Vender_Pkg_Mst_Id,@Course_Type_ID, @pkg_Course_Max_Selection)
      END
 
      --DELETE
    IF @Action = 'DELETE'
      BEGIN
            DELETE FROM dbo.Vendor_Caterer_Package_Course
            WHERE Vendor_Caterer_Package_Course_ID = @Vendor_Caterer_Package_Course_ID
      END





End

GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_Caterer_Package_Master_CRUD]    Script Date: 10/15/2017 10:14:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--drop table Vendor_Caterer_Package_Master
--CREATE TABLE dbo.Vendor_Caterer_Package_Master (  
--  Vender_Pkg_Mst_Id INTEGER identity,
--  Vendor_Id INTEGER NOT NULL,  
--  Package_Name varchar(100) NOT NULL, 
--  Package_Desc varchar(255) DEFAULT NULL,
--  Capacity INT DEFAULT NULL,
--  Package_Price FLOAT DEFAULT NULL,  
--  Package_Ratings varchar(50) DEFAULT NULL,
--  Discount_Prct FLOAT DEFAULT NULL,
--  Commision_Prct FLOAT DEFAULT NULL,
--  Package_Img_Path varchar(200) DEFAULT NULL,   
--  CreatedBy varchar(8) NOT NULL,
--  CreatedOn datetime  NOT NULL,
--  UpdatedBy varchar(8) NOT NULL,
--  UpdatedOn datetime NOT NULL,
--  PRIMARY KEY (Vender_Pkg_Mst_Id)
--) ;



CREATE PROCEDURE [dbo].[sp_Vendor_Caterer_Package_Master_CRUD]
      (@Action VARCHAR(10),
	  @Vender_Pkg_Mst_Id INTEGER =null ,
	  @Vendor_Id INTEGER =null ,  
	  @Package_Name varchar(100) =null, 
	  @Package_Desc varchar(255) =null,
	  @Capacity integer =null,
	  @Package_Price FLOAT =null,  
	  @Package_Ratings varchar(50) =null,
	  @Discount_Prct FLOAT =null,
	  @Commision_Prct FLOAT =null,
	  @Package_Img_Path varchar(200) =null)
AS
BEGIN
      SET NOCOUNT ON;
 
      --SELECT
    IF @Action = 'SELECT'
      BEGIN
            SELECT * FROM dbo.Vendor_Caterer_Package_Master where Vendor_Id=@Vendor_Id
      END
 
      --INSERT
    IF @Action = 'INSERT'
      BEGIN

            INSERT INTO dbo.Vendor_Caterer_Package_Master 
			(Vendor_Id,	Package_Name,Package_Desc,Capacity,Package_Price,Package_Ratings,Discount_Prct,Commision_Prct,Package_Img_Path)
            VALUES (@Vendor_Id,	@Package_Name,@Package_Desc,@Capacity,@Package_Price,@Package_Ratings,@Discount_Prct,@Commision_Prct,@Package_Img_Path)
      END
 
      --UPDATE
    IF @Action = 'UPDATE'
      BEGIN
            UPDATE dbo.Vendor_Caterer_Package_Master 
            SET Vendor_Id=@Vendor_Id,Package_Name=@Package_Name,Package_Desc=@Package_Desc,Capacity=@Capacity,
			Package_Price=@Package_Price,Package_Ratings=@Package_Ratings,Discount_Prct=@Discount_Prct,Commision_Prct=@Commision_Prct,Package_Img_Path=@Package_Img_Path
            WHERE Vender_Pkg_Mst_Id = @Vender_Pkg_Mst_Id
      END
 
      --DELETE
    IF @Action = 'DELETE'
      BEGIN
            DELETE FROM dbo.Vendor_Caterer_Package_Master
            WHERE Vender_Pkg_Mst_Id = @Vender_Pkg_Mst_Id
      END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_Caterer_Package_Menu_CRUD]    Script Date: 10/15/2017 10:14:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--select * from Vendor_Caterer_Package_Menu

--select DM.Price, VM.Vendor_Name,CuT.Description as CuisinesName 
--          ,Ct.Description CourseName,DT.Description DishType, DM.Description DishName ,DM.Dish_Id,DM.Cuisines_Type_ID,DM.Course_Type_ID,DM.Dish_Type_Id,VM.Vendor_ID
--				  from dbo.Dishes_Master DM 
--                 left join Vendor_Master VM on DM.Vendor_Id = VM.Vendor_Id 
--                 Left Join Cuisines_Type CuT on DM.Cuisines_Type_ID = CuT.Cuisines_Type_ID  
--                 left join Course_Type CT on DM.Course_Type_ID = CT.Course_Type_ID  
--                 left join Dishes_Type DT on DM.Dish_Type_Id = DT.Dish_Type_Id 
--                 Where VM.Vendor_ID=2 and CT.Course_Type_ID=1


   --         select Distinct DM.Dish_Id,DM.Description DishName ,DM.Course_Type_ID, DM.Price, DT.Description DishType , case when PC.Dish_ID > 0 then 1 else 0 end DishSelected
			----Distinct VM.Vendor_ID, CT.Course_Type_ID,Ct.Description CourseName, DM.Course_Type_ID, ISNULL(PC.Dish_ID,0) DishSelected
			--from dbo.Dishes_Master DM 
			--join Vendor_Master VM on DM.Vendor_Id=VM.Vendor_Id 
			--join Dishes_Type DT on DT.Dish_Type_Id = DM.Dish_Type_ID
			-- join dbo.Vendor_Caterer_Package_Master VCM on VCM.Vendor_Id=VM.Vendor_Id
			--left join dbo.Vendor_Caterer_Package_Menu PC on PC.Dish_ID=DM.Dish_ID and PC.Vender_Pkg_Mst_Id=VCM.Vender_Pkg_Mst_Id
			--where   VCM.Vender_Pkg_Mst_Id =11 and DM.Course_Type_ID=  4 

--			select * from Vendor_Caterer_Package_Menu
--			select * from Vendor_Caterer_Package_Master
--			select * from dbo.Dishes_Master DM 
--			select * from Vendor_Master
--			select * from Dishes_Type


CREATE procedure [dbo].[sp_Vendor_Caterer_Package_Menu_CRUD]
(
  @Action varchar(20),
  @Vender_Pkg_Mst_Id				INTEGER,
  @Vendor_Caterer_Package_Menu_ID integer ,
  @Course_Type_ID integer,
  @Dish_ID					INTEGER  NULL
)
as
begin

SET NOCOUNT ON;

      --SELECT
    IF @Action = 'SELECT'
      BEGIN
			select Distinct DM.Dish_Id,DM.Description DishName ,DM.Course_Type_ID, DM.Price, DT.Description DishType , convert(bit, (case when PC.Dish_ID > 0 then 1 else 0 end)) DishSelected
			--Distinct VM.Vendor_ID, CT.Course_Type_ID,Ct.Description CourseName, DM.Course_Type_ID, ISNULL(PC.Dish_ID,0) DishSelected
			from dbo.Dishes_Master DM 
			join Vendor_Master VM on DM.Vendor_Id=VM.Vendor_Id 
			join Dishes_Type DT on DT.Dish_Type_Id = DM.Dish_Type_ID
			 join dbo.Vendor_Caterer_Package_Master VCM on VCM.Vendor_Id=VM.Vendor_Id
			left join dbo.Vendor_Caterer_Package_Menu PC on PC.Dish_ID=DM.Dish_ID and PC.Vender_Pkg_Mst_Id=VCM.Vender_Pkg_Mst_Id
			--where   VCM.Vender_Pkg_Mst_Id =11 and DM.Course_Type_ID=  4 			
			where VCM.Vender_Pkg_Mst_Id =@Vender_Pkg_Mst_Id and DM.Course_Type_ID= @Course_Type_ID
			return
      END

	  --     --UPDATE
   -- IF (@Action = 'UPDATE' or @Vendor_Caterer_Package_Course_ID is not null)
   --   BEGIN
   --         UPDATE dbo.Vendor_Caterer_Package_Course 
   --         SET Vender_Pkg_Mst_Id=@Vender_Pkg_Mst_Id,Course_Type_ID=@Course_Type_ID, pkg_Course_Max_Selection=@pkg_Course_Max_Selection
   --         WHERE Vendor_Caterer_Package_Course_ID = @Vendor_Caterer_Package_Course_ID
			--return
   --   END

 --	declare   @Vendor_Caterer_Package_Menu_ID integer  
	--SELECT @Vendor_Caterer_Package_Menu_ID=Vendor_Caterer_Package_Menu_ID  FROM dbo.Vendor_Caterer_Package_Menu 
	--where Vender_Pkg_Mst_Id=@Vender_Pkg_Mst_Id and Course_Type_ID=@Dish_ID
	
      --INSERT
    IF @Action = 'INSERT'
      BEGIN
	  	
            INSERT INTO dbo.Vendor_Caterer_Package_Menu (Vender_Pkg_Mst_Id,Dish_ID)
            VALUES (@Vender_Pkg_Mst_Id,@Dish_ID)
      END
 
      --DELETE
    IF @Action = 'DELETE'
      BEGIN
            Delete FROM dbo.Vendor_Caterer_Package_Menu where Vender_Pkg_Mst_Id=@Vender_Pkg_Mst_Id 
      END
End

GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_Caterer_Package_Offers_CRUD]    Script Date: 10/15/2017 10:14:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--select * from Vendor_Caterer_Package_Offers
						

--drop table [dbo].[Vendor_Caterer_Package_Offers]
--Create TABLE [dbo].[Vendor_Caterer_Package_Offers](
 
--  Vendor_Caterer_Package_Offers INTEGER identity,
--  Vender_Pkg_Mst_Id				INTEGER ,
--  RangeFrom						INTEGER,  
--  RangeTo						INTEGER, 
--  Offer_Price					FLOAT DEFAULT NULL,
--  Offer_Discount_Prct			FLOAT DEFAULT NULL,
--  CreatedBy varchar(8) DEFAULT NULL,
--  CreatedOn datetime  DEFAULT NULL,
--  UpdatedBy varchar(8) DEFAULT NULL,
--  UpdatedOn datetime DEFAULT NULL,
--  PRIMARY KEY (Vendor_Caterer_Package_Offers)
--) ;

--alter table  dbo.Vendor_Caterer_Package_Offers 
--ADD Deliveryupto FLOAT;


--select * from Vendor_Caterer_Package_Offers
--Vender_Pkg_Mst_Id	Vendor_Id	Package_Name	Package_Desc
--11	2	Silver	best for small party

CREATE PROCEDURE [dbo].[sp_Vendor_Caterer_Package_Offers_CRUD]
      (	@Action VARCHAR(10),
		@Vendor_Caterer_Package_Offers INTEGER = null	 ,
		@Vender_Pkg_Mst_Id				INTEGER = null	 ,
		@RangeFrom						INTEGER = null	,  
		@RangeTo						INTEGER = null	, 
		@Offer_Price					FLOAT = null	,
		@Offer_Discount_Prct			FLOAT = null	,
		@Deliveryupto					float = null
)
AS
BEGIN
      SET NOCOUNT ON;
 
      --SELECT
    IF @Action = 'SELECT'
      BEGIN
            SELECT * FROM dbo.Vendor_Caterer_Package_Offers where Vender_Pkg_Mst_Id=@Vender_Pkg_Mst_Id
      END
      --INSERT
    IF @Action = 'INSERT'
      BEGIN
	        INSERT INTO dbo.Vendor_Caterer_Package_Offers 
			(Vender_Pkg_Mst_Id, RangeFrom,RangeTo,Offer_Price, Offer_Discount_Prct	,Deliveryupto	)
            VALUES (@Vender_Pkg_Mst_Id,@RangeFrom,@RangeTo,@Offer_Price,@Offer_Discount_Prct,@Deliveryupto)
      END
 
      --UPDATE
    IF @Action = 'UPDATE'
      BEGIN
            UPDATE dbo.Vendor_Caterer_Package_Offers SET
			 Vender_Pkg_Mst_Id			  = @Vender_Pkg_Mst_Id			
			 ,RangeFrom					  = @RangeFrom					
			 ,RangeTo					  = @RangeTo					
			 ,Offer_Price				  = @Offer_Price				
			 ,Offer_Discount_Prct		  = @Offer_Discount_Prct     
			 ,Deliveryupto				= @Deliveryupto       
			WHERE Vendor_Caterer_Package_Offers = @Vendor_Caterer_Package_Offers
      END
 
      --DELETE
    IF @Action = 'DELETE'
      BEGIN
            DELETE FROM dbo.Vendor_Caterer_Package_Offers
            WHERE Vendor_Caterer_Package_Offers = @Vendor_Caterer_Package_Offers
      END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_Master_CRUD]    Script Date: 10/15/2017 10:14:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--alter table dbo.Vendor_Master
--ADD Location nvarchar (200);


--select * from Vendor_Master
--select * from Vendor_Type
--Vendor_Type_CD	Description
--1	Venues
--Vender_Pkg_Mst_Id	Vendor_Id	Package_Name	Package_Desc
--11	2	Silver	best for small party

CREATE PROCEDURE [dbo].[sp_Vendor_Master_CRUD]
      (
		@Action					VARCHAR(10),
		@Vendor_Id				INTEGER =null ,
		@Vendor_Type_CD			INTEGER =null ,
		@Vendor_Name				varchar(100) =null,
		@Owner_name				varchar(100) =null,  
		@Email_id					varchar(100) =null, 
		@Address					varchar(255) =null,
		@City						varchar(100) =null,
		@State					varchar(100) =null,  
		@Pin						INTEGER =null,
		@Contact_No				INTEGER =null,
		@WebsiteURL				varchar(100) =null,
		@LogoPath					varchar(100) =null,
		@Registration_Number		varchar(100) =null,
		@Establishment_Date		date = null,
		@Location nvarchar(200) = null
		)
AS	   
BEGIN  
      SET NOCOUNT ON;
 
      --SELECT
    IF @Action = 'SELECT'
      BEGIN
            SELECT * FROM dbo.Vendor_Master where Vendor_Id=@Vendor_Id
      END
 
      --INSERT
    IF @Action = 'INSERT'
      BEGIN

            INSERT INTO dbo.Vendor_Master 
			(
			 Vendor_Type_CD		
			,Vendor_Name		
			,Owner_name			
			,Email_id			
			,Address			
			,City				
			,State				
			,Pin				
			,Contact_No			
			,WebsiteURL			
			,LogoPath			
			,Registration_Number
			,Establishment_Date	,
			Location
			)
			Values (
			 @Vendor_Type_CD		
			,@Vendor_Name		
			,@Owner_name			
			,@Email_id			
			,@Address			
			,@City				
			,@State				
			,@Pin				
			,@Contact_No			
			,@WebsiteURL			
			,@LogoPath			
			,@Registration_Number
			,@Establishment_Date	
			,@Location
			)
      END
 
      --UPDATE
    IF @Action = 'UPDATE'
      BEGIN
            UPDATE dbo.Vendor_Master 
            SET 
			Vendor_Type_CD		= @Vendor_Type_CD		
			,Vendor_Name		= @Vendor_Name		
			,Owner_name			= @Owner_name			
			,Email_id			= @Email_id			
			,Address			= @Address			
			,City				= @City				
			,State				= @State				
			,Pin				= @Pin				
			,Contact_No			= @Contact_No			
			,WebsiteURL			= @WebsiteURL			
			,LogoPath			= @LogoPath			
			,Registration_Number= @Registration_Number
			,Establishment_Date	= @Establishment_Date	
			,Location			= @Location
            WHERE Vendor_Id=@Vendor_Id
      END
 
      --DELETE
    IF @Action = 'DELETE'
      BEGIN
            DELETE FROM dbo.Vendor_Master
            WHERE Vendor_Id=@Vendor_Id
      END
END
GO
USE [master]
GO
ALTER DATABASE [Deals2PartyDB] SET  READ_WRITE 
GO
