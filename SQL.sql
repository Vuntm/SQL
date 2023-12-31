USE [DATN2023]
GO
/****** Object:  Table [dbo].[account]    Script Date: 11/11/2023 8:58:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[id] [uniqueidentifier] NOT NULL,
	[password] [nvarchar](20) NULL,
	[email] [nvarchar](50) NULL,
	[role_id] [int] NULL,
	[owned_by] [nvarchar](50) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_tai_khoan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill]    Script Date: 11/11/2023 8:58:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill](
	[id] [uniqueidentifier] NOT NULL,
	[bill_code] [nvarchar](50) NOT NULL,
	[bill_name] [nvarchar](30) NULL,
	[date_created] [datetime] NULL,
	[total_amount] [float] NULL,
	[tax] [float] NULL,
	[created_by] [nvarchar](50) NULL,
	[promotion_code] [nvarchar](50) NULL,
	[customer_code] [nvarchar](50) NULL,
	[status] [int] NULL,
	[note] [nvarchar](250) NULL,
 CONSTRAINT [PK_hoa_don] PRIMARY KEY CLUSTERED 
(
	[bill_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill_detail]    Script Date: 11/11/2023 8:58:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill_detail](
	[id] [uniqueidentifier] NOT NULL,
	[bill_code] [nvarchar](50) NULL,
	[product_code] [nvarchar](50) NULL,
	[quantity] [int] NULL,
	[price] [float] NULL,
	[note] [nvarchar](100) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_bill_detail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[brand]    Script Date: 11/11/2023 8:58:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brand](
	[id] [uniqueidentifier] NOT NULL,
	[brand_code] [nvarchar](50) NOT NULL,
	[brand_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_thuong_hieu] PRIMARY KEY CLUSTERED 
(
	[brand_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart_items]    Script Date: 11/11/2023 8:58:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart_items](
	[id] [uniqueidentifier] NOT NULL,
	[product_code] [nvarchar](50) NULL,
	[customer_code] [nvarchar](50) NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_cart_items] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 11/11/2023 8:58:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[id] [uniqueidentifier] NOT NULL,
	[category_code] [nvarchar](50) NOT NULL,
	[category_name] [nvarchar](50) NULL,
	[note] [nvarchar](150) NULL,
 CONSTRAINT [PK_the_loai] PRIMARY KEY CLUSTERED 
(
	[category_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[color]    Script Date: 11/11/2023 8:58:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[color](
	[id] [uniqueidentifier] NOT NULL,
	[color_code] [nvarchar](50) NOT NULL,
	[color_name] [varchar](255) NULL,
 CONSTRAINT [PK_mau_sac] PRIMARY KEY CLUSTERED 
(
	[color_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 11/11/2023 8:58:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[customer_code] [nvarchar](50) NOT NULL,
	[customer_name] [nvarchar](50) NULL,
	[phone_number] [char](10) NULL,
	[city] [nvarchar](250) NULL,
	[district] [nvarchar](25) NULL,
	[commune] [nvarchar](25) NULL,
	[birthday] [date] NULL,
	[sex] [bit] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_khach_hang] PRIMARY KEY CLUSTERED 
(
	[customer_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[material]    Script Date: 11/11/2023 8:58:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[material](
	[id] [uniqueidentifier] NOT NULL,
	[material_code] [nvarchar](50) NOT NULL,
	[material_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_chat_lieu] PRIMARY KEY CLUSTERED 
(
	[material_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 11/11/2023 8:58:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [uniqueidentifier] NOT NULL,
	[product_code] [nvarchar](50) NOT NULL,
	[product_name] [nvarchar](50) NULL,
	[product_image] [nvarchar](250) NULL,
	[category_code] [nvarchar](50) NULL,
	[brand_code] [nvarchar](50) NULL,
	[size_code] [int] NULL,
	[color_code] [nvarchar](50) NULL,
	[material_code] [nvarchar](50) NULL,
	[quantity] [int] NULL,
	[begin_date] [date] NULL,
	[import_price] [float] NULL,
	[price] [float] NULL,
	[describe] [varchar](255) NULL,
	[supplier_code] [nvarchar](50) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_chi_tiet_giay] PRIMARY KEY CLUSTERED 
(
	[product_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[promotion]    Script Date: 11/11/2023 8:58:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[promotion](
	[id] [uniqueidentifier] NOT NULL,
	[promotion_code] [nvarchar](50) NOT NULL,
	[promotion_name] [nvarchar](50) NULL,
	[discount] [float] NULL,
	[begin_date] [date] NULL,
	[end_date] [date] NULL,
	[note] [nvarchar](250) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_khuyen_mai] PRIMARY KEY CLUSTERED 
(
	[promotion_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 11/11/2023 8:58:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[id] [int] NOT NULL,
	[role_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[size]    Script Date: 11/11/2023 8:58:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[size](
	[id] [uniqueidentifier] NOT NULL,
	[size_code] [int] NOT NULL,
	[size] [int] NULL,
 CONSTRAINT [PK_kich_co] PRIMARY KEY CLUSTERED 
(
	[size_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[staff]    Script Date: 11/11/2023 8:58:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[staff](
	[staff_code] [nvarchar](50) NOT NULL,
	[staff_name] [nvarchar](30) NULL,
	[position] [nvarchar](50) NULL,
	[phone_number] [char](10) NULL,
	[birthday] [date] NULL,
	[sex] [bit] NULL,
	[citizen_identification] [nvarchar](12) NULL,
	[city] [nvarchar](25) NULL,
	[district] [nvarchar](25) NULL,
	[commune] [nvarchar](25) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_nhan_vien] PRIMARY KEY CLUSTERED 
(
	[staff_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[supplier]    Script Date: 11/11/2023 8:58:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[supplier](
	[id] [uniqueidentifier] NOT NULL,
	[supplier_code] [nvarchar](50) NOT NULL,
	[supplier_name] [varchar](255) NULL,
	[city] [nvarchar](25) NULL,
	[district] [nvarchar](25) NULL,
	[commune] [nvarchar](25) NULL,
	[email] [nchar](30) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_nha_cung_cap] PRIMARY KEY CLUSTERED 
(
	[supplier_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transaction_history]    Script Date: 11/11/2023 8:58:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transaction_history](
	[id] [uniqueidentifier] NOT NULL,
	[transaction_history_code] [nvarchar](50) NOT NULL,
	[customer_code] [nvarchar](50) NULL,
	[staff_code] [nvarchar](50) NULL,
	[created_date] [date] NULL,
	[paid] [float] NULL,
	[bill_code] [nvarchar](50) NULL,
	[note] [nvarchar](250) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_lich_su_giao_dich] PRIMARY KEY CLUSTERED 
(
	[transaction_history_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transaction_history_detail]    Script Date: 11/11/2023 8:58:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transaction_history_detail](
	[id] [uniqueidentifier] NULL,
	[transaction_history_detail_code] [nvarchar](50) NOT NULL,
	[transaction_history_code] [nvarchar](50) NULL,
	[product_code] [nvarchar](50) NULL,
	[quantity] [int] NULL,
	[price] [float] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_transaction_history_detail] PRIMARY KEY CLUSTERED 
(
	[transaction_history_detail_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[account] ([id], [password], [email], [role_id], [owned_by], [status]) VALUES (N'5b7267e4-c7fb-493f-a411-e728654fa36d', N'123', N'vuntm', 0, N'vuntm', 0)
GO
INSERT [dbo].[bill] ([id], [bill_code], [bill_name], [date_created], [total_amount], [tax], [created_by], [promotion_code], [customer_code], [status], [note]) VALUES (N'a70daf2e-0726-4f85-9287-fd6662327978', N'vuntm-2023-11-11 16:00:000', N'vuntm', CAST(N'2023-11-11T00:00:00.000' AS DateTime), 550000, 10000, N'hieunvm', NULL, N'vuntm', 0, NULL)
GO
INSERT [dbo].[bill_detail] ([id], [bill_code], [product_code], [quantity], [price], [note], [status]) VALUES (N'3aa716ba-1e33-4f83-a5c6-032142faf1d7', N'vuntm-2023-11-11 16:00:000', N'44_dx_our__legend_mongoose_blue_39', 1, 550000, NULL, 0)
INSERT [dbo].[bill_detail] ([id], [bill_code], [product_code], [quantity], [price], [note], [status]) VALUES (N'cd79473b-0b25-4888-8b3b-655cef3b4b87', N'vuntm-2023-11-11 16:00:000', N'44_dx_our__legend_mongoose_blue_39', 1, 550000, NULL, 0)
INSERT [dbo].[bill_detail] ([id], [bill_code], [product_code], [quantity], [price], [note], [status]) VALUES (N'4adf2607-caa8-4daa-8bc6-7a6525f58ab6', N'vuntm-2023-11-11 16:00:000', N'44_dx_our__legend_mongoose_blue_39', 1, 550000, NULL, 0)
INSERT [dbo].[bill_detail] ([id], [bill_code], [product_code], [quantity], [price], [note], [status]) VALUES (N'914c6da1-5767-41a4-9902-96336a5505e3', N'vuntm-2023-11-11 16:00:000', N'eco_theory_positivity_red_41', 1, 550000, NULL, 0)
INSERT [dbo].[bill_detail] ([id], [bill_code], [product_code], [quantity], [price], [note], [status]) VALUES (N'b720dd9e-5470-4050-9ba3-ae0e5bf3e667', N'vuntm-2023-11-11 16:00:000', N'eco_theory_positivity_red_41', 1, 550000, NULL, 0)
INSERT [dbo].[bill_detail] ([id], [bill_code], [product_code], [quantity], [price], [note], [status]) VALUES (N'9c619fb3-b832-43ad-86b4-b13274afa599', N'vuntm-2023-11-11 16:00:000', N'eco_theory_positivity_red_41', 1, 550000, NULL, 0)
INSERT [dbo].[bill_detail] ([id], [bill_code], [product_code], [quantity], [price], [note], [status]) VALUES (N'6ccb80f0-24a6-46a8-83a4-d77aa3670839', N'vuntm-2023-11-11 16:00:000', N'eco_theory_positivity_red_41', 1, 550000, NULL, 0)
INSERT [dbo].[bill_detail] ([id], [bill_code], [product_code], [quantity], [price], [note], [status]) VALUES (N'a976df88-5642-4101-adec-d7e5fe60b36d', N'vuntm-2023-11-11 16:00:000', N'eco_theory_positivity_red_41', 1, 550000, NULL, 0)
INSERT [dbo].[bill_detail] ([id], [bill_code], [product_code], [quantity], [price], [note], [status]) VALUES (N'89f9fdc9-4f4c-4ea9-8a39-dd020c9e98bf', N'vuntm-2023-11-11 16:00:000', N'eco_theory_positivity_red_41', 1, 550000, NULL, 0)
GO
INSERT [dbo].[brand] ([id], [brand_code], [brand_name]) VALUES (N'bcbc6933-ea0f-47a5-a0e7-fa7aa26e1652', N'vans', N'Vans')
GO
INSERT [dbo].[category] ([id], [category_code], [category_name], [note]) VALUES (N'363c6ae0-d04f-4ff9-83e3-965057673021', N'fashion', N'fashion', N'none')
INSERT [dbo].[category] ([id], [category_code], [category_name], [note]) VALUES (N'c77a9e99-f922-409c-bc95-5992f56ce4c7', N'sport', N'sport', N'none')
GO
INSERT [dbo].[color] ([id], [color_code], [color_name]) VALUES (N'ff3565e9-73f7-43d8-a22e-5a9adb18e07e', N'blue', N'blue color')
INSERT [dbo].[color] ([id], [color_code], [color_name]) VALUES (N'd1bec5fd-9bb6-49f6-abfc-33e9d54a8c43', N'pink', N'pink color')
INSERT [dbo].[color] ([id], [color_code], [color_name]) VALUES (N'4b73d443-0b4b-4809-8bf9-661c4a80d425', N'red', N'red color')
GO
INSERT [dbo].[customer] ([customer_code], [customer_name], [phone_number], [city], [district], [commune], [birthday], [sex], [status]) VALUES (N'thanhnt', N'Nguyen Tien Thanh', N'0123456789', N'Ha Noi', N'Nam Tu Liem', N'Dien', CAST(N'2003-01-01' AS Date), 0, 0)
INSERT [dbo].[customer] ([customer_code], [customer_name], [phone_number], [city], [district], [commune], [birthday], [sex], [status]) VALUES (N'vuntm', N'Nguyen To Minh Vu', N'0369488001', N'Ha Noi', N'Ha Dong', N'Quang Trung', CAST(N'2003-02-09' AS Date), 0, 0)
GO
INSERT [dbo].[material] ([id], [material_code], [material_name]) VALUES (N'2fbe53e3-ac64-4105-8648-c3cdeef00a58', N'suede', N'da suede')
GO
INSERT [dbo].[product] ([id], [product_code], [product_name], [product_image], [category_code], [brand_code], [size_code], [color_code], [material_code], [quantity], [begin_date], [import_price], [price], [describe], [supplier_code], [status]) VALUES (N'7c7dae28-c703-4d9c-a63b-bba65a184c8e', N'44_dx_our__legend_mongoose_blue_39', N'Giày Vans UA Authentic 44 DX Our Legends Mongoose', N'nike-running-black-2.png', N'sport', N'vans', 39, N'blue', N'suede', 99, CAST(N'2003-02-09' AS Date), 450000, 550000, N'good', N'vans_supplier', 0)
INSERT [dbo].[product] ([id], [product_code], [product_name], [product_image], [category_code], [brand_code], [size_code], [color_code], [material_code], [quantity], [begin_date], [import_price], [price], [describe], [supplier_code], [status]) VALUES (N'02d12b04-6a9e-4b99-9168-4c9fff5f09f2', N'44_dx_our__legend_mongoose_blue_40', N'Giày Vans UA Authentic 44 DX Our Legends Mongoose', N'nike-running-black-2.png', N'sport', N'vans', 40, N'blue', N'suede', 99, CAST(N'2003-02-10' AS Date), 450000, 550000, N'good', N'vans_supplier', 0)
INSERT [dbo].[product] ([id], [product_code], [product_name], [product_image], [category_code], [brand_code], [size_code], [color_code], [material_code], [quantity], [begin_date], [import_price], [price], [describe], [supplier_code], [status]) VALUES (N'a35a4f9e-d5fc-436e-b5e6-e7714bde7f6b', N'44_dx_our__legend_mongoose_blue_41', N'Giày Vans UA Authentic 44 DX Our Legends Mongoose', N'nike-running-black-2.png', N'sport', N'vans', 41, N'blue', N'suede', 99, CAST(N'2003-03-09' AS Date), 450000, 550000, N'good', N'vans_supplier', 0)
INSERT [dbo].[product] ([id], [product_code], [product_name], [product_image], [category_code], [brand_code], [size_code], [color_code], [material_code], [quantity], [begin_date], [import_price], [price], [describe], [supplier_code], [status]) VALUES (N'59a40036-9b35-4e7f-9b9d-0598ca01da4d', N'44_dx_our__legend_mongoose_blue_45', N'Giày Vans UA Authentic 44 DX Our Legends Mongoose', N'nike-running-black-2.png', N'sport', N'vans', 45, N'blue', N'suede', 99, CAST(N'2003-03-10' AS Date), 450000, 550000, N'good', N'vans_supplier', 0)
INSERT [dbo].[product] ([id], [product_code], [product_name], [product_image], [category_code], [brand_code], [size_code], [color_code], [material_code], [quantity], [begin_date], [import_price], [price], [describe], [supplier_code], [status]) VALUES (N'73c73a4b-5347-4481-afc5-bf6006f308e4', N'44_dx_our__legend_mongoose_pink_42', N'Giày Vans UA Authentic 44 DX Our Legends Mongoose', N'nike-running-black-2.png', N'sport', N'vans', 42, N'pink', N'suede', 99, CAST(N'2003-02-02' AS Date), 400000, 500000, N'very good', N'vans_supplier', 0)
INSERT [dbo].[product] ([id], [product_code], [product_name], [product_image], [category_code], [brand_code], [size_code], [color_code], [material_code], [quantity], [begin_date], [import_price], [price], [describe], [supplier_code], [status]) VALUES (N'108ca41a-1be9-4a31-b307-798e5d4b56d2', N'44_dx_our__legend_mongoose_pink_43', N'Giày Vans UA Authentic 44 DX Our Legends Mongoose', N'nike-running-black-2.png', N'sport', N'vans', 43, N'pink', N'suede', 99, CAST(N'2003-10-02' AS Date), 450000, 550000, N'good', N'vans_supplier', 0)
INSERT [dbo].[product] ([id], [product_code], [product_name], [product_image], [category_code], [brand_code], [size_code], [color_code], [material_code], [quantity], [begin_date], [import_price], [price], [describe], [supplier_code], [status]) VALUES (N'127d7bcc-b06f-40b0-b90b-0eb81bcbac38', N'44_dx_our__legend_mongoose_pink_44', N'Giày Vans UA Authentic 44 DX Our Legends Mongoose', N'nike-running-black-2.png', N'sport', N'vans', 44, N'pink', N'suede', 99, CAST(N'2003-04-30' AS Date), 450000, 550000, N'good', N'vans_supplier', 0)
INSERT [dbo].[product] ([id], [product_code], [product_name], [product_image], [category_code], [brand_code], [size_code], [color_code], [material_code], [quantity], [begin_date], [import_price], [price], [describe], [supplier_code], [status]) VALUES (N'287e5864-9c26-44a2-8a2c-e5b99d7f0cf0', N'44_dx_our__legend_mongoose_pink_45', N'Giày Vans UA Authentic 44 DX Our Legends Mongoose', N'nike-running-black-2.png', N'sport', N'vans', 45, N'pink', N'suede', 99, CAST(N'2003-06-18' AS Date), 450000, 550000, N'good', N'vans_supplier', 0)
INSERT [dbo].[product] ([id], [product_code], [product_name], [product_image], [category_code], [brand_code], [size_code], [color_code], [material_code], [quantity], [begin_date], [import_price], [price], [describe], [supplier_code], [status]) VALUES (N'2b1a804e-7941-4274-8ccc-9919841dc20a', N'44_dx_our__legend_mongoose_red_45', N'Giày Vans UA Authentic 44 DX Our Legends Mongoose', N'nike-running-black-2.png', N'sport', N'vans', 45, N'red', N'suede', 99, CAST(N'2003-09-04' AS Date), 450000, 550000, N'good', N'vans_supplier', 0)
INSERT [dbo].[product] ([id], [product_code], [product_name], [product_image], [category_code], [brand_code], [size_code], [color_code], [material_code], [quantity], [begin_date], [import_price], [price], [describe], [supplier_code], [status]) VALUES (N'6919947c-f0be-494f-8baa-301c2201a61e', N'eco_theory_positivity_red_41', N'Vans UA Authentic Eco Theory Positivity', N'nike-running-black-2.png', N'sport', N'vans', 41, N'red', N'suede', 97, CAST(N'2003-09-09' AS Date), 450000, 550000, N'good', N'vans_supplier', 0)
INSERT [dbo].[product] ([id], [product_code], [product_name], [product_image], [category_code], [brand_code], [size_code], [color_code], [material_code], [quantity], [begin_date], [import_price], [price], [describe], [supplier_code], [status]) VALUES (N'1cb4d90b-ac1e-4148-87af-5203508914d3', N'eco_theory_positivity_red_43', N'Giày Vans UA Authentic Eco Theory Positivity', N'nike-running-black-2.png', N'sport', N'vans', 43, N'red', N'suede', 99, CAST(N'2003-10-01' AS Date), 450000, 550000, N'good', N'vans_supplier', 0)
GO
INSERT [dbo].[role] ([id], [role_name]) VALUES (0, N'admin')
INSERT [dbo].[role] ([id], [role_name]) VALUES (1, N'staff')
INSERT [dbo].[role] ([id], [role_name]) VALUES (2, N'user')
GO
INSERT [dbo].[size] ([id], [size_code], [size]) VALUES (N'78eb2533-62f4-4b2a-9787-c40355d1c899', 36, 36)
INSERT [dbo].[size] ([id], [size_code], [size]) VALUES (N'804fd67d-1cc7-4d71-82cf-7b6b7264dfb3', 37, 37)
INSERT [dbo].[size] ([id], [size_code], [size]) VALUES (N'650c33dc-f7b9-495d-8187-6614f181deca', 38, 38)
INSERT [dbo].[size] ([id], [size_code], [size]) VALUES (N'1a310f60-311a-4c7f-bd2b-d7ed8779c854', 39, 39)
INSERT [dbo].[size] ([id], [size_code], [size]) VALUES (N'489fe5f0-b19e-465d-a96a-0c4e08e704c4', 40, 40)
INSERT [dbo].[size] ([id], [size_code], [size]) VALUES (N'019cc9cf-7d4d-4e0d-a9f8-c4f877e70eb5', 41, 41)
INSERT [dbo].[size] ([id], [size_code], [size]) VALUES (N'5b78fac2-f314-44f2-a04a-efa2e306db4c', 42, 42)
INSERT [dbo].[size] ([id], [size_code], [size]) VALUES (N'8726b0b5-b80e-4bcb-93f8-dce48d4a560e', 43, 43)
INSERT [dbo].[size] ([id], [size_code], [size]) VALUES (N'626e340c-707c-4a4d-b9f2-ce1fa9ba0ee4', 44, 44)
INSERT [dbo].[size] ([id], [size_code], [size]) VALUES (N'a78eb31b-f293-479d-af71-72591ab6f6b5', 45, 45)
GO
INSERT [dbo].[staff] ([staff_code], [staff_name], [position], [phone_number], [birthday], [sex], [citizen_identification], [city], [district], [commune], [status]) VALUES (N'hieunvm', N'Nguyen Vu Minh Hieu', N'admin', N'0395852610', CAST(N'2003-04-08' AS Date), 0, N'054645645', N'Ha Noi', N'Nam Tu Liem', N'Xuan Phuong', 0)
INSERT [dbo].[staff] ([staff_code], [staff_name], [position], [phone_number], [birthday], [sex], [citizen_identification], [city], [district], [commune], [status]) VALUES (N'vuntm', N'Nguyen Minh Vu', N'staff', N'0123456789', CAST(N'2003-09-02' AS Date), 1, N'012382373', N'Ninh Binh', N'Kim Son', N'Hung Tien', 1)
GO
INSERT [dbo].[supplier] ([id], [supplier_code], [supplier_name], [city], [district], [commune], [email], [status]) VALUES (N'ee72af22-e674-47cc-a7a6-9410afcd6a4f', N'vans_supplier', N'Vans Supplier', N'Ha Noi', N'Ha Dong', N'Quang Trung', N'vusex@gmail.com               ', 0)
GO
ALTER TABLE [dbo].[account] ADD  CONSTRAINT [DF_tai_khoan_idTaiKhoan]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[bill] ADD  CONSTRAINT [DF_hoa_don_idHoaDon]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[bill_detail] ADD  CONSTRAINT [DF_bill_detail_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[brand] ADD  CONSTRAINT [DF_thuong_hieu_idThuongHieu]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[category] ADD  CONSTRAINT [DF_the_loai_idTheLoai]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[color] ADD  CONSTRAINT [DF_mau_sac_idMauSac]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[material] ADD  CONSTRAINT [DF_chat_lieu_idChatLieu]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[product] ADD  CONSTRAINT [DF_chi_tiet_giay_idChiTietSach]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[promotion] ADD  CONSTRAINT [DF_khuyen_mai_idKhuyenMai]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[size] ADD  CONSTRAINT [DF_kich_co_idKichCo]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[supplier] ADD  CONSTRAINT [DF_nha_cung_cap_idNhaCungCap]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[transaction_history] ADD  CONSTRAINT [DF_lich_su_giao_dich_idGiaDich]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[transaction_history_detail] ADD  CONSTRAINT [DF_transaction_history_detail_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[account]  WITH CHECK ADD  CONSTRAINT [FK_account_customer] FOREIGN KEY([owned_by])
REFERENCES [dbo].[customer] ([customer_code])
GO
ALTER TABLE [dbo].[account] CHECK CONSTRAINT [FK_account_customer]
GO
ALTER TABLE [dbo].[account]  WITH CHECK ADD  CONSTRAINT [FK_account_staff] FOREIGN KEY([owned_by])
REFERENCES [dbo].[staff] ([staff_code])
GO
ALTER TABLE [dbo].[account] CHECK CONSTRAINT [FK_account_staff]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FK_bill_customer] FOREIGN KEY([customer_code])
REFERENCES [dbo].[customer] ([customer_code])
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FK_bill_customer]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FK_bill_promotion] FOREIGN KEY([promotion_code])
REFERENCES [dbo].[promotion] ([promotion_code])
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FK_bill_promotion]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FK_bill_staff] FOREIGN KEY([created_by])
REFERENCES [dbo].[staff] ([staff_code])
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FK_bill_staff]
GO
ALTER TABLE [dbo].[bill_detail]  WITH CHECK ADD  CONSTRAINT [FK_bill_detail_bill] FOREIGN KEY([bill_code])
REFERENCES [dbo].[bill] ([bill_code])
GO
ALTER TABLE [dbo].[bill_detail] CHECK CONSTRAINT [FK_bill_detail_bill]
GO
ALTER TABLE [dbo].[bill_detail]  WITH CHECK ADD  CONSTRAINT [FK_bill_detail_product] FOREIGN KEY([product_code])
REFERENCES [dbo].[product] ([product_code])
GO
ALTER TABLE [dbo].[bill_detail] CHECK CONSTRAINT [FK_bill_detail_product]
GO
ALTER TABLE [dbo].[cart_items]  WITH CHECK ADD  CONSTRAINT [FK_cart_items_customer] FOREIGN KEY([customer_code])
REFERENCES [dbo].[customer] ([customer_code])
GO
ALTER TABLE [dbo].[cart_items] CHECK CONSTRAINT [FK_cart_items_customer]
GO
ALTER TABLE [dbo].[cart_items]  WITH CHECK ADD  CONSTRAINT [FK_cart_items_product] FOREIGN KEY([product_code])
REFERENCES [dbo].[product] ([product_code])
GO
ALTER TABLE [dbo].[cart_items] CHECK CONSTRAINT [FK_cart_items_product]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_brand] FOREIGN KEY([brand_code])
REFERENCES [dbo].[brand] ([brand_code])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_detail_brand]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_category] FOREIGN KEY([category_code])
REFERENCES [dbo].[category] ([category_code])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_detail_category]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_color] FOREIGN KEY([color_code])
REFERENCES [dbo].[color] ([color_code])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_detail_color]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_material] FOREIGN KEY([material_code])
REFERENCES [dbo].[material] ([material_code])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_detail_material]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_size] FOREIGN KEY([size_code])
REFERENCES [dbo].[size] ([size_code])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_detail_size]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_supplier] FOREIGN KEY([supplier_code])
REFERENCES [dbo].[supplier] ([supplier_code])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_detail_supplier]
GO
ALTER TABLE [dbo].[role]  WITH CHECK ADD  CONSTRAINT [FK_role_role] FOREIGN KEY([id])
REFERENCES [dbo].[role] ([id])
GO
ALTER TABLE [dbo].[role] CHECK CONSTRAINT [FK_role_role]
GO
ALTER TABLE [dbo].[transaction_history]  WITH CHECK ADD  CONSTRAINT [FK_transaction_history_bill] FOREIGN KEY([bill_code])
REFERENCES [dbo].[bill] ([bill_code])
GO
ALTER TABLE [dbo].[transaction_history] CHECK CONSTRAINT [FK_transaction_history_bill]
GO
ALTER TABLE [dbo].[transaction_history_detail]  WITH CHECK ADD  CONSTRAINT [FK_transaction_history_detail_product_detail] FOREIGN KEY([product_code])
REFERENCES [dbo].[product] ([product_code])
GO
ALTER TABLE [dbo].[transaction_history_detail] CHECK CONSTRAINT [FK_transaction_history_detail_product_detail]
GO
ALTER TABLE [dbo].[transaction_history_detail]  WITH CHECK ADD  CONSTRAINT [FK_transaction_history_detail_transaction_history] FOREIGN KEY([transaction_history_code])
REFERENCES [dbo].[transaction_history] ([transaction_history_code])
GO
ALTER TABLE [dbo].[transaction_history_detail] CHECK CONSTRAINT [FK_transaction_history_detail_transaction_history]
GO
