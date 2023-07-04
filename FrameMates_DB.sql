USE [master]
GO
CREATE DATABASE [FrameMates_DB]
EXEC [FrameMates_DB].[dbo].[sp_fulltext_database] @action = 'enable'
GO
USE [FrameMates_DB]
GO
ALTER DATABASE [FrameMates_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FrameMates_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FrameMates_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FrameMates_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FrameMates_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [FrameMates_DB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [FrameMates_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FrameMates_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FrameMates_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FrameMates_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FrameMates_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FrameMates_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FrameMates_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FrameMates_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FrameMates_DB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FrameMates_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FrameMates_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FrameMates_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FrameMates_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FrameMates_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FrameMates_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FrameMates_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FrameMates_DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FrameMates_DB] SET  MULTI_USER 
GO
ALTER DATABASE [FrameMates_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FrameMates_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FrameMates_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FrameMates_DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FrameMates_DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FrameMates_DB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [FrameMates_DB] SET QUERY_STORE = ON
GO
ALTER DATABASE [FrameMates_DB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [FrameMates_DB]
GO
/****** Object:  Table [dbo].[account]    Script Date: 7/4/2023 8:15:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[account_id] [int] IDENTITY(1,1) NOT NULL,
	[avatar] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[full_name] [varchar](max) NULL,
	[password] [varchar](255) NULL,
	[phone] [varchar](255) NULL,
	[role] [varchar](255) NULL,
	[username] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[administrator]    Script Date: 7/4/2023 8:15:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[administrator](
	[admin_id] [int] IDENTITY(1,1) NOT NULL,
	[status] [int] NULL,
	[account_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[album]    Script Date: 7/4/2023 8:15:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[album](
	[album_id] [int] IDENTITY(1,1) NOT NULL,
	[create_date] [datetime2](6) NULL,
	[title] [varchar](max) NULL,
	[view] [int] NULL,
	[customer_id] [int] NULL,
	[studio_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[album_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[attach_file]    Script Date: 7/4/2023 8:15:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[attach_file](
	[attach_file_id] [int] IDENTITY(1,1) NOT NULL,
	[file_path] [varchar](max) NULL,
	[message_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[attach_file_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[attachment]    Script Date: 7/4/2023 8:15:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[attachment](
	[attach_id] [int] IDENTITY(1,1) NOT NULL,
	[attach_path] [varchar](max) NULL,
	[order_detail_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[attach_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[channel]    Script Date: 7/4/2023 8:15:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[channel](
	[channel_id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NULL,
	[employee_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[channel_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comment]    Script Date: 7/4/2023 8:15:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment](
	[comment_id] [int] IDENTITY(1,1) NOT NULL,
	[content] [varchar](max) NULL,
	[post_date] [datetime2](6) NULL,
	[customer_id] [int] NULL,
	[employee_id] [int] NULL,
	[file_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[comment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 7/4/2023 8:15:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[address] [varchar](max) NULL,
	[birth_date] [date] NULL,
	[create_date] [datetime2](6) NULL,
	[status] [int] NULL,
	[account_id] [int] NOT NULL,
	[admin_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee]    Script Date: 7/4/2023 8:15:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee](
	[employee_id] [int] IDENTITY(1,1) NOT NULL,
	[status] [int] NULL,
	[account_id] [int] NOT NULL,
	[studio_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[favorite]    Script Date: 7/4/2023 8:15:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[favorite](
	[favorite_id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NULL,
	[service_pack_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[favorite_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[media_file]    Script Date: 7/4/2023 8:15:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[media_file](
	[file_id] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](max) NULL,
	[file_path] [varchar](max) NULL,
	[title] [varchar](max) NULL,
	[upload_date] [datetime2](6) NULL,
	[view] [int] NULL,
	[album_id] [int] NULL,
	[customer_id] [int] NULL,
	[studio_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[file_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[media_service]    Script Date: 7/4/2023 8:15:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[media_service](
	[file_id] [int] IDENTITY(1,1) NOT NULL,
	[file_index] [int] NULL,
	[file_path] [varchar](max) NULL,
	[service_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[file_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[message]    Script Date: 7/4/2023 8:15:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[message](
	[message_id] [int] IDENTITY(1,1) NOT NULL,
	[content] [varchar](max) NULL,
	[status] [int] NULL,
	[channel_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[message_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order]    Script Date: 7/4/2023 8:15:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[address] [varchar](max) NULL,
	[check_in] [datetime2](6) NULL,
	[deposit] [int] NULL,
	[description] [varchar](max) NULL,
	[order_date] [datetime2](6) NULL,
	[payment_date] [datetime2](6) NULL,
	[status] [int] NULL,
	[customer_id] [int] NULL,
	[payment_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_detail]    Script Date: 7/4/2023 8:15:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_detail](
	[order_detail_id] [int] IDENTITY(1,1) NOT NULL,
	[content] [varchar](max) NULL,
	[discount] [int] NULL,
	[post_date] [datetime2](6) NULL,
	[price] [int] NULL,
	[rating] [int] NULL,
	[order_id] [int] NULL,
	[service_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payment]    Script Date: 7/4/2023 8:15:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payment](
	[payment_id] [int] IDENTITY(1,1) NOT NULL,
	[method] [varchar](255) NULL,
	[customer_id] [int] NULL,
	[employee_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reaction]    Script Date: 7/4/2023 8:15:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reaction](
	[reaction_id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NULL,
	[file_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[reaction_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[service_pack]    Script Date: 7/4/2023 8:15:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[service_pack](
	[service_id] [int] IDENTITY(1,1) NOT NULL,
	[create_date] [datetime2](6) NULL,
	[description] [varchar](max) NULL,
	[discount] [int] NULL,
	[name] [varchar](255) NULL,
	[price] [int] NULL,
	[rating] [float] NULL,
	[sold_count] [int] NULL,
	[status] [int] NULL,
	[update_date] [datetime2](6) NULL,
	[view] [int] NULL,
	[create_by] [int] NULL,
	[studio_id] [int] NULL,
	[update_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[service_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sms_otp]    Script Date: 7/4/2023 8:15:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sms_otp](
	[otp_id] [int] IDENTITY(1,1) NOT NULL,
	[create_at] [datetime2](6) NULL,
	[expired_at] [datetime2](6) NULL,
	[otp_value] [varchar](255) NULL,
	[phone_number] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[otp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[studio]    Script Date: 7/4/2023 8:15:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[studio](
	[studio_id] [int] IDENTITY(1,1) NOT NULL,
	[address] [varchar](max) NULL,
	[avatar_studio] [varchar](max) NULL,
	[balance] [int] NULL,
	[cover_image] [varchar](max) NULL,
	[create_date] [datetime2](6) NULL,
	[description] [varchar](max) NULL,
	[name] [varchar](255) NULL,
	[status] [int] NULL,
	[total_rating] [float] NULL,
	[admin_id] [int] NULL,
	[owner] [int] NULL,
	[sub_admin_studio] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[studio_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tag]    Script Date: 7/4/2023 8:15:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tag](
	[tag_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[tag_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tag_detail]    Script Date: 7/4/2023 8:15:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tag_detail](
	[tag_detail_id] [int] IDENTITY(1,1) NOT NULL,
	[file_id] [int] NULL,
	[tag_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[tag_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transaction]    Script Date: 7/4/2023 8:15:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transaction](
	[transaction_id] [int] IDENTITY(1,1) NOT NULL,
	[amount] [int] NULL,
	[create_date] [datetime2](6) NULL,
	[status] [int] NULL,
	[transaction_type] [bit] NULL,
	[payment_id] [int] NULL,
	[studio_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[transaction_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[voucher]    Script Date: 7/4/2023 8:15:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[voucher](
	[voucher_id] [int] IDENTITY(1,1) NOT NULL,
	[available_quantity] [int] NULL,
	[code] [varchar](255) NULL,
	[create_date] [datetime2](6) NULL,
	[description] [varchar](max) NULL,
	[effective_date] [datetime2](6) NULL,
	[expiration_date] [datetime2](6) NULL,
	[quantity] [int] NULL,
	[admin_id] [int] NULL,
	[studio_id] [int] NULL,
	[status] [int] NULL,
	[title] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[voucher_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[voucher_detail]    Script Date: 7/4/2023 8:15:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[voucher_detail](
	[voucher_detail_id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[voucher_wallet_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[voucher_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[voucher_wallet]    Script Date: 7/4/2023 8:15:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[voucher_wallet](
	[voucher_wallet_id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NULL,
	[customer_id] [int] NULL,
	[voucher_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[voucher_wallet_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[account] ON 
GO
INSERT [dbo].[account] ([account_id], [avatar], [email], [full_name], [password], [phone], [role], [username]) VALUES (1, NULL, N'thanh@gmail.com', N'Thành', N'$2a$10$tyKD1yJQCgYZGPVElxWH2.xFPOOl4ltTT6K2dBK5QdYDiKKKW.gZ.', N'03231354558', N'ADMIN', N'thanh')
GO
INSERT [dbo].[account] ([account_id], [avatar], [email], [full_name], [password], [phone], [role], [username]) VALUES (2, NULL, N'thanh1509@gmail.com', N'Thanh', N'$2a$10$tyKD1yJQCgYZGPVElxWH2.xFPOOl4ltTT6K2dBK5QdYDiKKKW.gZ.', N'0321323149', N'EMPLOYEE', N'emp')
GO
INSERT [dbo].[account] ([account_id], [avatar], [email], [full_name], [password], [phone], [role], [username]) VALUES (3, NULL, N'thanh1509@gmail.com', N'thanh_cus', N'$2a$10$tyKD1yJQCgYZGPVElxWH2.xFPOOl4ltTT6K2dBK5QdYDiKKKW.gZ.', N'1111111111', N'ROLE_CUSTOMER', N'cus')
GO
INSERT [dbo].[account] ([account_id], [avatar], [email], [full_name], [password], [phone], [role], [username]) VALUES (4, N'https://12312', N'123@gmail.com', N'thanh', N'$2a$10$tyKD1yJQCgYZGPVElxWH2.xFPOOl4ltTT6K2dBK5QdYDiKKKW.gZ.', N'1231231', N'ROLE_EMP', N'emppp')
GO
INSERT [dbo].[account] ([account_id], [avatar], [email], [full_name], [password], [phone], [role], [username]) VALUES (5, N'https://12312', N'123@gmail.com', N'thanh', N'$2a$10$tyKD1yJQCgYZGPVElxWH2.xFPOOl4ltTT6K2dBK5QdYDiKKKW.gZ.', N'0369998759', N'ROLE_EMP', N'emppp')
GO
INSERT [dbo].[account] ([account_id], [avatar], [email], [full_name], [password], [phone], [role], [username]) VALUES (6, N'https://12312', N'thanh', N'thanh', N'$2a$10$tyKD1yJQCgYZGPVElxWH2.xFPOOl4ltTT6K2dBK5QdYDiKKKW.gZ.', N'0123914', N'ROLE_CUSTOMER', N'empppppp')
GO
INSERT [dbo].[account] ([account_id], [avatar], [email], [full_name], [password], [phone], [role], [username]) VALUES (7, N'https://12312', N'thanh@123.com', N'thanh', NULL, N'0369998758', N'ROLE_CUSTOMER', N'emp_customer')
GO
INSERT [dbo].[account] ([account_id], [avatar], [email], [full_name], [password], [phone], [role], [username]) VALUES (8, N'https://12312', N'thanh@1223.com', N'thanh', N'$2a$10$tyKD1yJQCgYZGPVElxWH2.xFPOOl4ltTT6K2dBK5QdYDiKKKW.gZ.', N'0369998761', N'ROLE_CUSTOMER', N'1asdsad')
GO
INSERT [dbo].[account] ([account_id], [avatar], [email], [full_name], [password], [phone], [role], [username]) VALUES (9, N'https://12312', N'thanh@1223.comm', N'thanh', N'$2a$10$tyKD1yJQCgYZGPVElxWH2.xFPOOl4ltTT6K2dBK5QdYDiKKKW.gZ.', N'0368998761', N'ROLE_EMPLOYEE', N'chachacha')
GO
INSERT [dbo].[account] ([account_id], [avatar], [email], [full_name], [password], [phone], [role], [username]) VALUES (10, N'https://12312', N'thanh@bb.comm', N'thanh', N'$2a$10$tyKD1yJQCgYZGPVElxWH2.xFPOOl4ltTT6K2dBK5QdYDiKKKW.gZ.', N'0368998762', N'ROLE_EMPLOYEE', N'chachachav')
GO
SET IDENTITY_INSERT [dbo].[account] OFF
GO
SET IDENTITY_INSERT [dbo].[administrator] ON 
GO
INSERT [dbo].[administrator] ([admin_id], [status], [account_id]) VALUES (1, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[administrator] OFF
GO
SET IDENTITY_INSERT [dbo].[customer] ON 
GO
INSERT [dbo].[customer] ([customer_id], [address], [birth_date], [create_date], [status], [account_id], [admin_id]) VALUES (3, NULL, NULL, NULL, NULL, 3, NULL)
GO
INSERT [dbo].[customer] ([customer_id], [address], [birth_date], [create_date], [status], [account_id], [admin_id]) VALUES (4, N'123', NULL, NULL, 0, 4, NULL)
GO
INSERT [dbo].[customer] ([customer_id], [address], [birth_date], [create_date], [status], [account_id], [admin_id]) VALUES (5, N'123', NULL, NULL, 0, 5, NULL)
GO
INSERT [dbo].[customer] ([customer_id], [address], [birth_date], [create_date], [status], [account_id], [admin_id]) VALUES (6, N'123', NULL, CAST(N'2023-06-30T20:19:21.9530000' AS DateTime2), 0, 6, NULL)
GO
INSERT [dbo].[customer] ([customer_id], [address], [birth_date], [create_date], [status], [account_id], [admin_id]) VALUES (7, N'123', NULL, CAST(N'2023-07-04T13:35:18.2340000' AS DateTime2), 0, 7, NULL)
GO
INSERT [dbo].[customer] ([customer_id], [address], [birth_date], [create_date], [status], [account_id], [admin_id]) VALUES (8, N'123', NULL, CAST(N'2023-07-04T13:40:19.1670000' AS DateTime2), 0, 8, NULL)
GO
SET IDENTITY_INSERT [dbo].[customer] OFF
GO
SET IDENTITY_INSERT [dbo].[employee] ON 
GO
INSERT [dbo].[employee] ([employee_id], [status], [account_id], [studio_id]) VALUES (1, 1, 2, 1)
GO
INSERT [dbo].[employee] ([employee_id], [status], [account_id], [studio_id]) VALUES (3, 1, 9, NULL)
GO
INSERT [dbo].[employee] ([employee_id], [status], [account_id], [studio_id]) VALUES (4, 1, 10, NULL)
GO
SET IDENTITY_INSERT [dbo].[employee] OFF
GO
SET IDENTITY_INSERT [dbo].[media_service] ON 
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (1, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/173929251/original/a7b4bcb611841a9175cc7832e288519f57873897/shoot-product-and-lifestyle-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (2, 21, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/2f7b1e6102c5c4b4b77ad9561c28b319-1636597501/IMG_2/shoot-product-and-lifestyle-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (3, 8, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/1eecab6ce301faa3c122c3c4490519d7-1682038760/ED2922E6-4FFF-40CE-A735-607228512B34/shoot-product-and-lifestyle-photography.jpeg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (4, 0, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/173929251/original/5a65aa3f84abd4c6e2788899ffe4ceeba1ff3f8c/shoot-product-and-lifestyle-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (5, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs2/173929251/original/8ce007feffa2aa80b51beb28daab4bd767dd9404/shoot-product-and-lifestyle-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (6, 11, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/fcd96aa9eade0e5084d9365be378889a-1677825972/IMG_5/shoot-product-and-lifestyle-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (7, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/173929251/original/8ce007feffa2aa80b51beb28daab4bd767dd9404/shoot-product-and-lifestyle-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (8, 5, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/435007f583621a5d51997f1ca5d858f6-1685414806/IMG_3/shoot-product-and-lifestyle-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (9, 12, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/078910c091b24195a0ff804a891dad4c-1675142284/IMG_4/shoot-product-and-lifestyle-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (10, 15, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/f5e2e0dd5a2df94f38e843a83ad3027f-1668479425/IMG_1/shoot-product-and-lifestyle-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (11, 13, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/c086dd59855ef4dd7b9f6ac13d3f5814-1673498942/IMG_5/shoot-product-and-lifestyle-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (12, 10, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/64d0b53e59f1f687df5d28ba10c551b4-1679279963/IMG_1/shoot-product-and-lifestyle-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (13, 19, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/1d2fbb8a71964e885a6a56ec181e7817-1639859432/IMG_1/shoot-product-and-lifestyle-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (14, 7, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/1476e8d3516e46fcd2e50d369cb2ac53-1683169656/IMG_1/shoot-product-and-lifestyle-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (15, 20, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/68ab2726f529f26fdaf5ad42e621460e-1638406768/IMG_1/shoot-product-and-lifestyle-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (16, 14, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/25349159926b93dd3f2cc8f6e5f0dff9-1673233498/IMG_2/shoot-product-and-lifestyle-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (17, 16, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/b57eab9b61c551863a40fae4c59c75bf-1661132722/IMG_3/shoot-product-and-lifestyle-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (18, 17, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/74a1b263365cdd076ac124cd3b603c37-1644961783/IMG_1/shoot-product-and-lifestyle-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (19, 6, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/8864104c4086a3003df3ed209bfa81a4-1684723849/IMG_1/shoot-product-and-lifestyle-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (20, 18, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/f10490ca49f0247b68be658aa2cb798d-1644445543/IMG_1/shoot-product-and-lifestyle-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (21, 9, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/c257bbc546e93acdf72630637a59d7de-1680804108/IMG_4/shoot-product-and-lifestyle-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (22, 2, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/173929251/original/5a65aa3f84abd4c6e2788899ffe4ceeba1ff3f8c/shoot-product-and-lifestyle-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (23, 7, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/150e93a4c2ec043a1f640f9f9a25fe39-1602958923/IMG_1163/be-your-male-model-for-your-products.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (24, 0, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/174543187/original/3dda4746ded7819c891fb7630e50af6dea20d20d/be-your-male-model-for-your-products.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (25, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs2/174543187/original/29c0dcda38efe8294174b3dcabf38456693ec588/be-your-male-model-for-your-products.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (26, 6, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/4b2a5b0004cf0fdfe20d4b2399e120f4-1603123357/IMG_1544/be-your-male-model-for-your-products.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (27, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/174543187/original/ad0d203ba969caf8daede0d3ad4806bea5aa7dc6/be-your-male-model-for-your-products.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (28, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/174543187/original/29c0dcda38efe8294174b3dcabf38456693ec588/be-your-male-model-for-your-products.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (29, 2, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/174543187/original/3dda4746ded7819c891fb7630e50af6dea20d20d/be-your-male-model-for-your-products.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (30, 5, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/057ada271ff5da832d4594660e55a386-1609025982/IMG_5/be-your-male-model-for-your-products.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (31, 7, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/fazsq8c0ikh2hztznopb/do-lifestyle-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (32, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/180237200/original/6256390b309b19a166a3c20f1474ceedbae8ce5c/do-lifestyle-product-video.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (33, 17, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/hu0pohaaz0owv7wfqtcl/do-lifestyle-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (34, 12, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/xfbluqeeejflftvoq2um/do-lifestyle-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (35, 15, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/c6j2zc7wt3pbfve2h4ma/do-lifestyle-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (36, 6, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/avmybmzxqqpp4fidnb5h/do-lifestyle-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (37, 0, N'https://fiverr-res.cloudinary.com/videos/so_3.294201,t_main1,q_auto,f_auto/iituzk4wletjmixet5fe/do-lifestyle-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (38, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/180237200/original/6256390b309b19a166a3c20f1474ceedbae8ce5c/do-lifestyle-product-video.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (39, 10, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/hmkwhn9k3wjixl2veckz/do-lifestyle-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (40, 16, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/nlls26amymcjlzdbrfvt/do-lifestyle-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (41, 13, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/0cd8f9c3e2f4eedce918344698056b64-1611674832/IMG_2/do-lifestyle-product-video.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (42, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/180237200/original/b55e46d1476054079a0b54b4ab74e328aa71dacc/do-lifestyle-product-video.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (43, 11, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/key9uhctdqmh2xykjxrj/do-lifestyle-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (44, 8, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/iexi9bhfoqnhf5pepdst/do-lifestyle-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (45, 2, N'https://fiverr-res.cloudinary.com/videos/so_3.294201,t_thumbnail3_3/iituzk4wletjmixet5fe/do-lifestyle-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (46, 5, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/180237200/original/00928763c28edd2ce6875c8c880d83a426ce88ef/do-lifestyle-product-video.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (47, 9, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/zw8xzygyma6oj7eutqfr/do-lifestyle-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (48, 18, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/rfdjqjmewqocgcs5ukg6/do-lifestyle-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (49, 14, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/y7xnzqbwkuai03c6bihn/do-lifestyle-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (50, 18, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/39496f2c9b7b305a4fba47c337dbce6e-1604776441/IMG_1/be-your-female-product-model-for-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (51, 13, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/197fd8b0bde985c1b8a3e7a8df0c3e98-1608077483/IMG_2/be-your-female-product-model-for-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (52, 14, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/5ee3c8840c3b2a319fc3379309a62e65-1606100450/IMG_7/be-your-female-product-model-for-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (53, 8, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/04dda7d2c997dfebb57e86694cc28f95-1622903730/IMG_2/be-your-female-product-model-for-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (54, 17, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/832738b5e638f2581eb26dc93e337863-1603156553/IMG8-1/be-your-female-product-model-for-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (55, 0, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/176242032/original/67321ed49c3b1bd148257f9a7ef347f93a69dc1e/be-your-female-product-model-for-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (56, 6, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/6e65b9cce3cdc22debe7b1a0c6e16908-1644803466/IMG_1/be-your-female-product-model-for-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (57, 19, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/b1c2bd00dc5373d61ddf11e466f8f9f4-1604545846/IMG1/be-your-female-product-model-for-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (58, 10, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/d1c8bffc2d93036de62f899cf6ce552b-1612058494/IMG_3/be-your-female-product-model-for-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (59, 20, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/8098dc88822d4292f7545162fcfec758-1604069277/IMG2-1/be-your-female-product-model-for-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (60, 16, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/ddb176efa842d2104fb56123419db671-1605666904/IMG_2%20blue/be-your-female-product-model-for-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (61, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/176242032/original/d65c053fafe0cfb50228a47acc892d360fa09782/be-your-female-product-model-for-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (62, 11, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/497b81c09a86ab6461b480a9eacaf373-1611458389/IMG_1/be-your-female-product-model-for-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (63, 15, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/57269ae646e8b4115f1a960d2b482cf2-1605666754/IMG_4%20white/be-your-female-product-model-for-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (64, 21, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/d2f9457d306867d67988ce9d0d30a63f-1602892509/IMG_1126/be-your-female-product-model-for-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (65, 7, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/fea79f45fdc5deea0d4ec1204153b882-1638750799/IMG_1/be-your-female-product-model-for-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (66, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs2/176242032/original/0d09a389a60903900cf5726a6295e1145dab0b22/be-your-female-product-model-for-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (67, 2, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/176242032/original/67321ed49c3b1bd148257f9a7ef347f93a69dc1e/be-your-female-product-model-for-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (68, 5, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/f308a54f17bdb2b23ad739532f5380dc-1678932921/IMG_2/be-your-female-product-model-for-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (69, 9, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/eb454c0bea9db8f755072137e5572956-1620783224/The%20Details%20Show/be-your-female-product-model-for-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (70, 12, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/87cab40aabe41ebfe2aefb27c9799c56-1609813424/IMG_3/be-your-female-product-model-for-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (71, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/176242032/original/0d09a389a60903900cf5726a6295e1145dab0b22/be-your-female-product-model-for-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (72, 9, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/9f6eb4df2465d528735759f33da85985-1602561863/IMG2/shoot-professional-studio-and-lifestyle-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (73, 10, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/6657fd4f354197ab4af83c288ed3709c-1601773049/purple1/shoot-professional-studio-and-lifestyle-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (74, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs2/169858900/original/1d815af9ba607220114632777358594d0a2007c5/shoot-professional-studio-and-lifestyle-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (75, 5, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/9c49adc779e0516aab8f328c53879bb6-1611892076/IMG_4/shoot-professional-studio-and-lifestyle-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (76, 7, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/5aef60c36ab1501e0ef84f8aa264bb25-1603071304/IMG2-1/shoot-professional-studio-and-lifestyle-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (77, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/169858900/original/934372162227220dfe01309420510c5dc528e0e8/shoot-professional-studio-and-lifestyle-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (78, 11, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/34a69c5d68d30546d6eea5ae81c1f8b9-1600801536/headbands-grey/shoot-professional-studio-and-lifestyle-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (79, 12, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/ae176e59236dc2557490a7d642f4df03-1600534378/carhanger1/shoot-professional-studio-and-lifestyle-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (80, 8, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/69394997ba22ce107bec27645915fce3-1602988666/IMG1-1/shoot-professional-studio-and-lifestyle-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (81, 0, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/169858900/original/6bba4d3978c01eeb3c872bd46b8ab8cd6ff944f0/shoot-professional-studio-and-lifestyle-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (82, 6, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/6576bc3e3a6b87bf21ae060b9f065c1f-1605470645/IMG_3/shoot-professional-studio-and-lifestyle-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (83, 2, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/169858900/original/6bba4d3978c01eeb3c872bd46b8ab8cd6ff944f0/shoot-professional-studio-and-lifestyle-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (84, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/169858900/original/1d815af9ba607220114632777358594d0a2007c5/shoot-professional-studio-and-lifestyle-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (85, 14, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/a18e6bd51b9047d2c147b1b2c431acd4-1670757698/DSC09626/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (86, 16, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/0e2acf6b2f9914f117c0f4e9602d2d94-1669200645/2/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (87, 13, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/ff2c9da7bb72494ecf80c63fa9888643-1670932246/DSC09924/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (88, 20, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/492fabf021a888b6d024cdb635c534ad-1660080828/PXR01309/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (89, 7, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/96c203ff6d0cadc5ad97fc36989ddad7-1685875644/DSC08443/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (90, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/137495922/original/c282421885a4c88b1d062225bc8dcad8439aaff3/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (91, 9, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/70dbb03999a3e3c0338f50aad07e83cc-1683036370/DSC00137/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (92, 5, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/137495922/original/4a718eb95369afd2537421e9a450792030310102/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (93, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/137495922/original/c282421885a4c88b1d062225bc8dcad8439aaff3/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (94, 8, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/6bdbde3350dfee4ad75134ae0a6cf1c4-1684525335/DSC03396/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (95, 10, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/622ec43b420c584a8ce57cd5126efb05-1681890797/DSC09655/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (96, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/137495922/original/e6a4a768642e69b61b4bf88277bad041d8dfd9a7/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (97, 11, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/0fd3bce1101bf69e7480935741aa58f1-1674237218/DSC00829/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (98, 19, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/b8a0007fbbe623af0fd749f49dbc7682-1661435253/PXR03302/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (99, 6, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/fhpvpyfut4f18cfhtxry/do-amazon-product-photography-lifestyle-and-infographics.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (100, 15, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/c100f1f3127c34297c4de5d60819a629-1669650985/DSC09081/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (101, 0, N'https://fiverr-res.cloudinary.com/videos/so_33.0657288810051,t_main1,q_auto,f_auto/bqmrl0udvlfluvlambw5/do-amazon-product-photography-lifestyle-and-infographics.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (102, 12, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/3157661439ff797f6081ab71889c3845-1672851377/DSC00793/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (103, 21, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/6229f63ecf1a095e5361886d8949394a-1660075095/BG-1/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (104, 2, N'https://fiverr-res.cloudinary.com/videos/so_33.0657288810051,t_thumbnail3_3/bqmrl0udvlfluvlambw5/do-amazon-product-photography-lifestyle-and-infographics.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (105, 17, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/26b9b3e1929f35620a2794041e0604ab-1669125440/PXR02074/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (106, 18, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/0ac52e1ea7676dc6003232e8a7d9e93a-1662310314/PXR04715/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (107, 12, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/milftknwwmh9psxrtsph/shoot-product-photos-with-our-baby-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (108, 18, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/oxivxwb9bbono9cgbocc/shoot-product-photos-with-our-baby-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (109, 8, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/wn7aiyloillfcomuz4em/shoot-product-photos-with-our-baby-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (110, 19, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/pcfu54pgqwgulwu8pdos/shoot-product-photos-with-our-baby-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (111, 17, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/evcjasl3of5nnpgoh95x/shoot-product-photos-with-our-baby-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (112, 13, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/il3cs4zbxvrovsz2td98/shoot-product-photos-with-our-baby-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (113, 14, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/jjumgieaogmraofos3hg/shoot-product-photos-with-our-baby-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (114, 15, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/djdmiqebdtoecgvbymwv/shoot-product-photos-with-our-baby-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (115, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/124114437/original/d557535314394ce6ce1d15e397ceb6a41847c0ca/shoot-product-photos-with-our-baby-model-in-germany.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (116, 5, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/124114437/original/c446bf35b4851c30b7df2b6bc27238943f16b8ea/shoot-product-photos-with-our-baby-model-in-germany.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (117, 11, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/flgqoqoncpu5ng02twnf/shoot-product-photos-with-our-baby-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (118, 16, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/18db67de6d99a2142a02353f655d314e-1575106469/Amazon-DSR00274-2/shoot-product-photos-with-our-baby-model-in-germany.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (119, 7, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/819813bb7a2e1406cea44e29629bb39a-1664182745/PXR05735/shoot-product-photos-with-our-baby-model-in-germany.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (120, 21, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/qubntxpv8lemxggh0sry/shoot-product-photos-with-our-baby-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (121, 6, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/5a371d28ef273ff9ba17f8379075287d-1681101428/DSC00081/shoot-product-photos-with-our-baby-model-in-germany.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (122, 2, N'https://fiverr-res.cloudinary.com/videos/so_11.9183672463456,t_thumbnail3_3/m0nwwaqc8yrhxcdbvc64/shoot-product-photos-with-our-baby-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (123, 9, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/wexfhjfz0dlccyauvevj/shoot-product-photos-with-our-baby-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (124, 10, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/c7g4n8upwelbecmhkrcn/shoot-product-photos-with-our-baby-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (125, 0, N'https://fiverr-res.cloudinary.com/videos/so_11.9183672463456,t_main1,q_auto,f_auto/m0nwwaqc8yrhxcdbvc64/shoot-product-photos-with-our-baby-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (126, 20, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/z15bi77hkuz9xzm24m3e/shoot-product-photos-with-our-baby-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (127, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/124114437/original/d557535314394ce6ce1d15e397ceb6a41847c0ca/shoot-product-photos-with-our-baby-model-in-germany.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (128, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/124114437/original/37f40d78a34fe4c7e07049581103b4e8936e85e9/shoot-product-photos-with-our-baby-model-in-germany.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (129, 7, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/nfpd7qvzggp5wvl12m4j/shoot-professional-product-video-with-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (130, 12, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/ukjcplgsiluivsmhgzoi/shoot-professional-product-video-with-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (131, 0, N'https://fiverr-res.cloudinary.com/videos/so_40.4205822376333,t_main1,q_auto,f_auto/psirls5ym9fukzj2ovpc/shoot-professional-product-video-with-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (132, 20, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/dgyfga0euyvjqevr0mts/shoot-professional-product-video-with-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (133, 2, N'https://fiverr-res.cloudinary.com/videos/so_40.4205822376333,t_thumbnail3_3/psirls5ym9fukzj2ovpc/shoot-professional-product-video-with-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (134, 9, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/gbzatxj7c5nm8s8rmjiz/shoot-professional-product-video-with-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (135, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/128361480/original/31fcc2f219c7ba5b15cabb5d9aca4010428013f8/shoot-professional-product-video-with-model-in-germany.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (136, 14, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/sqbgso8c9byugxhg9j90/shoot-professional-product-video-with-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (137, 19, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/mx3zco0nbmzkknzphzak/shoot-professional-product-video-with-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (138, 8, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/l26wyuzxywcrhfon69lv/shoot-professional-product-video-with-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (139, 21, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/mxim2x2peugj2xazrkm1/shoot-professional-product-video-with-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (140, 5, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/128361480/original/4163b43e4df389236f793bcd09b2ca186b07f238/shoot-professional-product-video-with-model-in-germany.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (141, 13, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/bwzyx15yxffbzblrlxv1/shoot-professional-product-video-with-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (142, 17, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/h35qdxnhunbqrrkdf80o/shoot-professional-product-video-with-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (143, 18, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/1c8b43027006a181ac456098944ebc28-1669722880/DSC09128/shoot-professional-product-video-with-model-in-germany.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (144, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/128361480/original/cf458e139a434593909160c690a0a6e839277d27/shoot-professional-product-video-with-model-in-germany.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (145, 10, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/u2tuoq4a7zviqmf0h2oi/shoot-professional-product-video-with-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (146, 11, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/ymfyoopjezfoj328cklo/shoot-professional-product-video-with-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (147, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/128361480/original/31fcc2f219c7ba5b15cabb5d9aca4010428013f8/shoot-professional-product-video-with-model-in-germany.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (148, 15, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/twcatybup1hxwebgfv6g/shoot-professional-product-video-with-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (149, 6, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/o0vj6zezl4gqekqvhtnm/shoot-professional-product-video-with-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (150, 16, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/s8wuauswxp2i2rjexpxe/shoot-professional-product-video-with-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (151, 7, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/1bf11218bf4d08c6c2ecb9ba5a9fcdb6-1686830443/DSC00383/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (152, 19, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/38dfad05821941d627a9c997b6f64ac7-1661467712/PXR04139/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (153, 20, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/65efc1c83d7facfb98a645015f409f82-1652791229/PXR09420/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (154, 14, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/8b76c81502c3376bca25b073cc66a1a3-1669660839/DSC08819/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (155, 8, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/6d95bd1307a339887fb812097ceb8e72-1686134277/DSC08350/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (156, 12, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/kq1owvfcwe1zk35if8tl/shoot-professional-product-photography-lifestyle-photo.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (157, 9, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/dfd90ae3d792d1b19e70b2ca06584885-1681513033/1/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (158, 21, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/2cc2e1a6c6ed6e72ca74fa4134da476e-1652019069/PXR01456/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (159, 17, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/758c5621f7d265bc1b56c80a74353de6-1663603193/PXR05138/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (160, 13, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/4c9c88e967f99114249d9808e751554d-1674173346/DSC01817/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (161, 15, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/4483dcea86457ce3a46eb604aaef9109-1664820387/PXR08679/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (162, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/120787148/original/86a15680de92fe189cfa33faaf0bb9f7a4ef0e30/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (163, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/120787148/original/3f0cbeb8611d2fc22b5c2e8c572020b38889e319/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (164, 6, N'https://fiverr-res.cloudinary.com/image/upload/t_gig_pdf_thumb_ver3,f_jpg/20190403/DSR07138-portfolio_rm90dy.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (165, 10, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/052d8a08177bc469357a56c5ed5c9d21-1680695904/Shadow-3/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (166, 11, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/6b1b0ff3f232c2e573154a3225fe500d-1680428594/DSC09225/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (167, 18, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/53fd2dd28bda43122c7ae2d05ec11750-1662168454/PXR04490/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (168, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/120787148/original/3f0cbeb8611d2fc22b5c2e8c572020b38889e319/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (169, 0, N'https://fiverr-res.cloudinary.com/videos/so_25.9375055,t_main1,q_auto,f_auto/nnknxitmyulossdn6yoi/shoot-professional-product-photography-lifestyle-photo.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (170, 2, N'https://fiverr-res.cloudinary.com/videos/so_25.9375055,t_thumbnail3_3/nnknxitmyulossdn6yoi/shoot-professional-product-photography-lifestyle-photo.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (171, 16, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/d81583d7f1258cdddc17e42ed5cc4ed4-1665137678/PXR08858/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (172, 5, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/120787148/original/312a0593af8aa44fc203eb93144ffa7c28722f10/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (173, 14, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/aqsfnhq2ccpk1dvktupb/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (174, 8, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/c9axndnlfebc1kbvdocm/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (175, 0, N'https://fiverr-res.cloudinary.com/videos/so_3.70585800000078,t_main1,q_auto,f_auto/wi9vzrcaktuzsq9oorbm/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (176, 9, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/ct9lunx4prxmxacsh7kd/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (177, 20, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/wtq8uh5qqzhljaxnfmbr/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (178, 19, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/ewrhbzkvy1pdnqjh2abm/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (179, 21, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/dzjpyc9j2klzlpoksc2v/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (180, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/134446460/original/9d4f04af128716d11c50eea72eb158f1f679ebc2/create-a-professional-unboxing-video-of-your-product.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (181, 11, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/zbkvh4fcqvotbdpzzvkk/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (182, 5, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/134446460/original/449dafb69fdfacaebae73bed0d60c57c1fc5253a/create-a-professional-unboxing-video-of-your-product.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (183, 16, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/yjhr9izyxir70wjhepux/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (184, 15, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/sd2jbuetsrd6gp0ep1ik/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (185, 2, N'https://fiverr-res.cloudinary.com/videos/so_3.70585800000078,t_thumbnail3_3/wi9vzrcaktuzsq9oorbm/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (186, 17, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/gxjyqcuk0rwlmirda5vi/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (187, 7, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/kfa37ahp6newakhuh4mg/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (188, 12, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/zsol2nugzpzuvylgbxyy/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (189, 18, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/kd0qqu6oa64ftcmaxhwv/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (190, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/134446460/original/9d4f04af128716d11c50eea72eb158f1f679ebc2/create-a-professional-unboxing-video-of-your-product.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (191, 13, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/gjocplpzrqv8umlmjdvg/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (192, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/134446460/original/382417f6af0871cad3f5f5f7e21e2f7259ad1f9a/create-a-professional-unboxing-video-of-your-product.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (193, 6, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/vz2zphkfv09mbp5jcbj5/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (194, 10, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/p6gqk09zuovwtwgagoi2/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (195, 19, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/ucnwwiuqgimz7bp9ffwj/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (196, 10, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/hsu8pqcrduqgumkkc4om/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (197, 2, N'https://fiverr-res.cloudinary.com/videos/so_53.0265755973148,t_thumbnail3_3/pzfhdis74rwjsxneevrb/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (198, 5, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/164626069/original/0b2e4fd8aaed2ed408356c26041b3759a4aa26d1/create-an-amazon-product-video.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (199, 0, N'https://fiverr-res.cloudinary.com/videos/so_53.0265755973148,t_main1,q_auto,f_auto/pzfhdis74rwjsxneevrb/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (200, 9, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/mgdvmm75hrgj5pdfndux/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (201, 6, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/ofqrxx7ucjnsphsttfgv/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (202, 12, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/dasb6rgpmrbhmov8qnjr/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (203, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/164626069/original/eb42f3d41ea285fef28d35095a86cf922cc1f154/create-an-amazon-product-video.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (204, 14, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/u0w4q6eoq8uwqnuxpbdj/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (205, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/164626069/original/eb42f3d41ea285fef28d35095a86cf922cc1f154/create-an-amazon-product-video.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (206, 11, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/ahwzytfgemyex9efwbt0/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (207, 16, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/neu2ivljmcsazhxq5nae/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (208, 17, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/xd73mfynhtuejeehpgij/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (209, 7, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/vkr4qmngecvp1jhakzhf/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (210, 13, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/zqiikulf73qczyslyi9k/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (211, 8, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/cckvsbje3coserbdesji/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (212, 20, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/gwerzdh8qvcl9dsn5ozl/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (213, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/164626069/original/3f5ff08bfd5a1023ede399cb768c20a698b69435/create-an-amazon-product-video.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (214, 18, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/jr8d2qgw9bmrzap2ag9n/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (215, 21, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/hjzo1xh7uywmipsawglu/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (216, 15, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/nt3lywywy4nhv4npu4ug/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (217, 2, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/230064482/original/0c91b39a69c01d335a1ce79f65284d28ba4dda43/film-stunning-instagram-product-ads.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (218, 5, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/henwnbl5dflkndwvgven/film-stunning-instagram-product-ads.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (219, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs2/230064482/original/2f2de9e5ddce2b0a6939126b4ed2be304aac6416/film-stunning-instagram-product-ads.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (220, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/230064482/original/f170065343c30fecb61f884090948dd47912b49b/film-stunning-instagram-product-ads.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (221, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/230064482/original/2f2de9e5ddce2b0a6939126b4ed2be304aac6416/film-stunning-instagram-product-ads.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (222, 0, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/230064482/original/0c91b39a69c01d335a1ce79f65284d28ba4dda43/film-stunning-instagram-product-ads.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (223, 10, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/b2b24729180a8aa32656b6a72ea84594-1682800961/DSC06011/do-product-photography-for-your-brand-or-business.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (224, 2, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/197652687/original/7a23711d0558b194ce3136a6c339e9407a9a5477/do-product-photography-for-your-brand-or-business.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (225, 5, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/ef9009e3b8156d22d6851470e536f138-1686333324/DSC08039/do-product-photography-for-your-brand-or-business.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (226, 15, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/e2a901a7d72819cc00a485a2f44dcb27-1680233714/DSC04592/do-product-photography-for-your-brand-or-business.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (227, 20, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/1b58c040aff1ceebb57eb9dc5907ed1f-1677453615/DSC02930/do-product-photography-for-your-brand-or-business.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (228, 12, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/ff88a9f0df88e0b1490e57e7ae90e36a-1681661345/DSC05339/do-product-photography-for-your-brand-or-business.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (229, 14, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/b94adf03fa614dc689c25c222a9846e3-1680668469/DSC04932/do-product-photography-for-your-brand-or-business.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (230, 19, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/1af30f635dbcf6d7297395b843e2cfc9-1678159549/DSC01841/do-product-photography-for-your-brand-or-business.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (231, 9, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/12456d7f9f121bb7516521f4026059d6-1684035445/DSC07355/do-product-photography-for-your-brand-or-business.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (232, 21, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/5a447c19efa787108145cfcca2edea82-1676770420/DSC02220/do-product-photography-for-your-brand-or-business.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (233, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/197652687/original/f0f18b4a2de755dc13df70f203bd3223782d899e/do-product-photography-for-your-brand-or-business.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (234, 7, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/68cc550004067fd4bae550fc90547121-1686004859/DSC07960/do-product-photography-for-your-brand-or-business.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (235, 13, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/d06e2308efff07759b99959dc92e9bf6-1681690859/DSC05356/do-product-photography-for-your-brand-or-business.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (236, 17, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/c6f8da556186bbf128cbf33289ef9e71-1679452447/DSC04232/do-product-photography-for-your-brand-or-business.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (237, 18, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/2c5c8687748cc06cde51c3f47c9f8598-1678167397/DSC03646/do-product-photography-for-your-brand-or-business.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (238, 0, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/197652687/original/7a23711d0558b194ce3136a6c339e9407a9a5477/do-product-photography-for-your-brand-or-business.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (239, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs2/197652687/original/37177d472b55ab44472ebdea60e3ad043dd48ec8/do-product-photography-for-your-brand-or-business.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (240, 6, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/cb0c8dff11a0f2764d2cd4e1f22887b8-1686024556/DSC08011-2/do-product-photography-for-your-brand-or-business.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (241, 8, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/b5aa69224a03fa37cdf44fda9fae4f71-1685113914/DSC07772/do-product-photography-for-your-brand-or-business.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (242, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/197652687/original/37177d472b55ab44472ebdea60e3ad043dd48ec8/do-product-photography-for-your-brand-or-business.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (243, 11, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/84ca1352a2cc5043542bce2639b2c19d-1682476635/DSC05664/do-product-photography-for-your-brand-or-business.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (244, 16, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/9c7920c204dfbd1731e5659939f34825-1679971913/DSC03913/do-product-photography-for-your-brand-or-business.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (245, 4, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/661556444d00a2d866b1349a5f8b9505-1686762184/DSC05780/shoot-product-and-lifestyle-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (246, 12, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/b61fca9b54e676da436742d53d4ec270-1678925112/DSC08917-Editar/shoot-product-and-lifestyle-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (247, 15, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/0dd441ff01af551368fedff0289994b0-1675368600/chips-black-1/shoot-product-and-lifestyle-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (248, 18, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/opgu9eemxebgm6o8pnmq/shoot-product-and-lifestyle-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (249, 11, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/35b102eb16dfe4f46501808f50dcf94f-1680230575/DSC00875-Editar/shoot-product-and-lifestyle-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (250, 16, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/d8587f22d1c82e7654190866a200495e-1675366928/DSC04660/shoot-product-and-lifestyle-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (251, 17, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/38a763bba61e3e4b03ba6fc8404e472a-1674610168/DSC04506/shoot-product-and-lifestyle-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (252, 2, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/238921297/original/b058414bbc6ef4ccf8d7cafa4d7c83d8fd577715/shoot-product-and-lifestyle-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (253, 5, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/69bb6bcc64e2e6fc09a00e2ac2a8e32d-1684433728/DSC03607/shoot-product-and-lifestyle-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (254, 7, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/2e125bdbf7e446e49e16c2cf95b61c79-1683836006/DSC02607/shoot-product-and-lifestyle-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (255, 9, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/a1f04c98417da635d8ccf4f0f0eab25c-1680583073/black%202/shoot-product-and-lifestyle-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (256, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs2/238921297/original/49fce2d57f2f5e788eaaf9869dcc87ae452ae3c9/shoot-product-and-lifestyle-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (257, 19, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/afebf755625f3877d0d6a4e7dc7aef2b-1671992691/DSC02728/shoot-product-and-lifestyle-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (258, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/238921297/original/49fce2d57f2f5e788eaaf9869dcc87ae452ae3c9/shoot-product-and-lifestyle-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (259, 14, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/202236a464c68e25b86a80f386c6c978-1675283207/amarillo-1/shoot-product-and-lifestyle-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (260, 8, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/7014a1d4dc351d84155bdd2724d88c13-1681919820/DSC01802-Editar/shoot-product-and-lifestyle-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (261, 21, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/37f7115cc28df03245be7ea67ebbacb3-1671593423/DSC023821/shoot-product-and-lifestyle-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (262, 20, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/c7c0187545231c982d792462765b49ea-1671819320/DSC02691/shoot-product-and-lifestyle-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (263, 0, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/238921297/original/b058414bbc6ef4ccf8d7cafa4d7c83d8fd577715/shoot-product-and-lifestyle-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (264, 10, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/ebeea1636e583957549cd9f7cf9dc2a8-1679588071/WINE-3/shoot-product-and-lifestyle-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (265, 6, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/3db38a3173b9856482fb6dff9106ab9a-1683133174/DSC03183-Editar/shoot-product-and-lifestyle-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (266, 13, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/250f46bc6aa6e4701739529bf7ca0316-1678839571/DSC08889-Editar/shoot-product-and-lifestyle-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (267, 4, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/06858ca5959e330da378616b7873766a-1686526507/DSC05773/shoot-high-quality-amazon-product-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (268, 9, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/0c28c714c7f305566c72c70bc2512294-1675706428/DSC06173/shoot-high-quality-amazon-product-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (269, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/292158343/original/1ee11cbbe7ad2fa42fb59d20da52fc115a7d58f9/shoot-high-quality-amazon-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (270, 10, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/e27fba1a32796784f2299de5fbd1108b-1673564709/Box-1/shoot-high-quality-amazon-product-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (271, 12, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/a0df99d065d4b55955553f3054da7303-1673044146/Box-1/shoot-high-quality-amazon-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (272, 2, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/292158343/original/67010176a555ba69d0e1ee35fe070310125eb95d/shoot-high-quality-amazon-product-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (273, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs2/292158343/original/1ee11cbbe7ad2fa42fb59d20da52fc115a7d58f9/shoot-high-quality-amazon-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (274, 5, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/37134ddd82ec1f25e9fb3fb09ebe89a5-1683742061/DSC03616/shoot-high-quality-amazon-product-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (275, 11, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/83b1f42bc24bae98c7198cea53fe417f-1673129812/DSC03346/shoot-high-quality-amazon-product-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (276, 6, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/bd70cb36945580d7fef090cb1f9b488a-1678425677/DSC08265-Editar/shoot-high-quality-amazon-product-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (277, 0, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/292158343/original/67010176a555ba69d0e1ee35fe070310125eb95d/shoot-high-quality-amazon-product-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (278, 8, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/dl0xwdqdxp0ed6r6xg8k/shoot-high-quality-amazon-product-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (279, 7, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/1e1631539d9d3944612024c0dff1ebf1-1677431612/DSC07190/shoot-high-quality-amazon-product-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (280, 6, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/ea3fd335e848b179c2f354e648472808-1608662105/2020-12-22%20Meal%20Fetch-1/produce-beautiful-food-photography-for-your-brand-1214.JPG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (281, 13, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/8e119f736a38039cf6b80a43f79587f5-1557974368/Cameo%202019-05-15-4/produce-beautiful-food-photography-for-your-brand-1214.JPG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (282, 0, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/115342310/original/52fd54df46999f2ba82e9837f67bac533919e3d9/produce-beautiful-food-photography-for-your-brand-1214.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (283, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/115342310/original/060bd89ebe2d9a7feeed654542d5149c379eb698/produce-beautiful-food-photography-for-your-brand-1214.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (284, 21, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/deliveries/99781693/original/TurboPot%202018-12-31-10/produce-beautiful-food-photography-for-your-brand-1214.JPG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (285, 5, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/81d794ce361391a2cffd5c51be51d573-1676589873/2023-02-16%20Mozzarisella-2/produce-beautiful-food-photography-for-your-brand-1214.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (286, 14, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/f8795f6da3c4a3e3c2516152ef82be00-1556397075/Awesome%20Life%202019-04-27-2/produce-beautiful-food-photography-for-your-brand-1214.JPG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (287, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs2/115342310/original/52c10883049a7d671069aa105d0dbc16c709e891/produce-beautiful-food-photography-for-your-brand-1214.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (288, 2, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/115342310/original/52fd54df46999f2ba82e9837f67bac533919e3d9/produce-beautiful-food-photography-for-your-brand-1214.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (289, 20, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/deliveries/100810438/original/Cameo%202019-02-15-1/produce-beautiful-food-photography-for-your-brand-1214.JPG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (290, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/115342310/original/52c10883049a7d671069aa105d0dbc16c709e891/produce-beautiful-food-photography-for-your-brand-1214.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (291, 7, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/a8fa62b945ec45c8f2e96aaa26bf4de5-1605016555/2020-11-10%20CStocky%20(jpg)-12/produce-beautiful-food-photography-for-your-brand-1214.JPG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (292, 15, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/45b1857758e539135ec060508c00b2e0-1556079014/Tyme%202019-04-23-1-2/produce-beautiful-food-photography-for-your-brand-1214.JPG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (293, 18, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/deliveries/101969866/original/Nongshim%20USA%202019-03-29-2/produce-beautiful-food-photography-for-your-brand-1214.JPG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (294, 17, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/deliveries/101999511/original/Khuraaki%202019-03-30-4/produce-beautiful-food-photography-for-your-brand-1214.JPG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (295, 11, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/0b66ab682e7ee928d840b76d2ba01c47-1561668709/Harman%20_%20Co%202019-06-27-1/produce-beautiful-food-photography-for-your-brand-1214.JPG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (296, 16, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/deliveries/102281270/original/Khuraaki%202019-04-09-1/produce-beautiful-food-photography-for-your-brand-1214.JPG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (297, 12, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/bae6442875f2c268e7b0afae52b1d4c1-1561007947/SunSnap%202019-06-19%20B-5/produce-beautiful-food-photography-for-your-brand-1214.JPG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (298, 9, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/fc1f3e9728c8fc087a7edd40042c15b8-1563386507/Khuraaki%202019-07-16-6/produce-beautiful-food-photography-for-your-brand-1214.JPG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (299, 19, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/deliveries/100966454/original/TurboPot%202019-02-21-4/produce-beautiful-food-photography-for-your-brand-1214.JPG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (300, 8, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/e345e2a889dc48be7cd1a4120d668c94-1601054617/2020-09-25%20Bee-1-2/produce-beautiful-food-photography-for-your-brand-1214.JPG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (301, 10, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/18d5be6c822c7bd8eb429335fa51620b-1562343331/Turbo%20Pot%202019-06-26-11/produce-beautiful-food-photography-for-your-brand-1214.jpeg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (302, 0, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/115329405/original/571623a9170655a4b18fcc68119664ed94abb89e/produce-beautiful-product-photography-for-your-brand-6cb6.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (303, 6, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/6061024606bad7a828840ee04afd19e4-1683581794/2023-05-08%20Stirling-1/produce-beautiful-product-photography-for-your-brand-6cb6.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (304, 10, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/4ecb1c1ba643cae5764a5c2f1f0d456c-1664565141/2022-09-30%20Drink%20Wholesome%20portofio%20sample-1/produce-beautiful-product-photography-for-your-brand-6cb6.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (305, 20, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/d3b2a23e47d83ec40d2fb9e434d7a5bc-1634762665/2021-10-20%20Arum-13/produce-beautiful-product-photography-for-your-brand-6cb6.JPG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (306, 2, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/115329405/original/571623a9170655a4b18fcc68119664ed94abb89e/produce-beautiful-product-photography-for-your-brand-6cb6.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (307, 15, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/4761cc9f956464290d2d6da383c3ccc6-1648677767/2022-03-30%20Cheyne-2/produce-beautiful-product-photography-for-your-brand-6cb6.JPG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (308, 16, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/dbd5fee977694ecb4d45e6548e641866-1647981157/2022-03-22%20DW-1-2/produce-beautiful-product-photography-for-your-brand-6cb6.JPG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (309, 17, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/6888e2485d0d4a3fb16281fd196b7e52-1646776386/2022-03-08%20Go%20Supply%20Wise-3/produce-beautiful-product-photography-for-your-brand-6cb6.JPG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (310, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs2/115329405/original/30b1407d512b62cf51b455a5ac05ace892968f3f/produce-beautiful-product-photography-for-your-brand-6cb6.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (311, 19, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/f9a8c79e8e0225db848374cf3dddb902-1640128397/2021-12-21%20Devon-1/produce-beautiful-product-photography-for-your-brand-6cb6.JPG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (312, 9, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/4f3a985a2d59472e57bb574d75491507-1665700672/2022-10-13%20Yuma-1/produce-beautiful-product-photography-for-your-brand-6cb6.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (313, 8, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/a864f0ad8abb655daa3df949d6d53c94-1677630008/2023-02-28%20Sandy-1/produce-beautiful-product-photography-for-your-brand-6cb6.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (314, 11, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/cb1b9875d618491b3e9357708c064df6-1657574213/2022-07-06%20Yuma-2/produce-beautiful-product-photography-for-your-brand-6cb6.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (315, 14, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/d666f5a2fbf068094b6add684a8ad377-1653516455/2022-05-25%20Jake-1/produce-beautiful-product-photography-for-your-brand-6cb6.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (316, 18, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/cc7f3d56feadac360890477698dcdaa6-1643926199/2022-02-03%20Koda-1/produce-beautiful-product-photography-for-your-brand-6cb6.JPG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (317, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/115329405/original/c0777d28e829e8865cc25d5293b252b5881b6f46/produce-beautiful-product-photography-for-your-brand-6cb6.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (318, 7, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/703f6820740f24135a01fccb4f3a8d51-1682717746/SharedScreenshot/produce-beautiful-product-photography-for-your-brand-6cb6.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (319, 5, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/287e87822073964c600ec5cd0ac95584-1683989893/2023-05-13%20AE-2/produce-beautiful-product-photography-for-your-brand-6cb6.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (320, 21, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/abc8bc0795a2164e89c5072b73955614-1634338334/2021-10-15%20Jimmy-14/produce-beautiful-product-photography-for-your-brand-6cb6.JPG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (321, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/115329405/original/30b1407d512b62cf51b455a5ac05ace892968f3f/produce-beautiful-product-photography-for-your-brand-6cb6.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (322, 12, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/a6c242f21b15e2b9c1b7b5564d028e8a-1657205384/2022-07-05%20Beliz-1/produce-beautiful-product-photography-for-your-brand-6cb6.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (323, 13, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/79171c82a864b7fb62b4a712409b8168-1657118945/2022-07-05%20SLK-11/produce-beautiful-product-photography-for-your-brand-6cb6.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (324, 2, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/135113912/original/d0c639e5c9c19df99351ac533eb392d958f670ce/produce-beautiful-cosmetics-photography-for-your-brand.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (325, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs2/135113912/original/076a65feb0690c10a797691255cc0be5922327ee/produce-beautiful-cosmetics-photography-for-your-brand.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (326, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/135113912/original/076a65feb0690c10a797691255cc0be5922327ee/produce-beautiful-cosmetics-photography-for-your-brand.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (327, 5, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/cbf533e25fb210655cedb3b534d40cc3-1617740449/Final%204/produce-beautiful-cosmetics-photography-for-your-brand.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (328, 0, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/135113912/original/d0c639e5c9c19df99351ac533eb392d958f670ce/produce-beautiful-cosmetics-photography-for-your-brand.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (329, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/135113912/original/7de8ff90b92dd2123e1ce79f0c60bd3c2fe7f4f9/produce-beautiful-cosmetics-photography-for-your-brand.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (330, 6, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/75bba2f21d5ce8199a7be3ede9db91cd-1597700190/2020-08-15%20Lick%20Samples-1-Final/produce-beautiful-cosmetics-photography-for-your-brand.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (331, 11, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/6b1b0ff3f232c2e573154a3225fe500d-1680428594/DSC09225/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (332, 5, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/120787148/original/312a0593af8aa44fc203eb93144ffa7c28722f10/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (333, 7, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/1bf11218bf4d08c6c2ecb9ba5a9fcdb6-1686830443/DSC00383/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (334, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/120787148/original/86a15680de92fe189cfa33faaf0bb9f7a4ef0e30/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (335, 2, N'https://fiverr-res.cloudinary.com/videos/so_25.9375055,t_thumbnail3_3/nnknxitmyulossdn6yoi/shoot-professional-product-photography-lifestyle-photo.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (336, 9, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/dfd90ae3d792d1b19e70b2ca06584885-1681513033/1/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (337, 18, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/53fd2dd28bda43122c7ae2d05ec11750-1662168454/PXR04490/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (338, 0, N'https://fiverr-res.cloudinary.com/videos/so_25.9375055,t_main1,q_auto,f_auto/nnknxitmyulossdn6yoi/shoot-professional-product-photography-lifestyle-photo.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (339, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/120787148/original/3f0cbeb8611d2fc22b5c2e8c572020b38889e319/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (340, 14, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/8b76c81502c3376bca25b073cc66a1a3-1669660839/DSC08819/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (341, 15, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/4483dcea86457ce3a46eb604aaef9109-1664820387/PXR08679/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (342, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/120787148/original/3f0cbeb8611d2fc22b5c2e8c572020b38889e319/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (343, 10, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/052d8a08177bc469357a56c5ed5c9d21-1680695904/Shadow-3/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (344, 17, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/758c5621f7d265bc1b56c80a74353de6-1663603193/PXR05138/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (345, 20, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/65efc1c83d7facfb98a645015f409f82-1652791229/PXR09420/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (346, 21, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/2cc2e1a6c6ed6e72ca74fa4134da476e-1652019069/PXR01456/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (347, 16, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/d81583d7f1258cdddc17e42ed5cc4ed4-1665137678/PXR08858/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (348, 8, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/6d95bd1307a339887fb812097ceb8e72-1686134277/DSC08350/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (349, 13, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/4c9c88e967f99114249d9808e751554d-1674173346/DSC01817/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (350, 12, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/kq1owvfcwe1zk35if8tl/shoot-professional-product-photography-lifestyle-photo.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (351, 6, N'https://fiverr-res.cloudinary.com/image/upload/t_gig_pdf_thumb_ver3,f_jpg/20190403/DSR07138-portfolio_rm90dy.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (352, 19, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/38dfad05821941d627a9c997b6f64ac7-1661467712/PXR04139/shoot-professional-product-photography-lifestyle-photo.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (353, 0, N'https://fiverr-res.cloudinary.com/videos/so_3.70585800000078,t_main1,q_auto,f_auto/wi9vzrcaktuzsq9oorbm/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (354, 9, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/ct9lunx4prxmxacsh7kd/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (355, 13, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/gjocplpzrqv8umlmjdvg/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (356, 7, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/kfa37ahp6newakhuh4mg/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (357, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/134446460/original/9d4f04af128716d11c50eea72eb158f1f679ebc2/create-a-professional-unboxing-video-of-your-product.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (358, 10, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/p6gqk09zuovwtwgagoi2/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (359, 15, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/sd2jbuetsrd6gp0ep1ik/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (360, 11, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/zbkvh4fcqvotbdpzzvkk/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (361, 12, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/zsol2nugzpzuvylgbxyy/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (362, 20, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/wtq8uh5qqzhljaxnfmbr/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (363, 21, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/dzjpyc9j2klzlpoksc2v/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (364, 6, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/vz2zphkfv09mbp5jcbj5/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (365, 14, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/aqsfnhq2ccpk1dvktupb/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (366, 5, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/134446460/original/449dafb69fdfacaebae73bed0d60c57c1fc5253a/create-a-professional-unboxing-video-of-your-product.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (367, 16, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/yjhr9izyxir70wjhepux/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (368, 19, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/ewrhbzkvy1pdnqjh2abm/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (369, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/134446460/original/9d4f04af128716d11c50eea72eb158f1f679ebc2/create-a-professional-unboxing-video-of-your-product.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (370, 8, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/c9axndnlfebc1kbvdocm/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (371, 17, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/gxjyqcuk0rwlmirda5vi/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (372, 18, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/kd0qqu6oa64ftcmaxhwv/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (373, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/134446460/original/382417f6af0871cad3f5f5f7e21e2f7259ad1f9a/create-a-professional-unboxing-video-of-your-product.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (374, 2, N'https://fiverr-res.cloudinary.com/videos/so_3.70585800000078,t_thumbnail3_3/wi9vzrcaktuzsq9oorbm/create-a-professional-unboxing-video-of-your-product.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (375, 0, N'https://fiverr-res.cloudinary.com/videos/so_11.9183672463456,t_main1,q_auto,f_auto/m0nwwaqc8yrhxcdbvc64/shoot-product-photos-with-our-baby-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (376, 5, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/124114437/original/c446bf35b4851c30b7df2b6bc27238943f16b8ea/shoot-product-photos-with-our-baby-model-in-germany.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (377, 19, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/pcfu54pgqwgulwu8pdos/shoot-product-photos-with-our-baby-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (378, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/124114437/original/37f40d78a34fe4c7e07049581103b4e8936e85e9/shoot-product-photos-with-our-baby-model-in-germany.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (379, 14, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/jjumgieaogmraofos3hg/shoot-product-photos-with-our-baby-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (380, 10, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/c7g4n8upwelbecmhkrcn/shoot-product-photos-with-our-baby-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (381, 12, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/milftknwwmh9psxrtsph/shoot-product-photos-with-our-baby-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (382, 16, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/18db67de6d99a2142a02353f655d314e-1575106469/Amazon-DSR00274-2/shoot-product-photos-with-our-baby-model-in-germany.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (383, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/124114437/original/d557535314394ce6ce1d15e397ceb6a41847c0ca/shoot-product-photos-with-our-baby-model-in-germany.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (384, 2, N'https://fiverr-res.cloudinary.com/videos/so_11.9183672463456,t_thumbnail3_3/m0nwwaqc8yrhxcdbvc64/shoot-product-photos-with-our-baby-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (385, 18, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/oxivxwb9bbono9cgbocc/shoot-product-photos-with-our-baby-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (386, 7, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/819813bb7a2e1406cea44e29629bb39a-1664182745/PXR05735/shoot-product-photos-with-our-baby-model-in-germany.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (387, 15, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/djdmiqebdtoecgvbymwv/shoot-product-photos-with-our-baby-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (388, 6, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/5a371d28ef273ff9ba17f8379075287d-1681101428/DSC00081/shoot-product-photos-with-our-baby-model-in-germany.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (389, 17, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/evcjasl3of5nnpgoh95x/shoot-product-photos-with-our-baby-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (390, 20, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/z15bi77hkuz9xzm24m3e/shoot-product-photos-with-our-baby-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (391, 8, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/wn7aiyloillfcomuz4em/shoot-product-photos-with-our-baby-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (392, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/124114437/original/d557535314394ce6ce1d15e397ceb6a41847c0ca/shoot-product-photos-with-our-baby-model-in-germany.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (393, 13, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/il3cs4zbxvrovsz2td98/shoot-product-photos-with-our-baby-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (394, 11, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/flgqoqoncpu5ng02twnf/shoot-product-photos-with-our-baby-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (395, 9, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/wexfhjfz0dlccyauvevj/shoot-product-photos-with-our-baby-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (396, 21, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/qubntxpv8lemxggh0sry/shoot-product-photos-with-our-baby-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (397, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/164626069/original/3f5ff08bfd5a1023ede399cb768c20a698b69435/create-an-amazon-product-video.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (398, 16, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/neu2ivljmcsazhxq5nae/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (399, 17, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/xd73mfynhtuejeehpgij/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (400, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/164626069/original/eb42f3d41ea285fef28d35095a86cf922cc1f154/create-an-amazon-product-video.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (401, 9, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/mgdvmm75hrgj5pdfndux/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (402, 0, N'https://fiverr-res.cloudinary.com/videos/so_53.0265755973148,t_main1,q_auto,f_auto/pzfhdis74rwjsxneevrb/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (403, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/164626069/original/eb42f3d41ea285fef28d35095a86cf922cc1f154/create-an-amazon-product-video.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (404, 6, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/ofqrxx7ucjnsphsttfgv/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (405, 20, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/gwerzdh8qvcl9dsn5ozl/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (406, 5, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/164626069/original/0b2e4fd8aaed2ed408356c26041b3759a4aa26d1/create-an-amazon-product-video.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (407, 7, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/vkr4qmngecvp1jhakzhf/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (408, 2, N'https://fiverr-res.cloudinary.com/videos/so_53.0265755973148,t_thumbnail3_3/pzfhdis74rwjsxneevrb/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (409, 21, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/hjzo1xh7uywmipsawglu/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (410, 14, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/u0w4q6eoq8uwqnuxpbdj/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (411, 11, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/ahwzytfgemyex9efwbt0/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (412, 19, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/ucnwwiuqgimz7bp9ffwj/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (413, 12, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/dasb6rgpmrbhmov8qnjr/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (414, 18, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/jr8d2qgw9bmrzap2ag9n/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (415, 13, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/zqiikulf73qczyslyi9k/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (416, 8, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/cckvsbje3coserbdesji/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (417, 10, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/hsu8pqcrduqgumkkc4om/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (418, 15, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/nt3lywywy4nhv4npu4ug/create-an-amazon-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (419, 11, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/ymfyoopjezfoj328cklo/shoot-professional-product-video-with-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (420, 14, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/sqbgso8c9byugxhg9j90/shoot-professional-product-video-with-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (421, 5, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/128361480/original/4163b43e4df389236f793bcd09b2ca186b07f238/shoot-professional-product-video-with-model-in-germany.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (422, 0, N'https://fiverr-res.cloudinary.com/videos/so_40.4205822376333,t_main1,q_auto,f_auto/psirls5ym9fukzj2ovpc/shoot-professional-product-video-with-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (423, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/128361480/original/31fcc2f219c7ba5b15cabb5d9aca4010428013f8/shoot-professional-product-video-with-model-in-germany.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (424, 20, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/dgyfga0euyvjqevr0mts/shoot-professional-product-video-with-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (425, 15, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/twcatybup1hxwebgfv6g/shoot-professional-product-video-with-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (426, 19, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/mx3zco0nbmzkknzphzak/shoot-professional-product-video-with-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (427, 7, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/nfpd7qvzggp5wvl12m4j/shoot-professional-product-video-with-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (428, 10, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/u2tuoq4a7zviqmf0h2oi/shoot-professional-product-video-with-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (429, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/128361480/original/31fcc2f219c7ba5b15cabb5d9aca4010428013f8/shoot-professional-product-video-with-model-in-germany.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (430, 18, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/1c8b43027006a181ac456098944ebc28-1669722880/DSC09128/shoot-professional-product-video-with-model-in-germany.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (431, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/128361480/original/cf458e139a434593909160c690a0a6e839277d27/shoot-professional-product-video-with-model-in-germany.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (432, 8, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/l26wyuzxywcrhfon69lv/shoot-professional-product-video-with-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (433, 6, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/o0vj6zezl4gqekqvhtnm/shoot-professional-product-video-with-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (434, 9, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/gbzatxj7c5nm8s8rmjiz/shoot-professional-product-video-with-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (435, 12, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/ukjcplgsiluivsmhgzoi/shoot-professional-product-video-with-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (436, 13, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/bwzyx15yxffbzblrlxv1/shoot-professional-product-video-with-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (437, 16, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/s8wuauswxp2i2rjexpxe/shoot-professional-product-video-with-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (438, 21, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/mxim2x2peugj2xazrkm1/shoot-professional-product-video-with-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (439, 2, N'https://fiverr-res.cloudinary.com/videos/so_40.4205822376333,t_thumbnail3_3/psirls5ym9fukzj2ovpc/shoot-professional-product-video-with-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (440, 17, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/h35qdxnhunbqrrkdf80o/shoot-professional-product-video-with-model-in-germany.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (441, 7, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/96c203ff6d0cadc5ad97fc36989ddad7-1685875644/DSC08443/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (442, 16, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/0e2acf6b2f9914f117c0f4e9602d2d94-1669200645/2/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (443, 20, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/492fabf021a888b6d024cdb635c534ad-1660080828/PXR01309/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (444, 13, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/ff2c9da7bb72494ecf80c63fa9888643-1670932246/DSC09924/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (445, 17, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/26b9b3e1929f35620a2794041e0604ab-1669125440/PXR02074/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (446, 5, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/137495922/original/4a718eb95369afd2537421e9a450792030310102/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (447, 12, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/3157661439ff797f6081ab71889c3845-1672851377/DSC00793/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (448, 11, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/0fd3bce1101bf69e7480935741aa58f1-1674237218/DSC00829/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (449, 19, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/b8a0007fbbe623af0fd749f49dbc7682-1661435253/PXR03302/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (450, 15, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/c100f1f3127c34297c4de5d60819a629-1669650985/DSC09081/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (451, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/137495922/original/c282421885a4c88b1d062225bc8dcad8439aaff3/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (452, 2, N'https://fiverr-res.cloudinary.com/videos/so_33.0657288810051,t_thumbnail3_3/bqmrl0udvlfluvlambw5/do-amazon-product-photography-lifestyle-and-infographics.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (453, 10, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/622ec43b420c584a8ce57cd5126efb05-1681890797/DSC09655/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (454, 14, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/a18e6bd51b9047d2c147b1b2c431acd4-1670757698/DSC09626/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (455, 18, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/0ac52e1ea7676dc6003232e8a7d9e93a-1662310314/PXR04715/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (456, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/137495922/original/c282421885a4c88b1d062225bc8dcad8439aaff3/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (457, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/137495922/original/e6a4a768642e69b61b4bf88277bad041d8dfd9a7/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (458, 8, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/6bdbde3350dfee4ad75134ae0a6cf1c4-1684525335/DSC03396/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (459, 0, N'https://fiverr-res.cloudinary.com/videos/so_33.0657288810051,t_main1,q_auto,f_auto/bqmrl0udvlfluvlambw5/do-amazon-product-photography-lifestyle-and-infographics.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (460, 21, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/6229f63ecf1a095e5361886d8949394a-1660075095/BG-1/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (461, 6, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/fhpvpyfut4f18cfhtxry/do-amazon-product-photography-lifestyle-and-infographics.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (462, 9, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/70dbb03999a3e3c0338f50aad07e83cc-1683036370/DSC00137/do-amazon-product-photography-lifestyle-and-infographics.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (463, 20, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/823a1f3a1757a13682752f5639843066-1670331060/Photo-15/lifestyle-product-photography-for-amazon-etsy-instagram.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (464, 2, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/176877551/original/dc25b45340e1c4873c96eef64260c1f9e0f0a111/lifestyle-product-photography-for-amazon-etsy-instagram.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (465, 17, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/f1df106a3cfe6e075866b84a146d2ced-1672067119/Photo-1/lifestyle-product-photography-for-amazon-etsy-instagram.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (466, 6, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/14411eea615e964db06dc95c58ec2547-1683748641/Photo-88/lifestyle-product-photography-for-amazon-etsy-instagram.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (467, 7, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/a71dfc3dedc0e5b3314a356d9d6d23e0-1678528437/Photo-104/lifestyle-product-photography-for-amazon-etsy-instagram.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (468, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs2/176877551/original/27d875f38f82e1aa75bc44bdaed0b602b799cc26/lifestyle-product-photography-for-amazon-etsy-instagram.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (469, 19, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/8d6cf6dfce8dab6044428743d7e1dd96-1671528012/Photo-1/lifestyle-product-photography-for-amazon-etsy-instagram.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (470, 8, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/28fd01713ef7c0c944fce4e1555782eb-1678124328/Photo-35/lifestyle-product-photography-for-amazon-etsy-instagram.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (471, 11, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/03833d967089995d05672a1d81a4a749-1677259508/Photo-52/lifestyle-product-photography-for-amazon-etsy-instagram.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (472, 15, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/4aaa000a94809012a0697d3e24c6786d-1675712484/Photo-34/lifestyle-product-photography-for-amazon-etsy-instagram.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (473, 21, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/2818e22cb2e19573c1df21c4b35cab91-1667421783/Photo-45/lifestyle-product-photography-for-amazon-etsy-instagram.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (474, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/176877551/original/27d875f38f82e1aa75bc44bdaed0b602b799cc26/lifestyle-product-photography-for-amazon-etsy-instagram.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (475, 9, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/fa0704568e87db3378d9e0bfb18ce367-1677505683/Photo-41/lifestyle-product-photography-for-amazon-etsy-instagram.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (476, 16, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/2e0ffe2daef856334dbfd86ab184b845-1672869363/Photo-4/lifestyle-product-photography-for-amazon-etsy-instagram.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (477, 0, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/176877551/original/dc25b45340e1c4873c96eef64260c1f9e0f0a111/lifestyle-product-photography-for-amazon-etsy-instagram.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (478, 13, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/adb2aa076ebe3b7ac9dd92f60be7e089-1676236856/Photo-62/lifestyle-product-photography-for-amazon-etsy-instagram.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (479, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/176877551/original/8a2e82f2dc2e5f148421ea54b05157a5d31009af/lifestyle-product-photography-for-amazon-etsy-instagram.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (480, 12, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/f869f5947f98cde69b0788912458ddff-1676239933/Photo-29/lifestyle-product-photography-for-amazon-etsy-instagram.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (481, 14, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/9378181a363206cb77eb1a74b4edff9f-1675789826/Photo-61/lifestyle-product-photography-for-amazon-etsy-instagram.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (482, 18, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/d95d0ed45b0954443f7d81b6c0f91738-1672089845/Photo-40/lifestyle-product-photography-for-amazon-etsy-instagram.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (483, 10, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/fce3a62b90374e0454837d14ec9b3a35-1677260058/Photo-5/lifestyle-product-photography-for-amazon-etsy-instagram.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (484, 5, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/a43af68d8d9296ae95ea3cecb8b7937a-1684873136/Photo-37/lifestyle-product-photography-for-amazon-etsy-instagram.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (485, 7, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/448d274d29166f1e6e24331d8427bc5c-1614527958/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202021-02-28%20%D0%B2%2017.53.50/baby-product-photography-with-baby-model.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (486, 0, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/185928435/original/51279843bd31eedd0f0c574b6eb9d004dce3458d/baby-product-photography-with-baby-model.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (487, 2, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/185928435/original/51279843bd31eedd0f0c574b6eb9d004dce3458d/baby-product-photography-with-baby-model.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (488, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs2/185928435/original/faefde1b6aebfd6900deec0968a22256391aa5cb/baby-product-photography-with-baby-model.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (489, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/185928435/original/faefde1b6aebfd6900deec0968a22256391aa5cb/baby-product-photography-with-baby-model.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (490, 5, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/e06fa83d5858e94540f422c11a1d4adf-1683912614/Photo-7/baby-product-photography-with-baby-model.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (491, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/185928435/original/f8fc2132a3985cd8b2c91778dd7d449034378791/baby-product-photography-with-baby-model.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (492, 6, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/5702bffe0842da516dbcfe17fd8e2d9c-1680891170/Photo-3/baby-product-photography-with-baby-model.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (493, 0, N'https://fiverr-res.cloudinary.com/videos/so_31.922889,t_main1,q_auto,f_auto/yhx19r8tcnuk2kjrvccx/do-professional-amazon-or-ecommerce-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (494, 7, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/srop5rrb2dnvnair1wcy/do-professional-amazon-or-ecommerce-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (495, 2, N'https://fiverr-res.cloudinary.com/videos/so_31.922889,t_thumbnail3_3/yhx19r8tcnuk2kjrvccx/do-professional-amazon-or-ecommerce-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (496, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/243017017/original/92301e98def3ee037c7df2c10d5ab4f3262c8407/do-professional-amazon-or-ecommerce-product-video.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (497, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/243017017/original/0038adea169cfd5d193e597056abd85e73aaffb7/do-professional-amazon-or-ecommerce-product-video.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (498, 6, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/pycqa1ydtjcwmcnkrnsm/do-professional-amazon-or-ecommerce-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (499, 5, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/243017017/original/9e821efb44ff1d46f3234cd0712d5cde3284f6d8/do-professional-amazon-or-ecommerce-product-video.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (500, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/243017017/original/0038adea169cfd5d193e597056abd85e73aaffb7/do-professional-amazon-or-ecommerce-product-video.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (501, 8, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/dobfdbsu2bkbkxpyxebs/do-professional-amazon-or-ecommerce-product-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (502, 17, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/cnyblxyvqte4ggkjxfts/do-baby-product-video-for-amazon-etc.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (503, 0, N'https://fiverr-res.cloudinary.com/videos/so_0.814624,t_main1,q_auto,f_auto/qcn3hhyfpxpa1d9jidj5/do-baby-product-video-for-amazon-etc.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (504, 8, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/w91q1scokab8ytvftvbg/do-baby-product-video-for-amazon-etc.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (505, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/178969628/original/32cc516c1cbf29daa531708a501949fb9f7841c0/do-baby-product-video-for-amazon-etc.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (506, 5, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/danyxp9vnlvic8nhkhki/do-baby-product-video-for-amazon-etc.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (507, 20, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/un92lpmqqfqh3fi2alif/do-baby-product-video-for-amazon-etc.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (508, 14, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/t8ol2lhjdvlavjswgve4/do-baby-product-video-for-amazon-etc.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (509, 16, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/p1uihbywpctewhofct1f/do-baby-product-video-for-amazon-etc.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (510, 21, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/eiqq2k877q4en7afvgkq/do-baby-product-video-for-amazon-etc.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (511, 12, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/xirqnto2xylawi8jtozp/do-baby-product-video-for-amazon-etc.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (512, 19, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/xl4oecokwtc0wnzgr2hp/do-baby-product-video-for-amazon-etc.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (513, 9, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/ihxiuolqxjm96fstlity/do-baby-product-video-for-amazon-etc.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (514, 13, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/rfavswkgvmx9vyet67h0/do-baby-product-video-for-amazon-etc.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (515, 7, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/ze0g4qf2vjl1ctaajzio/do-baby-product-video-for-amazon-etc.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (516, 11, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/z89io9me0kni36364szv/do-baby-product-video-for-amazon-etc.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (517, 2, N'https://fiverr-res.cloudinary.com/videos/so_0.814624,t_thumbnail3_3/qcn3hhyfpxpa1d9jidj5/do-baby-product-video-for-amazon-etc.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (518, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/178969628/original/32cc516c1cbf29daa531708a501949fb9f7841c0/do-baby-product-video-for-amazon-etc.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (519, 6, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/wpggljf3gvdg91xbav88/do-baby-product-video-for-amazon-etc.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (520, 10, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/pu6i6dw4bflexrt9sbhl/do-baby-product-video-for-amazon-etc.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (521, 18, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/nyvdlpixubhc5v5hoz5p/do-baby-product-video-for-amazon-etc.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (522, 4, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/serkkpdsg6xfkghwlakq/do-baby-product-video-for-amazon-etc.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (523, 15, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/kg0ngk2lezcdntmomxrt/do-baby-product-video-for-amazon-etc.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (524, 13, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/c302b926808bb4e33cc144ffe43469bb-1593365984/DSC_4384-/shoot-professional-product-white-background-photography-usa-based.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (525, 0, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/159427600/original/86cc31adb138dea34831168f916bc7437de0b275/shoot-professional-product-white-background-photography-usa-based.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (526, 7, N'https://fiverr-res.cloudinary.com/image/upload/t_gig_pdf_thumb_ver3,f_jpg/20211021/Amazon%20product%20photography_tspkhv.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (527, 10, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/fb4fb2062384383287b1910280b1d82a-1605313076/3/shoot-professional-product-white-background-photography-usa-based.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (528, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/159427600/original/769b8a93586c4883a60b7f8c2688d7ed609b4df4/shoot-professional-product-white-background-photography-usa-based.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (529, 12, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/d269bd1f5fc87a58f4536d2921c3b92d-1600451594/image%207---/shoot-professional-product-white-background-photography-usa-based.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (530, 8, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/eed27158eb8021ec5167973a36cd0cc8-1678802330/5-/shoot-professional-product-white-background-photography-usa-based.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (531, 5, N'https://fiverr-res.cloudinary.com/image/upload/t_gig_pdf_thumb_ver3,f_jpg/20211021/Amazon%20product%20photography_tx5e3p.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (532, 2, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/159427600/original/86cc31adb138dea34831168f916bc7437de0b275/shoot-professional-product-white-background-photography-usa-based.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (533, 6, N'https://fiverr-res.cloudinary.com/image/upload/t_gig_pdf_thumb_ver3,f_jpg/20211021/Lifestyle%20product%20photography_e1eht8.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (534, 14, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/d8314335eeafbd78d28b75fbbd369acb-1591731836/image%203/shoot-professional-product-white-background-photography-usa-based.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (535, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/159427600/original/98756edec86034883e687e1f9814ae4861f1d6b5/shoot-professional-product-white-background-photography-usa-based.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (536, 9, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/97ff524c3dc83e8e0828567458a02a48-1650909070/Extra%201-/shoot-professional-product-white-background-photography-usa-based.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (537, 11, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/aaed785fb4d491249407e45c11ba2d67-1605144368/image%2011/shoot-professional-product-white-background-photography-usa-based.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (538, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs2/159427600/original/769b8a93586c4883a60b7f8c2688d7ed609b4df4/shoot-professional-product-white-background-photography-usa-based.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (539, 5, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/63c10fdeb44bb4f9d405e0f65c23496b-1665844376/Lifestyle-6/do-cosmetic-beauty-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (540, 8, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/a847032b3ebeaf55135e1fbf340ca276-1645073278/image%208/do-cosmetic-beauty-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (541, 11, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/2f3167208d7b475872ff82967c5216ef-1612550620/image%206-/do-cosmetic-beauty-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (542, 2, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/171884774/original/35f42d27736b575ca4a42b169dfbde619b33eee8/do-cosmetic-beauty-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (543, 14, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/d6343375f725701a39e75c4ef5d05bae-1600386843/DSC_8253sss/do-cosmetic-beauty-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (544, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs2/171884774/original/13758f20fe20f980bd70c6ec8d9c347d920f5ce1/do-cosmetic-beauty-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (545, 0, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/171884774/original/35f42d27736b575ca4a42b169dfbde619b33eee8/do-cosmetic-beauty-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (546, 6, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/b444ac315983b6015cfbf28d486d4b1a-1647369166/IMG%207-Bichi%20Life/do-cosmetic-beauty-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (547, 12, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/6b8939a8e2a73cc03dd4b631c01ea076-1610906530/image-19/do-cosmetic-beauty-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (548, 4, N'https://fiverr-res.cloudinary.com/image/upload/t_gig_pdf_thumb_ver3,f_jpg/20211021/Amazon%20product%20photography_iwdhqj.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (549, 9, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/ecdae47a73d7b1cd733aa8cb46cbf0bb-1636490293/Extra%201/do-cosmetic-beauty-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (550, 13, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/539c66249698aa5e0f8a7b5ac1cad043-1602780579/Photo-1/do-cosmetic-beauty-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (551, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/171884774/original/13758f20fe20f980bd70c6ec8d9c347d920f5ce1/do-cosmetic-beauty-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (552, 10, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/115aa252051cfb2487e04f8f4e0aa9ab-1612888864/image%207-/do-cosmetic-beauty-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (553, 7, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/0567277f2f2c4beecc92e2a099b30299-1647367472/IMG%205-Dra%20Sunshine-%20revised/do-cosmetic-beauty-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (554, 6, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/2a951d4cce3cf0dafd6ef7c6d6391fb5-1667440431/White%20background%203/do-professional-white-background-product-photography-in-usa.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (555, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs2/283802725/original/c2067082d75f7c91bf5d13d12415acf2745f60a8/do-professional-white-background-product-photography-in-usa.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (556, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/283802725/original/c2067082d75f7c91bf5d13d12415acf2745f60a8/do-professional-white-background-product-photography-in-usa.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (557, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/283802725/original/10012677085705b356ddf6e0f8b1ac2753bba0d2/do-professional-white-background-product-photography-in-usa.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (558, 0, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/283802725/original/e309ee2bcde80cbbf51bb5d9176aa6e0ab846cd3/do-professional-white-background-product-photography-in-usa.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (559, 2, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/283802725/original/e309ee2bcde80cbbf51bb5d9176aa6e0ab846cd3/do-professional-white-background-product-photography-in-usa.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (560, 5, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/da3d11f69fb4ad6e861ac5bb8326744b-1669411513/1/do-professional-white-background-product-photography-in-usa.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (561, 6, N'https://fiverr-res.cloudinary.com/image/upload/t_gig_pdf_thumb_ver3,f_jpg/20211021/Amazon%20product%20photography_lou7sr.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (562, 12, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/5a5b34b9b316d6a39d9320c839c089ea-1681776122/Infographic%202/shoot-professional-product-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (563, 18, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/fb78de36faf4a706029f02cd487906c8-1677086145/4/shoot-professional-product-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (564, 7, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/791440399698c2639caf381bf9f72909-1684692875/2-/shoot-professional-product-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (565, 10, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/53e3cdf9d79e2b77c476d27f914b67f8-1682097350/7/shoot-professional-product-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (566, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/98582358/original/86891111e746a1668f5f72ff850549028ef64d44/shoot-professional-product-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (567, 8, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/0871fcfff4e0f1afa2f001b5d8683411-1682607235/1/shoot-professional-product-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (568, 15, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/f77a907ea6b7a015818f7ef8da7582eb-1677267699/SLB-129-%203-/shoot-professional-product-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (569, 11, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/781d415c433f63de3c72a052a6b7f18d-1681752554/4-Look%20What%20I%20Made%20Sign-/shoot-professional-product-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (570, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/98582358/original/f53fe6097da53bbe930baef7e609f6c97872e18f/shoot-professional-product-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (571, 2, N'https://fiverr-res.cloudinary.com/videos/so_0.0,t_thumbnail3_3/lyvtjtchjeuvr6pnwxpl/shoot-professional-product-photography-for-amazon.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (572, 21, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/c7f8fed9168b63150439a6602d169a2f-1674774282/8/shoot-professional-product-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (573, 0, N'https://fiverr-res.cloudinary.com/videos/so_0.0,t_main1,q_auto,f_auto/lyvtjtchjeuvr6pnwxpl/shoot-professional-product-photography-for-amazon.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (574, 17, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/39c0d121b65e0c1d9f1baff53f02f90e-1677092355/Main%20image%202/shoot-professional-product-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (575, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/98582358/original/f53fe6097da53bbe930baef7e609f6c97872e18f/shoot-professional-product-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (576, 14, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/429ec5c54aa95a203f2c2e3f4ffa9c8f-1681418798/1/shoot-professional-product-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (577, 13, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/36fda0df1e7582f5d15a888505b765a6-1681484466/9/shoot-professional-product-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (578, 9, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/c3cdf91d5681e8ec7f0a00ece312a8b2-1682527098/5/shoot-professional-product-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (579, 19, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/e70c4fd05c0c271ecf23f5eb20e1626e-1675030746/1/shoot-professional-product-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (580, 16, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/b533c954bab88752de5617cc38739176-1677105425/7/shoot-professional-product-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (581, 5, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/98582358/original/744339e61d6df295d0156227975a9f7a8ffdd964/shoot-professional-product-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (582, 20, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/7d846741127046cb8b503189fdf8c8fb-1675017553/8-/shoot-professional-product-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (583, 21, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/48344374e7ec91f2e65d934e2676f820-1584385474/Model%20in%20the%20kitchen/shoot-lifestyle-and-white-background-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (584, 10, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/66242637b71fbdc9e4c5256180534f03-1634224686/image%2012/shoot-lifestyle-and-white-background-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (585, 14, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/55bde4713e93766b622b3e42362ef2a8-1613613380/image%208--/shoot-lifestyle-and-white-background-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (586, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs2/142511095/original/c2df6f42ecc88a9b443709b2d2dbf6c769fbc463/shoot-lifestyle-and-white-background-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (587, 17, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/38bfba1a876bba607ce2e46bda87c473-1600491363/image%203-%20Hydramatrix%20Amino-Revised/shoot-lifestyle-and-white-background-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (588, 2, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/142511095/original/abdc989ec069e8cc3dce33528409642d7da8a269/shoot-lifestyle-and-white-background-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (589, 13, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/ad950efded3dc6d0d76120e501bec6e5-1626888514/image%205-%20Balm%20repair/shoot-lifestyle-and-white-background-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (590, 16, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/7902f0b0ded792cb9c4651de495f8707-1602542955/image%206/shoot-lifestyle-and-white-background-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (591, 5, N'https://fiverr-res.cloudinary.com/image/upload/t_gig_pdf_thumb_ver3,f_jpg/20211021/Amazon%20product%20photography_lx2qif.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (592, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/142511095/original/c2df6f42ecc88a9b443709b2d2dbf6c769fbc463/shoot-lifestyle-and-white-background-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (593, 20, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/0c5269e47a911e0289fdd2a08b6926e6-1585155144/School/shoot-lifestyle-and-white-background-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (594, 7, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/8e9f727ec0a5edf1aa28b14ee8ec95da-1662754177/7--/shoot-lifestyle-and-white-background-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (595, 9, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/f75ff7b245b944f6eb2a2453aeab897f-1650909195/Infographic%201-/shoot-lifestyle-and-white-background-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (596, 15, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/330cb2a86dc5b0f0c0944dde75013617-1613145482/image%201/shoot-lifestyle-and-white-background-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (597, 19, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/71b8745f6033fcb07fb118b8ba207090-1589480956/image%205/shoot-lifestyle-and-white-background-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (598, 0, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/142511095/original/abdc989ec069e8cc3dce33528409642d7da8a269/shoot-lifestyle-and-white-background-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (599, 8, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/8c547bdfe8a48bc2c4305b199a04c953-1661543285/IMG%203-Other/shoot-lifestyle-and-white-background-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (600, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/142511095/original/fbb46d8491591daad958858aa7362d2d91a31d40/shoot-lifestyle-and-white-background-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (601, 6, N'https://fiverr-res.cloudinary.com/image/upload/t_gig_pdf_thumb_ver3,f_jpg/20211021/Lifestyle%20product%20photography_xe3srm.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (602, 11, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/a2ff6e92461a9364a700217a9534be5f-1633456387/image%205-%20Revised-1-/shoot-lifestyle-and-white-background-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (603, 12, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/1bd061cc7b81ab971e4ccb4dd508d579-1632070290/image%205-%20revised/shoot-lifestyle-and-white-background-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (604, 18, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/52b0fba9a8287d67269a26340c297ba3-1591119960/970-600%20B1%20copy/shoot-lifestyle-and-white-background-photography-for-amazon.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (605, 6, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/ycclyipzmeykttklanbu/create-unique-product-videos-for-tiktok-instagram-and-ads.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (606, 0, N'https://fiverr-res.cloudinary.com/videos/so_3.1682,t_main1,q_auto,f_auto/aeekfmzeflpu1dmlcvjo/create-unique-product-videos-for-tiktok-instagram-and-ads.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (607, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/312703971/original/5eb07a642afedf5f058a971a089ca1ebb32d5487/create-unique-product-videos-for-tiktok-instagram-and-ads.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (608, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/312703971/original/5eb07a642afedf5f058a971a089ca1ebb32d5487/create-unique-product-videos-for-tiktok-instagram-and-ads.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (609, 5, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/312703971/original/ffae60b8ab1ad9c622e838d16606b78ea0794930/create-unique-product-videos-for-tiktok-instagram-and-ads.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (610, 2, N'https://fiverr-res.cloudinary.com/videos/so_3.1682,t_thumbnail3_3/aeekfmzeflpu1dmlcvjo/create-unique-product-videos-for-tiktok-instagram-and-ads.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (611, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/312703971/original/4d8c68df3187b109861b47cd03bdd71c23706083/create-unique-product-videos-for-tiktok-instagram-and-ads.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (612, 7, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/pboercvanxexkh0xhsxx/create-unique-product-videos-for-tiktok-instagram-and-ads.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (613, 12, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/f61f284001229a6dd4ff9b121fd04b1a-1645569321/fiverr-20/shoot-professional-and-unique-jewelry-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (614, 0, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/238598090/original/78ae6ac200b348dd37a836479d2305be711379e3/shoot-professional-and-unique-jewelry-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (615, 13, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/21e4efe8cffe3b982e5651f8b5d7a863-1645047552/FLUFFMEDIA--5/shoot-professional-and-unique-jewelry-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (616, 10, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/03c521edbc37a2128d24380b3a75268b-1649973913/FLUFFMEDIA--2/shoot-professional-and-unique-jewelry-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (617, 11, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/1099606be4aaaae8a16ff2045ac9ebd8-1646152778/fiverr-21/shoot-professional-and-unique-jewelry-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (618, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs2/238598090/original/f1d1c403956c528a3c967330de5a25d19e953b4c/shoot-professional-and-unique-jewelry-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (619, 15, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/4b34dd5dd910bf4a7b47e4a8fa92d4a9-1642966150/fiverr/shoot-professional-and-unique-jewelry-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (620, 8, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/e6126e4efea0af00029d7803617129ea-1656077642/fiverr-42/shoot-professional-and-unique-jewelry-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (621, 14, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/66559c181b28a21522fdf16f804be073-1644869280/fiverr-17/shoot-professional-and-unique-jewelry-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (622, 5, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/67913a62a81ec3d02b14033e4d51ae98-1681165056/fiverr-88/shoot-professional-and-unique-jewelry-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (623, 16, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/2a6ea0ffc60bbf50ecc427047b7daaa5-1643810505/fiverr-4/shoot-professional-and-unique-jewelry-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (624, 17, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/ecf5aba5f01752ee997bb85a5aaf0030-1641572151/FLUFFMEDIA-4565-2/shoot-professional-and-unique-jewelry-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (625, 7, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/bb7f7c57b706a654732180673c92c156-1661272766/FLUFFMEDIA--3/shoot-professional-and-unique-jewelry-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (626, 9, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/fa8ab39edfe7bc5d2d25371794bd7e79-1653614475/fiverr-35/shoot-professional-and-unique-jewelry-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (627, 2, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/238598090/original/78ae6ac200b348dd37a836479d2305be711379e3/shoot-professional-and-unique-jewelry-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (628, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/238598090/original/cc5846ff2a76e2be518bfad16c2b3fe58fe6319d/shoot-professional-and-unique-jewelry-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (629, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/238598090/original/f1d1c403956c528a3c967330de5a25d19e953b4c/shoot-professional-and-unique-jewelry-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (630, 6, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/18a69539f67dbd45c5532f981be68d0f-1661518459/FLUFFMEDIA--3/shoot-professional-and-unique-jewelry-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (631, 2, N'https://fiverr-res.cloudinary.com/videos/t_thumbnail3_3/mlagcmyqu9mkxhcsdmzw/make-a-creative-and-professional-stop-motion-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (632, 7, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/f46b9e8e09ef52201f75bf704adf2639-1645122173/whitenail/make-a-creative-and-professional-stop-motion-video.gif', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (633, 0, N'https://fiverr-res.cloudinary.com/videos/t_main1,q_auto,f_auto/mlagcmyqu9mkxhcsdmzw/make-a-creative-and-professional-stop-motion-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (634, 5, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/590d7e81c75f43253082e8b3a1890e28-1653001789/GIf/make-a-creative-and-professional-stop-motion-video.gif', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (635, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/242170471/original/d399557910b2f0d26ceaba710d64b1646eeb5c4b/make-a-creative-and-professional-stop-motion-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (636, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/242170471/original/d399557910b2f0d26ceaba710d64b1646eeb5c4b/make-a-creative-and-professional-stop-motion-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (637, 6, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/fz1e6axfgppvxxwj1jtc/make-a-creative-and-professional-stop-motion-video.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (638, 4, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/705a3196fc828c1015b4d613e20ba07d-1678373942/Gif/make-a-creative-and-professional-stop-motion-video.gif', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (639, 8, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/2ff12d7c78e0c5852befff72b0e82260-1643839171/Gif/make-a-creative-and-professional-stop-motion-video.gif', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (640, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs2/148903128/original/1074e7b1e317fe5f130c5f773f84c68bfaf9c074/shoot-unique-product-studio-and-lifestyle-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (641, 13, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/99be80fdefdeaeaf4d80097dc12dfef7-1680830569/FLUFFMEDIA--3/shoot-unique-product-studio-and-lifestyle-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (642, 12, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/22cb5f5ad96e0dc697c15e0dc17d8ba7-1680830842/FLUFFMEDIA--2/shoot-unique-product-studio-and-lifestyle-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (643, 15, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/32ee55f7bd0b75f017fcd3768f1d14e5-1678798598/FLUFFMEDIA--2/shoot-unique-product-studio-and-lifestyle-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (644, 5, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/ed2b1be1ac2ca9df6e8ec2f6937e79bb-1684426249/fiverr%20(1280%20%C3%97%20769%20px)-8/shoot-unique-product-studio-and-lifestyle-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (645, 18, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/374e88672a471e0c4e67dd52e4ee894f-1676653373/fiverr-76/shoot-unique-product-studio-and-lifestyle-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (646, 7, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/0dd13b079cfbb7812e69bb746808d0eb-1684171486/FLUFFMEDIA--2/shoot-unique-product-studio-and-lifestyle-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (647, 14, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/ba154856b62dc7a1867f254c418d5c5f-1680531859/fiverr-84/shoot-unique-product-studio-and-lifestyle-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (648, 11, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/c92902028fa0f609d9d64369694a6cf3-1681945047/fiverr-90/shoot-unique-product-studio-and-lifestyle-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (649, 20, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/44120e8fadd86577d143c9725180b1cc-1675809790/FLUFFMEDIA--2/shoot-unique-product-studio-and-lifestyle-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (650, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/148903128/original/84427a37a9da0231007ef41a5b72daf6da3a77fc/shoot-unique-product-studio-and-lifestyle-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (651, 19, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/8219952e5f39d42ac5e85b1b37b87299-1676603245/fiverr-73/shoot-unique-product-studio-and-lifestyle-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (652, 2, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/148903128/original/b5c11c71403941c797ab16c2aeba88fccbf4e9b7/shoot-unique-product-studio-and-lifestyle-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (653, 21, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/6e9fc8b6bb8cf71e24dd4e996169664f-1675203581/FLUFFMEDIA--4/shoot-unique-product-studio-and-lifestyle-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (654, 10, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/5e68957a9437fb9efe8ae5dc89eb2fad-1682618966/fiverr-91/shoot-unique-product-studio-and-lifestyle-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (655, 6, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/5f55422a1f250157923f6e1abb81557d-1684788800/FLUFFMEDIA-0023/shoot-unique-product-studio-and-lifestyle-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (656, 0, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/148903128/original/b5c11c71403941c797ab16c2aeba88fccbf4e9b7/shoot-unique-product-studio-and-lifestyle-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (657, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/148903128/original/1074e7b1e317fe5f130c5f773f84c68bfaf9c074/shoot-unique-product-studio-and-lifestyle-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (658, 16, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/a8de959294297ab83e70572dce379470-1678403263/FLUFFMEDIA--8/shoot-unique-product-studio-and-lifestyle-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (659, 17, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/aa33e5c474be20294ee0d07ae6d5a1df-1677532880/FLUFFMEDIA--4/shoot-unique-product-studio-and-lifestyle-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (660, 8, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/feed51facb2ca0670028692fe436f56b-1683930739/fiverr-95/shoot-unique-product-studio-and-lifestyle-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (661, 9, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/9a414d04e9af97434fa16666140de83b-1682956541/ADA19BAF-F6CD-4A4A-8664-ADF6205EFB63/shoot-unique-product-studio-and-lifestyle-photography.jpeg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (662, 8, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/f70805687b2a5a17ecd4183ae02fcce5-1685139599/FLUFFMEDIA--4/shoot-studio-and-lifestyle-product-photography-for-amazon-etsy-and-websites.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (663, 0, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/317654256/original/4201fe683c4e9a36414ae9b104d0e2b7d7145900/shoot-studio-and-lifestyle-product-photography-for-amazon-etsy-and-websites.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (664, 10, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/a4e8da5541e6bae7a1101ff5bd0fae20-1684789677/fiverr%20(1280%20%C3%97%20769%20px)-11/shoot-studio-and-lifestyle-product-photography-for-amazon-etsy-and-websites.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (665, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/317654256/original/b41b43a0d429cb8666fa2631478120b44de3ba60/shoot-studio-and-lifestyle-product-photography-for-amazon-etsy-and-websites.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (666, 5, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/ccacfd8a3c0d083383a62ad8733f1e8a-1686839343/fiverr-109/shoot-studio-and-lifestyle-product-photography-for-amazon-etsy-and-websites.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (667, 6, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/b3fb54e735e2d632c4796c6d38a149a1-1685726796/fiverr-107/shoot-studio-and-lifestyle-product-photography-for-amazon-etsy-and-websites.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (668, 2, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/317654256/original/4201fe683c4e9a36414ae9b104d0e2b7d7145900/shoot-studio-and-lifestyle-product-photography-for-amazon-etsy-and-websites.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (669, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/317654256/original/f2931b1aa2300fda11903fd7036b7e479a3a7ba9/shoot-studio-and-lifestyle-product-photography-for-amazon-etsy-and-websites.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (670, 9, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/945cac762c3aa066548b895da1943662-1684969779/FLUFFMEDIA--2/shoot-studio-and-lifestyle-product-photography-for-amazon-etsy-and-websites.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (671, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs2/317654256/original/b41b43a0d429cb8666fa2631478120b44de3ba60/shoot-studio-and-lifestyle-product-photography-for-amazon-etsy-and-websites.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (672, 7, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/64197206366847d782cd5ab495bfc314-1685572637/fiverr-105/shoot-studio-and-lifestyle-product-photography-for-amazon-etsy-and-websites.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (673, 13, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/a896be01d86a46382f3ddbf6b8453202-1683584571/8/produce-professional-white-background-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (674, 0, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/246126575/original/44d0d1e3dcf0191604f264a47f009f0bf950b9e3/produce-professional-white-background-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (675, 6, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/b510187ea5ae4f45f07323b055df06dd-1686596449/slateandsalt14876/produce-professional-white-background-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (676, 14, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/0094ef44ec677214fb797cf874384142-1683929331/12-3/produce-professional-white-background-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (677, 17, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/9fda6b67f3828d495a555b85dd13dad1-1682448428/8-2/produce-professional-white-background-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (678, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs2/246126575/original/409eeee4a8c25bfc91cbec3c84a9fa55fe3ec72a/produce-professional-white-background-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (679, 15, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/e2907c709278711e4e31588f346f45f1-1683150596/jbee300012975/produce-professional-white-background-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (680, 8, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/d95f767b6ee9929c509ee31d12ddd0e2-1685831800/justin223514630-black/produce-professional-white-background-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (681, 20, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/c2f1fb4758f0b07dbd61191542c82466-1680646437/montew1810997/produce-professional-white-background-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (682, 7, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/71f8c0ea64fc9c95c799681063d688dc-1684965420/7-1/produce-professional-white-background-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (683, 11, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/c401930f9e577ec4a14908c2549693cd-1684372695/Adanna/produce-professional-white-background-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (684, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/246126575/original/409eeee4a8c25bfc91cbec3c84a9fa55fe3ec72a/produce-professional-white-background-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (685, 2, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/246126575/original/44d0d1e3dcf0191604f264a47f009f0bf950b9e3/produce-professional-white-background-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (686, 10, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/1be9683e02300e1873be8c4a6b19f6c0-1685053781/mattfloydrph14318%20All/produce-professional-white-background-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (687, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/246126575/original/1480b0839c994c10af4befdc8e3804342f611faf/produce-professional-white-background-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (688, 9, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/672f4aef2771477b11e7f11f115d050b-1685221933/2-1/produce-professional-white-background-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (689, 12, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/58a931cbf43612da6a10c66edacada41-1684276913/2/produce-professional-white-background-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (690, 18, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/dd8abec1283b57abd16089f96028a48c-1682281635/shopdeseobeauty12160%20copy/produce-professional-white-background-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (691, 19, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/d75168deb17adf25b095859cb7c900e3-1681332592/MtProducts12147/produce-professional-white-background-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (692, 21, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/e6edeb4315564f10b111ab74c73f4d03-1679868777/1-1/produce-professional-white-background-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (693, 5, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/f4373f04070ced71b00eb22256f09c89-1686691546/1/produce-professional-white-background-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (694, 16, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/4f30a176103aa5afe7dc6e4d87903e56-1683076388/1/produce-professional-white-background-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (695, 8, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/f06a9fdd0c0aa8bcd432b0440b9861d3-1680005102/classic%20men%20phtoography/design-a-pixieset-website-with-client-gallery-print-store-and-online-booking.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (696, 11, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/c20d3a23e15b74576b04db49c746fe8d-1662445654/jydphotography/design-a-pixieset-website-with-client-gallery-print-store-and-online-booking.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (697, 12, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/2637b4166f320482ef961ab48887fbae-1654191046/mindblowing%20%20photography/design-a-pixieset-website-with-client-gallery-print-store-and-online-booking.PNG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (698, 10, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/86bc35cbbe1d5ca7a77b07734aec340c-1672631175/pixieset/design-a-pixieset-website-with-client-gallery-print-store-and-online-booking.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (699, 7, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/c24767f21b21263bdf6cedb7b4749e04-1683175758/9e54e090-5822-41cc-9299-1deb208e3144/design-a-pixieset-website-with-client-gallery-print-store-and-online-booking.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (700, 13, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/e73de7f932ba9e596118000e78e52ab1-1633960370/pxieset/design-a-pixieset-website-with-client-gallery-print-store-and-online-booking.PNG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (701, 5, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/343386bc9ef252fda086b33fcd1c1db8-1685536368/c29ba5ee-170c-4862-8855-9583546934fd/design-a-pixieset-website-with-client-gallery-print-store-and-online-booking.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (702, 6, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/9199a86768be2a8fd7e115d25f3c2c02-1683999438/7465620d-4b5c-414f-9ee3-7a1655223a48/design-a-pixieset-website-with-client-gallery-print-store-and-online-booking.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (703, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/197081177/original/3da60fc2f91a48e596384e1da6cb3ebf48a977b1/design-a-pixieset-website-with-client-gallery-print-store-and-online-booking.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (704, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/197081177/original/b02075ffcf28c3d65fe99ccdfa2d1d67913515cd/design-a-pixieset-website-with-client-gallery-print-store-and-online-booking.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (705, 9, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/87a86240ec024371bea6143849c599aa-1680135775/eye/design-a-pixieset-website-with-client-gallery-print-store-and-online-booking.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (706, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs2/197081177/original/b02075ffcf28c3d65fe99ccdfa2d1d67913515cd/design-a-pixieset-website-with-client-gallery-print-store-and-online-booking.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (707, 0, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/197081177/original/b415375d6a53c17492af28e842f4849fc3e5d3ab/design-a-pixieset-website-with-client-gallery-print-store-and-online-booking.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (708, 2, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/197081177/original/b415375d6a53c17492af28e842f4849fc3e5d3ab/design-a-pixieset-website-with-client-gallery-print-store-and-online-booking.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (709, 7, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/8b3a2cb20ebe485b2d1d2471a85810d2-1683817572/6724df17-a2d1-4e0d-8191-de8b8dc0c3c1/design-a-photo-booth-rental-website-with-online-booking.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (710, 14, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/3f63439b5f0002328b995bf051e30257-1665836138/mymaster%20print%20delivery/design-a-photo-booth-rental-website-with-online-booking.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (711, 13, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/bb46880dad8c0128b1367cca89722332-1667156595/collective/design-a-photo-booth-rental-website-with-online-booking.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (712, 16, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/50ed8706dc254f71a6317b7ebc698e1c-1656243365/jaya/design-a-photo-booth-rental-website-with-online-booking.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (713, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/237094983/original/16c0cf84aa556c24c57e386cf1848e1326b69098/design-a-photo-booth-rental-website-with-online-booking.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (714, 10, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/7cc6bd6238f058932d5cf8fcb2c70dde-1673549688/lor/design-a-photo-booth-rental-website-with-online-booking.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (715, 17, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/47eeb67deb503ca09854bf25b6382909-1655404440/ha%20website%20delivery/design-a-photo-booth-rental-website-with-online-booking.PNG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (716, 2, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/237094983/original/7ef35066c54c407cf77b874df6b376d297cb9ec7/design-a-photo-booth-rental-website-with-online-booking.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (717, 20, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/c62899ffae81da6716d6b08a06602f57-1650806843/marox/design-a-photo-booth-rental-website-with-online-booking.PNG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (718, 9, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/f0b03114aa0aa878e5765ae4bb18def7-1674247311/p/design-a-photo-booth-rental-website-with-online-booking.PNG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (719, 21, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/d3b9d4be83db706661dd8811f627597c-1650167327/flutter/design-a-photo-booth-rental-website-with-online-booking.PNG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (720, 19, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/0e2c34c6b149bf8d6faf8091996e4403-1653264627/sheilas/design-a-photo-booth-rental-website-with-online-booking.PNG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (721, 0, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/237094983/original/7ef35066c54c407cf77b874df6b376d297cb9ec7/design-a-photo-booth-rental-website-with-online-booking.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (722, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/237094983/original/49fb9bf6c4111ea280701077f1a449ebac27d428/design-a-photo-booth-rental-website-with-online-booking.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (723, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs2/237094983/original/49fb9bf6c4111ea280701077f1a449ebac27d428/design-a-photo-booth-rental-website-with-online-booking.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (724, 5, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/063299ef628c46ac4ca12b5711c4ff84-1685291527/d7b1f1ad-0cef-4ef2-b50f-94f7ea41031c/design-a-photo-booth-rental-website-with-online-booking.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (725, 8, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/912e0740d26311b1307a0b2f58d99dd9-1677259987/new/design-a-photo-booth-rental-website-with-online-booking.PNG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (726, 15, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/7aaf178d4b5d9a82f016a8b6dfda8a26-1662563233/3cs%20party%20website/design-a-photo-booth-rental-website-with-online-booking.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (727, 18, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/5220bebeefcbca0445f23195171f9815-1654458439/good%20times/design-a-photo-booth-rental-website-with-online-booking.PNG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (728, 6, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/21b52724394dc1119dcb3c82116fedb5-1684414739/ef62a5e9-5489-492a-8986-b6a7866c50c2/design-a-photo-booth-rental-website-with-online-booking.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (729, 11, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/4654353a3ccc2b24fec7eed62e1d558c-1672426042/picsuit%20photo%20booth/design-a-photo-booth-rental-website-with-online-booking.PNG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (730, 12, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/c06344135334d0064f58fb0b637e73d9-1667743344/xre/design-a-photo-booth-rental-website-with-online-booking.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (731, 0, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/248525840/original/a7e0f1ebde793b2db7dfb7a07e97369f9fcf79fd/maintenance-and-update-wordpress-and-create-a-daily-cloud-backup.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (732, 2, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/248525840/original/a7e0f1ebde793b2db7dfb7a07e97369f9fcf79fd/maintenance-and-update-wordpress-and-create-a-daily-cloud-backup.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (733, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs2/248525840/original/ea3a0add8e3bcf94535ac3f6a47250bb52a30b1d/maintenance-and-update-wordpress-and-create-a-daily-cloud-backup.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (734, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/248525840/original/ea3a0add8e3bcf94535ac3f6a47250bb52a30b1d/maintenance-and-update-wordpress-and-create-a-daily-cloud-backup.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (735, 3, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/7bcdefa3e45a169b269efacd57e43f67-1605977825/Screenshot_2020-11-21%20Glow3Volution/create-an-ecommerce-or-dropshipping-website-by-shopify.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (736, 0, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/181574968/original/0b2fe041657d1cb42a86529261dac5f55e4d0d07/create-an-ecommerce-or-dropshipping-website-by-shopify.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (737, 2, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/181574968/original/0b2fe041657d1cb42a86529261dac5f55e4d0d07/create-an-ecommerce-or-dropshipping-website-by-shopify.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (738, 1, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_main1,q_auto,f_auto,q_auto,f_auto/attachments/delivery/asset/7bcdefa3e45a169b269efacd57e43f67-1605977825/Screenshot_2020-11-21%20Glow3Volution/create-an-ecommerce-or-dropshipping-website-by-shopify.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (739, 5, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/9cce2120260c7b2db47d99096be36a4c-1680638470/eyel/make-a-custom-wordpress-website-design-on-your-requirement.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (740, 7, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/f20f754168ef370800d1db72c17c6cfb-1675772206/Screenshot_2023-02-07-15-14-43-67_5858a19279ddd3b9634277a5bf37e3bf/make-a-custom-wordpress-website-design-on-your-requirement.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (741, 10, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/1d1c5c727eff7372269afd9fe1d4efda-1666000039/maxikits%20delivery/make-a-custom-wordpress-website-design-on-your-requirement.PNG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (742, 1, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_main1,q_auto,f_auto,q_auto,f_auto/attachments/delivery/asset/0bd6f7729996a2d0dc5fabcdd83c7a7d-1685367769/fitboost/make-a-custom-wordpress-website-design-on-your-requirement.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (743, 0, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/127430156/original/82b2ae4651a4c3531510dd1b41ea478c9caa73a9/make-a-custom-wordpress-website-design-on-your-requirement.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (744, 8, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/31fbdf9a5d580c47fc909dba73143dc4-1674929623/flag/make-a-custom-wordpress-website-design-on-your-requirement.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (745, 12, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/20f09d51717db960dd6df947efa28b48-1589479832/screely-1589457175583/make-a-custom-wordpress-website-design-on-your-requirement.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (746, 2, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/127430156/original/82b2ae4651a4c3531510dd1b41ea478c9caa73a9/make-a-custom-wordpress-website-design-on-your-requirement.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (747, 6, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/c4d5395d9e99a1a93e1e200d20b0b07a-1677098752/pdses/make-a-custom-wordpress-website-design-on-your-requirement.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (748, 4, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/d8491868a48704ab0c9c3f229dd63396-1683927502/7d1ab859-e870-4061-9532-f802566d6f55/make-a-custom-wordpress-website-design-on-your-requirement.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (749, 3, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/0bd6f7729996a2d0dc5fabcdd83c7a7d-1685367769/fitboost/make-a-custom-wordpress-website-design-on-your-requirement.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (750, 9, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/2b71dcf1f6f75ce518911c7f9a7ebf42-1673239979/umbrella%20security%20delivery/make-a-custom-wordpress-website-design-on-your-requirement.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (751, 11, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/d5efbd606cf50d3a9884a5ad86072026-1590048799/Screenshot_2020-05-20%20Web%20Checkout%20-%20Viva%20Payments/make-a-custom-wordpress-website-design-on-your-requirement.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (752, 5, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/502a62a8655cab0c7db99e82100f78d8-1685034693/resist/build-a-fully-functional-ecommerce-website-by-woocommerce.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (753, 14, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/00e657f0d91f6421357d6a2371b8114a-1669910348/schoe/build-a-fully-functional-ecommerce-website-by-woocommerce.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (754, 15, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/e8edce9e2561cee230fe361ea20ef9de-1667101707/camthecreative/build-a-fully-functional-ecommerce-website-by-woocommerce.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (755, 0, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/152229085/original/86caa407bb685cfeed859f68d8dd5148c2a2089b/build-a-fully-functional-ecommerce-website-by-woocommerce.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (756, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/152229085/original/682745fa49d1b7a905f2f76be73a53bce87fb04c/build-a-fully-functional-ecommerce-website-by-woocommerce.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (757, 17, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/64349991fed64dcf5e6738a97e656cf9-1665631585/pricelist%20updated/build-a-fully-functional-ecommerce-website-by-woocommerce.PNG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (758, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs2/152229085/original/0a66a0e8e5bd9cb197528545119cc5381a7c5de6/build-a-fully-functional-ecommerce-website-by-woocommerce.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (759, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/152229085/original/0a66a0e8e5bd9cb197528545119cc5381a7c5de6/build-a-fully-functional-ecommerce-website-by-woocommerce.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (760, 20, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/1e9059f9799cbb706452aa18072a628f-1660936321/art-bee/build-a-fully-functional-ecommerce-website-by-woocommerce.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (761, 2, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/152229085/original/86caa407bb685cfeed859f68d8dd5148c2a2089b/build-a-fully-functional-ecommerce-website-by-woocommerce.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (762, 10, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/1183f2839524fd0e6766bbb016075226-1671335231/micle/build-a-fully-functional-ecommerce-website-by-woocommerce.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (763, 12, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/a1e60ce9bf329d6740f8b37797bb074c-1671335425/4/build-a-fully-functional-ecommerce-website-by-woocommerce.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (764, 13, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/9224a9c5315c034c6edcea10ef7c79a9-1671335568/5/build-a-fully-functional-ecommerce-website-by-woocommerce.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (765, 8, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/a65c3ea00d0cb02ad42d90e43f4c94da-1679941499/Neptune%20Paradise%20delivery%20image/build-a-fully-functional-ecommerce-website-by-woocommerce.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (766, 21, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/4a9da24f2d2c14682055da18888025d5-1659024130/flag%20football/build-a-fully-functional-ecommerce-website-by-woocommerce.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (767, 6, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/e4b400d31f1d285cea0bc00ceb105f2b-1684639803/9ab1b5ad-8c7e-4355-8bd6-f48f1ff55f7c/build-a-fully-functional-ecommerce-website-by-woocommerce.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (768, 18, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/9b92514d97269fd653256089440492ef-1665628288/konan/build-a-fully-functional-ecommerce-website-by-woocommerce.PNG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (769, 19, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/57ff80b41aececc6567799c6cab68d6a-1663360837/worthy/build-a-fully-functional-ecommerce-website-by-woocommerce.PNG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (770, 7, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/bad6367ba4d4c08f33d21d2869696427-1680184249/Neptune%20Paradise%20delivery%20image/build-a-fully-functional-ecommerce-website-by-woocommerce.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (771, 9, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/12d16645ef9476b4727e073eb04ea8c5-1671335126/dist/build-a-fully-functional-ecommerce-website-by-woocommerce.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (772, 16, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/5c22f290f841bd211854f99287c1f8e6-1667017277/pdses/build-a-fully-functional-ecommerce-website-by-woocommerce.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (773, 11, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/6e4836f0fbee59732ec680f5cc9bfd32-1671335320/mountain/build-a-fully-functional-ecommerce-website-by-woocommerce.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (774, 19, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/e43f1e32bd60b792dff272b809c42e6f-1674969919/vai/make-a-beautiful-photography-website.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (775, 20, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/17ce222d8d674950051a306dce2b3669-1674660744/between%20the%20baricade/make-a-beautiful-photography-website.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (776, 7, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/4a510cb8f2d1f9fb2e52a532b67fb227-1681409857/avarlon/make-a-beautiful-photography-website.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (777, 14, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/4a9aae0b8f6a33542f6853fee34e3e29-1677472368/the%20occ/make-a-beautiful-photography-website.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (778, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/113531449/original/5d63fdf12e87fc10f653ae81c21a53955f674c55/make-a-beautiful-photography-website.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (779, 11, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/489a792470c74390be25b8abf8a63ac9-1679017613/aisle/make-a-beautiful-photography-website.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (780, 13, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/3401b6ede612940a602d008b06eb44de-1678355488/drone%20studio/make-a-beautiful-photography-website.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (781, 0, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/113531449/original/7ab68fabb54f8d09523a0368552fa386978ae062/make-a-beautiful-photography-website.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (782, 2, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/113531449/original/7ab68fabb54f8d09523a0368552fa386978ae062/make-a-beautiful-photography-website.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (783, 10, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/9959e3acef3e594c298ee26383c743ef-1680072434/wes%20batista/make-a-beautiful-photography-website.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (784, 8, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/ba077b3147b2499fdf9f6e61325d52e7-1681277089/eyelevel/make-a-beautiful-photography-website.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (785, 9, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/6b99d2fe8c58282a50995d4778ea96d9-1680202415/ace%20delivery/make-a-beautiful-photography-website.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (786, 12, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/e446c76f8b6ccb83460de86c16c45a78-1678810357/olbia/make-a-beautiful-photography-website.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (787, 5, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/7232f3eb888471221106598b87f0cf1d-1684603929/IMG_20230520_233002/make-a-beautiful-photography-website.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (788, 17, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/2bb51e05932ad908680fa35426d09d7f-1675481571/Poet/make-a-beautiful-photography-website.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (789, 15, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/d2c6713cc0afa431ba8a0158f9b1757c-1677040222/distanse/make-a-beautiful-photography-website.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (790, 6, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/5f7382d1d90a336f6f7b643e9148e1a2-1684421119/7442276b-4ca0-4024-98f9-aca695a322d7/make-a-beautiful-photography-website.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (791, 21, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/9d04a107fd30492145ae32fd0d366914-1672926099/star/make-a-beautiful-photography-website.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (792, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs2/113531449/original/5d63fdf12e87fc10f653ae81c21a53955f674c55/make-a-beautiful-photography-website.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (793, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/113531449/original/78b03e3cd7b01dfc762839af99dddf8aed349963/make-a-beautiful-photography-website.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (794, 16, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/817bbf5a9e2a7c4f6b8bf86cb80c87e4-1675562030/ayollc/make-a-beautiful-photography-website.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (795, 18, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/880cbbdb4e72874834949e5be7dae3df-1675107909/prd%20photo/make-a-beautiful-photography-website.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (796, 12, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/53556cbd48bb3197bd26990e0566ebba-1604557164/New%20main/do-professional-amazon-product-photography-in-china.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (797, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/137661769/original/ef057386ca40ac0b4a0f275114f65b8970fdd730/do-professional-amazon-product-photography-in-china.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (798, 10, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/061ecc4e9b3a9bb39d946e330da01fb1-1624288469/04.Graphics/do-professional-amazon-product-photography-in-china.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (799, 2, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/137661769/original/39628a4d680ea0d56ec47a47dddc182d70570da1/do-professional-amazon-product-photography-in-china.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (800, 9, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/13f5f8ce0811752d9c89f3471d885690-1654692831/08.Graphics%20Correctoin/do-professional-amazon-product-photography-in-china.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (801, 5, N'https://fiverr-res.cloudinary.com/image/upload/t_gig_pdf_thumb_ver3,f_jpg/20191008/Infographic_01_pvlts0.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (802, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs2/137661769/original/406feee4c9d21fe7294f27a19c361d426d4a8a4f/do-professional-amazon-product-photography-in-china.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (803, 8, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/9f6add37aa653c4462766384251fe0aa-1663468788/05.Graphics/do-professional-amazon-product-photography-in-china.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (804, 6, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/3b433e3fbac36e3509c0287d70975b88-1682027954/05.Graphics/do-professional-amazon-product-photography-in-china.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (805, 7, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/bgtrns1m3fol9hwdi6xk/do-professional-amazon-product-photography-in-china.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (806, 11, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/bc06d0d49a459fa4424b389cff9823a5-1608096526/04.Graphics_Tower/do-professional-amazon-product-photography-in-china.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (807, 0, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/137661769/original/39628a4d680ea0d56ec47a47dddc182d70570da1/do-professional-amazon-product-photography-in-china.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (808, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/137661769/original/406feee4c9d21fe7294f27a19c361d426d4a8a4f/do-professional-amazon-product-photography-in-china.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (809, 8, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/6954d630b0499cbd1eda3b4612fb0577-1630470808/File%205%20Example/do-professional-photoshop-editing.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (810, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/114810429/original/0134487ae1f4a6f820280073d55513a06d7788d1/do-professional-photoshop-editing.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (811, 7, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/dc396593a27389d7399a7c3763879be6-1630549016/File%201%20Example/do-professional-photoshop-editing.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (812, 5, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/114810429/original/226c08228f222f4a0105d256f9c065a791d09532/do-professional-photoshop-editing.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (813, 6, N'https://fiverr-res.cloudinary.com/images/t_gig_pdf_thumb_ver3,q_auto,f_auto/attachments/delivery/asset/c3e718fad8b455f794c8536b7a5da9c8-1635959032/3800%20Pyramid%20Time%20Systems%20Sell%20Sheet_New/do-professional-photoshop-editing.pdf', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (814, 9, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/308373829f92a1eeae16fc06c01224b9-1568362263/Combined/do-professional-photoshop-editing.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (815, 0, N'https://fiverr-res.cloudinary.com/videos/so_0,t_main1,q_auto,f_auto/e995t6umdmxjfvivqo3x/do-professional-photoshop-editing.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (816, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/114810429/original/0134487ae1f4a6f820280073d55513a06d7788d1/do-professional-photoshop-editing.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (817, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/114810429/original/434e99d895cc844e475b0ef32a2edb0ee1e60eb0/do-professional-photoshop-editing.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (818, 2, N'https://fiverr-res.cloudinary.com/videos/so_0,t_thumbnail3_3/e995t6umdmxjfvivqo3x/do-professional-photoshop-editing.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (819, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs2/114536083/original/977b105c2ff8d30e2a9b5976793979e54092f83e/retouch-your-10-photos-for-amazon-or-ebay.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (820, 13, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/5a1df2a21bca4f4d61556ba4f6a2a4c2-1645674005/chlorine%20dioxide%20citric%20acid/retouch-your-10-photos-for-amazon-or-ebay.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (821, 6, N'https://fiverr-res.cloudinary.com/image/upload/t_gig_pdf_thumb_ver3,f_jpg/20180719/Amazon_Photo_Editing_Service_PDF_02_s7oeix.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (822, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/114536083/original/0ccac7d4a124f9b8e062938b26abc6c2f10f2b4d/retouch-your-10-photos-for-amazon-or-ebay.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (823, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/114536083/original/977b105c2ff8d30e2a9b5976793979e54092f83e/retouch-your-10-photos-for-amazon-or-ebay.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (824, 9, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/6024a6f6b3042900ca396c9a5af0d55a-1663046668/02/retouch-your-10-photos-for-amazon-or-ebay.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (825, 17, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/4dd416ff4619fe6db1496ac12f51062e-1632854117/Collage/retouch-your-10-photos-for-amazon-or-ebay.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (826, 19, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/d1ec715dcf69a0c6871e97c1d079113c-1630179060/info-1/retouch-your-10-photos-for-amazon-or-ebay.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (827, 7, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/ad2ff1cc668ec4a1963eca495f03ee04-1666150566/02/retouch-your-10-photos-for-amazon-or-ebay.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (828, 16, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/f5829a6a7da1e1d3985e6cc0cb8c8cfa-1638542503/Image_01/retouch-your-10-photos-for-amazon-or-ebay.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (829, 18, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/633940ac3616a97b192bc0e82010fce7-1632255390/Image_02/retouch-your-10-photos-for-amazon-or-ebay.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (830, 15, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/1ff5c04a0370b155c3e89c6d53300b40-1644946434/01.Main%20image%20New/retouch-your-10-photos-for-amazon-or-ebay.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (831, 0, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/114536083/original/71762628e44a5780948ce706f6737b404fc22303/retouch-your-10-photos-for-amazon-or-ebay.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (832, 10, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/38cd43babf278c880c095b286f684359-1656649247/NEWEST%20MODEL%202022/retouch-your-10-photos-for-amazon-or-ebay.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (833, 5, N'https://fiverr-res.cloudinary.com/image/upload/t_gig_pdf_thumb_ver3,f_jpg/20180719/Amazon_Photo_Editing_Service_PDF_01_uapadt.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (834, 14, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/870182780dbf2327e6de68d3d9fb611b-1645122634/Infography_01/retouch-your-10-photos-for-amazon-or-ebay.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (835, 21, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/9de026b859a3176f02134cc2327d43c2-1628863464/03.Infography/retouch-your-10-photos-for-amazon-or-ebay.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (836, 2, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/114536083/original/71762628e44a5780948ce706f6737b404fc22303/retouch-your-10-photos-for-amazon-or-ebay.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (837, 8, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/e57e9dd0672d392371b78db9669e398f-1663569430/Image1/retouch-your-10-photos-for-amazon-or-ebay.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (838, 11, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/b43143ca41845462bd242d8c2d128fb1-1646801774/Jute/retouch-your-10-photos-for-amazon-or-ebay.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (839, 20, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/5a7bdb4d1ea45e605c48b66ef177bbc0-1630613501/01/retouch-your-10-photos-for-amazon-or-ebay.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (840, 12, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/597ece7daca6bca3cf6e797c54597c32-1646067745/Hooks%20black%20/retouch-your-10-photos-for-amazon-or-ebay.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (841, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/176593738/original/5399bbb18666dc88d56e6916dcdcb9da17870a70/lifestyle-and-product-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (842, 14, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/3b8784cdd7150e61b9d4b90b19531d7e-1664208364/IMG_9285-Edit-2/lifestyle-and-product-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (843, 13, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/4b22398cccc3656438acfb8c7a4e4759-1664975883/myobi-5928-Edit2/lifestyle-and-product-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (844, 0, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/176593738/original/b9906625edfd59fd8575c000a0c3eb2891d9ce6e/lifestyle-and-product-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (845, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs2/176593738/original/92eafcb1d5a473e25d37a89717dfbdf269cda752/lifestyle-and-product-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (846, 9, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/baf5a3a578a81394470026bf93e98a48-1672475024/lashgalore28/lifestyle-and-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (847, 8, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/3b16e71beb6efc39a2e3db8a4b846629-1674572253/mindgreens-11650-Edit/lifestyle-and-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (848, 18, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/2968695d729c1ae1b5c69b0341bd26cc-1645536672/IMG_3992-Edit/lifestyle-and-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (849, 7, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/94dc4b1d7336f1632600985a291c4e24-1678700112/smartbud-13135-Edit/lifestyle-and-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (850, 10, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/1604668455584d4dd32d21652058ec97-1668171816/IMG_1745-Edit/lifestyle-and-product-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (851, 16, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/b97a6b0fb66892f15b81c105c5e422b5-1663345172/IMG_9069/lifestyle-and-product-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (852, 6, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/1f313c30163aa74903f0327aaf7367db-1681729420/venom1/lifestyle-and-product-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (853, 19, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/b8b03053a16fd146eba31bc9a2dbbda4-1638295903/IMG_0138-Edit/lifestyle-and-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (854, 20, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/e3f4bf366dd588f0e4a51c194fdfcebc-1636993202/christmas%20candle-2395/lifestyle-and-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (855, 11, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/8f687c148d191b0525df053e2af07d9d-1667475196/skincare%20wand-7489-Edit/lifestyle-and-product-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (856, 15, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/06bdd0c0ca7261b925b87f14d0dc2965-1663597741/foiled-4/lifestyle-and-product-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (857, 17, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/794e512382e878e3f81bc21f15225d50-1661186000/blackheadremover5/lifestyle-and-product-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (858, 2, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/176593738/original/b9906625edfd59fd8575c000a0c3eb2891d9ce6e/lifestyle-and-product-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (859, 12, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/9d6ee4abff250c98ee0519e9be20bc0a-1665590282/IMG_0481-Edit/lifestyle-and-product-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (860, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/176593738/original/92eafcb1d5a473e25d37a89717dfbdf269cda752/lifestyle-and-product-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (861, 21, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/771d38248be3c088710771e2a7655f77-1634736717/signet-2217-Edit/lifestyle-and-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (862, 5, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/7b36eed11171661ed7bc0190270933bf-1685611812/sknzero1_2/lifestyle-and-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (863, 7, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/gno8pjnse9ltl0ichymf/do-baby-product-video-for-amazon-and-other.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (864, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/185820949/original/02face2b7ca4ba5af1e7b35a2665c88452053a03/do-baby-product-video-for-amazon-and-other.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (865, 10, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/snmroz5av7xjuxjnmtuz/do-baby-product-video-for-amazon-and-other.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (866, 11, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/azn6gdsoavi4nagpvuie/do-baby-product-video-for-amazon-and-other.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (867, 8, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/uiww8yeeb2gpgcj4vogk/do-baby-product-video-for-amazon-and-other.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (868, 6, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/rkcdpnijrtbh9dsi1wti/do-baby-product-video-for-amazon-and-other.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (869, 9, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/rao94r62duqo85lahlgr/do-baby-product-video-for-amazon-and-other.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (870, 0, N'https://fiverr-res.cloudinary.com/videos/so_12.8212222,t_main1,q_auto,f_auto/eco2ehntmlzmgy1pa1jc/do-baby-product-video-for-amazon-and-other.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (871, 5, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/7e99f8f8ca5559ead2425e544ba326ba-1636925719/Photo-13/do-baby-product-video-for-amazon-and-other.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (872, 2, N'https://fiverr-res.cloudinary.com/videos/so_12.8212222,t_thumbnail3_3/eco2ehntmlzmgy1pa1jc/do-baby-product-video-for-amazon-and-other.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (873, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/185820949/original/02face2b7ca4ba5af1e7b35a2665c88452053a03/do-baby-product-video-for-amazon-and-other.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (874, 4, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/je4akrmdofoyx3adldoq/do-baby-product-video-for-amazon-and-other.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (875, 5, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/f24889189887e6bcf1ed40e90e7127e8-1682963122/Photo-3/do-baby-product-photography-with-baby-model-d03f.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (876, 14, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/89213bb22f5b496ff8c2ac68a8ff32a4-1624092809/Photo-42/do-baby-product-photography-with-baby-model-d03f.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (877, 0, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/188029915/original/cc538152a37696ef9a68fafd1c99813a615131cc/do-baby-product-photography-with-baby-model-d03f.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (878, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/188029915/original/ccde79fa01fb64f51632ee14e2e8245b16eba99c/do-baby-product-photography-with-baby-model-d03f.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (879, 9, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/005910f5d50f347b3c629b8d08092a1e-1666884116/Photo-22/do-baby-product-photography-with-baby-model-d03f.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (880, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs2/188029915/original/ccde79fa01fb64f51632ee14e2e8245b16eba99c/do-baby-product-photography-with-baby-model-d03f.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (881, 17, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/ac4679b7e111222157be762722563962-1610992586/Photo-3/do-baby-product-photography-with-baby-model-d03f.JPG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (882, 13, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/1411c826accc308a7a05a218194e2573-1637077658/Photo-24/do-baby-product-photography-with-baby-model-d03f.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (883, 16, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/a170b8f837dcd96646c65647037e208d-1619335771/Photo-17/do-baby-product-photography-with-baby-model-d03f.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (884, 20, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/2c80ff8c990ffc6b68e2b2fbc7927813-1610298491/Photo-55/do-baby-product-photography-with-baby-model-d03f.JPG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (885, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/188029915/original/f62d9853ffa51a891d245b067df88a0eb630e520/do-baby-product-photography-with-baby-model-d03f.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (886, 6, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/e0273845f0bf5246165e6e3d7b35b436-1682796522/Photo-7/do-baby-product-photography-with-baby-model-d03f.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (887, 11, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/8b4f783b2ba2599c20aa9ddc06d31201-1654721027/Photo-17/do-baby-product-photography-with-baby-model-d03f.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (888, 12, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/393c7ab2624fe1df3c5c89667671ba7c-1654787673/jevgen-63/do-baby-product-photography-with-baby-model-d03f.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (889, 2, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/188029915/original/cc538152a37696ef9a68fafd1c99813a615131cc/do-baby-product-photography-with-baby-model-d03f.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (890, 8, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/0dc75ecdf38bc384873d6a581fd95773-1669319926/Fiverr1/do-baby-product-photography-with-baby-model-d03f.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (891, 19, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/35860f2989128307438790ceff7be1af-1610298280/Photo-1/do-baby-product-photography-with-baby-model-d03f.JPG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (892, 18, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/ac3c8fca4369eb813ae8279d704759d0-1610656338/Attachment_1610656329/do-baby-product-photography-with-baby-model-d03f.jpeg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (893, 15, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/14d9df5210eee5f6f9f0a0462f9df8b0-1623999665/Photo-1/do-baby-product-photography-with-baby-model-d03f.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (894, 7, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/c631f1721c2566a5f082887dd915776f-1678665590/Photo-94/do-baby-product-photography-with-baby-model-d03f.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (895, 10, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/ab58f69c5c80112f0d33f58e416ae022-1660740825/Photo-1/do-baby-product-photography-with-baby-model-d03f.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (896, 2, N'https://fiverr-res.cloudinary.com/videos/t_thumbnail3_3/zmnn4er0q4xwyyhwaeub/do-product-video-for-amazon-and-other.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (897, 5, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/zmwl0ingciaarlkffxbw/do-product-video-for-amazon-and-other.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (898, 0, N'https://fiverr-res.cloudinary.com/videos/t_main1,q_auto,f_auto/zmnn4er0q4xwyyhwaeub/do-product-video-for-amazon-and-other.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (899, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/203999216/original/743bd505b94cccbd3c7f81738071001f04813ada/do-product-video-for-amazon-and-other.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (900, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/203999216/original/743bd505b94cccbd3c7f81738071001f04813ada/do-product-video-for-amazon-and-other.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (901, 4, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/csk6peve6xdcyz7c5vra/do-product-video-for-amazon-and-other.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (902, 7, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/89e060bb07478243823d5bbc053c5d32-1668463492/Photo-156/do-lifestyle-or-studio-product-photography.JPG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (903, 0, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/177453760/original/e8774f4f7a318e695e66ce9b6ed17269fb91208b/do-lifestyle-or-studio-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (904, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs2/177453760/original/7cb85e6316805060f3a0c2b24ae9214ed6673957/do-lifestyle-or-studio-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (905, 13, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/1a24879dbffad3841f4e23e588a70e5e-1636985218/Photo-104/do-lifestyle-or-studio-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (906, 11, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/33a89bb10903432b6f48b8d32ebb2523-1648822158/Photo-19/do-lifestyle-or-studio-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (907, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/177453760/original/6a5086ea19fd24f46d3ca22102d33a2c2ba5d5ee/do-lifestyle-or-studio-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (908, 9, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/0be4889d0bf062094f1934effcd68757-1667664091/Photo-89/do-lifestyle-or-studio-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (909, 2, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/177453760/original/e8774f4f7a318e695e66ce9b6ed17269fb91208b/do-lifestyle-or-studio-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (910, 12, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/cc5d0d8307425c083654ed32ea1fd0e9-1644996448/Photo-1/do-lifestyle-or-studio-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (911, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/177453760/original/7cb85e6316805060f3a0c2b24ae9214ed6673957/do-lifestyle-or-studio-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (912, 16, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/88f4165a33c35a470d4ebb11f46a5436-1635698409/107/do-lifestyle-or-studio-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (913, 8, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/e05a28e7e169c4a983c67c16b31a8705-1668462896/408E8319-E6CB-4C24-ACB1-2A92ACCB3E11/do-lifestyle-or-studio-product-photography.JPG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (914, 10, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/4e1754a7b263d1737cc24de87b55c43a-1653775252/Photo-15/do-lifestyle-or-studio-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (915, 15, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/52cfd679cceebd02c4aa533f3b365b86-1635698806/105/do-lifestyle-or-studio-product-photography.JPG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (916, 6, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/8c961214c1c609a5903fafb5f0d8df30-1668463896/Photo-5/do-lifestyle-or-studio-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (917, 17, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/1f7449d5aac144e7d9b361402aba1a7d-1620448841/2/do-lifestyle-or-studio-product-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (918, 19, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/11c0f6cbd6d59c9613c7dfd7c75e164e-1602616707/Diary-1/do-lifestyle-or-studio-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (919, 5, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/69f0547bfac4c28a9f86565783d87370-1668464206/Photo-2/do-lifestyle-or-studio-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (920, 14, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/2001c5298c3fbaea4858ebb9475413e1-1635963701/Night-1/do-lifestyle-or-studio-product-photography.JPG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (921, 18, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/b6f0e353fb30185a101eb6a2e8cc8257-1615800947/Attachment_1615800890/do-lifestyle-or-studio-product-photography.jpeg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (922, 11, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/b2517da7fff5b83a1067f3620d2003fe-1616961390/WireHaired_Studios-7561/create-professional-commercial-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (923, 7, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/aa993b3be8ae657cd75c390ded05449c-1654824141/WireHaired_Studios-2-6/create-professional-commercial-product-photography.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (924, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/113884964/original/17c1ca31b33cdc8a79f1a47174f7364406f26532/create-professional-commercial-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (925, 17, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/deliveries/102057014/original/ONGO_Max5/create-professional-commercial-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (926, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/113884964/original/252b4a493f557490d735e6671edad6cdf005da86/create-professional-commercial-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (927, 16, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/b3972b4a66884f5d584347e456bc8744-1562691289/Speaker_Lifestyle/create-professional-commercial-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (928, 12, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/20c922c809842663d015d14657011879-1573838574/Sherman_Brands_210590/create-professional-commercial-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (929, 8, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/fff1f6f65156bc01bd6df529c200410c-1645716302/WireHaired_Studios-8710/create-professional-commercial-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (930, 18, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/deliveries/101369576/original/Wrap%20Options/create-professional-commercial-product-photography.JPG', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (931, 21, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/deliveries/99028299/original/Bamboo_Brush_Group_Bathroom/create-professional-commercial-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (932, 0, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/113884964/original/b9d949abe44194d5da7be83fe67cbfdc8a445203/create-professional-commercial-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (933, 9, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/0a4c4b9bfe7b64fe8b5ad68a26c36d57-1642032830/_WHS8617/create-professional-commercial-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (934, 5, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/c3a180cf740416f8642ffe6996c78997-1681415074/_WHS1336-Edit/create-professional-commercial-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (935, 15, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/e19e4b218f8ea4a1294e068339285e5f-1565031105/WireHaired_Studios-07179/create-professional-commercial-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (936, 14, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/c8ebfa4dba514841af1ddc3c657b95e7-1566326892/WireHaired_Studios-07696/create-professional-commercial-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (937, 10, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/f501119fa4e8096d0736f82be3102a35-1634225032/_WHS7916-Edit-Edit/create-professional-commercial-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (938, 6, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/339ab36c64fbd4fa21bde54fcaf49b2f-1676673923/_WHS0709-Edit/create-professional-commercial-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (939, 19, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/deliveries/101249693/original/Wrap%20on%20white/create-professional-commercial-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (940, 20, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/deliveries/100783569/original/Cube_Glass/create-professional-commercial-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (941, 2, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/113884964/original/b9d949abe44194d5da7be83fe67cbfdc8a445203/create-professional-commercial-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (942, 13, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/7c712e1d49083008092f46219766a188-1571850784/WireHaired_Studios-10423/create-professional-commercial-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (943, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs2/113884964/original/252b4a493f557490d735e6671edad6cdf005da86/create-professional-commercial-product-photography.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (944, 5, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs3/66868891/original/c43752044e243155fe49117b0cddd6d442ad4cdd/create-high-quality-edited-commercial-photography-images.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (945, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/66868891/original/420edcbff05bc030f377cdc0a7e5ac0dd7002a91/create-high-quality-edited-commercial-photography-images.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (946, 16, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/5fe271d8a73278f1dd12e3de75ed03a5-1595881884/_WHS4652/create-high-quality-edited-commercial-photography-images.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (947, 7, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/ac5a00f10c428281c6caa849c00a1bbc-1674615531/_WHS0611-Edit-Edit/create-high-quality-edited-commercial-photography-images.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (948, 11, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/7419cd17aa8b4e87208add644f31ad21-1607449492/WireHaired_Studios-7072/create-high-quality-edited-commercial-photography-images.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (949, 2, N'https://fiverr-res.cloudinary.com/videos/so_23.887371748,t_thumbnail3_3/soyxribiystcyosy6dzx/create-high-quality-edited-commercial-photography-images.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (950, 0, N'https://fiverr-res.cloudinary.com/videos/so_23.887371748,t_main1,q_auto,f_auto/soyxribiystcyosy6dzx/create-high-quality-edited-commercial-photography-images.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (951, 19, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/4792471abaadac38a3d1040e9ef22f94-1570028649/WireHaired_Studios-10013/create-high-quality-edited-commercial-photography-images.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (952, 13, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/4f68b6a95eaaa16b34aff31eac163bef-1605645824/Child%20Carrier%20180/create-high-quality-edited-commercial-photography-images.gif', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (953, 15, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/e935e39be78428b248abc1627b31ae80-1596074594/Oak_Glenn-1/create-high-quality-edited-commercial-photography-images.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (954, 17, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/a95625fa0a42fb984f09eb4723f5fd7a-1594755401/Larsic-10/create-high-quality-edited-commercial-photography-images.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (955, 20, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/deliveries/96214630/original/cf6a/create-high-quality-edited-commercial-photography-images.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (956, 18, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/500038f13d8cf858e2db98d33307de59-1592154336/WireHaired_Studios-2975/create-high-quality-edited-commercial-photography-images.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (957, 21, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/deliveries/95219775/original/d729/create-high-quality-edited-commercial-photography-images.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (958, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/66868891/original/420edcbff05bc030f377cdc0a7e5ac0dd7002a91/create-high-quality-edited-commercial-photography-images.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (959, 9, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/6fd75ebc499b7e2e50149c28793693be-1655826110/WireHaired_Studios-9141/create-high-quality-edited-commercial-photography-images.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (960, 12, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/214059f53c2eb971759e8bf1077128b6-1607310847/Attachment_1607310838/create-high-quality-edited-commercial-photography-images.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (961, 14, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/47091b2fc0431e0e135aac15277497ce-1604279982/WireHaired_Studios-5898/create-high-quality-edited-commercial-photography-images.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (962, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/66868891/original/b06db2e422e55a8c739360a1e840074364936cb7/create-high-quality-edited-commercial-photography-images.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (963, 10, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/69e547f29a0a871eb12dfea16eee780b-1618361775/WireHaired_Studios-7684/create-high-quality-edited-commercial-photography-images.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (964, 8, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/ff6fadce5bc1f05186fe6d2007ccf600-1670527777/_WHS0222-Edit/create-high-quality-edited-commercial-photography-images.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (965, 6, N'https://fiverr-res.cloudinary.com/images/t_smartwm/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/04ddbd72c314254f3ee07f3ebdb95a63-1680728713/untitled-1083-Edit-Edit/create-high-quality-edited-commercial-photography-images.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (966, 3, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs/131827538/original/4822745884021450afb3b51dae28cb3c9599d99d/create-360-product-photography-videos.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (967, 5, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/bb3ad5251f3d673e60b147d1b49ba2b0-1610039142/V5/create-360-product-photography-videos.gif', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (968, 6, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/967a94ee2bda181a432bfd1541019798-1609775928/Plaque_180_Small_10sec/create-360-product-photography-videos.gif', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (969, 0, N'https://fiverr-res.cloudinary.com/videos/t_main1,q_auto,f_auto/hppwom056yhoynoysfzl/create-360-product-photography-videos.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (970, 2, N'https://fiverr-res.cloudinary.com/videos/t_thumbnail3_3/hppwom056yhoynoysfzl/create-360-product-photography-videos.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (971, 1, N'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/131827538/original/4822745884021450afb3b51dae28cb3c9599d99d/create-360-product-photography-videos.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (972, 8, N'https://fiverr-res.cloudinary.com/videos/t_smartwm/t_thumbnail3_3/quui2mia69ux38wx1dc9/create-360-product-photography-videos.png', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (973, 4, N'https://fiverr-res.cloudinary.com/images/t_thumbnail3_3,q_auto,f_auto/gigs2/131827538/original/0b01bc90def535b865ac537f5b362b26921966da/create-360-product-photography-videos.jpg', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (974, 7, N'https://fiverr-res.cloudinary.com/images/t_delivery_thumb,q_auto,f_auto/attachments/delivery/asset/76760e70ddc395ab79b34b251992ab80-1609605054/Plaque_180_Final/create-360-product-photography-videos.gif', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (975, 2, N'google.com', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (976, 1, N'google.com', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (977, 3, N'google.com', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (978, 2, N'google.com', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (979, 3, N'google.com', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (980, 1, N'google.com', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (981, 3, N'google.com', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (982, 1, N'google.com', NULL)
GO
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (983, 2, N'google.com', NULL)
GO
SET IDENTITY_INSERT [dbo].[media_service] OFF
GO
SET IDENTITY_INSERT [dbo].[order] ON 
GO
INSERT [dbo].[order] ([order_id], [address], [check_in], [deposit], [description], [order_date], [payment_date], [status], [customer_id], [payment_id]) VALUES (3, N'862/21', NULL, 100000, N'GG', CAST(N'2023-06-29T20:39:40.2980000' AS DateTime2), NULL, 3, 3, NULL)
GO
SET IDENTITY_INSERT [dbo].[order] OFF
GO
SET IDENTITY_INSERT [dbo].[order_detail] ON 
GO
INSERT [dbo].[order_detail] ([order_detail_id], [content], [discount], [post_date], [price], [rating], [order_id], [service_id]) VALUES (1, NULL, 0, NULL, 20000, NULL, 3, 2)
GO
INSERT [dbo].[order_detail] ([order_detail_id], [content], [discount], [post_date], [price], [rating], [order_id], [service_id]) VALUES (2, NULL, 0, NULL, 20000, NULL, 3, 3)
GO
SET IDENTITY_INSERT [dbo].[order_detail] OFF
GO
SET IDENTITY_INSERT [dbo].[service_pack] ON 
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (1, NULL, N'created', NULL, N'Create new service2', 10000, NULL, 0, NULL, CAST(N'2023-06-28T10:58:21.8470000' AS DateTime2), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (2, CAST(N'2023-06-23T14:51:19.2360000' AS DateTime2), N'created', NULL, N'Create new service2', 10000, 5, 0, NULL, CAST(N'2023-06-29T15:54:10.0000000' AS DateTime2), NULL, NULL, 1, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (3, CAST(N'2023-06-23T14:51:19.2360000' AS DateTime2), N'<p>Hi, I''m Lana. Please contact me first before starting order.</p><p><br></p><p>Are you looking for professional<strong>&nbsp;Lifestyle</strong>&nbsp;<strong>Product Video&nbsp;</strong>for your business? I will create a high quality short lifestyle video of your product. </p><p><br></p><p><strong>What you''ll get:</strong></p><ul><li>Professional high quality lifestyle video</li><li>Video taken with professional high end SLRs and equipment (inc. Canon 6D mark ii)&nbsp;</li></ul><p><br></p><p><strong>Why me?&nbsp;</strong>I''m hardworking and always aim for a quality results. If you are interested, write to me and we will discuss the details of the order.&nbsp;</p><p><strong>I</strong>&nbsp;<strong>would be</strong>&nbsp;<strong>really</strong>&nbsp;<strong>glad to work with you!</strong></p><p><br></p>', 0, N'I will do lifestyle product video', 5870, 5, 0, NULL, NULL, 0, NULL, 1, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (4, CAST(N'2023-06-23T14:51:19.2360000' AS DateTime2), N'<p><br></p><p>*PLEASE CONTACT ME BEFORE PLACING YOUR ORDER</p><p><br></p><p>Hi, are you looking for&nbsp;<strong>Professional Female Model&nbsp;</strong>for your products? I will model and/or demo your product in a professional photography studio, using a professional camera.&nbsp;&nbsp;I would love to provide for you&nbsp;High-Resolution Photo&nbsp;and be able to promote your brand (jewelry, beauty, electronics, clothes and etc.). I live in Florida, so can use a beautiful nature to create an amazing lifestyle photos. Also I will be happy to create studio high quality photos for your brand.</p><p><br></p><p><strong>What you''ll get:</strong></p><ul><li>High quality JPEG image</li><li>Images taken with professional high end SLRs and equipment (inc. Canon 6D mark ii)&nbsp;</li><li>Free image enhancement and editing to polish off the final product.</li></ul><p><br></p><p><strong>If you''re an e-commerce seller on platforms such as eBay, Amazon, Shopify or Etsy, then&nbsp;this is the gig for you!</strong></p><p><br></p><p><strong>Why me?&nbsp;</strong>I''m hardworking and always aim for a quality results. You''ll get the cheapest deal from me right now whilst I''m building my Fiverr reviews! If you are interested, write to me and we will discuss the details of the order.&nbsp;</p><p><strong>I</strong>&nbsp;<strong>would be</strong>&nbsp;<strong>really</strong>&nbsp;<strong>glad to work with you!&nbsp;</strong></p>', 0, N'I will be your female product model for photo', 939, 5, 0, NULL, NULL, 0, NULL, 1, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (5, CAST(N'2023-06-23T14:51:19.2360000' AS DateTime2), N'<p>Please contact me first before starting order.</p><p><br></p><p>Hello, I''m Lana, I will be happy to shoot <strong>professional photo</strong> with your product and my adorable models)</p><p>I specialize in creating professional, high quality and selling product images.&nbsp;I have the&nbsp;models for your product (baby, mom and dad, toddler, and dog).</p><p>I live in Florida, so can use a beautiful nature to create an amazing lifestyle photos. Also I will be happy to create studio high quality photos for your brand.</p><p><br></p><p><strong>What you''ll get:</strong></p><ul><li>High quality JPEG image</li><li>Images taken with professional high end SLRs and equipment (inc. Canon 6D mark ii)&nbsp;</li><li>Free image enhancement and editing to polish off the final product.</li></ul><p><br></p><p><strong>If you''re an e-commerce seller on platforms such as eBay, Amazon, Shopify or Etsy, then&nbsp;this is the gig for you!</strong></p><p><br></p><p><strong>Why me?&nbsp;</strong>I''m hardworking and always aim for a quality results. You''ll get the cheapest deal from me right now whilst I''m building my Fiverr reviews! If you are interested, write to me and we will discuss the details of the order.&nbsp;</p><p><strong>I</strong>&nbsp;<strong>would be</strong>&nbsp;<strong>really</strong>&nbsp;<strong>glad to work with you!&nbsp;</strong></p>', 0, N'I will shoot professional baby product photography', 2113, 5, 0, NULL, NULL, 0, NULL, 1, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (6, CAST(N'2023-06-23T14:51:19.4360000' AS DateTime2), N'<p>Here you can find Serious / High Quality and Professional Amazon product photography.</p><p><br></p><p>What is included?</p><p><br></p><p><strong>-Photo on crisp white background,</strong></p><p><strong>-Live Model and Lifestyle staged photos of your product in use,</strong></p><p><strong>-Infographics, highlighting the key features of your product.</strong></p><p><br></p><p>For the first time I included free infographics in my packages, so you will have a complete set of 7 photos for your amazon online shop platform.</p><p>You will receive all images Amazon Ready, so you will be able to add them to your listing immediately.</p><p>I use super high quality, professional camera and light equipment and of course 15 years of my experience in photography and marketing to deliver the best possible result for your business.</p><p><br></p><p><strong><u>My Video Gig on Fiverr:&nbsp;https://bit.ly/2m4b0kD</u></strong></p><p><br></p><p><strong><u>I''m based in Germany (but my photos work well all around the world)</u></strong></p><p><br></p><p>I look forward to working with you soon</p>', 0, N'I will do product photography, lifestyle, and infographics, amazon and ecommerce', 2348, 5, 0, NULL, NULL, 0, NULL, 2, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (7, CAST(N'2023-06-23T14:51:19.4360000' AS DateTime2), N'<p>If you need a high end selling promotional video / Product video, then you are in the right place!</p><p>The sample videos you find here are just the tip of the iceberg on what I can do for you. I will make your video eye-catching and completely professional.</p><p><strong> </strong></p><p>You tell me what you want and I will create a custom top-quality video for you that is ready to use on Amazon, all online shops, YouTube, or as a commercial ad.&nbsp;</p><p><strong>4K QUALITY+CINEMATIC COLOR GRADING+PROFESSIONAL LIGHTING INCLUDED&nbsp;</strong></p><p>Our creativity and experience will bring your project to life in ways that you may not have even imagined. Your project is just as important to me as it is to you and you will be 100% satisfied just like my many customers.</p><p><br></p><p><strong>My product photography Gig on Fiverr:&nbsp;https://bit.ly/2ktOL7d</strong></p><p>You can also receive a custom offer, so please contact me if you don''t find your desired package here.&nbsp;</p><p><strong>I''m based in Germany (but my videos work well all around the world)</strong></p><p><br></p><p><br></p><p>I look forward to working with you soon - send me a message or book your desired package to get started :-)</p>', 0, N'I will shoot product video for your kids product', 9274, 5, 0, NULL, NULL, 0, NULL, 2, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (8, CAST(N'2023-06-23T14:51:19.4360000' AS DateTime2), N'<p>If you need a high end selling promotional video / Product video, then you are in the right place!</p><p>The sample videos you find here are just the tip of the iceberg on what I can do for you. I will make your video eye-catching and completely professional.</p><p><br></p><p><strong><u> </u></strong></p><p>You tell me what you want and I will create a custom top-quality video for you that is ready to use on Amazon, all online shops, YouTube, or as a commercial ad.&nbsp;</p><p><strong><u>4K QUALITY+CINEMATIC COLOR GRADING+PROFESSIONAL LIGHTING INCLUDED&nbsp;</u></strong></p><p>Our creativity and experience will bring your project to life in ways that you may not have even imagined. Your project is just as important to me as it is to you and you will be 100% satisfied just like my many customers.</p><p><br></p><p><strong>My product photography Gig:&nbsp;<u>https://www.fiverr.com/katy63de/create-an-amazon-product-video</u></strong></p><p><br></p><p>You can also receive a custom offer, so please contact me if you don''t find your desired package here.&nbsp;</p><p><strong><u>I''m based in Germany (but my videos work well all around the world)</u></strong></p><p><br></p><p><br></p><p>I look forward to working with you soon -<strong><u> Please give me a message before you go ahead and order to check availability. Thank you</u></strong></p>', 0, N'I will shoot product video promo or short video ads', 6926, 5, 0, NULL, NULL, 0, NULL, 2, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (9, CAST(N'2023-06-23T14:51:19.4360000' AS DateTime2), N'<p>When you want professional quality photos for your Product and Lifestyle project, you need this gig!&nbsp;</p><p>My motto is if you dont look good then we dont look good. I absolutely take pride in making your product look absolutely beautiful.</p><p>I have been a professional photographer/videographer for more than 12&nbsp;years.</p><p>I also have a full-time professional team specialized in shooting Product and Lifestyle Photos.</p><p>I have experience working with big names and brands such as Samsung and Primark, so you can be sure Im not just another person saying Look at me. When you choose this gig, you get the benefit of all my experience here in Fiverr where I now deliver the best quality to my clients.</p><p><br></p><p><strong>You can also receive a custom offer, so please contact me if you don''t find your desired package here. I love discussing your ideas and if you are not sure what you want I can help steer you in the right direction.</strong></p><p><br></p><p><strong>My Video Gig on Fiverr:&nbsp;</strong>https://bit.ly/2m4b0kD</p><p><br></p><p><strong><u>I''m based in Germany (but my photos work well all around the world)</u></strong></p><p><br></p><p>I look forward to working with you soon - <strong><u>Please give me a message before you go ahead and order to check availability.</u></strong></p><p><strong><u> </u></strong></p><p><strong><u> </u></strong></p><p><strong><u> </u></strong></p><p><strong><u> </u></strong></p>', 0, N'I will shoot premium product photography or lifestyle photos', 2348, 4.9, 0, NULL, NULL, 0, NULL, 2, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (10, CAST(N'2023-06-23T14:51:19.4360000' AS DateTime2), N'<p>I will shoot a cinematic unboxing product video for your product including Color Grading in Feature film Quality. This is what the big brands use to show their products in the best&nbsp;possible way.</p><p><br></p><p><br></p><p>important notes:</p><p><br></p><p>- Please contact me before you place your order.</p><p>- <strong><u>I''m located in Germany.</u></strong></p><p><br></p><p>I look forward to working with you soon -<strong> <u>Please give me a message before you go ahead and order to check availability. Thank you</u></strong></p>', 0, N'I will create an unboxing product video for your online shop', 6926, 5, 0, NULL, NULL, 0, NULL, 2, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (11, CAST(N'2023-06-23T14:51:19.4360000' AS DateTime2), N'<p>&nbsp;If you need a high end selling Amazon Product video, then you are in the right place!</p><p>The sample videos you find here are just the tip of the iceberg on what I can do for you. I will make your video eye-catching and completely professional.</p><p><strong>More sample videos: https://vimeo.com/pixer</strong></p><p>You tell me what you want and I will create a custom top-quality video for you that is ready to use on Amazon or all online shops.</p><p><strong>4K QUALITY+CINEMATIC COLOR GRADING+PROFESSIONAL LIGHTING INCLUDED&nbsp;</strong></p><p>Our creativity and experience will bring your project to life in ways that you may not have even imagined. Your project is just as important to me as it is to you and you will be 100% satisfied just like my many customers (see my excellent reviews here on Fiverr).</p><p><br></p><p><strong><u>My product photography Gig:&nbsp;https://bit.ly/2ktOL7d</u></strong></p><p>You can also receive a custom offer, so please contact me if you don''t find your desired package here.&nbsp;</p><p><strong><u>I''m based in Germany (but my videos work well all around the world)</u></strong></p><p><br></p><p><br></p><p>I look forward to working with you soon -<strong> <u>Please give me a message before you go ahead and order to check availability. Thank you</u></strong></p>', 0, N'I will create an amazon product video or short promo ad', 6926, 5, 0, NULL, NULL, 0, NULL, 2, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (12, CAST(N'2023-06-23T14:51:19.7840000' AS DateTime2), N'<p><strong><u>Message me before ordering your Gig to arrange shipping</u></strong></p><p><u>This will ensure your order is delivered on time with the highest quality!</u></p><p><br></p><p>I am an expert in helping companies&nbsp;<em>craft their brand through product videography</em>. I have been shooting custom product ads for brands large and small for years and would love to help you take your brand to the next level. Working with these brands has given me a unique advantage and insight into&nbsp;<em>expert level marketing and branding</em>. I make videos that help you sell your product.</p><p><br></p><p>I offer:</p><ul><li><strong>High performing product video ads that sell</strong></li><li><strong>Indoor / Outdoor Setting based on your brands needs</strong></li><li><strong>Unique videography with high click through rates</strong></li><li><strong>Video ads perfect for Instagram, Facebook, YouTube, and any other social media platform</strong></li></ul><p><br></p><p>Brand imagery has never been more important to companies looking to stand out in a sea of boring companies on social media. I can help create 100% unique video ads that convert and sell to your customers. Reach out today and we can get started on your project.</p>', 0, N'I will film stunning instagram product ads', 5870, 4.8, 0, NULL, NULL, 0, NULL, 3, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (13, CAST(N'2023-06-23T14:51:19.7840000' AS DateTime2), N'<p><strong><u>Message me before ordering your Gig to arrange shipping</u></strong></p><p><u>This will ensure your order is delivered on time with the highest quality!</u></p><p><br></p><p>I am an expert in helping companies <em>craft their brand through product photography</em>. I have been shooting product photography for brands large and small for years and would love to help you take your brand to the next level. Working with these brands has given me a unique advantage and insight into <em>expert level marketing and branding</em>.</p><p><br></p><p>I offer:</p><ul><li><strong>High performing product photography</strong></li><li><strong>Indoor / Outdoor Setting based on your brands needs</strong></li><li><strong>Unique imagery with high click through rates</strong></li><li><strong>Shots perfect for marketing / ads / social media</strong></li></ul><p><br></p><p>Brand imagery has never been more important to companies looking to stand out in a sea of boring companies on social media. Whether you are looking for lifestyle photography for your Instagram feed, Facebook ads, or unique website pictures; Ive got you covered. Reach out today and we can get started on your project.</p>', 0, N'I will shoot stellar product photography for your brand', 2582, 5, 0, NULL, NULL, 0, NULL, 3, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (14, CAST(N'2023-06-23T14:51:19.8390000' AS DateTime2), N'<p><strong><u>DON''T ORDER GIG UNTIL I HAVE THE PRODUCT</u></strong></p><p><br></p><p>Thank you for checking my Gig!</p><p><br></p><p>I''m José Luis (Loui), Instagram, lifestyle, and product photographer.&nbsp;</p><p>I know that if you open this Gig is because you are <strong>searching to stand out</strong> from the competition with more engaging photos of products. You can check my style on my website and Instagram - <strong>loui.61</strong>. Please get in touch to discuss your product and photoshoot ideas so we can understand each other better and make sure we are on the same page.&nbsp;</p><p><br></p><p>Looking to stand out your e-commerce, Instagram, or even at a certain marketplace with high-quality product photos, I am here to help!</p><p><br></p><p><strong>I''m based in Mexico City</strong>.</p><p><br></p><p><strong>This gig is best for:</strong></p><p>E-Commerce</p><p>Website</p><p>Marketing or Advertising</p><p>Social Media</p><p>Amazon Sales</p><p>Brand Building</p><p>Advertising</p><p><br></p><p><strong>Each Gig Includes:</strong></p><p><strong>&nbsp;</strong>&nbsp;High-Resolution JPEG/PNG Images</p><p><strong>&nbsp;</strong>&nbsp;Use of Professional Lighting, Software &amp; Equipment&nbsp;&nbsp;</p><p>&nbsp;Edited &amp; Ready for Use</p><p><br></p><p>If you want your package sent back, please include a Pre-Paid shipping label in it.</p><p>You will be responsible for all the shipping fees/duty/customs fees.</p>', 0, N'I will shoot product and lifestyle photography', 2935, 5, 0, NULL, NULL, 0, NULL, 4, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (15, CAST(N'2023-06-23T14:51:19.8390000' AS DateTime2), N'<p>Are you in need of stunning images that will make your products <strong><u>stand out from the competition?</u></strong> Look no further!</p><p><br></p><p>As a professional photographer, I offer high-end product photography services to help <strong>showcase your products</strong>. Whether you need simple white background shots, lifestyle images with a live model, or infographics highlighting key features, I''ve got you covered. </p><p><br></p><p><strong><u>Every project includes:</u></strong></p><ul><li>High and Professional Image Quality</li><li>Professional Camera Equipment and Lighting</li><li>Edits to make Your Product Shine and ready to be uploaded to Amazon!</li></ul><p><br></p><p><strong><u>I&nbsp;will create stunning photos with:</u></strong></p><ul><li><strong>White background</strong></li><li><strong>Live Model and Lifestyle</strong>&nbsp;staged photos of your product in use</li><li><strong>Infographics,</strong>&nbsp;highlighting the key features and advantages of your product</li></ul><p><br></p><p><br></p>', 0, N'I will shoot high quality amazon product photography', 2348, 5, 0, NULL, NULL, 0, NULL, 4, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (16, CAST(N'2023-06-23T14:51:19.9310000' AS DateTime2), N'<p><strong><u>First impressions are everything.</u></strong></p><p><br></p><p>Do you want your product to <strong>stand out</strong> from the competition? It''s becoming more and more difficult for the average business to set itself apart and great product photography can make the difference between success and failure. Let our experienced team of photographers and designers produce your images from scratch. Just send us a sample of your product and we''ll take care of the rest!</p><p><br></p><p><strong>What you can expect:</strong></p><p><br></p><ul><li>A set of eye-catching product images that will make you stand out in search results</li><li>High end product photography produced in our studio</li><li>High-quality lifestyle shots with expert retouching</li><li>Outstanding graphics with contemporary fonts and sleek designs</li></ul><p><br></p><p>With years of experience in product photography, we now have a well-honed recipe for creating a great customer experience that ends with a purchase of your product.</p><p><br></p><p>We work with some of the biggest e-commerce brands in the world (including <strong>McDonald''s, Unilever and Nongshim</strong>) and are always looking to extend our experience and skills to new long-term oriented clients.</p><p><br></p><p><strong>New client? Book your first project today and receive a 10% discount on your studio fees!</strong></p><p><br></p><p><strong><u>*PLEASE CONTACT BEFORE PLACING AN ORDER*</u></strong></p>', 0, N'I will produce beautiful food photography for your brand', 5870, 5, 0, NULL, NULL, 0, NULL, 5, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (17, CAST(N'2023-06-23T14:51:19.9310000' AS DateTime2), N'<p><strong>First impressions are everything.</strong></p><p><br></p><p>Do you want your product to <strong>stand out</strong> from the competition? It''s becoming more and more difficult for the average business to set itself apart and great product photography can make the difference between success and failure.&nbsp;Let our experienced team of photographers and designers produce your images from scratch. Just send us a sample of your product and we''ll take care of the rest!</p><ul><li><strong>What you can expect:</strong></li><li>A set of eye-catching product images that will make you stand out in search results</li><li>High end product photography produced in our studio</li><li>High-quality lifestyle shots with expert retouching</li><li>Outstanding graphics with contemporary fonts and sleek designs</li></ul><p><br></p><p>With years of experience in product photography, we now have a well-honed recipe for creating a great customer experience that ends with a purchase of your product.</p><p><br></p><p>We work with some of the biggest e-commerce brands in the world (including <strong>McDonald''s, Unilever and Nongshim</strong>)&nbsp;and are always looking to extend our experience and skills to new long-term oriented clients.</p><p><br></p><p><strong>New client? Book your first project and receive a 10% discount on your studio fees!</strong></p><p><br></p><p><strong><u>*PLEASE CONTACT BEFORE PLACING AN ORDER*</u></strong></p>', 0, N'I will produce beautiful product photography for your brand', 5870, 5, 0, NULL, NULL, 0, NULL, 5, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (18, CAST(N'2023-06-23T14:51:19.9310000' AS DateTime2), N'<p><strong>First impressions are everything.</strong></p><p><br></p><p><strong>Do you want your product to&nbsp;stand out</strong>&nbsp;from the competition? It''s becoming more and more difficult for the average business to set itself apart and great product photography can make the difference between success and failure.&nbsp;Let our experienced team of photographers and designers produce your images from scratch. Just send us a sample of your product and we''ll take care of the rest!</p><ul><li><strong>What you can expect:</strong></li><li>A set of eye-catching product images that will make you stand out in search results</li><li>High end product photography produced in our studio</li><li>High-quality lifestyle shots with expert retouching</li><li>Outstanding graphics with contemporary fonts and sleek designs</li></ul><p><br></p><p>With years of experience in product photography, we now have a well-honed recipe for creating a great customer experience that ends with a purchase of your product.</p><p><br></p><p>We work with some of the biggest e-commerce brands in the world <strong>(including&nbsp;McDonald''s, Unilever and Nongshim</strong>)&nbsp;and are always looking to extend our experience and skills to new long-term oriented clients.</p><p><br></p><p><strong>New client? Book your first project and receive a 10% discount on your studio fees!</strong></p><p><br></p><p><strong><u>*PLEASE CONTACT BEFORE PLACING AN ORDER*</u></strong></p>', 0, N'I will produce beautiful cosmetics photography for your brand', 5870, 5, 0, NULL, NULL, 0, NULL, 5, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (19, CAST(N'2023-06-23T14:51:19.9980000' AS DateTime2), N'<p>When you want professional quality photos for your Product and Lifestyle project, you need this gig!&nbsp;</p><p>My motto is if you dont look good then we dont look good. I absolutely take pride in making your product look absolutely beautiful.</p><p>I have been a professional photographer/videographer for more than 12&nbsp;years.</p><p>I also have a full-time professional team specialized in shooting Product and Lifestyle Photos.</p><p>I have experience working with big names and brands such as Samsung and Primark, so you can be sure Im not just another person saying Look at me. When you choose this gig, you get the benefit of all my experience here in Fiverr where I now deliver the best quality to my clients.</p><p><br></p><p><strong>You can also receive a custom offer, so please contact me if you don''t find your desired package here. I love discussing your ideas and if you are not sure what you want I can help steer you in the right direction.</strong></p><p><br></p><p><strong>My Video Gig on Fiverr:&nbsp;</strong>https://bit.ly/2m4b0kD</p><p><br></p><p><strong><u>I''m based in Germany (but my photos work well all around the world)</u></strong></p><p><br></p><p>I look forward to working with you soon - <strong><u>Please give me a message before you go ahead and order to check availability.</u></strong></p><p><strong><u> </u></strong></p><p><strong><u> </u></strong></p><p><strong><u> </u></strong></p><p><strong><u> </u></strong></p>', 0, N'I will shoot premium product photography or lifestyle photos', 2348, 4.9, 0, NULL, NULL, 0, NULL, 6, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (20, CAST(N'2023-06-23T14:51:19.9980000' AS DateTime2), N'<p>I will shoot a cinematic unboxing product video for your product including Color Grading in Feature film Quality. This is what the big brands use to show their products in the best&nbsp;possible way.</p><p><br></p><p><br></p><p>important notes:</p><p><br></p><p>- Please contact me before you place your order.</p><p>- <strong><u>I''m located in Germany.</u></strong></p><p><br></p><p>I look forward to working with you soon -<strong> <u>Please give me a message before you go ahead and order to check availability. Thank you</u></strong></p>', 0, N'I will create an unboxing product video for your online shop', 6926, 5, 0, NULL, NULL, 0, NULL, 6, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (21, CAST(N'2023-06-23T14:51:19.9980000' AS DateTime2), N'<p>If you need a high end selling promotional video / Product video, then you are in the right place!</p><p>The sample videos you find here are just the tip of the iceberg on what I can do for you. I will make your video eye-catching and completely professional.</p><p><strong> </strong></p><p>You tell me what you want and I will create a custom top-quality video for you that is ready to use on Amazon, all online shops, YouTube, or as a commercial ad.&nbsp;</p><p><strong>4K QUALITY+CINEMATIC COLOR GRADING+PROFESSIONAL LIGHTING INCLUDED&nbsp;</strong></p><p>Our creativity and experience will bring your project to life in ways that you may not have even imagined. Your project is just as important to me as it is to you and you will be 100% satisfied just like my many customers.</p><p><br></p><p><strong>My product photography Gig on Fiverr:&nbsp;https://bit.ly/2ktOL7d</strong></p><p>You can also receive a custom offer, so please contact me if you don''t find your desired package here.&nbsp;</p><p><strong>I''m based in Germany (but my videos work well all around the world)</strong></p><p><br></p><p><br></p><p>I look forward to working with you soon - send me a message or book your desired package to get started :-)</p>', 0, N'I will shoot product video for your kids product', 9274, 5, 0, NULL, NULL, 0, NULL, 6, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (22, CAST(N'2023-06-23T14:51:19.9980000' AS DateTime2), N'<p>&nbsp;If you need a high end selling Amazon Product video, then you are in the right place!</p><p>The sample videos you find here are just the tip of the iceberg on what I can do for you. I will make your video eye-catching and completely professional.</p><p><strong>More sample videos: https://vimeo.com/pixer</strong></p><p>You tell me what you want and I will create a custom top-quality video for you that is ready to use on Amazon or all online shops.</p><p><strong>4K QUALITY+CINEMATIC COLOR GRADING+PROFESSIONAL LIGHTING INCLUDED&nbsp;</strong></p><p>Our creativity and experience will bring your project to life in ways that you may not have even imagined. Your project is just as important to me as it is to you and you will be 100% satisfied just like my many customers (see my excellent reviews here on Fiverr).</p><p><br></p><p><strong><u>My product photography Gig:&nbsp;https://bit.ly/2ktOL7d</u></strong></p><p>You can also receive a custom offer, so please contact me if you don''t find your desired package here.&nbsp;</p><p><strong><u>I''m based in Germany (but my videos work well all around the world)</u></strong></p><p><br></p><p><br></p><p>I look forward to working with you soon -<strong> <u>Please give me a message before you go ahead and order to check availability. Thank you</u></strong></p>', 0, N'I will create an amazon product video or short promo ad', 6926, 5, 0, NULL, NULL, 0, NULL, 6, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (23, CAST(N'2023-06-23T14:51:19.9980000' AS DateTime2), N'<p>If you need a high end selling promotional video / Product video, then you are in the right place!</p><p>The sample videos you find here are just the tip of the iceberg on what I can do for you. I will make your video eye-catching and completely professional.</p><p><br></p><p><strong><u> </u></strong></p><p>You tell me what you want and I will create a custom top-quality video for you that is ready to use on Amazon, all online shops, YouTube, or as a commercial ad.&nbsp;</p><p><strong><u>4K QUALITY+CINEMATIC COLOR GRADING+PROFESSIONAL LIGHTING INCLUDED&nbsp;</u></strong></p><p>Our creativity and experience will bring your project to life in ways that you may not have even imagined. Your project is just as important to me as it is to you and you will be 100% satisfied just like my many customers.</p><p><br></p><p><strong>My product photography Gig:&nbsp;<u>https://www.fiverr.com/katy63de/create-an-amazon-product-video</u></strong></p><p><br></p><p>You can also receive a custom offer, so please contact me if you don''t find your desired package here.&nbsp;</p><p><strong><u>I''m based in Germany (but my videos work well all around the world)</u></strong></p><p><br></p><p><br></p><p>I look forward to working with you soon -<strong><u> Please give me a message before you go ahead and order to check availability. Thank you</u></strong></p>', 0, N'I will shoot product video promo or short video ads', 6926, 5, 0, NULL, NULL, 0, NULL, 6, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (24, CAST(N'2023-06-23T14:51:19.9980000' AS DateTime2), N'<p>Here you can find Serious / High Quality and Professional Amazon product photography.</p><p><br></p><p>What is included?</p><p><br></p><p><strong>-Photo on crisp white background,</strong></p><p><strong>-Live Model and Lifestyle staged photos of your product in use,</strong></p><p><strong>-Infographics, highlighting the key features of your product.</strong></p><p><br></p><p>For the first time I included free infographics in my packages, so you will have a complete set of 7 photos for your amazon online shop platform.</p><p>You will receive all images Amazon Ready, so you will be able to add them to your listing immediately.</p><p>I use super high quality, professional camera and light equipment and of course 15 years of my experience in photography and marketing to deliver the best possible result for your business.</p><p><br></p><p><strong><u>My Video Gig on Fiverr:&nbsp;https://bit.ly/2m4b0kD</u></strong></p><p><br></p><p><strong><u>I''m based in Germany (but my photos work well all around the world)</u></strong></p><p><br></p><p>I look forward to working with you soon</p>', 0, N'I will do product photography, lifestyle, and infographics, amazon and ecommerce', 2348, 5, 0, NULL, NULL, 0, NULL, 6, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (25, CAST(N'2023-06-23T14:51:20.2040000' AS DateTime2), N'<p><strong><u>PLEASE CONTACT ME BEFORE PLACING YOUR ORDER</u></strong></p><p><br></p><p><br></p><p>My name is Nastia, Instagram, lifestyle and product photographer.</p><p><br></p><p>Your Amazon Listing images are&nbsp;<strong>the&nbsp;first impression</strong>&nbsp;that your potential customers get of you and your product. High-quality photos&nbsp;create&nbsp;<strong>brand trust</strong>&nbsp;and&nbsp;<strong>recognition</strong>, and&nbsp;boost your sales.</p><p><br></p><p>I will be happy to provide you with professional photography services.</p><p>I specialize in creating&nbsp;<strong>high-end, unique and engaging product photography</strong>.</p><p>And to really&nbsp;<strong>bring your&nbsp;product to life, </strong>We have a large and bright apartment, and your product will look gorgeous in it. <u>Or professional STUDIO type photography.</u></p><p><br></p><p><strong><u>I''m located in LATVIA.</u></strong></p><p><br></p><p><strong>My services includes</strong>:</p><ul><li>High-resolution JPEG Images, I deliver the&nbsp;highest quality available</li><li>Edited and ready to use images</li><li>Model or white background</li><li>Use of Professional Equipment, Lighting, Software</li></ul><p><br></p><p><strong>Best for:</strong></p><ul><li>E-Commerce</li><li>Website</li><li>Marketing or Advertising</li><li>Social Media</li><li><u>Amazon, Etsy, Instagram and other</u></li></ul><p><br></p><p><br></p><p>Feel free to ask any questions.</p><p>Thank you!</p>', 0, N'I will do baby product photography', 4696, 5, 0, NULL, NULL, 0, NULL, 7, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (26, CAST(N'2023-06-23T14:51:20.2040000' AS DateTime2), N'<p><strong><u>PLEASE CONTACT ME BEFORE PLACING YOUR ORDER</u></strong></p><p><br></p><p><br></p><p>My name is Nastia, Im professional lifestyle,studio product photographer.I have professional photo studio equipment and props that are ready to use for your product photos.</p><p><br></p><p>Your Amazon Listing images are&nbsp;<strong><u>the&nbsp;first impression</u></strong>&nbsp;that your potential customers get of you and your product. High-quality photos&nbsp;create&nbsp;<strong>brand trust</strong>&nbsp;and&nbsp;<strong>recognition</strong>, and&nbsp;boost your sales.</p><p><br></p><p>I will be happy to provide you with professional photography services.</p><p>I specialize in creating&nbsp;<strong>high-end, unique and engaging product photography</strong>.</p><p>And to really&nbsp;<strong>bring your&nbsp;product to life, </strong>I am happy to co-model with my little one! ( See add-ons ). Or professional STUDIO type photography.</p><p>I have beautiful and light interior which are ready to use for your product photos.</p><p><br></p><p><strong><u>I''m located in LATVIA.</u></strong></p><p><br></p><p>Feel free to ask any questions.</p><p>Thank you!</p>', 0, N'I will do professional studio and lifestyle product photography', 4696, 5, 0, NULL, NULL, 0, NULL, 7, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (27, CAST(N'2023-06-23T14:51:20.2040000' AS DateTime2), N'<p><strong><u>PLEASE CONTACT ME BEFORE PLACING YOUR ORDER</u></strong></p><p><strong><u>I''m located in LATVIA.</u></strong></p><p><br></p><p>My name is Anastasia, E-Commerce lifestyle and professional product photographer/videographer.</p><p><br></p><p>Professional E-Commerce Product Video which sparks an emotional response is the secret behind successful businesses In today''s E-Commerce world. High-quality Ads&nbsp;create&nbsp;<strong>brand trust</strong>&nbsp;and&nbsp;<strong>recognition</strong>, and&nbsp;boost your sales.</p><p><br></p><p>Our specialty is filming high-quality Product, Brand, or Lifestyle Videos for Amazon, Instagram,Etsy, Ebay, Shopify, and eCommerce.</p><p>We will make your Ads eye-catching and engaging.</p><p><em><u>I have beautiful and light interior which are ready to use for your product video. Or you can choose a professional studio</u></em></p><p>Let us take your E-Commerce business to the next level!</p><p><br></p><p><strong>My services includes</strong>:</p><ul><li>High-resolution Video, I deliver the&nbsp;highest quality available</li><li>Edited and ready to use video</li><li>Models/kids/pets or white background</li><li>Use of Professional Equipment, Lighting, Software</li><li>Studio and outdoors sets</li></ul><p><br></p><p><strong>Best for:</strong></p><ul><li>E-Commerce: Amazon, Shopify, Etsy, etc.</li><li>Website</li><li>Marketing or Advertising</li><li>Social Media</li><li>Amazon, Etsy, Instagram</li></ul><p><br></p><p><br></p><p>Feel free to ask any questions.</p><p>Are you ready to take your brand to the next level?</p>', 0, N'I will do professional amazon or ecommerce product video', 7044, 5, 0, NULL, NULL, 0, NULL, 7, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (28, CAST(N'2023-06-23T14:51:20.2040000' AS DateTime2), N'<p><strong><u>PLEASE CONTACT ME BEFORE PLACING YOUR ORDER</u></strong></p><p><br></p><p><br></p><p>My name is Nastia, Instagram, lifestyle and product photographer/videographer, and&nbsp;<u>YOUTUBE, INSTAGRAM&nbsp;blogger with 72 000 and 45 000 followers.</u></p><p><strong><u>I''m located in LATVIA.</u></strong></p><p><br></p><p>Your Amazon Listing images and <strong><u>video</u></strong> are&nbsp;<strong>the&nbsp;first impression</strong>&nbsp;that your potential customers get of you and your product. High-quality video&nbsp;create&nbsp;<strong>brand trust</strong>&nbsp;and&nbsp;<strong>recognition</strong>, and&nbsp;boost your sales.</p><p><br></p><p><strong>&nbsp;</strong>I am happy to co-model with my little one!&nbsp;( See add-ons ).&nbsp;</p><p>I have beautiful and light interior which are ready to use for your product video.</p><p><br></p><p><strong><u>My services includes</u></strong><u>:</u></p><ul><li>High-resolution Video, I deliver the&nbsp;highest quality available</li><li>Edited and ready to use video</li><li>Model or white background</li><li>Use of Professional Equipment, Lighting, Software</li></ul><p><br></p><p><strong><u>Best for:</u></strong></p><ul><li>E-Commerce</li><li>Website</li><li>Marketing or Advertising</li><li>Social Media</li><li>Amazon, Etsy, Instagram</li></ul><p><br></p><p><br></p><p>Feel free to ask any questions.</p><p>Are you ready to take your brand to the next level?</p>', 0, N'I will do baby product video for amazon', 7044, 5, 0, NULL, NULL, 0, NULL, 7, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (29, CAST(N'2023-06-23T14:51:20.2980000' AS DateTime2), N'<p><strong>**PLEASE DO NOT ORDER UNTIL YOU CONTACT US**</strong></p><p><br></p><p>We are a photography agency with highly skilled &amp;&nbsp;qualified&nbsp;professional artists with years of experience who specialize in shooting products for online stores.</p><p><br></p><p>This gig packages are excellent for those that sell on Amazon, Ebay, Etsy and other online selling platforms. We provide amazing high-quality photos that will make your listing stand out to your customers.&nbsp;</p><p><br></p><p><strong>Every Gig Package includes:</strong></p><ul><li>High-Resolution 300 DPI Quality Photo Delivered in JPEG format.</li><li>100% Pure white background (RGB 255) with grounding shadow or reflection.</li><li>Using Professional Camera and Studio Lighting.</li><li>Product prep to include steaming garments, stuffing bags, cleaning smudges, and minor assembly.</li><li>Photo editing to remove dust, scratches, and minor defects to make your product Shine.</li><li>Royalty-Free unlimited use license.</li></ul><p><br></p><p><strong>Why Choose Us?</strong></p><ul><li>100% Satisfaction Guaranteed &amp; Money Back Guaranteed&nbsp;&nbsp;</li><li>Every Order Will Be Delivered ON Time.</li><li>Fast &amp; Friendly Support.</li></ul><p><br></p><p>I look forward to working with you :)</p><p><strong>Heather, Liane &amp; Adnan</strong></p><p>Product Captures team</p>', 0, N'I will shoot professional product lifestyle photography in USA', 3756, 5, 0, NULL, NULL, 0, NULL, 8, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (30, CAST(N'2023-06-23T14:51:20.2980000' AS DateTime2), N'<p><strong>**PLEASE DO NOT ORDER UNTIL YOU CONTACT US**</strong></p><p><br></p><p>We are a photography agency with highly skilled &amp;&nbsp;qualified&nbsp;professional artists with years of experience who specialize in shooting products for online stores.</p><p><br></p><p>This gig packages are excellent for those that sell on Amazon, Ebay, Etsy and other online selling platforms. We provide amazing high-quality photos that will make your listing stand out to your customers.&nbsp;</p><p><br></p><p><strong>Every Gig Package includes:</strong></p><ul><li>High-Resolution 300 DPI Quality Photo Delivered in JPEG format.</li><li>100% Pure white background (RGB 255) with grounding shadow or reflection.</li><li>Using Professional Camera and Studio Lighting.</li><li>Product prep to include steaming garments, stuffing bags, cleaning smudges, and minor assembly.</li><li>Photo editing to remove dust, scratches, and minor defects to make your product Shine.</li><li>Royalty-Free unlimited use license.</li></ul><p><br></p><p><strong>Why Choose Us?</strong></p><ul><li>100% Satisfaction Guaranteed &amp; Money Back Guaranteed&nbsp;&nbsp;</li><li>Every Order Will Be Delivered ON Time.</li><li>Fast &amp; Friendly Support.</li></ul><p><br></p><p>I look forward to working with you :)</p><p><strong>Heather, Liane, Adnan</strong></p><p>Product Captures team</p>', 0, N'I will shoot cosmetic product photography in USA', 2348, 5, 0, NULL, NULL, 0, NULL, 8, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (31, CAST(N'2023-06-23T14:51:20.2980000' AS DateTime2), N'<p><strong>**PLEASE DO NOT ORDER UNTIL YOU CONTACT US**</strong></p><p><br></p><p>We are a photography team with highly skilled &amp;&nbsp;qualified&nbsp;professional artists with years of experience who specialize in shooting products for online stores.</p><p><br></p><p>These gig packages are excellent for those that sell on Amazon, eBay, Etsy, and other online selling platforms. We provide amazing high-quality photos that will make your listing stand out to your customers.&nbsp;</p><p><br></p><p><strong>Every Gig Package includes:</strong></p><ul><li>High-Resolution 300 DPI Quality Photo Delivered in JPEG format.</li><li>100% Pure white background (RGB 255) with grounding shadow or reflection.</li><li>Using Professional Camera and Studio Lighting.</li><li>Product prep to include steaming garments, stuffing bags, cleaning smudges, and minor assembly.</li><li>Photo editing to remove dust, scratches, and minor defects to make your product Shine.</li><li>Royalty-Free unlimited use license.</li></ul><p><br></p><p><strong>Why Choose Us?</strong></p><ul><li>100% Satisfaction Guaranteed &amp; Money Back Guaranteed&nbsp;&nbsp;</li><li>Every Order Will Be Delivered ON Time.</li><li>Fast &amp; Friendly Support.</li></ul><p><br></p><p>I look forward to working with you :)</p><p><strong>Heather, Liane &amp; Adnan</strong></p><p>Product Captures team</p>', 0, N'I will do professional white background product photography in USA', 1056, 5, 0, NULL, NULL, 0, NULL, 8, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (32, CAST(N'2023-06-23T14:51:20.2980000' AS DateTime2), N'<p><strong><u>**PLEASE DO NOT ORDER UNTIL YOU CONTACT US**</u></strong></p><p><br></p><p>Are you looking for high-quality product photography that will showcase your products in the best possible light and help them stand out from the competition? Look no further! As a professional product photographer with years of experience, I can help you capture stunning photos that will grab your customers'' attention and increase your sales.</p><p><br></p><p>Whether you''re selling on Amazon, Instagram, Etsy, or your own website, We can create high-quality product photos that will make your products look their best.</p><p><br></p><p><strong>Every Gig Package includes:</strong></p><ul><li>High-Resolution 300 DPI Quality Photo Delivered in JPEG format.</li><li>100% Pure white background (RGB 255) with grounding shadow or reflection.</li><li>Using Professional Camera and Studio Lighting.</li><li>Product prep to include steaming garments, stuffing bags, cleaning smudges, and minor assembly.</li><li>Photo editing to remove dust, scratches, and minor defects to make your product Shine.</li><li>Royalty-Free unlimited use license.</li></ul><p><br></p><p><strong>Why Choose Us?</strong></p><ul><li>100% Satisfaction Guaranteed &amp; Money Back Guaranteed&nbsp;&nbsp;</li><li>Every Order Will Be Delivered ON Time.</li><li>Fast &amp; Friendly Support.</li></ul><p><br></p><p>We look forward to working with you!</p><p><br></p><p>Adnan, Liane, Heather!</p>', 0, N'I will shoot amazon product photography, lifestyle and infographics in USA', 2582, 5, 0, NULL, NULL, 0, NULL, 8, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (33, CAST(N'2023-06-23T14:51:20.2980000' AS DateTime2), N'<p><strong><u>Are you looking for a stunning infographic to BOOST your Amazon sales? Well, youve come to the right place!</u></strong></p><p><br></p><p><br></p><p>Hi! Were Product Captures Photography  professional photographers and qualified graphic designers, expert in all things visual on Amazon.</p><p><br></p><p><strong>What we offer:</strong></p><p>High-quality images are essential to any Amazon listing page and can really help increase your traffic, conversion, and sales. We will design a beautiful and fully bespoke product infographic to help boost your sales.</p><p><br></p><p><strong>What you will get:</strong></p><ul><li>High-resolution JPEG infographic</li><li>Completely custom design&nbsp;</li><li>Your company logo and branding (you must provide this)</li><li>Product features</li><li>Advanced editing</li><li>Stock images&nbsp;</li></ul><p><br></p><p><strong>Why choose us:</strong></p><ul><li>We can help you make MORE MONEY!</li><li>Qualified and experienced professionals</li><li>24-hour support</li><li>100% satisfaction</li></ul><p><br></p><p><strong>What we need from you:</strong></p><ul><li>Product images (if you have them)</li><li>Product description(s)</li></ul><p><br></p><p><strong><u>*Please contact us before ordering for a free consultation*</u></strong></p><p>Don''t delay and contact us today to start SELLING MORE! We look forward to working with you.</p>', 0, N'I will do product photography and infographics for amazon listing in USA', 4226, 5, 0, NULL, NULL, 0, NULL, 8, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (34, CAST(N'2023-06-23T14:51:20.3650000' AS DateTime2), N'<p><strong>Please contact prior to purchasing to discuss shipping + your brand needs</strong></p><p><br></p><p>Hey there! My name is Deidre Schlabs, the woman behind Fluff Media. I am a photographer and videographer based in Chattanooga, Tennessee. I specialize in creating&nbsp;<strong>high-end, unique and engaging product videos and stop moitons.&nbsp;</strong>I''d love to partner with you in growing your brand using strong videos. I''ve worked with brands like Olly Vitamins, T3 Hair tools, DoorDash, Burts Bees and more.&nbsp;</p><p><br></p><p><strong>Best for ~</strong></p><ul><li>E-Commerce</li><li>Reels, TikToks, other short form ads</li><li>Website</li><li>Marketing or Advertising</li><li>Social Media</li></ul><p><br></p><p><strong>Each Stop Motion Includes ~</strong></p><p>&nbsp;- High-Resolution .Mov files</p><p>&nbsp;- Optional GIF file</p><p><br></p><p><br></p><p><strong>Notes ~</strong></p><p><br></p><ul><li><strong>Contact me first before starting order-</strong>&nbsp;you will need to ship the product to me prior to buying to avoid potential delays.</li><li>You will be responsible for the shipping fees for the products. If you need the product back, please let me know &amp; include a pre-paid return label in the package.</li><li>Reshoots are not free revisions and will be an additional cost</li></ul>', 0, N'I will create unique product videos for tiktok, instagram, and ads', 5870, 5, 0, NULL, NULL, 0, NULL, 9, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (35, CAST(N'2023-06-23T14:51:20.3650000' AS DateTime2), N'<p><strong>Please contact prior to purchasing to discuss shipping + your brand needs</strong></p><p><br></p><p>Hey there! My name is Deidre Schlabs, the woman behind Fluff Media. I am a photographer and marketer based in Chattanooga, Tennessee. I specialize in creating&nbsp;<strong>high-end, unique and engaging product photography</strong>.&nbsp;Id love to partner with you in growing your brand using strong photography. I''ve worked with all types of brands and have a specialty in jewelry photography. You can see more of my work on my website or my Instagram @fluffmedia_</p><p><br></p><p><strong>Best for ~</strong></p><ul><li>E-Commerce</li><li>Website</li><li>Marketing or Advertising</li><li>Social Media</li></ul><p><br></p><p><strong>Each Shoot Includes ~</strong></p><p>&nbsp;- High-Resolution JPEG Images&nbsp;</p><p>&nbsp;- Use of Professional Equipment, Lighting, + Software</p><p>&nbsp;- Edited &amp; Ready to Use&nbsp;&nbsp;</p><p><br></p><p><br></p><p><strong>Notes ~</strong></p><p><br></p><ul><li><strong>Contact me first before starting order-</strong>&nbsp;you will need to ship the product to me prior to buying to avoid potential delays.</li><li>You will be responsible for the shipping fees for the products. If you need the product back, please let me know and include a pre-paid return label in the package.</li></ul><p><br></p>', 0, N'I will shoot professional and unique jewelry photography', 2348, 5, 0, NULL, NULL, 0, NULL, 9, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (36, CAST(N'2023-06-23T14:51:20.3650000' AS DateTime2), N'<p><strong>Please contact prior to purchasing to discuss shipping + your brand needs</strong></p><p><br></p><p>Hey there! My name is Deidre Schlabs, the woman behind Fluff Media. I am a photographer and marketer based in Chattanooga, Tennessee. I specialize in creating&nbsp;<strong>high-end, unique and engaging product photography and stop moitons. </strong>I''d love to partner with you in growing your brand using strong videos. I''ve worked with brands like Olly Vitamins, T3 Hair tools, DoorDash, Burts Bees and more. </p><p><br></p><p><strong>Best for ~</strong></p><ul><li>E-Commerce</li><li>Website</li><li>Marketing or Advertising</li><li>Social Media</li></ul><p><br></p><p><strong>Each Stop Motion Includes ~</strong></p><p>&nbsp;- High-Resolution .Mov files</p><p>&nbsp;- Optional GIF file</p><p><br></p><p><br></p><p><strong>Notes ~</strong></p><p><br></p><ul><li><strong>Contact me first before starting order-</strong>&nbsp;you will need to ship the product to me prior to buying to avoid potential delays.</li><li>You will be responsible for the shipping fees for the products. If you need the product back, please let me know &amp; include a pre-paid return label in the package.</li><li>Reshoots are not free revisions and will be an additional cost</li></ul>', 0, N'I will create a creative and professional stop motion video', 5870, 5, 0, NULL, NULL, 0, NULL, 9, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (37, CAST(N'2023-06-23T14:51:20.3650000' AS DateTime2), N'<p><strong>Please contact prior to purchasing to discuss shipping + your brand needs</strong></p><p><br></p><p>Hey there! My name is Deidre Schlabs, the woman behind Fluff Media. I am a photographer and marketer based in Chattanooga, Tennessee. I specialize in creating <strong>high-end, unique and engaging product photography</strong>.&nbsp;Id love to partner with you in growing your brand using strong photography. I work with clients from all kinds of industries-&nbsp;from jewelry to beauty, to food, to packaging, I do it all! I''ve worked with brands like Olly Vitamins, T3 Hair tools, DoorDash, JustCBD and more. You can see more of my work on my website or my Instagram @fluffmedia_</p><p><br></p><p><strong>Best for ~</strong></p><ul><li>E-Commerce</li><li>Website</li><li>Marketing or Advertising</li><li>Social Media</li></ul><p><br></p><p><strong>Each Shoot Includes ~</strong></p><p>&nbsp;- High-Resolution JPEG Images&nbsp;</p><p>&nbsp;- Use of Professional Equipment, Lighting, + Software</p><p>&nbsp;- Edited &amp; Ready to Use&nbsp;&nbsp;</p><p><br></p><p><br></p><p><strong>Notes ~</strong></p><p><br></p><ul><li><strong>Contact me first before starting order-</strong>&nbsp;you will need to ship the product to me prior to buying to avoid potential delays.</li><li>You will be responsible for the shipping fees for the products. If you need the product back, please let me know &amp; include a pre-paid return label in the package.</li><li>Reshoots are not free revisions and will be an additional cost</li></ul>', 0, N'I will shoot unique product, studio, and lifestyle photography', 2348, 5, 0, NULL, NULL, 0, NULL, 9, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (38, CAST(N'2023-06-23T14:51:20.3650000' AS DateTime2), N'<p><strong><u>Please contact prior to purchasing to discuss shipping + your brand needs</u></strong></p><p><br></p><p><strong><u>We do not photograph most clothing/fabric items, bags, balloons, products larger than a foot mirror-finish, transparent, or products requiring installation. We do not offer editing services for images from clients.</u></strong></p><p><br></p><p>Additional fees may be required if:</p><ul><li>Oversize - max dimension more than 12"</li><li>Complex - such as jewelry, glass, and reflective items</li><li>Multi component products </li></ul><p><br></p><p>Hey there! My name is Deidre Schlabs, the woman behind Fluff Media. I am a photographer and marketer based in Chattanooga, Tennessee. I specialize in creating&nbsp;<strong>high-end, unique and engaging product photography</strong>.&nbsp;Id love to partner with you in growing your brand using strong photography. I''ve worked with brands like Olly Vitamins, T3 Hair tools, DoorDash, JustCBD and more.</p><p><br></p><p><strong>Best for ~</strong></p><ul><li>Amazon</li><li>Website</li><li>Etsy</li><li>E-Commerce</li></ul><p><br></p><p><strong>Each Shoot Includes ~</strong></p><p>&nbsp;- High-Resolution JPEG Images&nbsp;</p><p>&nbsp;- Use of Professional Equipment, Lighting, + Software</p><p>&nbsp;- Edited &amp; Ready to Use</p>', 0, N'I will shoot studio product photography for amazon, fba, and etsy', 2348, 5, 0, NULL, NULL, 0, NULL, 9, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (39, CAST(N'2023-06-23T14:51:20.4060000' AS DateTime2), N'<p>Hi, my name is Jeffrey Brian and I am a professional photographer based in Los Angeles with <strong>6+ years of commercial product photography experience.</strong></p><p><br></p><p>I create high quality product photography for clients to use on various platforms such as amazon, shopify, wordpress, magento, square space, wix, bigcommerce, woocommerce, etc.</p><p><br></p><p>I don''t create a lot of lifestyle photography, but instead specialize in professional product photography on a white or solid color background.</p><p><br></p><p>Some of the professional product photography niches I specialize in are:</p><ul><li>Jewelry Product Photography</li><li>Makeup Product Photography</li><li>Skincare Product Photography</li><li>Shoe Product Photography</li><li>Accessory Product Photography</li><li>Packaging Producing Photography</li><li>Candle Product Photography</li><li>Amazon Product Photography</li><li>Shopify Product Photography</li></ul><p><br></p><p>If you have any questions about my professional product photography on white or solid color background gig feel free to contact me.</p>', 0, N'I will create high quality product photography', 2348, 5, 0, NULL, NULL, 0, NULL, 10, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (40, CAST(N'2023-06-23T14:51:20.4190000' AS DateTime2), N'<p>?Pixieset is specially designed for professional&nbsp;Photographers with all functionality.&nbsp;I will design your Pixieset website with client galleries, set up a Photo store for Print &amp; Digital, and will set up your Online booking system.</p><p><br></p><p><strong>Basic&nbsp;</strong></p><p>????5 Page</p><p>?Stunning design by Pixieset pre-built template</p><p>?Variant portfolio layout design</p><p>?Slideshow, carousel &amp; Gallery</p><p>?Dynamic Contact form</p><p>?Fully Responsive</p><p>&nbsp;</p><p><strong>Standard (Includes all Basic features)&nbsp;</strong></p><p>?Online client gallery</p><p>?5 gallery setup</p><p>?Password &amp; watermark protected</p><p>?Online store for print &amp; digital photo</p><p>&nbsp;</p><p><strong>Premium (Includes all Basic+Standard features)</strong></p><p>Online Booking System</p><p>Blog</p><p>?On-page SEO optimization</p><p>Submit the site to the Google search console</p><p>?Domain connecting</p><p><br></p><p>?Easy to manage</p><p>After-sales service whenever you need</p><p>?Video tutorial if you need?</p><p>&nbsp;</p><p><strong>Have any questions or would like to see a live demo? feel free to message me.</strong></p><p><br></p><p><u>Feel free to place an order according to your needs.&nbsp;</u></p>', 0, N'I will design pixieset website, client gallery, print on demand store, online booking', 2348, 4.7, 0, NULL, NULL, 0, NULL, 11, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (41, CAST(N'2023-06-23T14:51:20.4190000' AS DateTime2), N'<p><strong>This gig is specially designed for Photo booth rental service providers. I''ll build a professional photo booth rental website where your client will find your all services details, attractive photos, videos, and pricing plan with online booking features.</strong></p><p><br></p><p><strong>it would be a perfect online business solution for a photo booth rental service.</strong></p><p><br></p><p><strong>Basic&nbsp;</strong>??</p><p>??5 Page</p><p>??Stunning design by Premium theme</p><p>??Photos &amp; Videos Gallery</p><p>??Services &amp; pricing plan</p><p>??Dynamic Contact form</p><p>??Fully Responsive</p><p><br></p><p><strong>Standard&nbsp;</strong>??</p><p>??Includes all Basic plan</p><p>??3 Extra single service page</p><p>??Image optimization</p><p>??Blog</p><p>??SEO Friendly</p><p>&nbsp;</p><p><strong>Premium&nbsp;</strong>???</p><p>??Includes all Standard plan</p><p>??Online booking system ( inbox for demo )</p><p>??Loading speed optimization</p><p>??Website security system setup</p><p>??Sitemap generator &amp; submit to Google search console</p><p>??Cloud backup system setup</p><p><br></p><p>??Built by WordPress</p><p>?? Provide video tutorial</p><p>??After-sales service whenever you need</p><p><br></p><p>??&nbsp;<strong>Have any chosen designs or need a custom offer?</strong></p><p><strong>Feel free to inbox me &amp; share your plan, I''ll reply shortly.</strong></p><p><strong>Thank you.</strong></p>', 0, N'I will design a photo booth and party rental website with online booking', 3522, 5, 0, NULL, NULL, 0, NULL, 11, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (42, CAST(N'2023-06-23T14:51:20.4190000' AS DateTime2), N'<p>You have a WordPress website but you are not a tech guy or you have no time to maintain the site and update content.&nbsp;This gig is for you.&nbsp;</p><p><br></p><p><strong><u>With my 100+ website development experience, I will maintain &amp; take care of your WordPress website with the following points...</u></strong></p><p><br></p><p><strong>BASIC</strong></p><p>- Core WordPress version update</p><p>- Theme update&nbsp;</p><p>- Plugins update</p><p>- Daily Cloud backup &amp; 1 click restore for any situation</p><p>- Security scans</p><p>- Monthly full report</p><p><br></p><p><strong>STANDARD</strong></p><p>- All basic package features</p><p>- 1-page content upload to any portfolio page or update any 1 one page content</p><p><br></p><p><strong>PREMIUM</strong></p><p>- All basic package features</p><p>- 3-page content upload to any portfolio page or update content any 3-page</p><p><br></p><p><u>The best part of the service is the premium cloud backup system, for any situation we can restore the site within a click. So your site is fully secure.</u></p><p><br></p><p>If you have a woo-commerce website &amp; need to add products monthly or if you need any customized service then feel free to message me for a custom quote</p><p><br></p><p>NOTE: If you have any premium themes &amp; plugins then need the license to update them.</p>', 0, N'I will maintenance and update wordpress and create a daily cloud backup', 469, 5, 0, NULL, NULL, 0, NULL, 11, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (43, CAST(N'2023-06-23T14:51:20.4190000' AS DateTime2), N'<p>This gig is specially designed for One product store, Professional e-commerce &amp; Advanced Dropshipping website.</p><p><br></p><p>In this Gig you will get a...</p><p> Professional e-commerce website by Shopify</p><p> Highly converting design</p><p> Profitable Niche selection for Dropshipping</p><p> Best selling product by Advance filtering</p><p> A fully setup Dropshipping store that will convert sales</p><p> On-page SEO optimization</p><p> Website Loading speed optimization</p><p> All essential App setup</p><p> Facebook &amp; Whatsapp chat integration</p><p> Friendly support whenever you need</p><p><br></p><p>You will get a complete e-commerce or Dropshipping website with all advance features that will convert your sales.</p><p><br></p><p>Feel free to inbox me to discuss your store. Thank you</p>', 0, N'I will create an ecommerce or dropshipping website by shopify', 3522, 5, 0, NULL, NULL, 0, NULL, 11, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (44, CAST(N'2023-06-23T14:51:20.4190000' AS DateTime2), N'<p>The best part of this <strong>wordpress website design</strong> gig is...</p><p><br></p><p><strong>According to your needs, I''ll suggest the best design theme &amp; essential plugins that will engage your target more effectively. Inbox me to see demos.</strong></p><p><br></p><p><strong>11 Reasons why you should choose this Gig?</strong></p><p>?Clean Design with a premium theme</p><p>?Essential plugin according to your business</p><p>?E-commerce</p><p>?Social media integration</p><p>?SEO friendly</p><p>?Responsive</p><p>?Loading speed optimization</p><p>?Ultimate security system</p><p>?Daily online backup to remote storage</p><p>?Easy to manage</p><p>?1 Month after delivery support</p><p><br></p><p>Note: If need any premium resource you have to purchase it.</p><p><br></p><p>Please contact me before placing the order, so that we can discuss your requirements for your website creation.</p><p><br></p><p><strong>I''m excited to hear back from you</strong></p>', 0, N'I will design wordpress website for business and ecommerce with premium theme', 3522, 5, 0, NULL, NULL, 0, NULL, 11, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (45, CAST(N'2023-06-23T14:51:20.4190000' AS DateTime2), N'<p>Creating a woo-commerce website is not rocket science. But&nbsp;<strong>if you want to make a sales-generating e-commerce store then you have to add some extra functionality that will engage more customers &amp; increase sales volume.</strong></p><p><br></p><p>I can help you to set up a fully functional e-commerce store from scratch to be ready for selling.</p><p><br></p><p>The site will have the following advanced features...</p><p><br></p><p><strong>BASIC</strong></p><ul><li>Woocommerce Set up</li><li>Premium theme according to the product</li><li>Mobile friendly</li><li>Dynamic contact form with google map</li><li>Legal pages setup</li><li>Wishlist</li><li>5 Products upload</li></ul><p><br></p><p><strong>STANDARD</strong></p><ul><li>Include all BASIC features</li><li>SEO Friendly</li><li>Conditional Shipping method</li><li>Loading speed optimize</li><li>Facebook live chat</li><li>Blog</li><li>10 Products upload</li></ul><p><br></p><p><br></p><p><strong>PREMIUM</strong></p><ul><li>Include all STANDARD features</li><li>Dynamic pricing &amp; discount</li><li>Facebook pixel, Google analytics &amp; Mailchimp integration</li><li>Dynamic pop-up to collect leads &amp; offer</li><li>Website Security system setup</li><li>Cloud backup &amp; restore set up</li><li>Submit the site to the Google search console</li><li>15 Products upload</li></ul><p><br></p><p><br></p><p>?? Provide video tutorial</p><p>??After-sales service whenever you need</p><p>&nbsp;</p><p>??&nbsp;<strong>Have any questions or would like to see a live demo? Feel free to inbox me.</strong></p>', 0, N'I will create a sales generating ecommerce website by woocommerce', 3522, 5, 0, NULL, NULL, 0, NULL, 11, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (46, CAST(N'2023-06-23T14:51:20.4190000' AS DateTime2), N'<p><strong>This gig is specially designed for professional&nbsp;Photographers, videographers &amp; Drone service providers who want to present their portfolios more beautifully and would like to get a Perfect Online Booking system</strong>?<strong>.</strong></p><p>&nbsp;</p><p><strong>Basic&nbsp;</strong></p><p>-?? Stunning design by Premium theme</p><p>-? Variant portfolio layout design</p><p>?- Slideshow, carousel, Album, Video &amp; Gallery</p><p>?- Dynamic Contact form</p><p>?- Fully Responsive</p><p>?- 5 Page</p><p>&nbsp;</p><p><strong>Standard (Includes all Basic features)&nbsp;</strong></p><p>?- SEO Friendly</p><p>?- E-commerce for selling digital &amp; Print photo</p><p>?- Instagram gallery integration &amp; other social media connect</p><p>-? Image optimization</p><p>?- Webmail set up</p><p>-? Blog</p><p>?- 10 Page</p><p>?- 5 Product upload</p><p>&nbsp;</p><p><strong>Premium (Includes Basic+Standard)&nbsp;</strong>?</p><p>?- Online booking system (inbox for demo)</p><p>?- Password proofing gallery for each client</p><p>?- Superfast page loading speed</p><p>?- Cloud Backup &amp; Restore</p><p>?- Security system</p><p>?- Google Search Console</p><p>- 15 Page</p><p>?- 10 Booking product</p><p><br></p><p>Built by WordPress</p><p>Provide video tutorial</p><p>After-sales service whenever you need</p><p>&nbsp;</p><p><strong>Have any questions or would like to see a live demo?</strong></p><p>I have some awesome demos for Professional photography, Videography &amp; Drone Services,&nbsp;inbox me for a live demo &amp; discussion about your website.</p><p><br></p><p>Thank you</p>', 0, N'I will make photography, video and drone website with online booking', 3522, 5, 0, NULL, NULL, 0, NULL, 11, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (47, CAST(N'2023-06-23T14:51:20.5190000' AS DateTime2), N'<p>If you are importing products from CHINA and looking for a Professional High-End Amazon Product Photography and Retouching Service, you are in the right place!</p><p><br></p><p><strong>Why choose my service?</strong></p><p><br></p><ul><li>The images your supplier sends to you may not be up to the level.</li><li>You wanted to design your listing professionally.</li><li>You need high-quality lifestyle and infographics images&nbsp;</li><li>You wanted to save you the time of Amazon Product Photography&nbsp;and designing the listing images.&nbsp;</li></ul><p><br></p><p>I have over six years of experience in&nbsp;Amazon Product Photography&nbsp;retouching and listing image designing. I&nbsp;have my studio located in CHINA, my Photographers are experts in Product Photography.&nbsp;So you can rely on me.&nbsp;</p><p><br></p><p><strong>The services I am providing.</strong></p><p><br></p><ul><li>Take Professional Product Photography in China.</li><li>Professionally retouched white background images with a zooming effect.</li><li>Add Graphics elements to the retouched images.</li><li>Add stock photos to the images to make lifestyle images.&nbsp;</li><li>Infographic images to better understand the product.&nbsp;</li></ul><p><br></p><p>Don''t waste this opportunity! Add this gig to Your Favorites &amp; Contact me Now! I am here to help you.&nbsp;</p><p><br></p><p><strong>IMPORTANT</strong></p><ul><li><strong><u>Contact me BEFORE placing an order&nbsp;</u></strong></li><li><strong><u>Delivery time starts when I RECEIVE the product</u></strong></li></ul>', 0, N'I will do professional amazon product photography in china', 2348, 4.9, 0, NULL, NULL, 0, NULL, 12, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (48, CAST(N'2023-06-23T14:51:20.5190000' AS DateTime2), N'<p><strong><u>Why choose my service?</u></strong></p><p><br></p><p>I am an expert on Professional Photoshop editing. I have been working in this sector&nbsp;for more than four years. I worked with thousands of satisfied customers; you can rely on my services.&nbsp;</p><p><br></p><p><strong><u>Some of the tasks I can perform are:</u></strong></p><ul><li>&nbsp;Photo Retouching</li><li>Jewelry retouching</li><li>Jewelry enhancement</li><li>Clipping Path Service</li><li>Color Correction</li><li>Composite / Merged Photos</li><li>&nbsp;Color to Black &amp; White</li><li>Teeth Whitening</li><li>&nbsp;Background Removal/ Image Cutout</li><li>Raw Processing</li><li>Image Enhancement</li><li>Photo Manipulation</li><li>Image Re-size</li><li>Removing Object/Person from the photo</li><li>Color Correction Services</li><li>Multipath Service</li><li>Natural Shadow</li><li>Drop Shadow</li><li>Image Reflection</li><li>Hair Masking&nbsp;</li></ul><p>many more..........</p><p><br></p><p>If the service you want is&nbsp;NOT&nbsp;listed above, please&nbsp;feel free to contact me&nbsp;and we will discuss it. I will get back to you asap.</p><p><br></p><ul><li>For fast delivery, please check gig extras</li><li>Revisions until fully satisfied</li><li>I don’t do vector illustrations or drawings</li></ul><p><strong><u>Do you have any inquiry? Feel free to ask me. My consultancy is 100% free forever!&nbsp;</u></strong></p><p><strong><u>ORDER NOW&nbsp;and get your work done quickly.</u></strong></p><p><strong><u>Exclusively on Fiverr.com</u></strong></p>', 0, N'I will do professional photoshop editing', 234, 4.9, 0, NULL, NULL, 0, NULL, 12, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (49, CAST(N'2023-06-23T14:51:20.5190000' AS DateTime2), N'<p><strong><u>Why choose my service?</u></strong></p><p><br></p><p>I am an expert on Product Photo Retouching for <u>AMAZON LISTING,</u>&nbsp;any E-commerce site. I have been working in this sector&nbsp;for more than four years. I worked with thousands of satisfied customers; you can rely on my services.&nbsp;</p><p><br></p><p><br></p><p><strong><u>Eye-catching&nbsp;image sell more in eCommerce shop</u></strong></p><p><br></p><p>If you want to sell something on AMAZON, eBay, or any online store, a professional picture of your products is a must.</p><p><br></p><p><strong><u>The service you will get from me</u></strong></p><p><br></p><p>1. Remove Product Background to replace pure white Background.&nbsp;</p><p>2. Create a shadow and reflection of your image so that it looks more realistic.</p><p>3. Remove dust or any scratches so that your picture looks more beautiful.</p><p>4. Sharpen your image and give proper lighting.</p><p>5. Retouching, Cropping/Resizing your image, to match your site design.</p><p>6. Adding graphics to your images according&nbsp;to your instructions.</p><p><br></p><p><strong><u>I strictly follow the Amazon/eBay product requirements.</u></strong></p><p><br></p><p><strong><u>What you need to do</u></strong></p><p><br></p><p>Please send me high-resolution images.</p><p>Please <strong><u>don''t</u></strong> send low-resolution Photos.</p><p><br></p><p><strong><u>No jewelry&nbsp;image include in this gig</u></strong></p><p><br></p><p><strong><u>Do you have any inquiries? Feel free to ask me. I am always here to help you.</u></strong></p><p><br></p><p><strong><u>I can assure you of the best service. </u></strong></p>', 0, N'I will retouch product photos for your amazon listing', 234, 5, 0, NULL, NULL, 0, NULL, 12, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (50, CAST(N'2023-06-23T14:51:20.5560000' AS DateTime2), N'<p><strong>Please contact prior to purchasing to discuss shipping + your brand needs.</strong></p><p><br></p><p>Hey there! My name is Asli Toluk. I am a photographer and marketer based in London, UK. I specialise in creating&nbsp;<strong>high-end, unique, creative and engaging product photography &amp; stop motion.&nbsp;</strong></p><p><br></p><p>My portfolio of work includes projects with beauty &amp; wellness brands, food &amp; beverage companies, jewellery brands from around the world. www.aveclondon.co.uk</p><p><br></p><p>Whether you looking for images to refresh your instagram or website, or improve photos of your amazon listing feel free to contact me any time and I will do my best to deliver you the best possible results!</p><p><br></p><p><strong>All packages include:</strong></p><p>Creative Direction</p><p>Styling</p><p>Photography</p><p>Retouch</p><p><br></p><p><strong>Best for:</strong></p><p>E-Commerce</p><p>Website</p><p>Marketing or Advertising</p><p>Social Media</p><p><br></p><p><strong><em>Please, include this information in your initial message:</em></strong></p><p>How many and what kind of pictures are need</p><p>Photo examples</p><p>Specific requirements if there are any</p>', 0, N'I will shoot professional product photography and stop motions', 2817, 5, 0, NULL, NULL, 0, NULL, 13, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (51, CAST(N'2023-06-23T14:51:20.5680000' AS DateTime2), N'<p><strong>PLEASE CONTACT ME BEFORE PLACING YOUR ORDER</strong></p><p><br></p><p>My name is Eugene, i am Wedding, Family, Lifestyle and product/food photographer/videographer!</p><p><br></p><p><strong>I''m located in LATVIA.</strong></p><p><br></p><p>Your Amazon Listing images and <strong>video</strong> are&nbsp;<strong>the&nbsp;first impression</strong>&nbsp;that your potential customers get of you and your product. High-quality video&nbsp;create&nbsp;<strong>brand trust</strong>&nbsp;and&nbsp;<strong>recognition</strong>, and&nbsp;boost your sales.</p><p><br></p><p>I have beautiful and light interior which are ready to use for your product video. Living room, nursery and bedroom.</p><p><br></p><p><strong>My services includes</strong>:</p><ul><li>High-resolution Video, I deliver the&nbsp;highest quality available</li><li>Edited and ready to use video</li><li>Baby models with different age and gender.</li><li>I use professional gear. Nikon D750 with Sigma Art lenses and Sony A7c</li></ul><p><br></p><p><strong>Best for:</strong></p><ul><li>Amazon, Etsy, Instagram</li><li>Website</li><li>Marketing or Advertising</li><li>Social Media</li></ul><p><br></p><p><u>Feel free to ask any questions.</u></p><p>Are you ready to take your brand to the next level?</p>', 0, N'I will do baby product video for amazon', 7044, 4.9, 0, NULL, NULL, 0, NULL, 14, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (52, CAST(N'2023-06-23T14:51:20.5680000' AS DateTime2), N'<p><strong>PLEASE CONTACT ME BEFORE PLACING YOUR ORDER</strong></p><p><br></p><p><br></p><p>My name is Jevgen, i am Wedding, Family, Lifestyle and product photographer/videographer! I use my 15 years experience in photography to make fantastic photos of your product.</p><p><br></p><p>My photos of your baby products in your store will give a very positive first impression. High-quality photos are the key to big sales!</p><p><br></p><p>I will be happy to provide you with professional photography services.</p><p>I specialize in creating&nbsp;<strong>unique and fantastic product photos.</strong></p><p>I have beautiful and light interior which are ready to use for your product photos.</p><p><br></p><p><strong>I''m located in LATVIA.</strong></p><p><br></p><p><strong>My services includes</strong>:</p><ul><li>High-resolution JPEG Images! Or RAW as extra</li><li>Edited and ready to use images</li><li>Baby models with different age and gender, Dads, Moms or white background photos/infographics</li><li>I use professional gear. Nikon D750 and Sigma Art series lenses! And Sony A7c</li></ul><p><br></p><p><strong>Best for:</strong></p><ul><li>E-Commerce</li><li>Website</li><li>Marketing or Advertising</li><li>Social Media</li><li>Amazon, Etsy, Instagram</li></ul><p><br></p><p>READ FAQ FIRST! And then feel free to ask any questions.</p><p>Thank you!</p>', 0, N'I will do baby product photography', 4696, 5, 0, NULL, NULL, 0, NULL, 14, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (53, CAST(N'2023-06-23T14:51:20.5680000' AS DateTime2), N'<p><strong>PLEASE CONTACT ME BEFORE PLACING YOUR ORDER</strong></p><p><br></p><p>My name is Jevgen, i am Wedding, Family, Lifestyle and product/food photographer/videographer!</p><p><br></p><p><strong>I''m located in LATVIA.</strong></p><p><br></p><p>Your Amazon Listing images and <strong>video</strong> are&nbsp;<strong>the&nbsp;first impression</strong>&nbsp;that your potential customers get of you and your product. High-quality video&nbsp;create&nbsp;<strong>brand trust</strong>&nbsp;and&nbsp;<strong>recognition</strong>, and&nbsp;boost your sales.</p><p><br></p><p>I have beautiful and light interior which are ready to use for your product video. Living room, Kitchen, Nursery and Bedroom.</p><p><br></p><p><strong>My services includes</strong>:</p><ul><li>High-resolution Video, I deliver the&nbsp;highest quality available</li><li>Edited and ready to use video</li><li>Cute models with different age and gender.</li><li>I use professional gear. Nikon D750 with Sigma Art lenses and Sony A7c</li></ul><p><br></p><p><strong>Best for:</strong></p><ul><li>Amazon, Etsy, Instagram</li><li>Website</li><li>Marketing or Advertising</li><li>Social Media</li></ul><p><br></p><p>Feel free to ask any questions.</p><p>Are you ready to take your brand to the next level?</p>', 0, N'I will shoot product video for amazon and other', 7044, 5, 0, NULL, NULL, 0, NULL, 14, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (54, CAST(N'2023-06-23T14:51:20.5680000' AS DateTime2), N'<p>*Please, you must contact me before ordering so we can discuss all the project details!*</p><p><strong><u>DON''T ORDER GIG UNTIL I HAVE THE PRODUCT</u></strong></p><p><br></p><p>Consistently beautiful photography creates&nbsp;<strong>brand trust and recognition,&nbsp;</strong>it is the&nbsp;<strong>first impression</strong>&nbsp;that your potential customers get of you, and at the same time it&nbsp;<strong>conveys&nbsp;emotion.</strong></p><p><br></p><p>You can see my photography style in my portfolio and Instagram - janens_com.&nbsp;</p><p><br></p><p><strong>What you''ll get:</strong></p><p><br></p><p> Highest Resolution JPEG&nbsp;</p><p> Images taken with professional high-end SLRs and equipment (Nikon D750, Sigma Art lenses, SONY A7C 35 2.0 and 90 2.8 macro)&nbsp;</p><p> Professionally edited in a unique touch with Adobe Lightroom and Photoshop</p><p> High-end photos for your E-Commerce, Social Media, Amazon Listing, Ad Campaign, Website, etc</p><p><br></p><p><strong>I can offer:</strong></p><ul><li>Lifestyle Product Photo in our big, light Scandinavian house with cozy interior or Photo on white background.</li><li>Product including model:&nbsp;Any age, gender male or female adult model or baby model. ( Extra fee)</li></ul><p><br></p><p>Feel free to ask any questions.</p><p>Thank you!</p>', 0, N'I will do product photography for you online business', 7044, 5, 0, NULL, NULL, 0, NULL, 14, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (55, CAST(N'2023-06-23T14:51:20.6070000' AS DateTime2), N'<b><span><u>**100+ THRILLED PHOTOGRAPHY CLIENT REVIEWS!!**<br></u><u><br>D O&nbsp; &nbsp;N O T&nbsp; &nbsp;O R D E R&nbsp; &nbsp;G I G&nbsp; &nbsp;U N T I L&nbsp; &nbsp;I&nbsp; &nbsp;H A V E&nbsp; &nbsp;T H E&nbsp; &nbsp;P R O D U C T</u><br></span></b><u></u><br>The gig will have to be cancelled as it throws off delivery completion times.<br><br>Looking for stunning images that help your products outshine competition?&nbsp; After spending 15+ years in corporate Fortune 500 sales and product marketing, I know the power great imagery has in improving sales. &nbsp;I graduated from a world-class photography school, majoring in Commercial &amp; Advertising, and I''ve worked with many&nbsp;<b>well-known</b>&nbsp;corporate clients. &nbsp;<b>This isn''t a hobby,&nbsp;</b>it''s what I do.&nbsp;<br><br><b>What this gig is good for:</b><br><ul><li>Advertising</li><li>Marketing</li><li>Print<br></li><li>E-Commerce/Web</li></ul><br><b>Every order</b>&nbsp;includes High-Res JPGs and Professional Editing<br><br>For any options not listed, please message me i.e.&nbsp;<b>location shooting/4k video.</b><br><br>Please contact me with details of your product and to obtain my shipping address.&nbsp;&nbsp;<span><b>After I receive your product, I will have you purchase the gig</b>&nbsp;(days to completion begins after I receive your product).&nbsp;</span>', 0, N'I will create professional commercial product photography', 5283, 4.8, 0, NULL, NULL, 0, NULL, 15, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (56, CAST(N'2023-06-23T14:51:20.6070000' AS DateTime2), N'<p><strong><u>*********&nbsp;&nbsp;P L E A S E&nbsp;R E A D&nbsp;&nbsp;*********&nbsp;D O&nbsp;&nbsp;N O T&nbsp;&nbsp;O R D E R&nbsp;&nbsp;G I G&nbsp;&nbsp;U N T I L&nbsp;&nbsp;I&nbsp;&nbsp;H A V E&nbsp;&nbsp;T H E&nbsp;&nbsp;P R O D U C T</u></strong></p><p><br></p><p>The gig will have to be cancelled as it throws off delivery completion times.</p><p><br></p><p>Looking for stunning images that help your products outshine competition?&nbsp;After spending 15+ years in corporate Fortune 500 sales and product marketing, I know the power great imagery has in improving sales.&nbsp;I graduated from a world-class photography school, majoring in Commercial &amp; Advertising, and I''ve worked with many&nbsp;<strong>well-known</strong>&nbsp;corporate clients.&nbsp;<strong>This isn''t a hobby, </strong>it''s what I do.</p><p><br></p><p><strong>What this gig is good for:</strong></p><ul><li>Advertising</li><li>Marketing</li><li>Print</li><li>E-Commerce/Web</li></ul><p><br></p><p><strong>Every order</strong> includes High-Res JPGs and Professional Editing</p><p><br></p><p>For any options not listed, please message me i.e. <strong>location shooting/4k video.</strong></p><p><br></p><p>Please contact me with details of your product and to obtain my shipping address.&nbsp;<strong><u>After I receive your product, I will have you purchase the gig</u></strong><u> (days to completion begins after I receive your product). </u></p>', 0, N'I will create professional commercial product photography', 4109, 5, 0, NULL, NULL, 0, NULL, 15, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (57, CAST(N'2023-06-23T14:51:20.6070000' AS DateTime2), N'<p><u>***DO NOT Order gig until the product has been verified as received***</u></p><p><br></p><p>Increase Sales</p><p><br></p><p>Professional 360 product photography can increase your online sales. Most of our clients observe a 30% uplift after implementing 360 degree product photos. One web shop even tripled their sales with the addition of 360 photography.</p><p><br></p><p>Decrease Returns</p><p>A 360 photography solution enables potential customers to see your product in much more detail, and sets even clearer expectations when buying your product. As a consequence, our clients have reported a reduction in return rates of up to 50%.</p><p><br></p><p>Automated Gif</p><p>In our Standard&nbsp;and Premium&nbsp;360 photography packages we will also provide you with automated gifs. These are automated spins of your product, saved as a single file which can be easily added to a product gallery.</p><p><br></p><p>Provide a Zoom</p><p>In our gig extras we offer a 360 photography package add-on which delivers a set of product photos which enables to add a magnifier effect or even a stunning full width zoom to your 360 product rotation. Your customers will love it!</p>', 0, N'I will create 360 product photography videos', 2348, 5, 0, NULL, NULL, 0, NULL, 15, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (58, CAST(N'2023-06-24T16:31:51.2690000' AS DateTime2), N'created', 0, N'Create new service', 10000, 0, 0, 0, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (59, CAST(N'2023-06-24T16:33:32.5320000' AS DateTime2), N'created', 0, N'Create new service', 10000, 0, 0, 0, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (60, CAST(N'2023-06-24T16:35:47.1580000' AS DateTime2), N'created', 0, N'Create new service', 10000, 0, 0, 0, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (61, CAST(N'2023-06-24T16:36:54.4170000' AS DateTime2), N'created', 0, N'Create new service', 10000, 0, 0, 0, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (62, CAST(N'2023-06-24T16:46:18.7950000' AS DateTime2), N'created', 0, N'Create new service', 10000, 0, 0, NULL, NULL, 0, 1, NULL, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (63, CAST(N'2023-06-24T17:20:52.9740000' AS DateTime2), N'created', 0, N'Create new service', 10000, 0, 0, NULL, NULL, 0, 1, NULL, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (64, CAST(N'2023-06-25T09:59:55.0340000' AS DateTime2), N'created', 0, N'Create new service', 10000, 0, 0, NULL, NULL, 0, 1, NULL, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (65, CAST(N'2023-06-25T10:07:52.1220000' AS DateTime2), N'created', 0, N'Create new service', 10000, 0, 0, NULL, NULL, 0, 1, NULL, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (66, CAST(N'2023-06-25T10:12:14.9790000' AS DateTime2), N'created', 0, N'Create new service', 10000, 0, 0, NULL, NULL, 0, 1, NULL, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (67, CAST(N'2023-06-25T10:12:17.5240000' AS DateTime2), N'created', 0, N'Create new service', 10000, 0, 0, NULL, NULL, 0, 1, NULL, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (68, CAST(N'2023-06-25T10:13:47.9990000' AS DateTime2), N'created', 0, N'Create new service', 10000, 0, 0, NULL, NULL, 0, 1, NULL, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (69, CAST(N'2023-06-25T10:56:09.9940000' AS DateTime2), N'created', 0, N'Create new service', 10000, 0, 0, NULL, NULL, 0, 1, NULL, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (70, CAST(N'2023-06-25T11:21:22.5630000' AS DateTime2), N'created', 0, N'Create new service', 10000, 0, 0, NULL, NULL, 0, 1, NULL, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (71, CAST(N'2023-06-25T11:24:18.7300000' AS DateTime2), N'created', 0, N'Create new service', 10000, 0, 0, NULL, NULL, 0, 1, NULL, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (72, CAST(N'2023-06-25T11:27:16.6420000' AS DateTime2), N'created', 0, N'Create new service', 10000, 0, 0, 0, NULL, 0, 1, NULL, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (73, CAST(N'2023-06-25T11:28:55.9090000' AS DateTime2), N'created', 0, N'Create new service', 10000, 0, 0, 0, NULL, 0, 1, NULL, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (74, CAST(N'2023-06-25T11:29:46.0080000' AS DateTime2), N'created', 0, N'Create new service', 10000, 0, 0, 0, NULL, 0, 1, NULL, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (75, CAST(N'2023-06-27T21:38:57.7050000' AS DateTime2), N'created', 0, N'Create new service', 10000, 0, 0, 0, NULL, 0, 1, NULL, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (76, CAST(N'2023-06-27T21:42:24.4500000' AS DateTime2), N'created', 0, N'Create new service', 10000, 0, 0, 0, NULL, 0, 1, NULL, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (77, CAST(N'2023-06-27T22:12:47.3830000' AS DateTime2), N'created', 0, N'Create new service', 10000, 0, 0, 0, NULL, 0, 1, NULL, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (78, CAST(N'2023-06-27T22:17:18.3580000' AS DateTime2), N'created', 0, N'Create new service', 10000, 0, 0, 0, NULL, 0, 1, NULL, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (79, CAST(N'2023-06-27T22:18:03.4780000' AS DateTime2), N'created', 0, N'Create new service', 10000, 0, 0, 0, NULL, 0, 1, NULL, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (80, CAST(N'2023-06-27T22:18:26.7630000' AS DateTime2), N'created', 0, N'Create new service', 10000, 0, 0, 0, NULL, 0, 1, NULL, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (81, CAST(N'2023-06-27T22:19:38.3800000' AS DateTime2), N'created', 0, N'Create new service', 10000, 0, 0, 0, NULL, 0, 1, 1, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (82, CAST(N'2023-06-29T15:40:32.4340000' AS DateTime2), N'created', 0, N'Create new service2', 10000, 0, 0, 0, NULL, 0, 1, 1, NULL)
GO
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (83, CAST(N'2023-06-29T15:46:29.3410000' AS DateTime2), N'created', 0, N'Create new service2', 10000, 0, 0, 0, NULL, 0, 1, 1, NULL)
GO
SET IDENTITY_INSERT [dbo].[service_pack] OFF
GO
SET IDENTITY_INSERT [dbo].[studio] ON 
GO
INSERT [dbo].[studio] ([studio_id], [address], [avatar_studio], [balance], [cover_image], [create_date], [description], [name], [status], [total_rating], [admin_id], [owner], [sub_admin_studio]) VALUES (1, N'H? Chí Minh', N'https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/30cf19fe075c899cf210f3058bd9eb91-1597430792855/04659566-5ac6-4714-a8e3-bc7ee524a57f.jpg', NULL, NULL, NULL, N'Hello, thanks that visited my page. My name is Lana. I''m a professional photographer. My goal is to make all my clients 100% satisfied with my work. I will be happy to create studio high quality photos to growing your brand. I''m located in Florida , so can use a beautiful nature to create an amazing lifestyle photos! I''m hardworking and always aim for a quality results. If you are interested, write to me and we will discuss the details of the order.', N'lana_sky', NULL, 5, 1, 1, NULL)
GO
INSERT [dbo].[studio] ([studio_id], [address], [avatar_studio], [balance], [cover_image], [create_date], [description], [name], [status], [total_rating], [admin_id], [owner], [sub_admin_studio]) VALUES (2, N'H? Chí Minh', N'https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/0e921c3720247f96948cd8fa5d5ddd79-1545086782505/5421f693-a074-49dd-a499-1886db56f9a5.JPG', NULL, NULL, NULL, N'I have been a professional photographer/videographer for more than 12 years. I also have a full-time professional team of videographers / photographers specialized in shooting Product and Lifestyle Photos / Videos. Now we are providing our service exclusively on Fiverr. I have experience working with big names and brands such as Samsung and Primark, so you can be sure I’m not just another person saying “Look at me”. When you choose to work with me, you get the benefit of all my experience here in Fiverr where I now deliver the best quality to my clients.', N'Katy M', NULL, 5, 1, NULL, NULL)
GO
INSERT [dbo].[studio] ([studio_id], [address], [avatar_studio], [balance], [cover_image], [create_date], [description], [name], [status], [total_rating], [admin_id], [owner], [sub_admin_studio]) VALUES (3, N'H? Chí Minh', N'https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/4e921247f8cb88392fc53f72fe722ce2-1615587161438/eef4083d-d75e-48c5-925c-9cc2e9551b5b.jpeg', NULL, NULL, NULL, N'Creating stories through product photography and video. I make brands stand out in the sea of boring companies across social media. Reach out today for high performing custom content.', N'Max S', NULL, 5, 1, NULL, NULL)
GO
INSERT [dbo].[studio] ([studio_id], [address], [avatar_studio], [balance], [cover_image], [create_date], [description], [name], [status], [total_rating], [admin_id], [owner], [sub_admin_studio]) VALUES (4, N'H? Chí Minh', N'https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/82daacc10784639998b3d39cca5a727c-1640973123032/927c80d7-a087-4916-a218-7ca8e64e1e99.png', NULL, NULL, NULL, N'Hey, I am José Luis! I am a marketer focused into Digital Communication. I have worked as a Marketing Manager for several international companies. One of my passions is photography/videography, specially with landscapes and product photography. I am currently based in Mexico City. In my photos, I go for natural light aesthetics and lifestyle feel.', N'Jose Luis', NULL, 5, 1, NULL, NULL)
GO
INSERT [dbo].[studio] ([studio_id], [address], [avatar_studio], [balance], [cover_image], [create_date], [description], [name], [status], [total_rating], [admin_id], [owner], [sub_admin_studio]) VALUES (5, N'H? Chí Minh', N'https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/4210c986b459fb7b63066133b3bd35e9-1668272435508/ec3d9630-5539-4f67-977c-3a733bf363b4.png', NULL, NULL, NULL, N'Hi! My name is Sean. I run a production studio that specializes in product photography, food photography and videography marketing solutions. We create industry leading content for companies looking to grow their sales and build strong brands. We have years of experience working with companies of all sizes, including global brands like McDonald''s, Unilever Int. and Nongshim. We offer a high end customer experience and pride ourselves on developing mutually beneficial long term client relationships. If you''re ready to grow your brand, let''s talk!', N'Sean Audet', NULL, 5, 1, NULL, NULL)
GO
INSERT [dbo].[studio] ([studio_id], [address], [avatar_studio], [balance], [cover_image], [create_date], [description], [name], [status], [total_rating], [admin_id], [owner], [sub_admin_studio]) VALUES (6, N'H? Chí Minh', N'https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/0e921c3720247f96948cd8fa5d5ddd79-1545086782505/5421f693-a074-49dd-a499-1886db56f9a5.JPG', NULL, NULL, NULL, N'I have been a professional photographer/videographer for more than 12 years. I also have a full-time professional team of videographers / photographers specialized in shooting Product and Lifestyle Photos / Videos. Now we are providing our service exclusively on Fiverr. I have experience working with big names and brands such as Samsung and Primark, so you can be sure I’m not just another person saying “Look at me”. When you choose to work with me, you get the benefit of all my experience here in Fiverr where I now deliver the best quality to my clients.', N'Katy M', NULL, 5, 1, NULL, NULL)
GO
INSERT [dbo].[studio] ([studio_id], [address], [avatar_studio], [balance], [cover_image], [create_date], [description], [name], [status], [total_rating], [admin_id], [owner], [sub_admin_studio]) VALUES (7, N'H? Chí Minh', N'https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/f4924a389ae8920a2efb55683828b5b7-954871061649863962.1254559/B1D0787F-FD1A-489D-B5E7-E8BF61414DD4', NULL, NULL, NULL, N'My name is Nastia. I''m professional lifestyle photographer/videographer based in Latvia. I''m Instagram, lifestyle and product photographer, and YOUTUBE, INSTAGRAM blogger with 72 000 and 45 000 followers. I am highly responsible with what i do and i always do everything for my clients with a feeling like i do it for myself. I will be more then happy to assist you and help to get creative.', N'Nastia J', NULL, 5, 1, NULL, NULL)
GO
INSERT [dbo].[studio] ([studio_id], [address], [avatar_studio], [balance], [cover_image], [create_date], [description], [name], [status], [total_rating], [admin_id], [owner], [sub_admin_studio]) VALUES (8, N'H? Chí Minh', N'https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/45b6e8183cfa6994c04c29a8b34b493c-1649659402370/b9a554c3-9bc0-42a5-a0ef-5c0497383a8c.png', NULL, NULL, NULL, N'Hello, My name is Adnan and I am the lead photographer of Product Captures Photography & Heather is our customer service representative. We specialize in Amazon product photography & Marketing. Our studio is based in Grand Rapids, Michigan. Let us know if you need help with your project, We will be happy to help you. Please check our portfolio and reviews to check the quality of our work :)', N'Adnan M', NULL, 5, 1, NULL, NULL)
GO
INSERT [dbo].[studio] ([studio_id], [address], [avatar_studio], [balance], [cover_image], [create_date], [description], [name], [status], [total_rating], [admin_id], [owner], [sub_admin_studio]) VALUES (9, N'H? Chí Minh', N'https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/935bebcc8537b48080a1c5d611e3bcf1-1584391160720/05a191ef-d400-42c3-be74-d6c818d7c7b0.jpg', NULL, NULL, NULL, N'Oh hi! My name is Deidre Schlabs, the woman behind Fluff Media. I am a photographer and marketer based in Tennessee. I specialize in creative brand photography with a focus on social media and marketing imagery. In addition to photography, I have years of experience in websites, graphic design, and social media, which gives me a unique perspective during projects. I believe that captivating images are an essential aspect of capturing your target audience and building a strong relationship with customers. I’d love to partner with you in growing your brand using strong photography!', N'Deidre S', NULL, 5, 1, NULL, NULL)
GO
INSERT [dbo].[studio] ([studio_id], [address], [avatar_studio], [balance], [cover_image], [create_date], [description], [name], [status], [total_rating], [admin_id], [owner], [sub_admin_studio]) VALUES (10, N'H? Chí Minh', N'https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/b82325696d0d5cb7b0a2d1400009b6d1-1656705133491/c7b18dcd-f269-401c-b385-195dc683b46c.jpg', NULL, NULL, NULL, N'Hi, my name is Jeffrey Brian and I am a commercial photographer based in Los Angeles. I have 6+ years of commercial photography and photo editing experience. I love being a part of a larger team to help them reach their goals. Feel free to contact me with any questions, happy to help.', N'Jeffrey Brian', NULL, 5, 1, NULL, NULL)
GO
INSERT [dbo].[studio] ([studio_id], [address], [avatar_studio], [balance], [cover_image], [create_date], [description], [name], [status], [total_rating], [admin_id], [owner], [sub_admin_studio]) VALUES (11, N'H? Chí Minh', N'https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/22c1c8f572786720a5b5bf9e4b81f475-1530106628944/bd895222-91cc-4759-b82b-0c2a702953d7.png', NULL, NULL, NULL, N'I can help you to build a professional WordPress, e-commerce, portfolio, photography, business & custom website that will grow your business fast. The best features of my site are SEO friendly, Fast loading, Mobile friendly, Secure, Easy to manage & Eye-catching Premium design. To discuss your project feel free to inbox me. Thanks', N'Md Masum', NULL, 5, 1, NULL, NULL)
GO
INSERT [dbo].[studio] ([studio_id], [address], [avatar_studio], [balance], [cover_image], [create_date], [description], [name], [status], [total_rating], [admin_id], [owner], [sub_admin_studio]) VALUES (12, N'H? Chí Minh', N'https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/5103b653d7975eddc80cfbec05b25a9a-1532028853742/a893c0a9-3a76-4aaf-839a-be4c90543529.jpg', NULL, NULL, NULL, N'Are you searching high-quality work with a fast turn around time for a fair price? Then I am the right person for you. I am an expert on Product photo editing and full-time freelancer. Mainly I do product photo retouching for Amazon and eBay and another eCommerce site. I have 5+ years of experience in All kinds of Photo Editing. I hope I will be able to achieve your satisfaction and I can do something better for you. If you give me a chance to provide you with top quality work, then it will be a great pleasure for me.', N'Golam K', NULL, 4, 1, NULL, NULL)
GO
INSERT [dbo].[studio] ([studio_id], [address], [avatar_studio], [balance], [cover_image], [create_date], [description], [name], [status], [total_rating], [admin_id], [owner], [sub_admin_studio]) VALUES (13, N'H? Chí Minh', N'https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/62c4d3729f08227b125e73c72b93c124-1611936383469/8d843743-5a0d-4168-bb29-b1824d7b48ca.JPG', NULL, NULL, NULL, N'Hey there! My name is Asli. I am a photographer and marketer based in London, UK. I specialise in creating high-end, unique, creative and engaging product photography & stop motion. My portfolio of work includes projects with beauty & wellness brands, food & beverage companies, jewellery brands from around the world. Have a story to share? I''d love to help!', N'Avec Studio', NULL, 5, 1, NULL, NULL)
GO
INSERT [dbo].[studio] ([studio_id], [address], [avatar_studio], [balance], [cover_image], [create_date], [description], [name], [status], [total_rating], [admin_id], [owner], [sub_admin_studio]) VALUES (14, N'H? Chí Minh', N'https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/6c972a3c5f1af0ecb31683631d75d4f3-1593257815510/17598444-933f-44fd-8ea1-49c4c98ba851.JPG', NULL, NULL, NULL, N'I am professional wedding/lifestyle photographer for about 12 years. I use Lightroom and Photoshop for edit my raw images. So you could check my instagram (nickname) and if you like my image quality i could make photos of products you need, or edit your raw images from any shoots, vacations etc. I am highly responsible with what i do and i always do everything for my clients with a feeling like i do it for myself. I will be more then happy to assist you and help', N'Jevgen J', NULL, 5, 1, NULL, NULL)
GO
INSERT [dbo].[studio] ([studio_id], [address], [avatar_studio], [balance], [cover_image], [create_date], [description], [name], [status], [total_rating], [admin_id], [owner], [sub_admin_studio]) VALUES (15, N'H? Chí Minh', N'https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/9774f084678f040f5a96865f88a1dc76-1550802500032/87e7228f-475a-4725-bdc5-17faae710675.jpg', NULL, NULL, NULL, N'Ex-corporate suit who had a moment of clarity and decided to walk away to pursue my own path as a commercial advertising photographer. Working with a wide variety of clients has allowed me to create images that are unique and creative while still allowing me to impart my influence on them. My clients have the added benefit of my previous career. I understand things that most creatives do not. I used to sit on the other side of the desk and was the one asking creatives for photography. With the shoe on the other foot, I have the advantage of knowing the importance of these decisions.', N'Mark', NULL, 4, 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[studio] OFF
GO
/****** Object:  Index [UK_5ur0gjsf3htnmijerllamku7s]    Script Date: 7/4/2023 8:15:49 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UK_5ur0gjsf3htnmijerllamku7s] ON [dbo].[studio]
(
	[owner] ASC
)
WHERE ([owner] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UK_br0mafmh8a6shjd68vrpcik71]    Script Date: 7/4/2023 8:15:49 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UK_br0mafmh8a6shjd68vrpcik71] ON [dbo].[studio]
(
	[sub_admin_studio] ASC
)
WHERE ([sub_admin_studio] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[administrator]  WITH CHECK ADD  CONSTRAINT [FK7jva8gx5ffoqs0yohnd3k97yp] FOREIGN KEY([account_id])
REFERENCES [dbo].[account] ([account_id])
GO
ALTER TABLE [dbo].[administrator] CHECK CONSTRAINT [FK7jva8gx5ffoqs0yohnd3k97yp]
GO
ALTER TABLE [dbo].[album]  WITH CHECK ADD  CONSTRAINT [FKcnq3itvtynx1ge0a3gct1gfs2] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([customer_id])
GO
ALTER TABLE [dbo].[album] CHECK CONSTRAINT [FKcnq3itvtynx1ge0a3gct1gfs2]
GO
ALTER TABLE [dbo].[album]  WITH CHECK ADD  CONSTRAINT [FKk8x7o0d21a7e00ecltmkrp4mm] FOREIGN KEY([studio_id])
REFERENCES [dbo].[studio] ([studio_id])
GO
ALTER TABLE [dbo].[album] CHECK CONSTRAINT [FKk8x7o0d21a7e00ecltmkrp4mm]
GO
ALTER TABLE [dbo].[attach_file]  WITH CHECK ADD  CONSTRAINT [FKmxd9eqf2g9gupcc54vjwp5xkv] FOREIGN KEY([message_id])
REFERENCES [dbo].[message] ([message_id])
GO
ALTER TABLE [dbo].[attach_file] CHECK CONSTRAINT [FKmxd9eqf2g9gupcc54vjwp5xkv]
GO
ALTER TABLE [dbo].[attachment]  WITH CHECK ADD  CONSTRAINT [FK5j1dd51dv3ew7ow2wqbvutsob] FOREIGN KEY([order_detail_id])
REFERENCES [dbo].[order_detail] ([order_detail_id])
GO
ALTER TABLE [dbo].[attachment] CHECK CONSTRAINT [FK5j1dd51dv3ew7ow2wqbvutsob]
GO
ALTER TABLE [dbo].[channel]  WITH CHECK ADD  CONSTRAINT [FK3w1fijtog023qn77xhj01047u] FOREIGN KEY([employee_id])
REFERENCES [dbo].[employee] ([employee_id])
GO
ALTER TABLE [dbo].[channel] CHECK CONSTRAINT [FK3w1fijtog023qn77xhj01047u]
GO
ALTER TABLE [dbo].[channel]  WITH CHECK ADD  CONSTRAINT [FKlaqhn1whfu371b78s5tx4ecqv] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([customer_id])
GO
ALTER TABLE [dbo].[channel] CHECK CONSTRAINT [FKlaqhn1whfu371b78s5tx4ecqv]
GO
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FK3j0fh8gdkhdvva4co1t6d2vhq] FOREIGN KEY([file_id])
REFERENCES [dbo].[media_file] ([file_id])
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FK3j0fh8gdkhdvva4co1t6d2vhq]
GO
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FKcdf32ke5u3365kjpxgjejuhsg] FOREIGN KEY([employee_id])
REFERENCES [dbo].[employee] ([employee_id])
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FKcdf32ke5u3365kjpxgjejuhsg]
GO
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FKlwqielki359fs4py1a4iw2fdt] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([customer_id])
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FKlwqielki359fs4py1a4iw2fdt]
GO
ALTER TABLE [dbo].[customer]  WITH CHECK ADD  CONSTRAINT [FKipfo48o465tnw5tl2lw5yokj8] FOREIGN KEY([admin_id])
REFERENCES [dbo].[administrator] ([admin_id])
GO
ALTER TABLE [dbo].[customer] CHECK CONSTRAINT [FKipfo48o465tnw5tl2lw5yokj8]
GO
ALTER TABLE [dbo].[customer]  WITH CHECK ADD  CONSTRAINT [FKn9x2k8svpxj3r328iy1rpur83] FOREIGN KEY([account_id])
REFERENCES [dbo].[account] ([account_id])
GO
ALTER TABLE [dbo].[customer] CHECK CONSTRAINT [FKn9x2k8svpxj3r328iy1rpur83]
GO
ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [FKcfg6ajo8oske94exynxpf7tf9] FOREIGN KEY([account_id])
REFERENCES [dbo].[account] ([account_id])
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [FKcfg6ajo8oske94exynxpf7tf9]
GO
ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [FKdnucs9pg8ahtqwy3e48ui2df6] FOREIGN KEY([studio_id])
REFERENCES [dbo].[studio] ([studio_id])
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [FKdnucs9pg8ahtqwy3e48ui2df6]
GO
ALTER TABLE [dbo].[favorite]  WITH CHECK ADD  CONSTRAINT [FK27vuck250sr10qiwxjqwrfiqf] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([customer_id])
GO
ALTER TABLE [dbo].[favorite] CHECK CONSTRAINT [FK27vuck250sr10qiwxjqwrfiqf]
GO
ALTER TABLE [dbo].[favorite]  WITH CHECK ADD  CONSTRAINT [FKglwnlhki4kw6qupdfmvn6iut] FOREIGN KEY([service_pack_id])
REFERENCES [dbo].[service_pack] ([service_id])
GO
ALTER TABLE [dbo].[favorite] CHECK CONSTRAINT [FKglwnlhki4kw6qupdfmvn6iut]
GO
ALTER TABLE [dbo].[media_file]  WITH CHECK ADD  CONSTRAINT [FKf0amo5c7d5yjx4ed3oug4t2co] FOREIGN KEY([studio_id])
REFERENCES [dbo].[studio] ([studio_id])
GO
ALTER TABLE [dbo].[media_file] CHECK CONSTRAINT [FKf0amo5c7d5yjx4ed3oug4t2co]
GO
ALTER TABLE [dbo].[media_file]  WITH CHECK ADD  CONSTRAINT [FKmib01u3uqh2tqv0djdbg8jau6] FOREIGN KEY([album_id])
REFERENCES [dbo].[album] ([album_id])
GO
ALTER TABLE [dbo].[media_file] CHECK CONSTRAINT [FKmib01u3uqh2tqv0djdbg8jau6]
GO
ALTER TABLE [dbo].[media_file]  WITH CHECK ADD  CONSTRAINT [FKp3tty0a2pjocgjosg7ndkj7k5] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([customer_id])
GO
ALTER TABLE [dbo].[media_file] CHECK CONSTRAINT [FKp3tty0a2pjocgjosg7ndkj7k5]
GO
ALTER TABLE [dbo].[media_service]  WITH CHECK ADD  CONSTRAINT [FKdfacx7pfhm2e34riy2s13npjv] FOREIGN KEY([service_id])
REFERENCES [dbo].[service_pack] ([service_id])
GO
ALTER TABLE [dbo].[media_service] CHECK CONSTRAINT [FKdfacx7pfhm2e34riy2s13npjv]
GO
ALTER TABLE [dbo].[message]  WITH CHECK ADD  CONSTRAINT [FKiimr93ytmcuira5le0sldvvma] FOREIGN KEY([channel_id])
REFERENCES [dbo].[channel] ([channel_id])
GO
ALTER TABLE [dbo].[message] CHECK CONSTRAINT [FKiimr93ytmcuira5le0sldvvma]
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FK1oduxyuuo3n2g98l3j7754vym] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([customer_id])
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FK1oduxyuuo3n2g98l3j7754vym]
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FKhgqyhl4wnj9use215racmlveo] FOREIGN KEY([payment_id])
REFERENCES [dbo].[payment] ([payment_id])
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FKhgqyhl4wnj9use215racmlveo]
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [FKlb8mofup9mi791hraxt9wlj5u] FOREIGN KEY([order_id])
REFERENCES [dbo].[order] ([order_id])
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [FKlb8mofup9mi791hraxt9wlj5u]
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [FKsqij0gvbj8xddhf0wlvni4rmq] FOREIGN KEY([service_id])
REFERENCES [dbo].[service_pack] ([service_id])
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [FKsqij0gvbj8xddhf0wlvni4rmq]
GO
ALTER TABLE [dbo].[payment]  WITH CHECK ADD  CONSTRAINT [FK80uujv6vcwhagikotxoynv7ta] FOREIGN KEY([employee_id])
REFERENCES [dbo].[employee] ([employee_id])
GO
ALTER TABLE [dbo].[payment] CHECK CONSTRAINT [FK80uujv6vcwhagikotxoynv7ta]
GO
ALTER TABLE [dbo].[payment]  WITH CHECK ADD  CONSTRAINT [FKby2skjf3ov608yb6nm16b49lg] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([customer_id])
GO
ALTER TABLE [dbo].[payment] CHECK CONSTRAINT [FKby2skjf3ov608yb6nm16b49lg]
GO
ALTER TABLE [dbo].[reaction]  WITH CHECK ADD  CONSTRAINT [FKex75w380mupy3gu4j9l9o2tla] FOREIGN KEY([file_id])
REFERENCES [dbo].[media_file] ([file_id])
GO
ALTER TABLE [dbo].[reaction] CHECK CONSTRAINT [FKex75w380mupy3gu4j9l9o2tla]
GO
ALTER TABLE [dbo].[reaction]  WITH CHECK ADD  CONSTRAINT [FKf8x7ojsxl5kirtdcvawaanyh2] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([customer_id])
GO
ALTER TABLE [dbo].[reaction] CHECK CONSTRAINT [FKf8x7ojsxl5kirtdcvawaanyh2]
GO
ALTER TABLE [dbo].[service_pack]  WITH CHECK ADD  CONSTRAINT [FKal02ni54jxt559xwx5dkb8o6w] FOREIGN KEY([create_by])
REFERENCES [dbo].[employee] ([employee_id])
GO
ALTER TABLE [dbo].[service_pack] CHECK CONSTRAINT [FKal02ni54jxt559xwx5dkb8o6w]
GO
ALTER TABLE [dbo].[service_pack]  WITH CHECK ADD  CONSTRAINT [FKd0cqucd7a48rjku88wm20jyd] FOREIGN KEY([studio_id])
REFERENCES [dbo].[studio] ([studio_id])
GO
ALTER TABLE [dbo].[service_pack] CHECK CONSTRAINT [FKd0cqucd7a48rjku88wm20jyd]
GO
ALTER TABLE [dbo].[service_pack]  WITH CHECK ADD  CONSTRAINT [FKe6do95qivfiyjk5lbttxyk8xa] FOREIGN KEY([update_by])
REFERENCES [dbo].[employee] ([employee_id])
GO
ALTER TABLE [dbo].[service_pack] CHECK CONSTRAINT [FKe6do95qivfiyjk5lbttxyk8xa]
GO
ALTER TABLE [dbo].[studio]  WITH CHECK ADD  CONSTRAINT [FK64ig8kweshkad3sg4fvp1f6se] FOREIGN KEY([admin_id])
REFERENCES [dbo].[administrator] ([admin_id])
GO
ALTER TABLE [dbo].[studio] CHECK CONSTRAINT [FK64ig8kweshkad3sg4fvp1f6se]
GO
ALTER TABLE [dbo].[studio]  WITH CHECK ADD  CONSTRAINT [FKfdomwea3rqk6qtntb75rec91h] FOREIGN KEY([sub_admin_studio])
REFERENCES [dbo].[employee] ([employee_id])
GO
ALTER TABLE [dbo].[studio] CHECK CONSTRAINT [FKfdomwea3rqk6qtntb75rec91h]
GO
ALTER TABLE [dbo].[studio]  WITH CHECK ADD  CONSTRAINT [FKjrdtoukpfdj5hjk7c5galn6bl] FOREIGN KEY([owner])
REFERENCES [dbo].[employee] ([employee_id])
GO
ALTER TABLE [dbo].[studio] CHECK CONSTRAINT [FKjrdtoukpfdj5hjk7c5galn6bl]
GO
ALTER TABLE [dbo].[tag_detail]  WITH CHECK ADD  CONSTRAINT [FK6wiy57it6jemjul2t312xksv1] FOREIGN KEY([file_id])
REFERENCES [dbo].[media_file] ([file_id])
GO
ALTER TABLE [dbo].[tag_detail] CHECK CONSTRAINT [FK6wiy57it6jemjul2t312xksv1]
GO
ALTER TABLE [dbo].[tag_detail]  WITH CHECK ADD  CONSTRAINT [FKod39uk1avvenuut6gb6468ev1] FOREIGN KEY([tag_id])
REFERENCES [dbo].[tag] ([tag_id])
GO
ALTER TABLE [dbo].[tag_detail] CHECK CONSTRAINT [FKod39uk1avvenuut6gb6468ev1]
GO
ALTER TABLE [dbo].[transaction]  WITH CHECK ADD  CONSTRAINT [FKe70k1yg7vxy91cao11f7itcdd] FOREIGN KEY([payment_id])
REFERENCES [dbo].[payment] ([payment_id])
GO
ALTER TABLE [dbo].[transaction] CHECK CONSTRAINT [FKe70k1yg7vxy91cao11f7itcdd]
GO
ALTER TABLE [dbo].[transaction]  WITH CHECK ADD  CONSTRAINT [FKfpy0pls1ui59cgn4xh1tk2mr8] FOREIGN KEY([studio_id])
REFERENCES [dbo].[studio] ([studio_id])
GO
ALTER TABLE [dbo].[transaction] CHECK CONSTRAINT [FKfpy0pls1ui59cgn4xh1tk2mr8]
GO
ALTER TABLE [dbo].[voucher]  WITH CHECK ADD  CONSTRAINT [FK1cose9tg6aowipbr4t0qoaji5] FOREIGN KEY([studio_id])
REFERENCES [dbo].[studio] ([studio_id])
GO
ALTER TABLE [dbo].[voucher] CHECK CONSTRAINT [FK1cose9tg6aowipbr4t0qoaji5]
GO
ALTER TABLE [dbo].[voucher]  WITH CHECK ADD  CONSTRAINT [FKevquifb7vmta9v4v37id8ngae] FOREIGN KEY([admin_id])
REFERENCES [dbo].[administrator] ([admin_id])
GO
ALTER TABLE [dbo].[voucher] CHECK CONSTRAINT [FKevquifb7vmta9v4v37id8ngae]
GO
ALTER TABLE [dbo].[voucher_detail]  WITH CHECK ADD  CONSTRAINT [FKa9kd8v7dwi7hl952rfijh1ct8] FOREIGN KEY([voucher_wallet_id])
REFERENCES [dbo].[voucher_wallet] ([voucher_wallet_id])
GO
ALTER TABLE [dbo].[voucher_detail] CHECK CONSTRAINT [FKa9kd8v7dwi7hl952rfijh1ct8]
GO
ALTER TABLE [dbo].[voucher_detail]  WITH CHECK ADD  CONSTRAINT [FKfcybh4qk1p1h3ricygfuxxy1i] FOREIGN KEY([order_id])
REFERENCES [dbo].[order] ([order_id])
GO
ALTER TABLE [dbo].[voucher_detail] CHECK CONSTRAINT [FKfcybh4qk1p1h3ricygfuxxy1i]
GO
ALTER TABLE [dbo].[voucher_wallet]  WITH CHECK ADD  CONSTRAINT [FKphxs0gqi0a5c3vtkhbjoijbqo] FOREIGN KEY([voucher_id])
REFERENCES [dbo].[voucher] ([voucher_id])
GO
ALTER TABLE [dbo].[voucher_wallet] CHECK CONSTRAINT [FKphxs0gqi0a5c3vtkhbjoijbqo]
GO
ALTER TABLE [dbo].[voucher_wallet]  WITH CHECK ADD  CONSTRAINT [FKqd4yh8s6iiv5qob0de5b4bqho] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([customer_id])
GO
ALTER TABLE [dbo].[voucher_wallet] CHECK CONSTRAINT [FKqd4yh8s6iiv5qob0de5b4bqho]
GO
USE [master]
GO
ALTER DATABASE [FrameMates_DB] SET  READ_WRITE 
GO
