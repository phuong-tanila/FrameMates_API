--CREATE DATABASE [FrameMates_DB]
--GO
USE [FrameMates_DB]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[administrator](
	[admin_id] [int] IDENTITY(1,1) NOT NULL,
	[avatar] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[name] [varchar](max) NULL,
	[password] [varchar](255) NULL,
	[phone] [varchar](255) NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[album]    Script Date: 10-Jun-23 4:10:08 PM ******/
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
/****** Object:  Table [dbo].[attach_file]    Script Date: 10-Jun-23 4:10:08 PM ******/
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
/****** Object:  Table [dbo].[attachment]    Script Date: 10-Jun-23 4:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[attachment](
	[attach_id] [int] IDENTITY(1,1) NOT NULL,
	[attach_path] [varchar](max) NULL,
	[order_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[attach_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[channel]    Script Date: 10-Jun-23 4:10:08 PM ******/
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
/****** Object:  Table [dbo].[combo_detail]    Script Date: 10-Jun-23 4:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[combo_detail](
	[combo_detail_id] [int] IDENTITY(1,1) NOT NULL,
	[combo_id] [int] NULL,
	[service_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[combo_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[combo_service]    Script Date: 10-Jun-23 4:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[combo_service](
	[combo_id] [int] IDENTITY(1,1) NOT NULL,
	[create_date] [datetime2](6) NULL,
	[description] [varchar](max) NULL,
	[discount] [int] NULL,
	[name] [varchar](255) NULL,
	[price] [int] NULL,
	[status] [bit] NULL,
	[update_date] [datetime2](6) NULL,
	[view] [int] NULL,
	[create_by] [int] NULL,
	[studio_id] [int] NULL,
	[update_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[combo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comment]    Script Date: 10-Jun-23 4:10:08 PM ******/
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
/****** Object:  Table [dbo].[customer]    Script Date: 10-Jun-23 4:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[address] [varchar](max) NULL,
	[avatar] [varchar](max) NULL,
	[birth_date] [date] NULL,
	[create_date] [datetime2](6) NULL,
	[email] [varchar](255) NULL,
	[name] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[phone] [varchar](255) NULL,
	[status] [int] NULL,
	[admin_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee]    Script Date: 10-Jun-23 4:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee](
	[employee_id] [int] IDENTITY(1,1) NOT NULL,
	[avatar] [varchar](max) NULL,
	[name] [varchar](255) NULL,
	[phone] [varchar](255) NULL,
	[status] [varchar](255) NULL,
	[username] [varchar](255) NULL,
	[studio_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[media_file]    Script Date: 10-Jun-23 4:10:08 PM ******/
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
/****** Object:  Table [dbo].[media_service]    Script Date: 10-Jun-23 4:10:08 PM ******/
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
/****** Object:  Table [dbo].[message]    Script Date: 10-Jun-23 4:10:08 PM ******/
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
/****** Object:  Table [dbo].[order]    Script Date: 10-Jun-23 4:10:08 PM ******/
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
/****** Object:  Table [dbo].[order_detail]    Script Date: 10-Jun-23 4:10:08 PM ******/
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
	[combo_service_id] [int] NULL,
	[order_id] [int] NULL,
	[service_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payment]    Script Date: 10-Jun-23 4:10:08 PM ******/
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
/****** Object:  Table [dbo].[reaction]    Script Date: 10-Jun-23 4:10:08 PM ******/
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
/****** Object:  Table [dbo].[service_pack]    Script Date: 10-Jun-23 4:10:08 PM ******/
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
/****** Object:  Table [dbo].[studio]    Script Date: 10-Jun-23 4:10:08 PM ******/
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
	[total_rating] [int] NULL,
	[admin_id] [int] NULL,
	[owner] [int] NULL,
	[sub_admin_studio] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[studio_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tag]    Script Date: 10-Jun-23 4:10:08 PM ******/
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
/****** Object:  Table [dbo].[tag_detail]    Script Date: 10-Jun-23 4:10:08 PM ******/
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
/****** Object:  Table [dbo].[transaction]    Script Date: 10-Jun-23 4:10:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transaction](
	[transaction_id] [int] IDENTITY(1,1) NOT NULL,
	[amount] [int] NULL,
	[create_date] [datetime2](6) NULL,
	[status] [varchar](255) NULL,
	[transaction_type] [bit] NULL,
	[payment_id] [int] NULL,
	[studio_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[transaction_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[voucher]    Script Date: 10-Jun-23 4:10:08 PM ******/
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
PRIMARY KEY CLUSTERED 
(
	[voucher_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[voucher_detail]    Script Date: 10-Jun-23 4:10:08 PM ******/
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
/****** Object:  Table [dbo].[voucher_wallet]    Script Date: 10-Jun-23 4:10:08 PM ******/
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
ALTER TABLE [dbo].[attachment]  WITH CHECK ADD  CONSTRAINT [FK46dc0uhvsxs0bsloarfo2hupx] FOREIGN KEY([order_id])
REFERENCES [dbo].[order] ([order_id])
GO
ALTER TABLE [dbo].[attachment] CHECK CONSTRAINT [FK46dc0uhvsxs0bsloarfo2hupx]
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
ALTER TABLE [dbo].[combo_detail]  WITH CHECK ADD  CONSTRAINT [FK5ec7l5jr4wimj851vge454qkr] FOREIGN KEY([combo_id])
REFERENCES [dbo].[combo_service] ([combo_id])
GO
ALTER TABLE [dbo].[combo_detail] CHECK CONSTRAINT [FK5ec7l5jr4wimj851vge454qkr]
GO
ALTER TABLE [dbo].[combo_detail]  WITH CHECK ADD  CONSTRAINT [FKtr5t7hag9oub6m7gct66l3mbt] FOREIGN KEY([service_id])
REFERENCES [dbo].[service_pack] ([service_id])
GO
ALTER TABLE [dbo].[combo_detail] CHECK CONSTRAINT [FKtr5t7hag9oub6m7gct66l3mbt]
GO
ALTER TABLE [dbo].[combo_service]  WITH CHECK ADD  CONSTRAINT [FKjmc24t677flpn1sx6kepgpwtq] FOREIGN KEY([create_by])
REFERENCES [dbo].[employee] ([employee_id])
GO
ALTER TABLE [dbo].[combo_service] CHECK CONSTRAINT [FKjmc24t677flpn1sx6kepgpwtq]
GO
ALTER TABLE [dbo].[combo_service]  WITH CHECK ADD  CONSTRAINT [FKnb83vslmn3pv3mmaiv7eadbvb] FOREIGN KEY([studio_id])
REFERENCES [dbo].[studio] ([studio_id])
GO
ALTER TABLE [dbo].[combo_service] CHECK CONSTRAINT [FKnb83vslmn3pv3mmaiv7eadbvb]
GO
ALTER TABLE [dbo].[combo_service]  WITH CHECK ADD  CONSTRAINT [FKs3kkh06fh4tfp41fqspt3l2od] FOREIGN KEY([update_by])
REFERENCES [dbo].[employee] ([employee_id])
GO
ALTER TABLE [dbo].[combo_service] CHECK CONSTRAINT [FKs3kkh06fh4tfp41fqspt3l2od]
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
ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [FKdnucs9pg8ahtqwy3e48ui2df6] FOREIGN KEY([studio_id])
REFERENCES [dbo].[studio] ([studio_id])
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [FKdnucs9pg8ahtqwy3e48ui2df6]
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
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [FKjxvn82pkxc1kour62jl4n67h6] FOREIGN KEY([combo_service_id])
REFERENCES [dbo].[combo_service] ([combo_id])
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [FKjxvn82pkxc1kour62jl4n67h6]
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
