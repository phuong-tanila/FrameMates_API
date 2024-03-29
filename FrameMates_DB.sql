USE [FrameMates_DB2]
GO
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[administrator]    Script Date: 19-Jul-23 10:12:54 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[album]    Script Date: 19-Jul-23 10:12:54 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[attach_file]    Script Date: 19-Jul-23 10:12:54 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[attachment]    Script Date: 19-Jul-23 10:12:54 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[channel]    Script Date: 19-Jul-23 10:12:54 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comment]    Script Date: 19-Jul-23 10:12:54 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 19-Jul-23 10:12:54 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee]    Script Date: 19-Jul-23 10:12:54 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[favorite]    Script Date: 19-Jul-23 10:12:54 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[media_file]    Script Date: 19-Jul-23 10:12:54 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[media_service]    Script Date: 19-Jul-23 10:12:54 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[message]    Script Date: 19-Jul-23 10:12:54 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order]    Script Date: 19-Jul-23 10:12:54 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_detail]    Script Date: 19-Jul-23 10:12:54 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payment]    Script Date: 19-Jul-23 10:12:54 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reaction]    Script Date: 19-Jul-23 10:12:54 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[service_pack]    Script Date: 19-Jul-23 10:12:54 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sms_otp]    Script Date: 19-Jul-23 10:12:54 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[studio]    Script Date: 19-Jul-23 10:12:54 AM ******/
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
	[employee_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[studio_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tag]    Script Date: 19-Jul-23 10:12:54 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tag_detail]    Script Date: 19-Jul-23 10:12:54 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transaction]    Script Date: 19-Jul-23 10:12:54 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[voucher]    Script Date: 19-Jul-23 10:12:54 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[voucher_detail]    Script Date: 19-Jul-23 10:12:54 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[voucher_wallet]    Script Date: 19-Jul-23 10:12:54 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[account] ON 

INSERT [dbo].[account] ([account_id], [avatar], [email], [full_name], [password], [phone], [role], [username]) VALUES (1, N'https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_960_720.png', N'123@gmail.com', N'Thanh_Admin', N'$2a$10$8bbyRxBl4kRZRP0HmKLVq.LpwehBUugztEMe7QQLWuxoe28RKMwp6', N'03231354558', N'ROLE_ADMIN', N'admin')
INSERT [dbo].[account] ([account_id], [avatar], [email], [full_name], [password], [phone], [role], [username]) VALUES (2, N'https://static.vecteezy.com/system/resources/previews/000/439/863/original/vector-users-icon.jpg', N'thanh@1223.com', N'thanh', N'$2a$10$kFt0sPLJBxSC/DeGWoIpJObWZi/ApMkFV9WXoE97zAgRUVAoy2.1u', N'0369998761', N'ROLE_CUSTOMER', N'thanhdao')
INSERT [dbo].[account] ([account_id], [avatar], [email], [full_name], [password], [phone], [role], [username]) VALUES (3, N'https://static.vecteezy.com/system/resources/previews/000/439/863/original/vector-users-icon.jpg', N'thanh@gmail.com', N'thanh', N'$2a$10$SpGlwC4Ln5onuITIGhSE1OCOpsJldfWuqQFdOU1pFSmJZBnZaK.k2', N'0369998762', N'ROLE_CUSTOMER', N'1asdsadv')
INSERT [dbo].[account] ([account_id], [avatar], [email], [full_name], [password], [phone], [role], [username]) VALUES (4, N'https://static.vecteezy.com/system/resources/previews/000/439/863/original/vector-users-icon.jpg', N'phuongnguyen@gmail.com', N'Phuong Nguyen', N'$2a$10$dhiDRnR1eRRQHurRn8k1Xu380rTxO.hJUJSuYFEKqEnxP/.EI04uG', N'0366255166', N'ROLE_EMPLOYEE', N'phuong')
INSERT [dbo].[account] ([account_id], [avatar], [email], [full_name], [password], [phone], [role], [username]) VALUES (5, N'https://static.vecteezy.com/system/resources/previews/000/439/863/original/vector-users-icon.jpg', N'phuongnguyen040217@gmail.com', N'Hoai Phuong', N'$2a$10$dhiDRnR1eRRQHurRn8k1Xu380rTxO.hJUJSuYFEKqEnxP/.EI04uG', N'0797575794', N'ROLE_EMPLOYEE', N'phuongnguyen')
INSERT [dbo].[account] ([account_id], [avatar], [email], [full_name], [password], [phone], [role], [username]) VALUES (6, N'https://static.vecteezy.com/system/resources/previews/000/439/863/original/vector-users-icon.jpg', N'kristina97@gmail.com', N'Kristina Tam', N'$2a$10$cmaKdaqMy6FZ75UvSwAnHuzzZvqZVqsGlCovDfWGXWISPGC7T1CQu', N'0367892581', N'ROLE_EMPLOYEE', N'kristina')
INSERT [dbo].[account] ([account_id], [avatar], [email], [full_name], [password], [phone], [role], [username]) VALUES (7, N'https://static.vecteezy.com/system/resources/previews/000/439/863/original/vector-users-icon.jpg', N'sweetnishe99@gmail.com', N'Nishe Sweet', N'$2a$10$Lr36VcNx25HFjAcr/guV6ekesX5zLMnJCFJZcKiSc4gkpIgZJZZBu', N'0367159753', N'ROLE_EMPLOYEE', N'nishe')
INSERT [dbo].[account] ([account_id], [avatar], [email], [full_name], [password], [phone], [role], [username]) VALUES (8, N'https://static.vecteezy.com/system/resources/previews/000/439/863/original/vector-users-icon.jpg', N'truongkt0392@gmail.com', N'Khuu Tan Truong', N'$2a$10$ZkD7dxeytmmYDyV.JaaJ/O4DYp51VKs.DE3o/QPi91AD.Bph7B98.', N'0367753214', N'ROLE_EMPLOYEE', N'truongkt')
INSERT [dbo].[account] ([account_id], [avatar], [email], [full_name], [password], [phone], [role], [username]) VALUES (9, N'https://static.vecteezy.com/system/resources/previews/000/439/863/original/vector-users-icon.jpg', N'linhmakeup6868@gmail.com', N'Linh Truong', N'$2a$10$G7xHs6cFVxW40xlL0y7YVugSXvJvVyF39vY8k0A4EDEnYGD1Meelq', N'0797753214', N'ROLE_EMPLOYEE', N'linhtruong')
INSERT [dbo].[account] ([account_id], [avatar], [email], [full_name], [password], [phone], [role], [username]) VALUES (10, N'https://static.vecteezy.com/system/resources/previews/000/439/863/original/vector-users-icon.jpg', N'kennywet666@gmail.com', N'Kenny Wet', N'$2a$10$OdZGptkP5m/1h1VRmUX9X.f8xMEzPlLoIbjr6/2UYHLJk8oDxVx3W', N'0795556666', N'ROLE_EMPLOYEE', N'kennywet')
INSERT [dbo].[account] ([account_id], [avatar], [email], [full_name], [password], [phone], [role], [username]) VALUES (11, N'https://static.vecteezy.com/system/resources/previews/000/439/863/original/vector-users-icon.jpg', N'ladykiller454@gmail.com', N'Join Weak', N'$2a$10$NvJVsWfi7hymXlO6ohZniOszjNuhawWZ0KECz5zsY6.mWYXZsFRfG', N'0799484848', N'ROLE_EMPLOYEE', N'jonhweak')
INSERT [dbo].[account] ([account_id], [avatar], [email], [full_name], [password], [phone], [role], [username]) VALUES (12, N'https://static.vecteezy.com/system/resources/previews/000/439/863/original/vector-users-icon.jpg', N'chithien999@gmail.com', N'Chi Thien', N'$2a$10$Z9WtK0YWrrWMzq.v8Fv/lu0IoFlGgEfPjawgnavA2mUY4bP/ushG.', N'0392103381', N'ROLE_CUSTOMER', N'chithien')
INSERT [dbo].[account] ([account_id], [avatar], [email], [full_name], [password], [phone], [role], [username]) VALUES (13, N'https://static.vecteezy.com/system/resources/previews/000/439/863/original/vector-users-icon.jpg', N'thaomy1995@gmail.com', N'Thao My', N'$2a$10$jbHnJEeSMaPPMFTTKZNPTujOs6w9qmfEsVxtwUr4AHFv/Vbyzx372', N'0985655789', N'ROLE_CUSTOMER', N'thaomy')
INSERT [dbo].[account] ([account_id], [avatar], [email], [full_name], [password], [phone], [role], [username]) VALUES (14, N'https://i.imgur.com/DvpvklR.png', N'phinh01@gmail.com', N'Huynh Phi 2', N'$2a$10$Gn3Sz2weLD4nlHPqgeFBu.4SWnDOzvW.gc/NgabCBtE5kTC5J9M0O', N'0985333555', N'ROLE_CUSTOMER', N'phinguyen')
INSERT [dbo].[account] ([account_id], [avatar], [email], [full_name], [password], [phone], [role], [username]) VALUES (15, N'https://i.imgur.com/DvpvklR.png', N'thinhpqt@gmail.com', N'Pham Quoc Thinh', N'$2a$10$vWviSKUMhM4amEM6x1C4oOyOQAEja7zETLF3lJ3CclraseuraGmk6', N'0985777999', N'ROLE_CUSTOMER', N'quocthinh')
INSERT [dbo].[account] ([account_id], [avatar], [email], [full_name], [password], [phone], [role], [username]) VALUES (16, N'https://static.vecteezy.com/system/resources/previews/000/439/863/original/vector-users-icon.jpg', N'tranphuong@gmail.com', N'Tran Phuong', N'$2a$10$GaRxdh5z99iKDSfZlg/nQuCdYGF8uvE99HgiNJnNG9R/4acTy36YK', N'0986555444', N'ROLE_CUSTOMER', N'tranphuong')
SET IDENTITY_INSERT [dbo].[account] OFF
GO
SET IDENTITY_INSERT [dbo].[administrator] ON 

INSERT [dbo].[administrator] ([admin_id], [status], [account_id]) VALUES (1, 1, 1)
SET IDENTITY_INSERT [dbo].[administrator] OFF
GO
SET IDENTITY_INSERT [dbo].[album] ON 

INSERT [dbo].[album] ([album_id], [create_date], [title], [view], [customer_id], [studio_id]) VALUES (1, CAST(N'2023-07-17T01:06:25.6810000' AS DateTime2), N'Phuong''s Gallery', 0, NULL, 1)
INSERT [dbo].[album] ([album_id], [create_date], [title], [view], [customer_id], [studio_id]) VALUES (2, CAST(N'2023-07-17T01:08:30.5650000' AS DateTime2), N'Graffiti Style', 0, NULL, 1)
INSERT [dbo].[album] ([album_id], [create_date], [title], [view], [customer_id], [studio_id]) VALUES (3, CAST(N'2023-07-17T01:38:06.8540000' AS DateTime2), N'Beautiful Girls', 0, NULL, 1)
INSERT [dbo].[album] ([album_id], [create_date], [title], [view], [customer_id], [studio_id]) VALUES (4, CAST(N'2023-07-17T10:21:24.7680000' AS DateTime2), N'Ha Noi', 0, NULL, 1)
INSERT [dbo].[album] ([album_id], [create_date], [title], [view], [customer_id], [studio_id]) VALUES (5, CAST(N'2023-07-17T11:05:05.3210000' AS DateTime2), N'Image 1', 0, NULL, 1)
INSERT [dbo].[album] ([album_id], [create_date], [title], [view], [customer_id], [studio_id]) VALUES (6, CAST(N'2023-07-17T11:05:06.7490000' AS DateTime2), N'Image 1', 0, NULL, 1)
SET IDENTITY_INSERT [dbo].[album] OFF
GO
SET IDENTITY_INSERT [dbo].[customer] ON 

INSERT [dbo].[customer] ([customer_id], [address], [birth_date], [create_date], [status], [account_id], [admin_id]) VALUES (1, N'Ho Chi Minh', CAST(N'2000-03-14' AS Date), CAST(N'2023-07-16T20:25:43.2440000' AS DateTime2), 1, 2, 1)
INSERT [dbo].[customer] ([customer_id], [address], [birth_date], [create_date], [status], [account_id], [admin_id]) VALUES (2, N'Ho Chi Minh', CAST(N'1996-12-23' AS Date), CAST(N'2023-07-16T20:26:42.8360000' AS DateTime2), 1, 3, 1)
INSERT [dbo].[customer] ([customer_id], [address], [birth_date], [create_date], [status], [account_id], [admin_id]) VALUES (3, N'Ho Chi Minh', CAST(N'2001-05-11' AS Date), CAST(N'2023-07-17T01:59:52.1010000' AS DateTime2), 1, 12, 1)
INSERT [dbo].[customer] ([customer_id], [address], [birth_date], [create_date], [status], [account_id], [admin_id]) VALUES (4, N'Tay Ninh', CAST(N'1995-03-03' AS Date), CAST(N'2023-07-17T02:15:15.6400000' AS DateTime2), 1, 13, 1)
INSERT [dbo].[customer] ([customer_id], [address], [birth_date], [create_date], [status], [account_id], [admin_id]) VALUES (5, N'Bac Lieu', NULL, CAST(N'2023-07-17T02:19:15.5030000' AS DateTime2), 1, 14, 1)
INSERT [dbo].[customer] ([customer_id], [address], [birth_date], [create_date], [status], [account_id], [admin_id]) VALUES (6, NULL, NULL, CAST(N'2023-07-18T11:13:53.9470000' AS DateTime2), 1, 15, NULL)
INSERT [dbo].[customer] ([customer_id], [address], [birth_date], [create_date], [status], [account_id], [admin_id]) VALUES (7, NULL, NULL, CAST(N'2023-07-18T13:39:06.4840000' AS DateTime2), 1, 16, NULL)
SET IDENTITY_INSERT [dbo].[customer] OFF
GO
SET IDENTITY_INSERT [dbo].[employee] ON 

INSERT [dbo].[employee] ([employee_id], [status], [account_id], [studio_id]) VALUES (1, 1, 5, 1)
INSERT [dbo].[employee] ([employee_id], [status], [account_id], [studio_id]) VALUES (2, 1, 6, 2)
INSERT [dbo].[employee] ([employee_id], [status], [account_id], [studio_id]) VALUES (3, 1, 7, 3)
INSERT [dbo].[employee] ([employee_id], [status], [account_id], [studio_id]) VALUES (4, 1, 8, 4)
INSERT [dbo].[employee] ([employee_id], [status], [account_id], [studio_id]) VALUES (5, 1, 9, 5)
INSERT [dbo].[employee] ([employee_id], [status], [account_id], [studio_id]) VALUES (6, 1, 10, 6)
INSERT [dbo].[employee] ([employee_id], [status], [account_id], [studio_id]) VALUES (7, 1, 11, 7)
SET IDENTITY_INSERT [dbo].[employee] OFF
GO
SET IDENTITY_INSERT [dbo].[media_file] ON 

INSERT [dbo].[media_file] ([file_id], [description], [file_path], [title], [upload_date], [view], [album_id], [customer_id], [studio_id]) VALUES (1, N'', N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/album%2Fc1e01a42-4742-4c90-b7aa-63920ed0744e.jpeg?alt=media&token=17194101-71aa-443a-8cba-ebd5c995fd54', N'Phuong''s Gallery', CAST(N'2023-07-17T01:06:25.6810000' AS DateTime2), 0, 1, NULL, NULL)
INSERT [dbo].[media_file] ([file_id], [description], [file_path], [title], [upload_date], [view], [album_id], [customer_id], [studio_id]) VALUES (2, N'', N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/album%2F7c8ea628-7490-4229-ba61-d49d2e0d8c0c.jpeg?alt=media&token=a54f8c0a-e893-4fef-8228-592bf41e67be', N'Phuong''s Gallery', CAST(N'2023-07-17T01:06:25.6810000' AS DateTime2), 0, 1, NULL, NULL)
INSERT [dbo].[media_file] ([file_id], [description], [file_path], [title], [upload_date], [view], [album_id], [customer_id], [studio_id]) VALUES (3, N'', N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/album%2F1297dcd9-99aa-442a-9c5a-e2790943458a.jpeg?alt=media&token=0fd3cc48-ecf0-4b76-b63b-6db129a588ba', N'Phuong''s Gallery', CAST(N'2023-07-17T01:06:25.6810000' AS DateTime2), 0, 1, NULL, NULL)
INSERT [dbo].[media_file] ([file_id], [description], [file_path], [title], [upload_date], [view], [album_id], [customer_id], [studio_id]) VALUES (4, N'', N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/album%2Fab9f2d87-7ce1-4bca-903b-da198451db0f.jpeg?alt=media&token=5f860554-0d32-4413-b2c5-ceab7f4bb504', N'Graffiti Style', CAST(N'2023-07-17T01:08:30.5650000' AS DateTime2), 0, 2, NULL, NULL)
INSERT [dbo].[media_file] ([file_id], [description], [file_path], [title], [upload_date], [view], [album_id], [customer_id], [studio_id]) VALUES (5, N'', N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/album%2F07b5b9db-c283-44a4-90d7-b890933370d5.jpeg?alt=media&token=a133df2a-c27c-4f7b-be7a-8071abe40bf8', N'Graffiti Style', CAST(N'2023-07-17T01:08:30.5650000' AS DateTime2), 0, 2, NULL, NULL)
INSERT [dbo].[media_file] ([file_id], [description], [file_path], [title], [upload_date], [view], [album_id], [customer_id], [studio_id]) VALUES (6, N'', N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/album%2F870d7f49-8497-4f52-96c2-3d1ff4d081ca.jpeg?alt=media&token=ee10ac92-9498-47e9-99d8-8e962a2e8a21', N'Beautiful Girls', CAST(N'2023-07-17T01:38:06.8540000' AS DateTime2), 0, 3, NULL, NULL)
INSERT [dbo].[media_file] ([file_id], [description], [file_path], [title], [upload_date], [view], [album_id], [customer_id], [studio_id]) VALUES (7, N'', N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/album%2F5c7ae766-3164-4661-964a-c55e7b8c02bc.jpeg?alt=media&token=d2d74154-fc9d-4920-8142-bde6f0916868', N'Beautiful Girls', CAST(N'2023-07-17T01:38:06.8540000' AS DateTime2), 0, 3, NULL, NULL)
INSERT [dbo].[media_file] ([file_id], [description], [file_path], [title], [upload_date], [view], [album_id], [customer_id], [studio_id]) VALUES (8, N'', N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/album%2Fbdb1b783-2dda-4f7a-a96b-5798b8fee67c.jpeg?alt=media&token=e66a4f15-b024-4b1f-8c76-6bb1c9eadf6c', N'Beautiful Girls', CAST(N'2023-07-17T01:38:06.8540000' AS DateTime2), 0, 3, NULL, NULL)
INSERT [dbo].[media_file] ([file_id], [description], [file_path], [title], [upload_date], [view], [album_id], [customer_id], [studio_id]) VALUES (9, N'', N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/album%2Fb781f83c-f85d-4499-9b2e-b63884053cde.jpeg?alt=media&token=fda58179-cb11-4b77-bdc7-315c6e427518', N'Beautiful Girls', CAST(N'2023-07-17T01:38:06.8540000' AS DateTime2), 0, 3, NULL, NULL)
INSERT [dbo].[media_file] ([file_id], [description], [file_path], [title], [upload_date], [view], [album_id], [customer_id], [studio_id]) VALUES (10, N'This is Ha Noi', N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/album%2Fb781f83c-f85d-4499-9b2e-b63884053cde.jpeg?alt=media&token=fda58179-cb11-4b77-bdc7-315c6e427518', N'Ha Noi', CAST(N'2023-07-17T10:21:24.7680000' AS DateTime2), 0, 4, NULL, NULL)
INSERT [dbo].[media_file] ([file_id], [description], [file_path], [title], [upload_date], [view], [album_id], [customer_id], [studio_id]) VALUES (11, N'This is Ha Noi', N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/album%2Fb781f83c-f85d-4499-9b2e-b63884053cde.jpeg?alt=media&token=fda58179-cb11-4b77-bdc7-315c6e427518', N'Ha Noi', CAST(N'2023-07-17T10:21:24.7680000' AS DateTime2), 0, 4, NULL, NULL)
INSERT [dbo].[media_file] ([file_id], [description], [file_path], [title], [upload_date], [view], [album_id], [customer_id], [studio_id]) VALUES (12, N'This is Ha Noi', N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/album%2Fb781f83c-f85d-4499-9b2e-b63884053cde.jpeg?alt=media&token=fda58179-cb11-4b77-bdc7-315c6e427518', N'Ha Noi', CAST(N'2023-07-17T10:21:24.7680000' AS DateTime2), 0, 4, NULL, NULL)
INSERT [dbo].[media_file] ([file_id], [description], [file_path], [title], [upload_date], [view], [album_id], [customer_id], [studio_id]) VALUES (13, N'This is Ha Noi', N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/album%2Fb781f83c-f85d-4499-9b2e-b63884053cde.jpeg?alt=media&token=fda58179-cb11-4b77-bdc7-315c6e427518', N'Ha Noi', CAST(N'2023-07-17T10:21:24.7680000' AS DateTime2), 0, 4, NULL, NULL)
INSERT [dbo].[media_file] ([file_id], [description], [file_path], [title], [upload_date], [view], [album_id], [customer_id], [studio_id]) VALUES (14, N'', N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/album%2F719dd0fa-456b-46e1-991a-f99b43d335f4.jpeg?alt=media&token=03cbd011-3b34-4376-a9c5-3b82c8248e3d', N'Image 1', CAST(N'2023-07-17T11:05:05.3210000' AS DateTime2), 0, 5, NULL, NULL)
INSERT [dbo].[media_file] ([file_id], [description], [file_path], [title], [upload_date], [view], [album_id], [customer_id], [studio_id]) VALUES (15, N'', N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/album%2F51527803-a201-4903-91bf-2c8091d6857b.jpeg?alt=media&token=5f6e3988-ba08-4704-9480-62bd1348d4db', N'Image 1', CAST(N'2023-07-17T11:05:05.3210000' AS DateTime2), 0, 5, NULL, NULL)
INSERT [dbo].[media_file] ([file_id], [description], [file_path], [title], [upload_date], [view], [album_id], [customer_id], [studio_id]) VALUES (16, N'', N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/album%2Fb6a4ff08-4284-4fa0-934d-c4e36ccb3c5b.jpeg?alt=media&token=34d06541-095a-4d0a-8a2a-ee22cb39a3a7', N'Image 1', CAST(N'2023-07-17T11:05:05.3210000' AS DateTime2), 0, 5, NULL, NULL)
INSERT [dbo].[media_file] ([file_id], [description], [file_path], [title], [upload_date], [view], [album_id], [customer_id], [studio_id]) VALUES (17, N'', N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/album%2Fba0606a6-6b3a-4ed6-a9fb-df67cd40fb22.jpeg?alt=media&token=6e1bc991-18ce-42a9-b3cf-03f2e4994823', N'Image 1', CAST(N'2023-07-17T11:05:06.7490000' AS DateTime2), 0, 6, NULL, NULL)
INSERT [dbo].[media_file] ([file_id], [description], [file_path], [title], [upload_date], [view], [album_id], [customer_id], [studio_id]) VALUES (18, N'', N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/album%2Fb223e126-76d9-457a-99b1-048423c2c371.jpeg?alt=media&token=317ba498-2941-44a7-b200-5924e742568e', N'Image 1', CAST(N'2023-07-17T11:05:06.7490000' AS DateTime2), 0, 6, NULL, NULL)
INSERT [dbo].[media_file] ([file_id], [description], [file_path], [title], [upload_date], [view], [album_id], [customer_id], [studio_id]) VALUES (19, N'', N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/album%2Fa04efa68-f449-452c-b425-7e1096f8d61e.jpeg?alt=media&token=9f051c40-7558-4525-bf40-4a5691c67b79', N'Image 1', CAST(N'2023-07-17T11:05:06.7490000' AS DateTime2), 0, 6, NULL, NULL)
SET IDENTITY_INSERT [dbo].[media_file] OFF
GO
SET IDENTITY_INSERT [dbo].[media_service] ON 

INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (1, NULL, N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/mini-album%2F1d3f8e56-b5b9-4262-8bd9-4281c32519a3.jpeg?alt=media&token=1d73c5fb-d673-4310-83bc-5ae391ab7bab', 1)
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (2, NULL, N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/mini-album%2F93a06094-0882-427b-aef1-04ffefe4fd11.jpeg?alt=media&token=a807f9e5-4a1a-4e8b-b6be-a7c72dd99d04', 1)
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (3, NULL, N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/mini-album%2F154855ca-0517-416f-be64-e0445a5c0b21.jpeg?alt=media&token=87ad51aa-af08-4df6-b8e7-b55fcc27afa7', 1)
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (4, NULL, N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/mini-album%2F9c03e44d-601b-4eef-88a0-2a0cb9c9a229.jpeg?alt=media&token=9b17402f-3b35-406a-8182-17545d561cbe', 1)
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (5, NULL, N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/mini-album%2Fa942ce3f-bae4-4ddd-98e5-649ee4a95bfa.jpeg?alt=media&token=ddf2429b-6858-4cb5-a339-22831d168fb0', 2)
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (6, NULL, N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/mini-album%2F3aad5d25-c0cd-412a-bd35-340b8d8b6cb8.jpeg?alt=media&token=0907b24e-6168-46dd-941f-9171ac02f4c3', 2)
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (7, NULL, N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/mini-album%2Fb2286d87-8272-48f5-bc8c-810b6a2be80f.jpeg?alt=media&token=bd6b7cec-d8f2-4adf-851b-a440c26ac33c', 3)
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (8, NULL, N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/mini-album%2Fe7fdd56c-5be8-4bff-a05f-3fa759b062fd.jpeg?alt=media&token=24ef6332-5ad8-4ce1-9260-062eb02ce473', 4)
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (9, NULL, N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/mini-album%2Fdf5bb50d-4d93-44fe-b317-ffd0c71aa643.jpeg?alt=media&token=c224d549-4cfc-4125-85a8-9df4f88e06ee', 4)
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (10, NULL, N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/mini-album%2F585bf184-5655-41c0-9855-4649221acac2.jpeg?alt=media&token=9bf25cd1-ad3f-4363-9d87-a3249934208b', 4)
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (11, NULL, N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/mini-album%2Fc641a713-49ff-4e11-89ac-500381f12029.jpeg?alt=media&token=f143cebb-0278-4c0c-84c9-bd361e345807', 4)
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (12, NULL, N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/mini-album%2F1f42cffc-e58c-4072-9827-06dae963d58f.jpeg?alt=media&token=4718b827-4863-4f7a-9734-7e8769cc9ff0', 5)
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (13, NULL, N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/mini-album%2F6e7c74f2-8350-479f-8b0e-2d11b0902492.jpeg?alt=media&token=6e4582b8-daf8-4911-bc10-6c49852ec4e5', 5)
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (14, NULL, N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/mini-album%2F17970486-3ec6-4b6b-ba28-d973f7458dd2.jpeg?alt=media&token=b1badf76-d372-416a-a909-a7d31b6c7228', 5)
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (15, NULL, N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/mini-album%2Fffaba4a3-7bd2-4c2f-b4ca-d08dcae31a66.jpeg?alt=media&token=85ad26b8-e691-46f2-9907-d1cd5fea77cb', 5)
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (16, NULL, N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/mini-album%2F85aa3ac0-64db-42d6-9745-bd11c5bdc994.jpeg?alt=media&token=c30accc3-66a6-43ba-8a93-0d300c83afd0', 6)
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (17, NULL, N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/mini-album%2F337876f0-893f-4077-ad9c-9824a70b7300.jpeg?alt=media&token=adb83eb2-aac5-400e-878b-b8ddb3127128', 6)
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (18, NULL, N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/mini-album%2Fdb9bb697-e745-4187-a2ce-6e9ef9ad601e.jpeg?alt=media&token=a728f782-22a8-493c-9daf-bbddfaf7c8ed', 6)
INSERT [dbo].[media_service] ([file_id], [file_index], [file_path], [service_id]) VALUES (19, NULL, N'https://firebasestorage.googleapis.com/v0/b/framemates-363d4.appspot.com/o/mini-album%2F110ddf39-31b7-40e4-8906-d8b60c788b1f.jpeg?alt=media&token=70b45b8b-24f0-436b-acd9-83103e38aaf7', 6)
SET IDENTITY_INSERT [dbo].[media_service] OFF
GO
SET IDENTITY_INSERT [dbo].[order] ON 

INSERT [dbo].[order] ([order_id], [address], [check_in], [deposit], [description], [order_date], [payment_date], [status], [customer_id], [payment_id]) VALUES (1, N'Gold Palace, District 2, Ho CHi Minh', CAST(N'2023-07-23T00:00:00.0000000' AS DateTime2), 2000000, NULL, CAST(N'2023-07-17T00:00:00.0000000' AS DateTime2), NULL, 0, 3, NULL)
INSERT [dbo].[order] ([order_id], [address], [check_in], [deposit], [description], [order_date], [payment_date], [status], [customer_id], [payment_id]) VALUES (2, N'Vu Digital Studio', CAST(N'2023-08-01T00:00:00.0000000' AS DateTime2), 500000, NULL, CAST(N'2023-07-17T00:00:00.0000000' AS DateTime2), NULL, 0, 4, NULL)
INSERT [dbo].[order] ([order_id], [address], [check_in], [deposit], [description], [order_date], [payment_date], [status], [customer_id], [payment_id]) VALUES (3, N'Thu Duc District, Ho Chi Minh', CAST(N'2023-05-05T00:00:00.0000000' AS DateTime2), 1000000, NULL, CAST(N'2023-04-28T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-06T00:00:00.0000000' AS DateTime2), 1, 5, 1)
INSERT [dbo].[order] ([order_id], [address], [check_in], [deposit], [description], [order_date], [payment_date], [status], [customer_id], [payment_id]) VALUES (4, N'Rose Palace, District 9, Ho Chi Minh', CAST(N'2023-07-22T00:00:00.0000000' AS DateTime2), 2000000, NULL, CAST(N'2023-06-21T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-21T00:00:00.0000000' AS DateTime2), 3, 5, 1)
INSERT [dbo].[order] ([order_id], [address], [check_in], [deposit], [description], [order_date], [payment_date], [status], [customer_id], [payment_id]) VALUES (5, N'Ben Nghe, District 1, Ho Chi Minh', CAST(N'2023-08-05T00:00:00.0000000' AS DateTime2), 1000000, NULL, CAST(N'2023-07-17T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-17T00:00:00.0000000' AS DateTime2), 4, 5, 1)
INSERT [dbo].[order] ([order_id], [address], [check_in], [deposit], [description], [order_date], [payment_date], [status], [customer_id], [payment_id]) VALUES (6, N'Tan Binh, Ho Chi MInh', CAST(N'2023-07-15T00:00:00.0000000' AS DateTime2), 500000, NULL, CAST(N'2023-07-10T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-16T00:00:00.0000000' AS DateTime2), 3, 5, 1)
INSERT [dbo].[order] ([order_id], [address], [check_in], [deposit], [description], [order_date], [payment_date], [status], [customer_id], [payment_id]) VALUES (7, N'TP.HCM', CAST(N'2023-07-27T07:00:00.0000000' AS DateTime2), 1000000, N'', CAST(N'2023-07-17T11:27:13.2350000' AS DateTime2), NULL, 0, 4, NULL)
INSERT [dbo].[order] ([order_id], [address], [check_in], [deposit], [description], [order_date], [payment_date], [status], [customer_id], [payment_id]) VALUES (8, N'TP.HCM', CAST(N'2023-07-29T07:00:00.0000000' AS DateTime2), 1000000, N'', CAST(N'2023-07-18T13:09:53.1520000' AS DateTime2), NULL, 0, 5, NULL)
INSERT [dbo].[order] ([order_id], [address], [check_in], [deposit], [description], [order_date], [payment_date], [status], [customer_id], [payment_id]) VALUES (9, N'TP.HCM', CAST(N'2023-07-31T07:00:00.0000000' AS DateTime2), 1000000, N'', CAST(N'2023-07-18T13:26:59.4080000' AS DateTime2), NULL, 4, 5, NULL)
SET IDENTITY_INSERT [dbo].[order] OFF
GO
SET IDENTITY_INSERT [dbo].[order_detail] ON 

INSERT [dbo].[order_detail] ([order_detail_id], [content], [discount], [post_date], [price], [rating], [order_id], [service_id]) VALUES (1, NULL, 0, NULL, 8000000, NULL, 1, 4)
INSERT [dbo].[order_detail] ([order_detail_id], [content], [discount], [post_date], [price], [rating], [order_id], [service_id]) VALUES (2, NULL, 0, NULL, 1500000, NULL, 2, 5)
INSERT [dbo].[order_detail] ([order_detail_id], [content], [discount], [post_date], [price], [rating], [order_id], [service_id]) VALUES (3, N'Good photographer, I like it', 0, CAST(N'2023-05-06T00:00:00.0000000' AS DateTime2), 3000000, 5, 3, 2)
INSERT [dbo].[order_detail] ([order_detail_id], [content], [discount], [post_date], [price], [rating], [order_id], [service_id]) VALUES (4, NULL, 0, NULL, 8000000, NULL, 4, 4)
INSERT [dbo].[order_detail] ([order_detail_id], [content], [discount], [post_date], [price], [rating], [order_id], [service_id]) VALUES (5, NULL, 0, NULL, 3500000, NULL, 5, 1)
INSERT [dbo].[order_detail] ([order_detail_id], [content], [discount], [post_date], [price], [rating], [order_id], [service_id]) VALUES (6, N'Anh rat dep ', 0, CAST(N'2023-07-18T13:30:32.1540000' AS DateTime2), 1500000, 5, 6, 5)
INSERT [dbo].[order_detail] ([order_detail_id], [content], [discount], [post_date], [price], [rating], [order_id], [service_id]) VALUES (7, NULL, 0, NULL, 8000000, NULL, 7, 4)
INSERT [dbo].[order_detail] ([order_detail_id], [content], [discount], [post_date], [price], [rating], [order_id], [service_id]) VALUES (8, NULL, 0, NULL, 6000000, NULL, 8, 3)
INSERT [dbo].[order_detail] ([order_detail_id], [content], [discount], [post_date], [price], [rating], [order_id], [service_id]) VALUES (9, NULL, 0, NULL, 3500000, NULL, 9, 1)
SET IDENTITY_INSERT [dbo].[order_detail] OFF
GO
SET IDENTITY_INSERT [dbo].[payment] ON 

INSERT [dbo].[payment] ([payment_id], [method], [customer_id], [employee_id]) VALUES (1, N'ZaloPay', 5, 1)
SET IDENTITY_INSERT [dbo].[payment] OFF
GO
SET IDENTITY_INSERT [dbo].[service_pack] ON 

INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (1, CAST(N'2023-07-17T01:22:00.1490000' AS DateTime2), N'<p>Photography package includes:<br />
Make-up, hairstyling<br />
Costumes according to customer needs<br />
Taken in 3 different scenes<br />
Advice on costumes and shooting styles</p>
', 0, N'Outdoor Photography', 3500000, 0, 0, 1, NULL, 0, 1, 1, NULL)
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (2, CAST(N'2023-07-17T01:27:55.3070000' AS DateTime2), N'<p><strong>Photography package includes:</strong></p>

<ul>
	<li>Make up</li>
	<li>Dress according to customer&#39;s request</li>
	<li>Shoot in the studio</li>
	<li>Advice on costumes and shooting styles</li>
</ul>
', 0, N'Family Photography', 3000000, 0, 0, 1, NULL, 0, 1, 1, NULL)
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (3, CAST(N'2023-07-17T01:44:29.9330000' AS DateTime2), N'<p><strong>Photography package includes:</strong></p>

<ol>
	<li>Arrange shooting and shooting composition</li>
	<li>Sound, light, scene processing</li>
	<li>Post-processing, photo and video file editing</li>
</ol>
', 0, N'TVC Spa Photography', 6000000, 0, 0, 1, NULL, 0, 1, 1, NULL)
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (4, CAST(N'2023-07-17T01:50:08.7990000' AS DateTime2), N'<p>Photography package includes:<br />
Make up<br />
Wedding dresses for men and women<br />
Arrange shooting and shooting composition<br />
Processing sound, light, background<br />
Post-processing, photo and video file editing<br />
Export image files, include a video reportage</p>
', 0, N'Wedding Photography', 8000000, 0, 0, 1, NULL, 0, 1, 1, NULL)
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (5, CAST(N'2023-07-17T01:56:08.0020000' AS DateTime2), N'<p>Photography package includes:<br />
Arrange shooting and shooting composition<br />
Processing sound, light, background<br />
Post-processing, photo and video file editing<br />
Export photo file, include video reportage</p>
', 0, N'Baby Photography', 1500000, 0, 0, 1, NULL, 0, 1, 1, NULL)
INSERT [dbo].[service_pack] ([service_id], [create_date], [description], [discount], [name], [price], [rating], [sold_count], [status], [update_date], [view], [create_by], [studio_id], [update_by]) VALUES (6, CAST(N'2023-07-17T11:20:50.8520000' AS DateTime2), N'<p>Photography package includes:<br />
Arrange shooting and shooting composition<br />
Processing sound, light, background<br />
Post-processing, photo and video file editing<br />
Export photo file, include video reportage</p>
', 0, N'Sexy Photo Shoot', 6000000, 0, 0, 0, NULL, 0, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[service_pack] OFF
GO
SET IDENTITY_INSERT [dbo].[sms_otp] ON 

INSERT [dbo].[sms_otp] ([otp_id], [create_at], [expired_at], [otp_value], [phone_number]) VALUES (1, CAST(N'2023-07-17T08:07:58.1300000' AS DateTime2), CAST(N'2023-07-17T08:08:58.1300000' AS DateTime2), N'767405', N'+84369998759')
INSERT [dbo].[sms_otp] ([otp_id], [create_at], [expired_at], [otp_value], [phone_number]) VALUES (2, CAST(N'2023-07-18T13:36:39.3510000' AS DateTime2), CAST(N'2023-07-18T13:37:39.3510000' AS DateTime2), N'527830', N'+84369998759')
SET IDENTITY_INSERT [dbo].[sms_otp] OFF
GO
SET IDENTITY_INSERT [dbo].[studio] ON 

INSERT [dbo].[studio] ([studio_id], [address], [avatar_studio], [balance], [cover_image], [create_date], [description], [name], [status], [total_rating], [admin_id], [owner], [sub_admin_studio], [employee_id]) VALUES (1, N'Chau Thanh, Tay Ninh', N'https://yt3.googleusercontent.com/R4UqYTcWTp74moaFC0r614nvR7RAzHsvdQsmNhiQ1DryMVHsDVVSCGMu8iTJhKmwatGKuRq9Jg=s176-c-k-c0x00ffffff-no-rj', 15000000, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7lRNWftXuOXRx-ikhfn7kaRKy11CiSg3Sy-6oEkMrk5LZQZgw2txOtEMid0Le-BvJo1A&usqp=CAU', CAST(N'2023-07-10T00:00:00.0000000' AS DateTime2), N'Hello, thanks that visited my page. My name is Hoai Phuong. I''m a professional photographer. My goal is to make all my clients 100% satisfied with my work. I will be happy to create studio high quality photos to growing your brand. I''m located in Florida , so can use a beautiful nature to create an amazing lifestyle photos! I''m hardworking and always aim for a quality results. If you are interested, write to me and we will discuss the details of the order.', N'VU DIGITAL', -1, 5, 1, 1, 1, 1)
INSERT [dbo].[studio] ([studio_id], [address], [avatar_studio], [balance], [cover_image], [create_date], [description], [name], [status], [total_rating], [admin_id], [owner], [sub_admin_studio], [employee_id]) VALUES (2, N'District 9, Ho Chi Minh', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJoqhRbjXAU16l_xcVLS9vYvwlDjBsR8h1_Q&usqp=CAU', 8000000, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7lRNWftXuOXRx-ikhfn7kaRKy11CiSg3Sy-6oEkMrk5LZQZgw2txOtEMid0Le-BvJo1A&usqp=CAU', CAST(N'2023-07-10T00:00:00.0000000' AS DateTime2), N'Creating stories through product photography and video. I make brands stand out in the sea of boring companies across social media. Reach out today for high performing custom content.', N'Krist Gallery', -1, 4, 1, 2, 2, 2)
INSERT [dbo].[studio] ([studio_id], [address], [avatar_studio], [balance], [cover_image], [create_date], [description], [name], [status], [total_rating], [admin_id], [owner], [sub_admin_studio], [employee_id]) VALUES (3, N'Binh Thanh, Ho Chi Minh', N'https://live.staticflickr.com/65535/51486195577_17e44c14aa_z.jpg', 20000000, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7lRNWftXuOXRx-ikhfn7kaRKy11CiSg3Sy-6oEkMrk5LZQZgw2txOtEMid0Le-BvJo1A&usqp=CAU', CAST(N'2023-07-10T00:00:00.0000000' AS DateTime2), N'I have been a professional photographer/videographer for more than 12 years. I also have a full-time professional team of videographers / photographers specialized in shooting Product and Lifestyle Photos / Videos. Now we are providing our service exclusively on Fiverr. I have experience working with big names and brands such as Samsung and Primark, so you can be sure I’m not just another person saying “Look at me”. When you choose to work with me, you get the benefit of all my experience here in Fiverr where I now deliver the best quality to my clients.', N'Nishe', -1, 4, 1, 3, 3, 3)
INSERT [dbo].[studio] ([studio_id], [address], [avatar_studio], [balance], [cover_image], [create_date], [description], [name], [status], [total_rating], [admin_id], [owner], [sub_admin_studio], [employee_id]) VALUES (4, N'Da Lat', N'https://live.staticflickr.com/8071/8401278876_fea081b08d_b.jpg', 2850000, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7lRNWftXuOXRx-ikhfn7kaRKy11CiSg3Sy-6oEkMrk5LZQZgw2txOtEMid0Le-BvJo1A&usqp=CAU', CAST(N'2023-07-10T00:00:00.0000000' AS DateTime2), N'Oh hi! My name is Tan Truong, the men behind Fluff Media. I am a photographer and marketer based in Tennessee. I specialize in creative brand photography with a focus on social media and marketing imagery. In addition to photography, I have years of experience in websites, graphic design, and social media, which gives me a unique perspective during projects. I believe that captivating images are an essential aspect of capturing your target audience and building a strong relationship with customers. I’d love to partner with you in growing your brand using strong photography!', N'DaLatXua', 1, 5, 1, 4, 4, 4)
INSERT [dbo].[studio] ([studio_id], [address], [avatar_studio], [balance], [cover_image], [create_date], [description], [name], [status], [total_rating], [admin_id], [owner], [sub_admin_studio], [employee_id]) VALUES (5, N'Da Lat', N'https://live.staticflickr.com/65535/50497060672_06e21749c4_b.jpg', 12000000, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7lRNWftXuOXRx-ikhfn7kaRKy11CiSg3Sy-6oEkMrk5LZQZgw2txOtEMid0Le-BvJo1A&usqp=CAU', CAST(N'2023-07-10T00:00:00.0000000' AS DateTime2), N'I am professional wedding/lifestyle make up for about 12 years. So you could check my instagram (nickname) and if you like my image quality i could make photos of products you need, or edit your raw images from any shoots, vacations etc. I am highly responsible with what i do and i always do everything for my clients with a feeling like i do it for myself. I will be more then happy to assist you and help', N'Linh MAKE UP', 1, 5, 1, 5, 5, 5)
INSERT [dbo].[studio] ([studio_id], [address], [avatar_studio], [balance], [cover_image], [create_date], [description], [name], [status], [total_rating], [admin_id], [owner], [sub_admin_studio], [employee_id]) VALUES (6, N'District 3, Ho Chi Minh', N'https://live.staticflickr.com/5783/21872417954_426f8a944a_b.jpg', 9000000, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7lRNWftXuOXRx-ikhfn7kaRKy11CiSg3Sy-6oEkMrk5LZQZgw2txOtEMid0Le-BvJo1A&usqp=CAU', CAST(N'2023-07-10T00:00:00.0000000' AS DateTime2), N'Are you searching high-quality work with a fast turn around time for a fair price? Then I am the right person for you. I am an expert on Product photo editing and full-time freelancer. Mainly I do product photo retouching for Amazon and eBay and another eCommerce site. I have 5+ years of experience in All kinds of Photo Editing. I hope I will be able to achieve your satisfaction and I can do something better for you. If you give me a chance to provide you with top quality work, then it will be a great pleasure for me.', N'Charles Photographer', 1, 4, 1, 6, 6, 6)
INSERT [dbo].[studio] ([studio_id], [address], [avatar_studio], [balance], [cover_image], [create_date], [description], [name], [status], [total_rating], [admin_id], [owner], [sub_admin_studio], [employee_id]) VALUES (7, N'Cau Giay, Ha Noi', N'https://live.staticflickr.com/65535/51976075135_5019151c6e_b.jpg', 5000000, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7lRNWftXuOXRx-ikhfn7kaRKy11CiSg3Sy-6oEkMrk5LZQZgw2txOtEMid0Le-BvJo1A&usqp=CAU', CAST(N'2023-07-10T00:00:00.0000000' AS DateTime2), N'Creating stories through product photography and video. I make brands stand out in the sea of boring companies across social media. Reach out today for high performing custom content.', N'Weakness Gall', 1, 5, 1, 7, 7, 7)
SET IDENTITY_INSERT [dbo].[studio] OFF
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
ALTER TABLE [dbo].[studio]  WITH CHECK ADD  CONSTRAINT [FK2krro6wwbeffm8bwbl62827ih] FOREIGN KEY([employee_id])
REFERENCES [dbo].[employee] ([employee_id])
GO
ALTER TABLE [dbo].[studio] CHECK CONSTRAINT [FK2krro6wwbeffm8bwbl62827ih]
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
