/**
 * 
 * Copyright [2016] [Bilal Ali]
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software distributed under 
 * the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
 *  ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and limitations under the License.
 */

USE [master]
GO
/****** Object:  Database [MMLLM]    Script Date: 12/08/2016 21:20:17 ******/
CREATE DATABASE [MMLLM] ON  PRIMARY 
( NAME = N'MMLLM', FILENAME = N'E:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\MMLLM.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MMLLM_log', FILENAME = N'E:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\MMLLM_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MMLLM] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MMLLM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MMLLM] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [MMLLM] SET ANSI_NULLS OFF
GO
ALTER DATABASE [MMLLM] SET ANSI_PADDING OFF
GO
ALTER DATABASE [MMLLM] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [MMLLM] SET ARITHABORT OFF
GO
ALTER DATABASE [MMLLM] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [MMLLM] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [MMLLM] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [MMLLM] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [MMLLM] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [MMLLM] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [MMLLM] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [MMLLM] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [MMLLM] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [MMLLM] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [MMLLM] SET  DISABLE_BROKER
GO
ALTER DATABASE [MMLLM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [MMLLM] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [MMLLM] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [MMLLM] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [MMLLM] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [MMLLM] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [MMLLM] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [MMLLM] SET  READ_WRITE
GO
ALTER DATABASE [MMLLM] SET RECOVERY FULL
GO
ALTER DATABASE [MMLLM] SET  MULTI_USER
GO
ALTER DATABASE [MMLLM] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [MMLLM] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'MMLLM', N'ON'
GO
USE [MMLLM]
GO
/****** Object:  Table [dbo].[lkptFoodNutritionCategory]    Script Date: 12/08/2016 21:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lkptFoodNutritionCategory](
	[FoodNutritionCategoryID] [numeric](18, 0) NOT NULL,
	[FoodCategory] [varchar](50) NULL,
	[NutritionCategory] [varchar](50) NULL,
 CONSTRAINT [PK_lkptFoodNutritionCategory] PRIMARY KEY CLUSTERED 
(
	[FoodNutritionCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[lkptFoodNutritionCategory] ([FoodNutritionCategoryID], [FoodCategory], [NutritionCategory]) VALUES (CAST(1 AS Numeric(18, 0)), N'Grain', N'Carbohydrate')
INSERT [dbo].[lkptFoodNutritionCategory] ([FoodNutritionCategoryID], [FoodCategory], [NutritionCategory]) VALUES (CAST(2 AS Numeric(18, 0)), N'Meat', N'Fat')
INSERT [dbo].[lkptFoodNutritionCategory] ([FoodNutritionCategoryID], [FoodCategory], [NutritionCategory]) VALUES (CAST(3 AS Numeric(18, 0)), N'SeaFood', N'Protein')
INSERT [dbo].[lkptFoodNutritionCategory] ([FoodNutritionCategoryID], [FoodCategory], [NutritionCategory]) VALUES (CAST(4 AS Numeric(18, 0)), N'Egg', N'Protein')
INSERT [dbo].[lkptFoodNutritionCategory] ([FoodNutritionCategoryID], [FoodCategory], [NutritionCategory]) VALUES (CAST(5 AS Numeric(18, 0)), N'Legume', N'Carbohydrate')
INSERT [dbo].[lkptFoodNutritionCategory] ([FoodNutritionCategoryID], [FoodCategory], [NutritionCategory]) VALUES (CAST(6 AS Numeric(18, 0)), N'Fruit', N'Carbohydrate')
INSERT [dbo].[lkptFoodNutritionCategory] ([FoodNutritionCategoryID], [FoodCategory], [NutritionCategory]) VALUES (CAST(7 AS Numeric(18, 0)), N'Vegetable', N'Carbohydrate')
INSERT [dbo].[lkptFoodNutritionCategory] ([FoodNutritionCategoryID], [FoodCategory], [NutritionCategory]) VALUES (CAST(8 AS Numeric(18, 0)), N'Snacks', N'Fat')
/****** Object:  Table [dbo].[lkptFoodNutrient]    Script Date: 12/08/2016 21:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lkptFoodNutrient](
	[FoodID] [numeric](18, 0) NOT NULL,
	[FoodName] [varchar](50) NULL,
	[Fat] [float] NULL,
	[FoodCategory] [varchar](50) NULL,
	[Serving] [float] NULL,
	[Carbohydrate] [float] NULL,
	[Protein] [float] NULL,
	[NutritionCategory] [varchar](50) NULL,
 CONSTRAINT [PK_lkptFoodNutrient] PRIMARY KEY CLUSTERED 
(
	[FoodID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(1 AS Numeric(18, 0)), N'Rice', 0.7275, N'Grain', 75, 19.185, 2.055, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(2 AS Numeric(18, 0)), N'Noodle', 10.554, N'Grain', 60, 36.156, 6.102, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(3 AS Numeric(18, 0)), N'Oats', 2.76, N'Grain', 40, 26.508, 6.756, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(4 AS Numeric(18, 0)), N'Barley', 0.44, N'Grain', 100, 28.22, 2.26, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(5 AS Numeric(18, 0)), N'Quinoa', 1.152, N'Grain', 60, 12.78, 2.64, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(6 AS Numeric(18, 0)), N'Brown', 1.251, N'Grain', 45, 34.416, 3.2535, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(7 AS Numeric(18, 0)), N'Rye', 0.978, N'Grain', 60, 45.516, 6.204, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(8 AS Numeric(18, 0)), N'Bread', 2.43, N'Grain', 75, 36.51, 8.04, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(9 AS Numeric(18, 0)), N'Beef', 33.75, N'Meat', 225, 0, 58.5, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(10 AS Numeric(18, 0)), N'Pork', 31.5, N'Meat', 225, 0, 60.75, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(11 AS Numeric(18, 0)), N'Chicken', 17.37, N'Meat', 225, 0, 66.4875, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(12 AS Numeric(18, 0)), N'Flounder', 3.8631, N'SeaFood', 163, 0, 24.8412, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(13 AS Numeric(18, 0)), N'PacificSaury', 15.795, N'SeaFood', 90, 0, 16.515, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(14 AS Numeric(18, 0)), N'Daegu', 0, N'SeaFood', 0, 0, 0, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(16 AS Numeric(18, 0)), N'Salmon', 22.75, N'SeaFood', 175, 0, 35, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(17 AS Numeric(18, 0)), N'Early', 0, N'SeaFood', 0, 0, 0, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(18 AS Numeric(18, 0)), N'Tuna', 7.2, N'SeaFood', 120, 0, 36, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(19 AS Numeric(18, 0)), N'Mackerel', 43.75, N'SeaFood', 175, 0, 33.25, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(20 AS Numeric(18, 0)), N'Head', 0, N'SeaFood', 0, 0, 0, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(21 AS Numeric(18, 0)), N'FishEggs', 0, N'SeaFood', 0, 0, 0, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(22 AS Numeric(18, 0)), N'SeaWeed', 0.06, N'SeaFood', 10, 1, 0.17, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(23 AS Numeric(18, 0)), N'Egg', 13.2, N'Eggs', 120, 1.32, 15.6, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(24 AS Numeric(18, 0)), N'QuailEggs', 13.2, N'Eggs', 120, 0.48, 15.6, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(25 AS Numeric(18, 0)), N'Milk', 20, N'MilkAndDairyProducts', 250, 12, 8, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(26 AS Numeric(18, 0)), N'Yogurt', 0.6, N'MilkAndDairyProducts', 150, 5.4, 15, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(27 AS Numeric(18, 0)), N'LowFatCheese', 11.88, N'MilkAndDairyProducts', 132, 3.96, 42.24, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(28 AS Numeric(18, 0)), N'LowFatMilk', 2.5, N'MilkAndDairyProducts', 250, 12.5, 8.5, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(29 AS Numeric(18, 0)), N'IceCream', 12.32, N'MilkAndDairyProducts', 112, 26.88, 3.92, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(30 AS Numeric(18, 0)), N'Beans', 1.8, N'Legumes', 150, 94.5, 31.5, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(31 AS Numeric(18, 0)), N'Tofu', 8.16, N'Legumes', 170, 3.23, 13.6, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(32 AS Numeric(18, 0)), N'SoyMilk', 4.32, N'Legumes', 240, 14.4, 7.92, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(33 AS Numeric(18, 0)), N'Peanut', 14.7, N'Nuts', 30, 4.8, 7.8, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(34 AS Numeric(18, 0)), N'Apple', 0.26, N'Fruits', 130, 18.2, 0.39, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(35 AS Numeric(18, 0)), N'Kiwi', 0.65, N'Fruits', 130, 19.5, 1.43, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(36 AS Numeric(18, 0)), N'Peach', 0.39, N'Fruits', 130, 13, 1.17, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(37 AS Numeric(18, 0)), N'Apricot', 0.52, N'Fruits', 130, 14.3, 1.82, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(38 AS Numeric(18, 0)), N'Melon', 0.26, N'Fruits', 130, 10.4, 1.04, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(39 AS Numeric(18, 0)), N'GrapeFruit', 0.13, N'Fruits', 130, 14.3, 1.04, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(40 AS Numeric(18, 0)), N'Lemon', 0.39, N'Fruits', 130, 11.7, 1.43, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(41 AS Numeric(18, 0)), N'Avocado', 19.5, N'Fruits', 130, 11.7, 2.6, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(42 AS Numeric(18, 0)), N'Orange', 0.13, N'Fruits', 130, 15.6, 1.17, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(43 AS Numeric(18, 0)), N'Banana', 0.39, N'Fruits', 130, 29.9, 1.43, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(44 AS Numeric(18, 0)), N'WaterMelon', 0.26, N'Fruits', 130, 10.4, 0.78, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(45 AS Numeric(18, 0)), N'Grape', 0.52, N'Fruits', 130, 22.1, 0.78, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(46 AS Numeric(18, 0)), N'Spinach', 0.3, N'Vegetable', 75, 2.7, 2.175, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(47 AS Numeric(18, 0)), N'Carrot ', 0.15, N'Vegetable', 75, 7.5, 0.675, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(48 AS Numeric(18, 0)), N'Pumpkin', 0.075, N'Vegetable', 75, 5.25, 0.75, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(49 AS Numeric(18, 0)), N'Cucumber', 0.075, N'Vegetable', 75, 2.7, 0.525, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(50 AS Numeric(18, 0)), N'FriedFood', 0, N'Snacks', 0, 0, 0, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(51 AS Numeric(18, 0)), N'Ham', 0, N'Snacks', 0, 0, 0, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(52 AS Numeric(18, 0)), N'Snack', 0, N'Snacks', 0, 0, 0, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(53 AS Numeric(18, 0)), N'Pizza', 0, N'Snacks', 0, 0, 0, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(54 AS Numeric(18, 0)), N'Ramen', 0, N'Snacks', 0, 0, 0, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(55 AS Numeric(18, 0)), N'CarbonatedDrink', 0, N'Snacks', 0, 0, 0, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(56 AS Numeric(18, 0)), N'Hamburger', 0, N'Snacks', 0, 0, 0, NULL)
INSERT [dbo].[lkptFoodNutrient] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein], [NutritionCategory]) VALUES (CAST(57 AS Numeric(18, 0)), N'ChickenSnack', 0, N'Snacks', 0, 0, 0, NULL)
/****** Object:  Table [dbo].[lkptFoodFat]    Script Date: 12/08/2016 21:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lkptFoodFat](
	[FoodID] [numeric](18, 0) NOT NULL,
	[FoodName] [varchar](50) NULL,
	[Fat] [float] NULL,
	[FoodCategory] [varchar](50) NULL,
	[Serving] [float] NULL,
	[Carbohydrate] [float] NULL,
	[Protein] [float] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(1 AS Numeric(18, 0)), N'Rice', 0.7275, N'Grain', 75, 19.185, 2.055)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(2 AS Numeric(18, 0)), N'Noodle', 10.554, N'Grain', 60, 36.156, 6.102)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(3 AS Numeric(18, 0)), N'Oats', 2.76, N'Grain', 40, 26.508, 6.756)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(4 AS Numeric(18, 0)), N'Barley', 0.44, N'Grain', 100, 28.22, 2.26)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(5 AS Numeric(18, 0)), N'Quinoa', 1.152, N'Grain', 60, 12.78, 2.64)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(6 AS Numeric(18, 0)), N'Brown', 1.251, N'Grain', 45, 34.416, 3.2535)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(7 AS Numeric(18, 0)), N'Rye', 0.978, N'Grain', 60, 45.516, 6.204)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(8 AS Numeric(18, 0)), N'Bread', 2.43, N'Grain', 75, 36.51, 8.04)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(9 AS Numeric(18, 0)), N'Beef', 33.75, N'Meat', 225, 0, 58.5)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(10 AS Numeric(18, 0)), N'Pork', 31.5, N'Meat', 225, 0, 60.75)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(11 AS Numeric(18, 0)), N'Chicken', 17.37, N'Meat', 225, 0, 66.4875)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(12 AS Numeric(18, 0)), N'Flounder', 3.8631, N'SeaFood', 163, 0, 24.8412)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(13 AS Numeric(18, 0)), N'PacificSaury', 15.795, N'SeaFood', 90, 0, 16.515)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(14 AS Numeric(18, 0)), N'Daegu', 0, N'SeaFood', 0, 0, 0)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(16 AS Numeric(18, 0)), N'Salmon', 22.75, N'SeaFood', 175, 0, 35)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(17 AS Numeric(18, 0)), N'Early', 0, N'SeaFood', 0, 0, 0)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(18 AS Numeric(18, 0)), N'Tuna', 7.2, N'SeaFood', 120, 0, 36)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(19 AS Numeric(18, 0)), N'Mackerel', 43.75, N'SeaFood', 175, 0, 33.25)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(20 AS Numeric(18, 0)), N'Head', 0, N'SeaFood', 0, 0, 0)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(21 AS Numeric(18, 0)), N'FishEggs', 0, N'SeaFood', 0, 0, 0)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(22 AS Numeric(18, 0)), N'SeaWeed', 0.06, N'SeaFood', 10, 1, 0.17)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(23 AS Numeric(18, 0)), N'Egg', 13.2, N'Eggs', 120, 1.32, 15.6)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(24 AS Numeric(18, 0)), N'QuailEggs', 13.2, N'Eggs', 120, 0.48, 15.6)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(25 AS Numeric(18, 0)), N'Milk', 20, N'MilkAndDairyProducts', 250, 12, 8)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(26 AS Numeric(18, 0)), N'Yogurt', 0.6, N'MilkAndDairyProducts', 150, 5.4, 15)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(27 AS Numeric(18, 0)), N'LowFatCheese', 11.88, N'MilkAndDairyProducts', 132, 3.96, 42.24)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(28 AS Numeric(18, 0)), N'LowFatMilk', 2.5, N'MilkAndDairyProducts', 250, 12.5, 8.5)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(29 AS Numeric(18, 0)), N'IceCream', 12.32, N'MilkAndDairyProducts', 112, 26.88, 3.92)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(30 AS Numeric(18, 0)), N'Beans', 1.8, N'Legumes', 150, 94.5, 31.5)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(31 AS Numeric(18, 0)), N'Tofu', 8.16, N'Legumes', 170, 3.23, 13.6)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(32 AS Numeric(18, 0)), N'SoyMilk', 4.32, N'Legumes', 240, 14.4, 7.92)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(33 AS Numeric(18, 0)), N'Peanut', 14.7, N'Nuts', 30, 4.8, 7.8)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(34 AS Numeric(18, 0)), N'Apple', 0.26, N'Fruits', 130, 18.2, 0.39)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(35 AS Numeric(18, 0)), N'Kiwi', 0.65, N'Fruits', 130, 19.5, 1.43)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(36 AS Numeric(18, 0)), N'Peach', 0.39, N'Fruits', 130, 13, 1.17)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(37 AS Numeric(18, 0)), N'Apricot', 0.52, N'Fruits', 130, 14.3, 1.82)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(38 AS Numeric(18, 0)), N'Melon', 0.26, N'Fruits', 130, 10.4, 1.04)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(39 AS Numeric(18, 0)), N'GrapeFruit', 0.13, N'Fruits', 130, 14.3, 1.04)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(40 AS Numeric(18, 0)), N'Lemon', 0.39, N'Fruits', 130, 11.7, 1.43)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(41 AS Numeric(18, 0)), N'Avocado', 19.5, N'Fruits', 130, 11.7, 2.6)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(42 AS Numeric(18, 0)), N'Orange', 0.13, N'Fruits', 130, 15.6, 1.17)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(43 AS Numeric(18, 0)), N'Banana', 0.39, N'Fruits', 130, 29.9, 1.43)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(44 AS Numeric(18, 0)), N'WaterMelon', 0.26, N'Fruits', 130, 10.4, 0.78)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(45 AS Numeric(18, 0)), N'Grape', 0.52, N'Fruits', 130, 22.1, 0.78)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(46 AS Numeric(18, 0)), N'Spinach', 0.3, N'Vegetable', 75, 2.7, 2.175)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(47 AS Numeric(18, 0)), N'Carrot ', 0.15, N'Vegetable', 75, 7.5, 0.675)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(48 AS Numeric(18, 0)), N'Pumpkin', 0.075, N'Vegetable', 75, 5.25, 0.75)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(49 AS Numeric(18, 0)), N'Cucumber', 0.075, N'Vegetable', 75, 2.7, 0.525)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(50 AS Numeric(18, 0)), N'FriedFood', 0, N'Snacks', 0, 0, 0)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(51 AS Numeric(18, 0)), N'Ham', 0, N'Snacks', 0, 0, 0)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(52 AS Numeric(18, 0)), N'Snack', 0, N'Snacks', 0, 0, 0)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(53 AS Numeric(18, 0)), N'Pizza', 0, N'Snacks', 0, 0, 0)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(54 AS Numeric(18, 0)), N'Ramen', 0, N'Snacks', 0, 0, 0)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(55 AS Numeric(18, 0)), N'CarbonatedDrink', 0, N'Snacks', 0, 0, 0)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(56 AS Numeric(18, 0)), N'Hamburger', 0, N'Snacks', 0, 0, 0)
INSERT [dbo].[lkptFoodFat] ([FoodID], [FoodName], [Fat], [FoodCategory], [Serving], [Carbohydrate], [Protein]) VALUES (CAST(57 AS Numeric(18, 0)), N'ChickenSnack', 0, N'Snacks', 0, 0, 0)
/****** Object:  Table [dbo].[lkptActivities]    Script Date: 12/08/2016 21:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lkptActivities](
	[ActivityID] [int] NOT NULL,
	[ActivityDescription] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[lkptActivities] ([ActivityID], [ActivityDescription]) VALUES (3, N'Sitting')
INSERT [dbo].[lkptActivities] ([ActivityID], [ActivityDescription]) VALUES (8, N'Standing')
INSERT [dbo].[lkptActivities] ([ActivityID], [ActivityDescription]) VALUES (2, N'Walking')
INSERT [dbo].[lkptActivities] ([ActivityID], [ActivityDescription]) VALUES (7, N'Lying')
INSERT [dbo].[lkptActivities] ([ActivityID], [ActivityDescription]) VALUES (13, N'Stretching')
INSERT [dbo].[lkptActivities] ([ActivityID], [ActivityDescription]) VALUES (16, N'Eating')
/****** Object:  Table [dbo].[tbl_TempUserID]    Script Date: 12/08/2016 21:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_TempUserID](
	[TemplogID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[UserVerifies]    Script Date: 12/08/2016 21:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<bilal,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[UserVerifies] 
( @tryQuery nvarchar(max)
	-- Add the parameters for the function here
--	<@Param1, sysname, @p1> <Data_Type_For_Param1, , int>
)
RETURNS  nvarchar(Max)
AS
BEGIN
	-- Declare the return variable here
	--DECLARE <@ResultVar, sysname, @Result> <Function_Data_Type, ,int>
	Declare @user_count nvarchar(max);
	declare @sqry nvarchar(max);
	set @sqry='Select @user_count=count(id) from '+ @tryQuery;
	 --@user_count= '1';
	 Exec sp_executesql @sqry;
	--select @user_count= COUNT(id) from @tryQuery;
	-- Add the T-SQL statements to compute the return value here
	--SELECT <@ResultVar, sysname, @Result> = <@Param1, sysname, @p1>

	-- Return the result of the function
	RETURN @user_count;

END
GO
/****** Object:  Table [dbo].[tblUserProfile]    Script Date: 12/08/2016 21:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUserProfile](
	[UserID] [numeric](18, 0) NOT NULL,
	[FirstName] [varchar](200) NULL,
	[LastName] [varchar](200) NULL,
	[MiddleName] [varchar](200) NULL,
	[GenderID] [int] NULL,
	[DateOfBirth] [datetime] NULL,
	[ContactNumber] [varchar](50) NULL,
	[EmailAddress] [varchar](100) NULL,
	[Password] [varchar](50) NULL,
	[MaritalStatusID] [int] NULL,
	[ActivityLevelID] [int] NULL,
	[OccupationID] [int] NULL,
	[UserTypeID] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblUserProfile] ([UserID], [FirstName], [LastName], [MiddleName], [GenderID], [DateOfBirth], [ContactNumber], [EmailAddress], [Password], [MaritalStatusID], [ActivityLevelID], [OccupationID], [UserTypeID]) VALUES (CAST(39 AS Numeric(18, 0)), N'Usman', N'', N'Akhtar', 1, CAST(0x000081A900000000 AS DateTime), N'33333', N'aaa@gmail.com', N'cccc', 1, 1, 1, 1)
INSERT [dbo].[tblUserProfile] ([UserID], [FirstName], [LastName], [MiddleName], [GenderID], [DateOfBirth], [ContactNumber], [EmailAddress], [Password], [MaritalStatusID], [ActivityLevelID], [OccupationID], [UserTypeID]) VALUES (CAST(35 AS Numeric(18, 0)), N'Bilal', N'', N'Ali', 1, CAST(0x0000763F00000000 AS DateTime), N'33333', N'aaa@gmail.com', N'cccc', 1, 1, 1, 1)
INSERT [dbo].[tblUserProfile] ([UserID], [FirstName], [LastName], [MiddleName], [GenderID], [DateOfBirth], [ContactNumber], [EmailAddress], [Password], [MaritalStatusID], [ActivityLevelID], [OccupationID], [UserTypeID]) VALUES (CAST(33 AS Numeric(18, 0)), N'Shujaat', N'', N'Hussain', 1, CAST(0x00009E3200000000 AS DateTime), N'33333', N'aaa@gmail.com', N'cccc', 1, 1, 1, 1)
INSERT [dbo].[tblUserProfile] ([UserID], [FirstName], [LastName], [MiddleName], [GenderID], [DateOfBirth], [ContactNumber], [EmailAddress], [Password], [MaritalStatusID], [ActivityLevelID], [OccupationID], [UserTypeID]) VALUES (CAST(31 AS Numeric(18, 0)), N'Taqdir', N'', N'Ali', 1, CAST(0x00007ECF00000000 AS DateTime), N'33333', N'aaa@gmail.com', N'cccc', 1, 1, 1, 1)
INSERT [dbo].[tblUserProfile] ([UserID], [FirstName], [LastName], [MiddleName], [GenderID], [DateOfBirth], [ContactNumber], [EmailAddress], [Password], [MaritalStatusID], [ActivityLevelID], [OccupationID], [UserTypeID]) VALUES (CAST(32 AS Numeric(18, 0)), N'Wajahat', N'', N'Ali', 1, CAST(0x0000848400000000 AS DateTime), N'33333', N'aaa@gmail.com', N'cccc', 1, 1, 1, 1)
INSERT [dbo].[tblUserProfile] ([UserID], [FirstName], [LastName], [MiddleName], [GenderID], [DateOfBirth], [ContactNumber], [EmailAddress], [Password], [MaritalStatusID], [ActivityLevelID], [OccupationID], [UserTypeID]) VALUES (CAST(34 AS Numeric(18, 0)), N'Maqbool', N'', N'Ali', 1, CAST(0x000081A900000000 AS DateTime), N'33333', N'aaa@gmail.com', N'cccc', 1, 1, 1, 1)
INSERT [dbo].[tblUserProfile] ([UserID], [FirstName], [LastName], [MiddleName], [GenderID], [DateOfBirth], [ContactNumber], [EmailAddress], [Password], [MaritalStatusID], [ActivityLevelID], [OccupationID], [UserTypeID]) VALUES (CAST(36 AS Numeric(18, 0)), N'Afzal', N'', N'Hussain', 1, CAST(0x000081A900000000 AS DateTime), N'33333', N'aaa@gmail.com', N'cccc', 1, 1, 1, 1)
INSERT [dbo].[tblUserProfile] ([UserID], [FirstName], [LastName], [MiddleName], [GenderID], [DateOfBirth], [ContactNumber], [EmailAddress], [Password], [MaritalStatusID], [ActivityLevelID], [OccupationID], [UserTypeID]) VALUES (CAST(37 AS Numeric(18, 0)), N'Rehman', N'', N'Ali', 1, CAST(0x0000736500000000 AS DateTime), N'33333', N'aaa@gmail.com', N'cccc', 1, 1, 1, 1)
INSERT [dbo].[tblUserProfile] ([UserID], [FirstName], [LastName], [MiddleName], [GenderID], [DateOfBirth], [ContactNumber], [EmailAddress], [Password], [MaritalStatusID], [ActivityLevelID], [OccupationID], [UserTypeID]) VALUES (CAST(38 AS Numeric(18, 0)), N'Asif', N'', N'Razzaq', 1, CAST(0x00006DB000000000 AS DateTime), N'33333', N'aaa@gmail.com', N'cccc', 1, 1, 1, 1)
INSERT [dbo].[tblUserProfile] ([UserID], [FirstName], [LastName], [MiddleName], [GenderID], [DateOfBirth], [ContactNumber], [EmailAddress], [Password], [MaritalStatusID], [ActivityLevelID], [OccupationID], [UserTypeID]) VALUES (CAST(40 AS Numeric(18, 0)), N'Imran', N'', N'Ali', 1, CAST(0x00007ECF00000000 AS DateTime), N'33333', N'aaa@gmail.com', N'cccc', 1, 1, 1, 1)
/****** Object:  Table [dbo].[tblSituationConstraints]    Script Date: 12/08/2016 21:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSituationConstraints](
	[c_id] [numeric](18, 0) NOT NULL,
	[ConstraintKey] [nvarchar](50) NOT NULL,
	[ConstraintOperator] [nvarchar](50) NOT NULL,
	[ConstraintValue] [nvarchar](50) NOT NULL,
	[ConstraintDataType] [nvarchar](50) NOT NULL,
	[mapperid] [numeric](18, 0) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tblSituationConstraints] ([c_id], [ConstraintKey], [ConstraintOperator], [ConstraintValue], [ConstraintDataType], [mapperid]) VALUES (CAST(651 AS Numeric(18, 0)), N'Activity Level', N'=', N'Sedentary', N'String', CAST(651 AS Numeric(18, 0)))
/****** Object:  Table [dbo].[tblPhysiologicalFactor]    Script Date: 12/08/2016 21:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhysiologicalFactor](
	[PhysiologicalFactorID] [numeric](18, 0) NOT NULL,
	[UserID] [numeric](18, 0) NOT NULL,
	[Weight] [float] NULL,
	[Height] [float] NULL,
	[Date] [datetime] NULL,
	[IdealWeight] [float] NULL,
	[TargetWeight] [float] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tblPhysiologicalFactor] ([PhysiologicalFactorID], [UserID], [Weight], [Height], [Date], [IdealWeight], [TargetWeight]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(35 AS Numeric(18, 0)), 80, 1.83, CAST(0x0000000000000000 AS DateTime), 72, 78)
INSERT [dbo].[tblPhysiologicalFactor] ([PhysiologicalFactorID], [UserID], [Weight], [Height], [Date], [IdealWeight], [TargetWeight]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), 79, 1.83, CAST(0x0000000000000000 AS DateTime), 72, 73)
INSERT [dbo].[tblPhysiologicalFactor] ([PhysiologicalFactorID], [UserID], [Weight], [Height], [Date], [IdealWeight], [TargetWeight]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), 69, 1.83, CAST(0x0000000000000000 AS DateTime), 72, 72)
/****** Object:  Table [dbo].[tblMonitoringEvents]    Script Date: 12/08/2016 21:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMonitoringEvents](
	[mapperid] [numeric](18, 0) NOT NULL,
	[Activity] [nvarchar](50) NOT NULL,
	[ActivityOperator] [nchar](10) NOT NULL,
	[ActivityValue] [nvarchar](50) NOT NULL,
	[ActivityDataType] [nvarchar](50) NOT NULL,
	[MeasuringMetric] [nvarchar](50) NOT NULL,
	[MeasuringOperator] [nchar](10) NOT NULL,
	[MeasuringTargetValue] [nvarchar](50) NOT NULL,
	[MeasuringDataType] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tblMonitoringEvents] ([mapperid], [Activity], [ActivityOperator], [ActivityValue], [ActivityDataType], [MeasuringMetric], [MeasuringOperator], [MeasuringTargetValue], [MeasuringDataType]) VALUES (CAST(3 AS Numeric(18, 0)), N'Current Activity', N'=         ', N'Standing', N'String', N'Activity Duration', N'=         ', N'60', N'String')
INSERT [dbo].[tblMonitoringEvents] ([mapperid], [Activity], [ActivityOperator], [ActivityValue], [ActivityDataType], [MeasuringMetric], [MeasuringOperator], [MeasuringTargetValue], [MeasuringDataType]) VALUES (CAST(4 AS Numeric(18, 0)), N'Current Activity', N'=         ', N'Standing', N'String', N'Activity Duration', N'=         ', N'180', N'String')
INSERT [dbo].[tblMonitoringEvents] ([mapperid], [Activity], [ActivityOperator], [ActivityValue], [ActivityDataType], [MeasuringMetric], [MeasuringOperator], [MeasuringTargetValue], [MeasuringDataType]) VALUES (CAST(5 AS Numeric(18, 0)), N'Current Activity', N'=         ', N'Walking', N'String', N'Activity Duration', N'=         ', N'60', N'String')
INSERT [dbo].[tblMonitoringEvents] ([mapperid], [Activity], [ActivityOperator], [ActivityValue], [ActivityDataType], [MeasuringMetric], [MeasuringOperator], [MeasuringTargetValue], [MeasuringDataType]) VALUES (CAST(10060 AS Numeric(18, 0)), N'Current Activity', N'=         ', N'Sitting', N'String', N'Activity Duration', N'=         ', N'120', N'String')
INSERT [dbo].[tblMonitoringEvents] ([mapperid], [Activity], [ActivityOperator], [ActivityValue], [ActivityDataType], [MeasuringMetric], [MeasuringOperator], [MeasuringTargetValue], [MeasuringDataType]) VALUES (CAST(1 AS Numeric(18, 0)), N'Current Activity', N'=         ', N'Sitting', N'String', N'Activity Duration', N'=         ', N'60', N'String')
INSERT [dbo].[tblMonitoringEvents] ([mapperid], [Activity], [ActivityOperator], [ActivityValue], [ActivityDataType], [MeasuringMetric], [MeasuringOperator], [MeasuringTargetValue], [MeasuringDataType]) VALUES (CAST(651 AS Numeric(18, 0)), N'Current Activity', N'=         ', N'Eating', N'String', N'Consumed Fat', N'>         ', N'85', N'int')
/****** Object:  Table [dbo].[tbllog_CurrentLifeLog]    Script Date: 12/08/2016 21:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbllog_CurrentLifeLog](
	[UserId] [int] NOT NULL,
	[ActivityID] [int] NOT NULL,
	[StartTime] [datetime] NULL,
	[ActivityTargetDuration] [int] NULL,
	[ActivityStatus] [nvarchar](50) NULL,
	[Mapperid] [int] NULL,
	[RecordedTime] [datetime] NULL,
	[Log_Id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFoodNutCategory]    Script Date: 12/08/2016 21:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblFoodNutCategory](
	[FoodNutCatID] [numeric](18, 0) NOT NULL,
	[FoodCategory] [varchar](50) NOT NULL,
	[NutritionCategory] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblFoodNutCategory] ([FoodNutCatID], [FoodCategory], [NutritionCategory]) VALUES (CAST(1 AS Numeric(18, 0)), N'Grain', N'Carbohydrate')
INSERT [dbo].[tblFoodNutCategory] ([FoodNutCatID], [FoodCategory], [NutritionCategory]) VALUES (CAST(2 AS Numeric(18, 0)), N'Meat', N'Fat')
INSERT [dbo].[tblFoodNutCategory] ([FoodNutCatID], [FoodCategory], [NutritionCategory]) VALUES (CAST(3 AS Numeric(18, 0)), N'SeaFood', N'Protein')
INSERT [dbo].[tblFoodNutCategory] ([FoodNutCatID], [FoodCategory], [NutritionCategory]) VALUES (CAST(4 AS Numeric(18, 0)), N'Egg', N'Protein')
INSERT [dbo].[tblFoodNutCategory] ([FoodNutCatID], [FoodCategory], [NutritionCategory]) VALUES (CAST(5 AS Numeric(18, 0)), N'Legume', N'Carbohydrate')
INSERT [dbo].[tblFoodNutCategory] ([FoodNutCatID], [FoodCategory], [NutritionCategory]) VALUES (CAST(6 AS Numeric(18, 0)), N'Fruit', N'Carbohydrate')
INSERT [dbo].[tblFoodNutCategory] ([FoodNutCatID], [FoodCategory], [NutritionCategory]) VALUES (CAST(7 AS Numeric(18, 0)), N'Vegetable', N'Carbohydrate')
INSERT [dbo].[tblFoodNutCategory] ([FoodNutCatID], [FoodCategory], [NutritionCategory]) VALUES (CAST(8 AS Numeric(18, 0)), N'Snacks', N'Fat')
/****** Object:  Table [dbo].[tblFoodLog]    Script Date: 12/08/2016 21:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblFoodLog](
	[FoodLogID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[UserID] [numeric](18, 0) NULL,
	[FoodName] [varchar](50) NULL,
	[EatingTime] [datetime] NULL,
 CONSTRAINT [PK_tblFoodLog] PRIMARY KEY CLUSTERED 
(
	[FoodLogID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblFoodItems]    Script Date: 12/08/2016 21:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblFoodItems](
	[FoodID] [numeric](18, 0) NOT NULL,
	[FoodCategory] [varchar](50) NOT NULL,
	[FoodNutrientName] [varchar](50) NOT NULL,
	[FoodItem] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(1 AS Numeric(18, 0)), N'Grain', N'Carbohydrate', N'Rice')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(2 AS Numeric(18, 0)), N'Grain', N'Carbohydrate', N'Noodle')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(3 AS Numeric(18, 0)), N'Grain', N'Carbohydrate', N'Oats')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(4 AS Numeric(18, 0)), N'Grain', N'Carbohydrate', N'Barley')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(5 AS Numeric(18, 0)), N'Grain', N'Carbohydrate', N'Quinoa')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(6 AS Numeric(18, 0)), N'Grain', N'Carbohydrate', N'Brown')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(7 AS Numeric(18, 0)), N'Grain', N'Carbohydrate', N'Rye')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(8 AS Numeric(18, 0)), N'Grain', N'Carbohydrate', N'Bread')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(9 AS Numeric(18, 0)), N'Meat', N'Fat', N'Beef')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(10 AS Numeric(18, 0)), N'Meat', N'Fat', N'Pork')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(11 AS Numeric(18, 0)), N'Meat', N'Protein', N'Chicken')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(12 AS Numeric(18, 0)), N'SeaFood', N'Protein', N'Flounder')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(13 AS Numeric(18, 0)), N'SeaFood', N'Protein', N'PacificSaury')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(14 AS Numeric(18, 0)), N'SeaFood', N'Protein', N'Daegu')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(15 AS Numeric(18, 0)), N'SeaFood', N'Protein', N'Shrimp')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(16 AS Numeric(18, 0)), N'SeaFood', N'Protein', N'Salmon')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(17 AS Numeric(18, 0)), N'SeaFood', N'Protein', N'Early')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(18 AS Numeric(18, 0)), N'SeaFood', N'Protein', N'Tuna')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(19 AS Numeric(18, 0)), N'SeaFood', N'Fat', N'Mackerel')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(20 AS Numeric(18, 0)), N'SeaFood', N'Protein', N'Head')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(21 AS Numeric(18, 0)), N'SeaFood', N'Protein', N'FishEggs')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(22 AS Numeric(18, 0)), N'SeaFood', N'Protein', N'SeaWeed')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(23 AS Numeric(18, 0)), N'Eggs', N'Protein', N'Egg')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(24 AS Numeric(18, 0)), N'Eggs', N'Protein', N'QuailEggs')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(25 AS Numeric(18, 0)), N'MilkAndDairyProducts', N'Fat', N'Milk')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(26 AS Numeric(18, 0)), N'MilkAndDairyProducts', N'Protein', N'Yogurt')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(27 AS Numeric(18, 0)), N'MilkAndDairyProducts', N'Protein', N'LowFatCheese')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(28 AS Numeric(18, 0)), N'MilkAndDairyProducts', N'Carbohydrate', N'LowFatMilk')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(29 AS Numeric(18, 0)), N'MilkAndDairyProducts', N'Fat', N'IceCream')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(30 AS Numeric(18, 0)), N'Legumes', N'Carbohydrate', N'Beans')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(31 AS Numeric(18, 0)), N'Legumes', N'Carbohydrate', N'Tofu')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(32 AS Numeric(18, 0)), N'Legumes', N'Carbohydrate', N'SoyMilk')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(33 AS Numeric(18, 0)), N'Nuts', N'Fat', N'Peanut')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(34 AS Numeric(18, 0)), N'Fruits', N'Carbohydrate', N'Apple')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(35 AS Numeric(18, 0)), N'Fruits', N'Carbohydrate', N'Kiwi')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(36 AS Numeric(18, 0)), N'Fruits', N'Carbohydrate', N'Peach')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(37 AS Numeric(18, 0)), N'Fruits', N'Carbohydrate', N'Apricot')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(38 AS Numeric(18, 0)), N'Fruits', N'Carbohydrate', N'Melon')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(39 AS Numeric(18, 0)), N'Fruits', N'Carbohydrate', N'GrapeFruit')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(40 AS Numeric(18, 0)), N'Fruits', N'Carbohydrate', N'Lemon')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(41 AS Numeric(18, 0)), N'Fruits', N'Carbohydrate', N'Avocado')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(42 AS Numeric(18, 0)), N'Fruits', N'Carbohydrate', N'Orange')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(43 AS Numeric(18, 0)), N'Fruits', N'Carbohydrate', N'Banana')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(44 AS Numeric(18, 0)), N'Fruits', N'Carbohydrate', N'WaterMelon')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(45 AS Numeric(18, 0)), N'Fruits', N'Carbohydrate', N'Grape')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(46 AS Numeric(18, 0)), N'Vegetable', N'Carbohydrate', N'Spinach')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(47 AS Numeric(18, 0)), N'Vegetable', N'Carbohydrate', N'Carrot ')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(48 AS Numeric(18, 0)), N'Vegetable', N'Carbohydrate', N'Pumpkin')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(49 AS Numeric(18, 0)), N'Vegetable', N'Carbohydrate', N'Cucumber')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(50 AS Numeric(18, 0)), N'Snacks', N'Fat', N'FriedFood')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(51 AS Numeric(18, 0)), N'Snacks', N'Fat', N'Ham')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(52 AS Numeric(18, 0)), N'Snacks', N'Carbohydrate', N'Snack')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(53 AS Numeric(18, 0)), N'Snacks', N'Carbohydrate', N'Pizza')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(54 AS Numeric(18, 0)), N'Snacks', N'Carbohydrate', N'Ramen')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(55 AS Numeric(18, 0)), N'Snacks', N'Carbohydrate', N'CarbonatedDrink')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(56 AS Numeric(18, 0)), N'Snacks', N'Fat', N'Hamburger')
INSERT [dbo].[tblFoodItems] ([FoodID], [FoodCategory], [FoodNutrientName], [FoodItem]) VALUES (CAST(57 AS Numeric(18, 0)), N'Snacks', N'Fat', N'ChickenSnack')
/****** Object:  Table [dbo].[tblFoodCategory]    Script Date: 12/08/2016 21:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFoodCategory](
	[fc_id] [numeric](18, 0) NOT NULL,
	[fc_Name] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCurrentLifeLog]    Script Date: 12/08/2016 21:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCurrentLifeLog](
	[UserId] [int] NOT NULL,
	[ActivityID] [int] NOT NULL,
	[StartTime] [datetime] NULL,
	[ActivityTargetDuration] [int] NULL,
	[ActivyStatus] [nvarchar](50) NULL,
	[mapperid] [int] NULL,
 CONSTRAINT [pk_UserId_ActivityID] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[ActivityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[usp_MonitoringSituationInsertion]    Script Date: 12/08/2016 21:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_MonitoringSituationInsertion] 
	-- Add the parameters for the stored procedure here
	
	
	      @mapperid numeric(18,0),
          @Activity nvarchar(50),
          @ActivityOperator nchar(10),
          @ActivityValue nvarchar(50),
          @ActivityDataType nvarchar(50),
          @MeasuringMetric nvarchar(50),
          @MeasuringOperator nchar(10),
          @MeasuringTargetValue nvarchar(50),
          @MeasuringDataType nvarchar(50)
	
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
INSERT INTO [MMLLM].[dbo].[tblMonitoringEvents]
           ([mapperid]
           ,[Activity]
           ,[ActivityOperator]
           ,[ActivityValue]
           ,[ActivityDataType]
           ,[MeasuringMetric]
           ,[MeasuringOperator]
           ,[MeasuringTargetValue]
           ,[MeasuringDataType])
     VALUES
          ( @mapperid,
           @Activity, 
           @ActivityOperator,
           @ActivityValue, 
           @ActivityDataType,
           @MeasuringMetric, 
           @MeasuringOperator,
          @MeasuringTargetValue, 
           @MeasuringDataType)
   
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetUserViolations]    Script Date: 12/08/2016 21:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_GetUserViolations] --35
	-- Add the parameters for the stored procedure here
	@UserId nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select
	   ActivityID,
	   ActivityTargetDuration, 
	   RecordedTime,
	   Log_Id, 
	   UserID 
	   from tbllog_CurrentLifeLog
	    where ActivityStatus!='NM'
	     and UserId=@UserId
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetTotalViolations]    Script Date: 12/08/2016 21:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_GetTotalViolations] --'1067'
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select
	 userid,
	 COUNT(userid)TotalViolations 
	 from tbllog_CurrentLifeLog 
	 where ActivityStatus!='NM' 
	 group by UserId
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetTopViolations]    Script Date: 12/08/2016 21:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_GetTopViolations]

AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select top 10 
	ActivityID, 
	ActivityTargetDuration, 
	RecordedTime,Log_Id, 
	UserID 
	from tbllog_CurrentLifeLog 
	where ActivityStatus!='NM' 
	order by RecordedTime desc
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetMaxViolationsLog]    Script Date: 12/08/2016 21:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_GetMaxViolationsLog] --'1067'
	-- Add the parameters for the stored procedure here
	@maxLogId nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select top 10 
	ActivityID, 
	ActivityTargetDuration, 
	RecordedTime,
	Log_Id, 
	UserID 
	from tbllog_CurrentLifeLog 
	where ActivityStatus!='NM' 
	and Log_id> @maxLogId
	order by RecordedTime desc;
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetLogDeatails]    Script Date: 12/08/2016 21:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_GetLogDeatails] --1067
	-- Add the parameters for the stored procedure here
	@logId nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
select
ActivityID,
ActivityTargetDuration, 
RecordedTime,
Log_Id, 
UserID 
from tbllog_CurrentLifeLog 
where log_Id=@logId;
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_NutritionSituationConstraints]    Script Date: 12/08/2016 21:20:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_NutritionSituationConstraints] --651 
	@mapperID int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select
    ConstraintKey,
    ConstraintOperator, 
    ConstraintValue, 
    ConstraintDataType 
    from tblSituationConstraints where mapperid= @mapperID;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_NutritionMonitoringEvents]    Script Date: 12/08/2016 21:20:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_NutritionMonitoringEvents] 
	@mapperID int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select
	Activity,
	ActivityOperator,
	ActivityValue,
	ActivityDataType,
	MeasuringMetric,
	MeasuringOperator, 
	MeasuringTargetValue,
	MeasuringDataType
	  from tblMonitoringEvents where mapperid=@mapperID
END
GO
/****** Object:  StoredProcedure [dbo].[usp_NutMonitoringEvents]    Script Date: 12/08/2016 21:20:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
--ALTER PROCEDURE [dbo].[usp_NutMonitoringEvents] 
CREATE PROCEDURE [dbo].[usp_NutMonitoringEvents]

	@mapperID int 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select
	Activity,
	ActivityOperator,
	ActivityValue,
	ActivityDataType,
	MeasuringMetric,
	MeasuringOperator, 
	MeasuringTargetValue,
	MeasuringDataType
	  from tblMonitoringEvents where mapperid=@mapperID;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SituationConstraintsInsertion]    Script Date: 12/08/2016 21:20:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_SituationConstraintsInsertion] 
	-- Add the parameters for the stored procedure here
           @c_id numeric(18,0),
           @ConstraintKey nvarchar(50),
           @ConstraintOperator nvarchar(50),
           @ConstraintValue nvarchar(50),
           @ConstraintDataType nvarchar(50),
           @mapperid numeric(18,0)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO [MMLLM].[dbo].[tblSituationConstraints]
           ([c_id]
           ,[ConstraintKey]
           ,[ConstraintOperator]
           ,[ConstraintValue]
           ,[ConstraintDataType]
           ,[mapperid])
     VALUES
           (@c_id
           ,@ConstraintKey
           ,@ConstraintOperator
           ,@ConstraintValue
           ,@ConstraintDataType
           ,@mapperid)


    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_PhysicalActivitiesMonitor]    Script Date: 12/08/2016 21:20:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_PhysicalActivitiesMonitor] --1   

	--@GenderID int 
	
	

AS
BEGIN

	declare @result int ;
	declare @result2 int ;
	declare @measuringtargetvalue int;
	declare @mapperid int;

	SET NOCOUNT ON;

    
   
  -- delete all those activities which donot need to monitor : clean the log from old entities. 
  Delete from  tblCurrentLifeLog
  where  ActivyStatus='DM';
  
 -- Create cursor to read the activities which achieve the targets........means difference between target and start time is less then or equal to zero.  
  
		 declare cur cursor for 
		 select UserId 
		 from tblCurrentLifeLog
		 where ((ActivityTargetDuration)/2 -(DATEDIFF(second, convert(time,StartTime),convert(time, CURRENT_TIMESTAMP))))<=0
		 and ActivyStatus!='DM';
		  
		  open cur
		  fetch next from cur into @result 
		  while (@@FETCH_STATUS=0)
		  begin 
				  -- update the status of activities which need to be notified.
					 update tblCurrentLifeLog 
					 set ActivyStatus= 'NM'
					 where UserId =@result  and ActivyStatus!='DM';
					 		
					-- keep the record of the identified user into temp table for updation of the status and notification. 

				     
					 insert into tbl_TempUserID (UserID) values (@result);
				 
		  fetch next from cur into @result
		  End
		  deallocate cur
   -- The values for wellness services format and components is returned by the portion.
	select UserID,
	Activity, 
	ActivityOperator,
	ActivityValue,
	ActivityDataType,
	MeasuringMetric, 
	MeasuringOperator, 
	MeasuringTargetValue,
	MeasuringDataType, 
	ActivityID, 
	ActivityTargetDuration,
	CURRENT_TIMESTAMP Situationdate,
	ConstraintKey,
	ConstraintOperator, 
	ConstraintValue, 
	ConstraintDataType   
	from tblMonitoringEvents tme join tblCurrentLifeLog tcl
	on(tme.mapperid=tcl.mapperid) 
	left join tblSituationConstraints tce on (tce.mapperid=tcl.mapperid)
	where tcl.Userid in(select userid from tbl_TempUserID)

-------------------------------------------------------

		  declare cur2 cursor for 
		  select UserId from tbl_TempUserID
		  open cur2
		  fetch next from cur2 into @result2 
		  while (@@FETCH_STATUS=0)
		  begin 

		             select top 1
					 @measuringtargetvalue=measuringtargetvalue,
					 @mapperid=tme.mapperid 
					 from tblMonitoringEvents tme join lkptActivities lkpt on (tme.ActivityValue=lkpt.activitydescription)
					 join tblCurrentLifeLog tlf on (tlf.activityID=lkpt.activityID)
					 where tlf.userid=@result2
					 and measuringtargetValue > (select ActivityTargetDuration from tblCurrentLifeLog 
					                             where UserId=@result2 and 
					                             (ActivyStatus!='DM' or ActivyStatus!='NCM'))
					                              order by CONVERT(INT,MeasuringTargetValue)
												
					if(@measuringtargetvalue is  Null and  @mapperID is null)
					begin
							update tblCurrentLifeLog
							set ActivyStatus= 'DM' 
							where UserId = @result2 and ActivyStatus!='DM';
					end
					else
					begin
							update tblCurrentLifeLog
							set ActivyStatus= 'NCM' , ActivityTargetDuration= @measuringtargetvalue ,mapperid = @mapperid
							where UserId = @result2 and ActivyStatus!='DM';
					end
					
					fetch next from cur2 into @result2
		  End
		  deallocate cur2
			 

delete from tbl_tempUserID
      
    END
GO
/****** Object:  Trigger [TrgUpdateCurrentLifeLog]    Script Date: 12/08/2016 21:20:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE  TRIGGER [dbo].[TrgUpdateCurrentLifeLog] 
   ON  [dbo].[tblCurrentLifeLog] 
   AFTER UPDATE
AS 
BEGIN

declare @userId as [int]
declare @activityId as [int]
declare @startTime as [datetime]
declare @activityTargetDuration as [int]
declare @activityStatus as [nvarchar] (50)
declare @mapperid as [int]

select @userId =d.userId from deleted d 
select @activityId =d.ActivityID from deleted d 
select @startTime =d.StartTime from deleted d 
select @activityTargetDuration =d.ActivityTargetDuration from deleted d 
select @activityStatus =d.ActivyStatus from deleted d
select @mapperid =d.mapperid from deleted d



if update(ActivyStatus)
begin
Select @activityStatus=i.ActivyStatus from deleted i
end
else
begin
select @activityStatus=i.ActivyStatus from deleted i
update [tblCurrentLifeLog]
set ActivyStatus='' where UserId in (SELECT UserId FROM inserted)
end

Insert into tbllog_CurrentLifeLog([Userid],[ActivityId],[StartTime],[ActivityTargetDuration],[ActivityStatus],[Mapperid],[RecordedTime])
SELECT  @userId, @activityId, @startTime,@activityTargetDuration,@activityStatus,@mapperid,getdate()
FROM deleted


END
GO
/****** Object:  StoredProcedure [dbo].[porCurrentLifeLogv]    Script Date: 12/08/2016 21:20:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

CREATE PROCEDURE [dbo].[porCurrentLifeLogv] --21 ,1 , Current_timestamp

	@uid numeric(18,0),
	--@uid int,
	@actname int,
	@sttime datetime
	------------------------
	/* @uid numeric(18,0),
 @sttime datetime,
 @actid int;*/
	
	----------------
AS
BEGIN   --- start of procedure
SET NOCOUNT ON;
----------------------------- variaqble of populateActivelog---------------
    declare @trgval int;
	declare @ucount int;
	declare @mapid int;
---------------------------variable of cons_mapid---------------------------------------
declare @keyor nvarchar(Max),
 @keyvalue nvarchar(Max),
 @cons nvarchar(Max), 
 @fullq nvarchar(Max),
 @keyore nvarchar(Max),
 @keyoreg nvarchar(Max),
 @cntid int,
 @userchk int,
 @chk int;
---------------------------------------------------variable of cons_mapid---------------	
----------------------------- old procedure code--- populateActivelog---------------	
	
	delete from tblCurrentLifeLog where ActivyStatus='DM';
	select @ucount=COUNT(UserID) from tblUserProfile where UserID=@uid;
	
	
	
	if @ucount>0
	begin
		
	select top 1  @trgval=tme.MeasuringTargetValue, @mapid=tme.mapperid from tblMonitoringEvents tme join lkptActivities lka on(lka.ActivityDescription=tme.ActivityValue) where lka.ActivityID=@actname order by CONVERT(INT,tme.MeasuringTargetValue)
		
	end
	
	------------------------------------- code for deleting the row------------------
	/* highlighting the users which have now new activities*/
	

	select @chk=count(UserID)from tblCurrentLifeLog
	where UserID=@uid;
	
	if(@chk>0)
	begin
	
	update tblCurrentLifeLog
	set ActivyStatus='DM'
	where UserID=@uid
	and ActivityID!=@actname;
	
	end

-----------------------------end of old procedure code--- populateActivelog-------------

----------------------------old procedure code-------- cons_mapid----------------------- 

  
--BEGIN


select @userchk=COUNT(mapperid)from tblSituationConstraints where mapperid= @mapid;


set @chk=0;
print (@userchk)
if @userchk>0
begin
declare cur cursor for 

 
 select ConstraintKey, ConstraintValue from tblSituationConstraints where mapperid=@mapid
open cur
fetch next from cur into @keyor, @keyvalue
set @cons=' '
while(@@FETCH_STATUS=0)
    begin
    

    if @keyor= 'Age' and @keyvalue='Adult'
        
        set @keyore=' and DATEDIFF(year, convert(date, DateOfBirth),convert(date,current_timeStamp))between 18 and 45'
    
    else if @keyor= 'Age' and @keyvalue='Old'

        set @keyore=' and DATEDIFF(year, convert(date, DateOfBirth),convert(date,current_timeStamp))>= 46'
        
    else if @keyor= 'Age' and @keyvalue='Kid'
       
        set @keyore=' and DATEDIFF(year, convert(date, DateOfBirth),convert(date,current_timeStamp))<= 17'
		
	else if @keyor= 'Gender' and @keyvalue='Male'
       
         set @keyoreg=' and GenderID= 1'
        
     else if @keyor= 'Gender' and @keyvalue='Female'
       
         set @keyoreg=' and GenderID= 0'
    
     else
         begin 
         set @cons=COALESCE(@cons + ' and ', Space(2))+ @keyor +'='+ char(39)+ @keyvalue+char(39)
      end
         
fetch next from cur into @keyor, @keyvalue
end
--begin Transaction

/*  ---  updated on 29-10-2015----------
*/
if @keyore is not null and 	@keyoreg is null			
set @fullq=Coalesce('Select @chk=count(UserID) from tblUserProfile where UserID=' + convert(varchar, @uid), Space(1))+ @cons +@keyore 		
else if @keyoreg is not null and @keyore is null			
set @fullq=Coalesce('Select @chk=count(UserID) from tblUserProfile where UserID=' + convert(varchar, @uid), Space(1))+ @cons  + @keyoreg	
else 
set @fullq=Coalesce('Select @chk=count(UserID) from tblUserProfile where UserID=' + convert(varchar, @uid), Space(1))+ @cons +@keyore + @keyoreg
				
exec sp_executesql @fullq,N'@chk int OUTPUT', @chk=@chk OUTPUT

select @chk
print (@chk)

print (@fullq)
deallocate cur
if @chk>0
begin


insert into tblCurrentLifeLog
values(@uid, @actname, @sttime, @trgval, 'CM',@mapid)


end


end
else if @trgval is null
print ('sorry')
else
begin

insert into tblCurrentLifeLog
values(@uid, @actname, @sttime, @trgval, 'CM',@mapid)
end
delete from tblCurrentLifeLog where ActivyStatus='DM';

--end

----------------------------old procedure code-------- cons_mapid-----------------------

END --- end of procedure
GO
/****** Object:  Table [dbo].[tblUserRecognizedActivity]    Script Date: 12/08/2016 21:20:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUserRecognizedActivity](
	[UserRecognizedActivityID] [numeric](18, 0) NOT NULL,
	[UserID] [numeric](18, 0) NULL,
	[ActivityID] [int] NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[Duration] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tblUserRecognizedActivity] ([UserRecognizedActivityID], [UserID], [ActivityID], [StartTime], [EndTime], [Duration]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(35 AS Numeric(18, 0)), 3, CAST(0x0000A6CE015B876B AS DateTime), CAST(0x0000A6CE015B876B AS DateTime), 3)
INSERT [dbo].[tblUserRecognizedActivity] ([UserRecognizedActivityID], [UserID], [ActivityID], [StartTime], [EndTime], [Duration]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(35 AS Numeric(18, 0)), 3, CAST(0x0000A6CF00AF1526 AS DateTime), CAST(0x0000A6CF00AF1526 AS DateTime), 3)
INSERT [dbo].[tblUserRecognizedActivity] ([UserRecognizedActivityID], [UserID], [ActivityID], [StartTime], [EndTime], [Duration]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(35 AS Numeric(18, 0)), 3, CAST(0x0000A6CF00B0A4B5 AS DateTime), CAST(0x0000A6CF00B0A4B5 AS DateTime), 3)
INSERT [dbo].[tblUserRecognizedActivity] ([UserRecognizedActivityID], [UserID], [ActivityID], [StartTime], [EndTime], [Duration]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(35 AS Numeric(18, 0)), 3, CAST(0x0000A6CF014D8F3D AS DateTime), CAST(0x0000A6CF014D8F3D AS DateTime), 3)
INSERT [dbo].[tblUserRecognizedActivity] ([UserRecognizedActivityID], [UserID], [ActivityID], [StartTime], [EndTime], [Duration]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(35 AS Numeric(18, 0)), 3, CAST(0x0000A6D000E26E04 AS DateTime), CAST(0x0000A6D000E26E04 AS DateTime), 3)
INSERT [dbo].[tblUserRecognizedActivity] ([UserRecognizedActivityID], [UserID], [ActivityID], [StartTime], [EndTime], [Duration]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(35 AS Numeric(18, 0)), 3, CAST(0x0000A6D0012B83CA AS DateTime), CAST(0x0000A6D0012B83CA AS DateTime), 3)
INSERT [dbo].[tblUserRecognizedActivity] ([UserRecognizedActivityID], [UserID], [ActivityID], [StartTime], [EndTime], [Duration]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(35 AS Numeric(18, 0)), 3, CAST(0x0000A6D0012FBF2A AS DateTime), CAST(0x0000A6D0012FBF2A AS DateTime), 3)
INSERT [dbo].[tblUserRecognizedActivity] ([UserRecognizedActivityID], [UserID], [ActivityID], [StartTime], [EndTime], [Duration]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(35 AS Numeric(18, 0)), 3, CAST(0x0000A6D600BCF2AC AS DateTime), CAST(0x0000A6D600BCF2AC AS DateTime), 3)
INSERT [dbo].[tblUserRecognizedActivity] ([UserRecognizedActivityID], [UserID], [ActivityID], [StartTime], [EndTime], [Duration]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(36 AS Numeric(18, 0)), 3, CAST(0x0000A6D600BCF359 AS DateTime), CAST(0x0000A6D600BCF359 AS DateTime), 3)
INSERT [dbo].[tblUserRecognizedActivity] ([UserRecognizedActivityID], [UserID], [ActivityID], [StartTime], [EndTime], [Duration]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(35 AS Numeric(18, 0)), 3, CAST(0x0000A6D001313AE1 AS DateTime), CAST(0x0000A6D001313AE1 AS DateTime), 3)
INSERT [dbo].[tblUserRecognizedActivity] ([UserRecognizedActivityID], [UserID], [ActivityID], [StartTime], [EndTime], [Duration]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(36 AS Numeric(18, 0)), 3, CAST(0x0000A6D001313AEC AS DateTime), CAST(0x0000A6D001313AEC AS DateTime), 3)
INSERT [dbo].[tblUserRecognizedActivity] ([UserRecognizedActivityID], [UserID], [ActivityID], [StartTime], [EndTime], [Duration]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(35 AS Numeric(18, 0)), 3, CAST(0x0000A6D100AA5A19 AS DateTime), CAST(0x0000A6D100AA5A19 AS DateTime), 3)
/****** Object:  Trigger [trgtblUserRecognizedActivity]    Script Date: 12/08/2016 21:20:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[trgtblUserRecognizedActivity] 
ON [dbo].[tblUserRecognizedActivity]
AFTER INSERT AS
BEGIN
declare @uid numeric(18,0);
declare @sttime datetime;
declare @actid int;


select @uid=inserted.UserID ,
        @sttime=inserted.StartTime,
		@actid=inserted.ActivityID
		from inserted
		where inserted.ActivityID!=16;
		--set @sttime=Current_TimeStamp
		execute porCurrentLifeLogv @uid, @actid, @sttime
		

END
GO
/****** Object:  StoredProcedure [dbo].[usp_NutiritionMonitorvdemo]    Script Date: 12/08/2016 21:20:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_NutiritionMonitorvdemo] --35, 'Chicken' 
 
	@uid int , 
	@foodName nvarchar(max),
	@result int output,
	@ActStatus nvarchar(max) output,
	@mapId int output,
	@ConsumeFat int output,
	@usid int output
AS
Begin


	declare @issedentary int=0;
	declare @activityIntensity int; 
	declare @targetfoodFat float;
	declare @mapperId int;
	declare @currentFoodFat float=0;
	declare @accumulateFoodFat float=0;
	declare @accumulateFoodFata float=0;
	declare @activeCond nvarchar(max);
	-------------------------------
	--declare	@result int ;
	--declare	@ActStatus nvarchar(max);
	--declare	@targetFat int ;
	--declare	@ConsumeFat int ;
	--declare	@usid int ;
	
  
	--======================================================================================
	-- Check for Sedentary 
	
	/*
	select 
		ISNULL(SUM(duration), 0 )
		from tblUserRecognizedActivity
		where CONVERT (time, StartTime) between '06:01:01.0001' and '23:59:59.0001'
		and CONVERT(date, GETDATE())=convert (date, StartTime)
		and ActivityID in(1,6,9,10,11,13,14) and UserID=35;
	
	*/
	   
		select 
		@activityIntensity =ISNULL(SUM(duration), 0 )
		from tblUserRecognizedActivity
		where StartTime between DateAdd(DD,-1,GETDATE() ) and GETDATE() 
		and ActivityID in(1,6,9,10,11,13,14) and UserID=@uid; 
		
			if @activityIntensity<25
			begin
			set @activeCond ='Sedentary';
			Print 'You are sedentary the last whole day';
			end
			else if @activityIntensity >25
			begin
			set @activeCond='Active'; 
			Print 'You are active for whole day'  
			end 
	
	--==========================================================================
	-- Rule Selection
		
	select 
	@mapperId=mapperid,
	@targetfoodFat=MeasuringTargetValue
	from tblMonitoringEvents 
	where mapperid =(
		select mapperid from tblSituationConstraints
		where ConstraintValue =@activeCond)
	    and lower(ActivityValue)= 'eating'
	    
   print N'Rule id selected from Monitoring Events table: ' +  convert(varchar(10), @mapperId)
   
   
   --=============================================================================
   --food fat caluculation
   
    
	select
	@currentFoodFat= Fat 
	from lkptFoodNutrient
	where FoodName=@foodName;
	print N' Current Fat in the most recent Food:  ' +  convert(varchar(10), @currentFoodFat)
	
	select
	@accumulateFoodFat=ISNULL(sum(l.fat),0)
    from lkptFoodNutrient l , tblFoodLog t 
    where l.FoodName=t.FoodName
    and t.USERID=@uid 
    and CONVERT (time, t.Eatingtime) between '06:01:01.0001' and '23:59:59.0001'
    and CONVERT(date, GETDATE())=convert (date, t.Eatingtime)

	
		set @accumulateFoodFata= @accumulateFoodFat + @currentFoodFat;--+@currentFoodFat
		print N' Previous Fat of the person in that day Food: ' +  convert(varchar(10),@accumulateFoodFat)
		print N' Toal Fat of the person in that day Food: ' +  convert(varchar(10),@accumulateFoodFata)
		print N' TARGET Fat of the person in the whole day Food: ' +  convert(varchar(10),@targetfoodFat)
		
	
	
	    insert into tblFoodLog 
	    (UserID, FoodName, EatingTime) 
	     values(@uid, @foodName,CURRENT_TIMESTAMP)

		if 	@accumulateFoodFata >= @targetfoodFat 
	 	--Print @targetfoodFat+ '0000' + @accumulateFoodFat
	 	Begin 
		set @result=1
		insert into tbllog_CurrentLifeLog (UserId, ActivityID, StartTime,ActivityTargetDuration, Mapperid, RecordedTime,ActivityStatus)
		values (@uid,16, CURRENT_TIMESTAMP, @accumulateFoodFata, @mapperId, CURRENT_TIMESTAMP, 'NCM' )
		end
		else if @accumulateFoodFata < @targetfoodFat 
		--Print @targetfoodFat+ '8888' +@accumulateFoodFat
		set @result=0
		else
		set @result=0;
		Print '*********************************************';
		Print N'2->> Means Fat is greater than Target,';
		Print N'3-->> Means fat is less than target';
		Print N'0--> No issue just ignore it';
		Print N'So the real result is' +  convert(varchar(10),@result)	
		
		set @ActStatus=	@activeCond
		set @mapId= @mapperId
		set @ConsumeFat=@accumulateFoodFata
		set @usid=@uid
		
		--print @ActStatus +'  '+ convert(varchar(10),@targetFat) +'  ' +convert(varchar(10),@ConsumeFat)+ '  '+convert(varchar(10),@usid )+'  '+ convert(varchar(10),@mapperid );
		--select @ActStatus,@targetFat,@ConsumeFat,@usid,@result
end
GO
/****** Object:  StoredProcedure [dbo].[usp_NutiritionMonitorv]    Script Date: 12/08/2016 21:20:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_NutiritionMonitorv] --35, 'Chicken' 
 
	@uid int , 
	@foodName nvarchar(max)
	,@result int output,
	@ActStatus nvarchar(max) output,
	@targetFat int output,
	@ConsumeFat int output,
	@usid int output
AS
Begin


	declare @issedentary int=0;
	declare @activityIntensity int; 
	declare @targetfoodFat float;
	declare @mapperId int;
	declare @currentFoodFat float=0;
	declare @accumulateFoodFat float=0;
	declare @accumulateFoodFata float=0;
	declare @activeCond nvarchar(max);
	-------------------------------
	--declare	@result int ;
	--declare	@ActStatus nvarchar(max);
	--declare	@targetFat int ;
	--declare	@ConsumeFat int ;
	--declare	@usid int ;
	
  
	--======================================================================================
	-- Check for Sedentary 
	   
		select 
		@activityIntensity =ISNULL(SUM(duration), 0 )
		from tblUserRecognizedActivity
		where StartTime between DateAdd(DD,-1,GETDATE() ) and GETDATE() 
		and ActivityID in(2,3) and UserID=@uid; 
		
			if @activityIntensity<25
			begin
			set @activeCond ='Sedentary';
			Print 'You are sedentary the last whole day';
			end
			else if @activityIntensity >25
			begin
			set @activeCond='Active'; 
			Print 'You are active for whole day'  
			end 
	
	--==========================================================================
	-- Rule Selection
		
	select 
	@mapperId=mapperid,
	@targetfoodFat=MeasuringTargetValue
	from tblMonitoringEvents 
	where mapperid =(
		select mapperid from tblSituationConstraints
		where ConstraintValue =@activeCond)
	    and lower(ActivityValue)= 'eating'
	    
   print N'Rule id selected from Monitoring Events table: ' +  convert(varchar(10), @mapperId)
   
   
   --=============================================================================
   --food fat caluculation
   
    
	select
	@currentFoodFat= Fat 
	from lkptFoodNutrient
	where FoodName=@foodName;
	print N' Current Fat in the most recent Food:  ' +  convert(varchar(10), @currentFoodFat)
	
	select
	@accumulateFoodFat=ISNULL(sum(l.fat),0)
    from lkptFoodNutrient l , tblFoodLog t 
    where l.FoodName=t.FoodName
    and t.USERID=@uid 
    and CONVERT (time, t.Eatingtime) between '06:01:01.0001' and '23:59:59.0001'
    and CONVERT(date, GETDATE())=convert (date, t.Eatingtime)

	
		set @accumulateFoodFata= @accumulateFoodFat + @currentFoodFat;--+@currentFoodFat
		print N' Previous Fat of the person in that day Food: ' +  convert(varchar(10),@accumulateFoodFat)
		print N' Toal Fat of the person in that day Food: ' +  convert(varchar(10),@accumulateFoodFata)
		print N' TARGET Fat of the person in the whole day Food: ' +  convert(varchar(10),@targetfoodFat)
		
	
	
	

		if 	@accumulateFoodFata >= @targetfoodFat 
	 	--Print @targetfoodFat+ '0000' + @accumulateFoodFat
	 	Begin 
		set @result=1
		insert into tbllog_CurrentLifeLog (UserId, ActivityID, StartTime,ActivityTargetDuration, Mapperid, RecordedTime,ActivityStatus)
		values (@uid,16, CURRENT_TIMESTAMP, @accumulateFoodFata, @mapperId, CURRENT_TIMESTAMP, 'NCM' )
		end
		else if @accumulateFoodFata < @targetfoodFat 
		--Print @targetfoodFat+ '8888' +@accumulateFoodFat
		set @result=0
		else
		set @result=0;
		Print '*********************************************';
		Print N'2->> Means Fat is greater than Target,';
		Print N'3-->> Means fat is less than target';
		Print N'0--> No issue just ignore it';
		Print N'So the real result is' +  convert(varchar(10),@result)	
		
		set @ActStatus=	@activeCond
		set @targetFat= @targetfoodFat
		set @ConsumeFat=@accumulateFoodFata
		set @usid=@uid
		
		--print @ActStatus +'  '+ convert(varchar(10),@targetFat) +'  ' +convert(varchar(10),@ConsumeFat)+ '  '+convert(varchar(10),@usid )+'  '+ convert(varchar(10),@mapperid );
		--select @ActStatus,@targetFat,@ConsumeFat,@usid,@result
end
GO
