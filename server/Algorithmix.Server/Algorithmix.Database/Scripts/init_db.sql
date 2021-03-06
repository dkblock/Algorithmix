USE [master]
GO
DROP DATABASE [algorithmixdb]
GO
CREATE DATABASE [algorithmixdb]
 CONTAINMENT = NONE
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [algorithmixdb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [algorithmixdb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [algorithmixdb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [algorithmixdb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [algorithmixdb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [algorithmixdb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [algorithmixdb] SET ARITHABORT OFF 
GO
ALTER DATABASE [algorithmixdb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [algorithmixdb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [algorithmixdb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [algorithmixdb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [algorithmixdb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [algorithmixdb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [algorithmixdb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [algorithmixdb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [algorithmixdb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [algorithmixdb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [algorithmixdb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [algorithmixdb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [algorithmixdb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [algorithmixdb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [algorithmixdb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [algorithmixdb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [algorithmixdb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [algorithmixdb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [algorithmixdb] SET  MULTI_USER 
GO
ALTER DATABASE [algorithmixdb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [algorithmixdb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [algorithmixdb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [algorithmixdb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [algorithmixdb] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'algorithmixdb', N'ON'
GO
ALTER DATABASE [algorithmixdb] SET QUERY_STORE = OFF
GO
USE [algorithmixdb]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Algorithms](
	[Id] [nvarchar](20) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ImageUrl] [nvarchar](max) NOT NULL,
	[TimeComplexityId] [int] NOT NULL,
	[CreatedBy] [nvarchar](450) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlgorithmTimeComplexities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SortingBestTime] [nvarchar](20) NULL,
	[SortingAverageTime] [nvarchar](20) NULL,
	[SortingWorstTime] [nvarchar](20) NULL,
	[SearchingBestTime] [nvarchar](20) NULL,
	[SearchingAverageTime] [nvarchar](20) NULL,
	[SearchingWorstTime] [nvarchar](20) NULL,
	[InsertionBestTime] [nvarchar](20) NULL,
	[InsertionAverageTime] [nvarchar](20) NULL,
	[InsertionWorstTime] [nvarchar](20) NULL,
	[DeletionBestTime] [nvarchar](20) NULL,
	[DeletionAverageTime] [nvarchar](20) NULL,
	[DeletionWorstTime] [nvarchar](20) NULL,
	[IndexingBestTime] [nvarchar](20) NULL,
	[IndexingAverageTime] [nvarchar](20) NULL,
	[IndexingWorstTime] [nvarchar](20) NULL,
	[FindMaxElementBestTime] [nvarchar](20) NULL,
	[FindMaxElementAverageTime] [nvarchar](20) NULL,
	[FindMaxElementWorstTime] [nvarchar](20) NULL,
	[GetMaxElementBestTime] [nvarchar](20) NULL,
	[GetMaxElementAverageTime] [nvarchar](20) NULL,
	[GetMaxElementWorstTime] [nvarchar](20) NULL,
	[AlgorithmId] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
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
	[GroupId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsAvailableForRegister] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PublishedTestAnswers](
	[Id] [int] NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
	[IsCorrect] [bit] NOT NULL,
	[PreviousAnswerId] [int] NULL,
	[NextAnswerId] [int] NULL,
	[QuestionId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PublishedTestQuestions](
	[Id] [int] NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
	[PreviousQuestionId] [int] NULL,
	[NextQuestionId] [int] NULL,
	[Type] [nvarchar](30) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[TestId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PublishedTests](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](450) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestAlgorithms](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TestId] [int] NOT NULL,
	[AlgorithmId] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestAnswers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
	[IsCorrect] [bit] NOT NULL,
	[PreviousAnswerId] [int] NULL,
	[NextAnswerId] [int] NULL,
	[QuestionId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestQuestions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
	[PreviousQuestionId] [int] NULL,
	[NextQuestionId] [int] NULL,
	[Type] [nvarchar](30) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[TestId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tests](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[IsPublished] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](450) NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAnswers](
	[QuestionId] [int] NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
	[IsCorrect] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[QuestionId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTestResults](
	[TestId] [int] NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[Result] [int] NOT NULL,
	[PassingTime] [datetime] NOT NULL,
	[CorrectAnswers] [int] NOT NULL,
	[IsPassed] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TestId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Algorithms] ([Id], [Name], [ImageUrl], [TimeComplexityId], [CreatedBy]) VALUES (N'avl-tree', N'AVL-дерево', N'images/algorithms/avl-tree.png', 3, N'37d5949b-22e8-46ee-8b1a-551053c76c10')
INSERT [dbo].[Algorithms] ([Id], [Name], [ImageUrl], [TimeComplexityId], [CreatedBy]) VALUES (N'binary-tree', N'Бинарное дерево поиска', N'images/algorithms/binary-tree.png', 1, N'37d5949b-22e8-46ee-8b1a-551053c76c10')
INSERT [dbo].[Algorithms] ([Id], [Name], [ImageUrl], [TimeComplexityId], [CreatedBy]) VALUES (N'binomial-heap', N'Биномиальная куча', N'images\algorithms\binomial-heap.png', 2085, N'7ffdc73e-ffe0-4f76-a7cc-527af1c350a1')
INSERT [dbo].[Algorithms] ([Id], [Name], [ImageUrl], [TimeComplexityId], [CreatedBy]) VALUES (N'bubble-sort', N'Сортировка пузырьком', N'images/algorithms/bubble-sort.png', 4, N'1eca0276-a31a-44c5-8633-1c1ed54c73b6')
INSERT [dbo].[Algorithms] ([Id], [Name], [ImageUrl], [TimeComplexityId], [CreatedBy]) VALUES (N'graphs', N'Алгоритмы на графах', N'images\algorithms\graphs.svg', 2083, N'4583ea6c-0a23-4b69-b702-0cb831c71892')
INSERT [dbo].[Algorithms] ([Id], [Name], [ImageUrl], [TimeComplexityId], [CreatedBy]) VALUES (N'hash-function', N'Хеш-функция', N'images/algorithms/hash-function.png', 1050, N'4e9ad642-0043-4cf5-b9f0-8bf5a8e30c84')
INSERT [dbo].[Algorithms] ([Id], [Name], [ImageUrl], [TimeComplexityId], [CreatedBy]) VALUES (N'hash-sha-3', N'SHA-3', N'images\algorithms\hash-sha-3.png', 1052, N'4e9ad642-0043-4cf5-b9f0-8bf5a8e30c84')
INSERT [dbo].[Algorithms] ([Id], [Name], [ImageUrl], [TimeComplexityId], [CreatedBy]) VALUES (N'hash-table', N'Хеш-таблица', N'images/algorithms/hash-table.png', 1051, N'4e9ad642-0043-4cf5-b9f0-8bf5a8e30c84')
INSERT [dbo].[Algorithms] ([Id], [Name], [ImageUrl], [TimeComplexityId], [CreatedBy]) VALUES (N'heaps-structure', N'Бинарная куча и её разновидности', N'images\algorithms\heaps-structure.png', 2084, N'7ffdc73e-ffe0-4f76-a7cc-527af1c350a1')
INSERT [dbo].[Algorithms] ([Id], [Name], [ImageUrl], [TimeComplexityId], [CreatedBy]) VALUES (N'insertion-sort', N'Сортировка вставками', N'images/algorithms/insertion-sort.png', 6, N'1eca0276-a31a-44c5-8633-1c1ed54c73b6')
INSERT [dbo].[Algorithms] ([Id], [Name], [ImageUrl], [TimeComplexityId], [CreatedBy]) VALUES (N'merge-sort', N'Сортировка слиянием', N'images/algorithms/merge-sort.png', 8, N'1eca0276-a31a-44c5-8633-1c1ed54c73b6')
INSERT [dbo].[Algorithms] ([Id], [Name], [ImageUrl], [TimeComplexityId], [CreatedBy]) VALUES (N'merkle-tree', N'Дерево Меркла', N'images\algorithms\merkle-tree.png', 1054, N'1eca0276-a31a-44c5-8633-1c1ed54c73b6')
INSERT [dbo].[Algorithms] ([Id], [Name], [ImageUrl], [TimeComplexityId], [CreatedBy]) VALUES (N'quick-sort', N'Быстрая сортировка', N'images/algorithms/quick-sort.png', 7, N'1eca0276-a31a-44c5-8633-1c1ed54c73b6')
INSERT [dbo].[Algorithms] ([Id], [Name], [ImageUrl], [TimeComplexityId], [CreatedBy]) VALUES (N'red-black-tree', N'Красно-чёрное дерево', N'images/algorithms/red-black-tree.png', 2, N'37d5949b-22e8-46ee-8b1a-551053c76c10')
INSERT [dbo].[Algorithms] ([Id], [Name], [ImageUrl], [TimeComplexityId], [CreatedBy]) VALUES (N'selection-sort', N'Сортировка выбором', N'images/algorithms/selection-sort.png', 5, N'1eca0276-a31a-44c5-8633-1c1ed54c73b6')
SET IDENTITY_INSERT [dbo].[AlgorithmTimeComplexities] ON 

INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (1, N'', N'', N'', N'', N'O(log n)', N'O(n)', N'', N'O(log n)', N'O(n)', N'', N'O(log n)', N'O(n)', N'', NULL, N'', N'', NULL, NULL, N'', NULL, NULL, N'binary-tree')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (2, NULL, NULL, NULL, NULL, N'O(log n)', N'O(log n)', NULL, N'O(log n)', N'O(log n)', NULL, N'O(log n)', N'O(log n)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'red-black-tree')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (3, NULL, NULL, NULL, NULL, N'O(log n)', N'O(log n)', NULL, N'O(log n)', N'O(log n)', NULL, N'O(log n)', N'O(log n)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'avl-tree')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (4, N'O(n)', N'O(n^2)', N'O(n^2)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'bubble-sort')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (5, N'O(n^2)', N'O(n^2)', N'O(n^2)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'selection-sort')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (6, N'O(n)', N'O(n^2)', N'O(n^2)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'insertion-sort')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (7, N'O(n * log n)', N'O(n * log n)', N'O(n^2)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'quick-sort')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (8, N'O(n * log n)', N'O(n * log n)', N'O(n * log n)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'merge-sort')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'new')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'new')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'zyz')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'ass')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'algorithm-id')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'-algorithm-id')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'algorithm-id')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'algorithm-id1')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'soska-prisoska')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'gonevo')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'algorithm-id')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'algorithm-id')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'algorithm-id')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'algorithm-id')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'algorithm-ids')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'algorithm-idss')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'mfukpo-3000')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'GARBAGE')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'MFUKPO-3000')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'3', N'2', N'1', NULL, NULL, NULL, NULL, NULL, NULL, N'algorithm-id')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (32, NULL, NULL, NULL, N'3', N'2', N'1', N'4', N'5', N'6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'algorithm-id')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'algorithm-id')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (34, NULL, NULL, NULL, N'1', N'11', N'1', NULL, NULL, N'2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'algorithm-id')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'algorithm-id')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (36, NULL, NULL, NULL, N'3', N'2', N'1', N'6', N'5', N'4', N'9', N'8', N'7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'boba')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (37, NULL, NULL, NULL, N'O(n)', N'O(n)', N'O(n)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'test')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'algorithm-id')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'algorithm-id')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'algorithm-id')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'algorithm-id')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'algorithm-id')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'algorithm-id')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'algorithm-id')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'algorithm-id')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'algorithm-id')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (47, N'', N'', N'', NULL, N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'algorithm-id')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'test-algorithm')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (1046, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'algorithm-id')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (1047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'algorithm-id')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (1048, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'algorithm-id')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (1049, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'hash-table')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (1050, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'hash-function')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (1051, NULL, NULL, NULL, NULL, N'O(1)', N'O(n)', NULL, N'O(1)', N'O(n)', NULL, N'O(1)', N'O(n)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'hash-table')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (1052, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'hash-sha-3')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (1053, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'algorithm-id')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (1054, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'merkle-tree')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (1055, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'algorithm-id')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (1056, NULL, NULL, NULL, N'3', N'2', N'1', N'6', N'5', N'4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'binary-tree-2')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (1057, NULL, NULL, NULL, N'3', N'2', N'1', N'6', N'5', N'4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'binary-tree-2')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (2055, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'algorithm-id')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (2056, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'test')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (2057, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'test')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (2058, NULL, NULL, N'7', NULL, NULL, N'1', NULL, NULL, N'2', NULL, NULL, N'3', NULL, NULL, N'4', NULL, NULL, N'5', NULL, NULL, N'6', N'test')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (2059, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'test')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (2060, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'test')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (2061, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'withoutId')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (2062, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL, NULL, N'binomial-heap')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (2063, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'binomial-heap')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (2064, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'binomial-heap')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (2065, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'O(log n)', NULL, NULL, N'O(log n)', NULL, NULL, N'', NULL, NULL, N'O(log n)', NULL, NULL, N'O(log n)', N'binomial-heap')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (2066, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'algorithm-id')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (2067, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'heaps')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (2068, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'heaps-structure')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (2069, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'binary-tree-test')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (2070, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'algorithm-id')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (2071, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'binomial-heap')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (2072, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'binomial-heap')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (2073, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'binomial-heap')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (2074, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'heap-structure')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (2075, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'heaps-structure')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (2076, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'index')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (2077, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'binary-heap')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (2078, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'algorithm-id')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (2079, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'heap')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (2080, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'testAlgorithm')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (2081, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'graphs')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (2082, NULL, NULL, N'O(n*log n)', NULL, NULL, N'O(log n)', NULL, NULL, N'O(log n)', NULL, NULL, N'O(log n)', NULL, NULL, NULL, NULL, NULL, N'O(1)', NULL, NULL, N'O(log n)', N'heaps-structure')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (2083, NULL, NULL, N'-', NULL, NULL, N'-', NULL, NULL, N'-', NULL, NULL, N'-', NULL, NULL, N'-', NULL, NULL, N'-', NULL, NULL, N'-', N'graphs')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (2084, NULL, NULL, N'O(n*log n) ', NULL, NULL, N'O(log n)', NULL, NULL, N'O(log n)', NULL, NULL, N'O(log n)', NULL, NULL, NULL, NULL, NULL, N'O(1)', NULL, NULL, N'O(log n)', N'heaps-structure')
INSERT [dbo].[AlgorithmTimeComplexities] ([Id], [SortingBestTime], [SortingAverageTime], [SortingWorstTime], [SearchingBestTime], [SearchingAverageTime], [SearchingWorstTime], [InsertionBestTime], [InsertionAverageTime], [InsertionWorstTime], [DeletionBestTime], [DeletionAverageTime], [DeletionWorstTime], [IndexingBestTime], [IndexingAverageTime], [IndexingWorstTime], [FindMaxElementBestTime], [FindMaxElementAverageTime], [FindMaxElementWorstTime], [GetMaxElementBestTime], [GetMaxElementAverageTime], [GetMaxElementWorstTime], [AlgorithmId]) VALUES (2085, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'binomial-heap')
SET IDENTITY_INSERT [dbo].[AlgorithmTimeComplexities] OFF
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'46b600b0-2488-4b9a-ad5e-9485f756dd3d', N'user', N'USER', N'052d91be-73b6-4cbc-bfa3-94b62b24cf1c')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'68b9c22e-006e-47df-b2e3-721063b7a2f3', N'admin', N'ADMIN', N'f4a6de59-2c0e-4f19-a7bf-3949fb09a1e8')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'a492f5c6-a306-4747-9d59-b1da77685434', N'administrator', N'ADMINISTRATOR', N'5a7d3f59-7f9a-4c96-b0ad-6603a22a1f97')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ffea4038-09bc-4bc2-8254-38531e8b5905', N'moderator', N'MODERATOR', N'223baf8e-2fbc-4e48-b746-b9d085292e43')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1eca0276-a31a-44c5-8633-1c1ed54c73b6', N'68b9c22e-006e-47df-b2e3-721063b7a2f3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'37d5949b-22e8-46ee-8b1a-551053c76c10', N'68b9c22e-006e-47df-b2e3-721063b7a2f3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4583ea6c-0a23-4b69-b702-0cb831c71892', N'ffea4038-09bc-4bc2-8254-38531e8b5905')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4e9ad642-0043-4cf5-b9f0-8bf5a8e30c84', N'ffea4038-09bc-4bc2-8254-38531e8b5905')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7ffdc73e-ffe0-4f76-a7cc-527af1c350a1', N'ffea4038-09bc-4bc2-8254-38531e8b5905')
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [GroupId]) VALUES (N'1eca0276-a31a-44c5-8633-1c1ed54c73b6', N'Роман', N'Петришин', N'roman.petrishin@algorithmix.kb', N'ROMAN.PETRISHIN@ALGORITHMIX.KB', N'roman.petrishin@algorithmix.kb', N'ROMAN.PETRISHIN@ALGORITHMIX.KB', 1, N'AQAAAAEAACcQAAAAENg0bd8wmhkjzv41cHcxdYdrqSwvFjam5SSChWdijC2bc9JuuCEVTwxwAom7iqcYBQ==', N'UPVKFNNXLXTW7RHPEGV6I4PEEYHEZLZQ', N'67ee0a39-5acf-4320-b041-77e3aab6a7a7', NULL, 0, 0, NULL, 1, 0, 11)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [GroupId]) VALUES (N'37d5949b-22e8-46ee-8b1a-551053c76c10', N'Дмитрий', N'Куликов', N'dmitry.kulikov@algorithmix.kb', N'DMITRY.KULIKOV@ALGORITHMIX.KB', N'dmitry.kulikov@algorithmix.kb', N'DMITRY.KULIKOV@ALGORITHMIX.KB', 1, N'AQAAAAEAACcQAAAAECAmydsNEgJyppBHej10JMpm9S/XGfw8+qNRlMm5NbC7Sb6TUsH0BtV+p6946rAJHg==', N'7QAEIRZL2G4WCZPI3NPIGVGSEXDOYUKJ', N'3bc1d923-cb87-497d-beba-b55cd2627b9d', NULL, 0, 0, NULL, 1, 0, 11)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [GroupId]) VALUES (N'4583ea6c-0a23-4b69-b702-0cb831c71892', N'Анастасия', N'Герасименко', N'anastasiya.gerasimenko@algorithmix.kb', N'ANASTASIYA.GERASIMENKO@ALGORITHMIX.KB', N'anastasiya.gerasimenko@algorithmix.kb', N'ANASTASIYA.GERASIMENKO@ALGORITHMIX.KB', 1, N'AQAAAAEAACcQAAAAEDhPiEZZUoGE9oMS9V8GSdIrU9brC8eChkcJMhh+iI6Aj7yQpPvxJ0p/YuNnKh1bsw==', N'PEUOT45LRD5P7S63ULRYFF2ZWOVOVLSD', N'dca1e0c5-bc27-4fcc-8dce-ebd38954c662', NULL, 0, 0, NULL, 1, 0, 8)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [GroupId]) VALUES (N'4e9ad642-0043-4cf5-b9f0-8bf5a8e30c84', N'Николай', N'Дымников', N'nikolay.dymnikov@algorithmix.kb', N'NIKOLAY.DYMNIKOV@ALGORITHMIX.KB', N'nikolay.dymnikov@algorithmix.kb', N'NIKOLAY.DYMNIKOV@ALGORITHMIX.KB', 0, N'AQAAAAEAACcQAAAAEMm7FNpdosTCpST0c1IDGa/20mgdlzxJfos1X00mvpJq+5ebdgog3BIv+NSPBaJ0YQ==', N'WEHDFR4TJOQTJ744B75B45ECSW23ZLIO', N'80c1bb27-db7e-4afd-8e2e-b0bf23d2b327', NULL, 0, 0, NULL, 1, 0, 8)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [GroupId]) VALUES (N'7ffdc73e-ffe0-4f76-a7cc-527af1c350a1', N'Анна', N'Никешина', N'nikeshina2010@yandex.ru', N'NIKESHINA2010@YANDEX.RU', N'nikeshina2010@yandex.ru', N'NIKESHINA2010@YANDEX.RU', 1, N'AQAAAAEAACcQAAAAECCpyoEE7YUcoaXnuTrZonMGfyD9LGLNmFKAi3j+m6W96V6UubrgPYnye/pMZTRxyA==', N'E5BPSCCRUOGS6563CKCFGMRHJ3UONJLG', N'063d800e-08ff-4e2c-886e-83309018cc95', NULL, 0, 0, NULL, 1, 0, 7)
SET IDENTITY_INSERT [dbo].[Groups] ON 

INSERT [dbo].[Groups] ([Id], [Name], [IsAvailableForRegister]) VALUES (1, N'Не назначена', 0)
INSERT [dbo].[Groups] ([Id], [Name], [IsAvailableForRegister]) VALUES (2, N'Администраторы', 0)
INSERT [dbo].[Groups] ([Id], [Name], [IsAvailableForRegister]) VALUES (3, N'Модераторы', 0)
INSERT [dbo].[Groups] ([Id], [Name], [IsAvailableForRegister]) VALUES (4, N'КБ-11СО', 1)
INSERT [dbo].[Groups] ([Id], [Name], [IsAvailableForRegister]) VALUES (5, N'КБ-21СО', 1)
INSERT [dbo].[Groups] ([Id], [Name], [IsAvailableForRegister]) VALUES (6, N'КБ-31СО', 1)
INSERT [dbo].[Groups] ([Id], [Name], [IsAvailableForRegister]) VALUES (7, N'КБ-41СО', 1)
INSERT [dbo].[Groups] ([Id], [Name], [IsAvailableForRegister]) VALUES (8, N'КБ-51СО', 1)
INSERT [dbo].[Groups] ([Id], [Name], [IsAvailableForRegister]) VALUES (11, N'КБ-61СО', 1)
SET IDENTITY_INSERT [dbo].[Groups] OFF
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (500, N'Да', 1, NULL, 501, 473)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (501, N'Нет', 0, 500, NULL, 473)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (502, N'Да', 0, NULL, 503, 475)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (503, N'Нет', 1, 502, NULL, 475)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (504, N'4', 0, NULL, 505, 476)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (505, N'5', 1, 504, 506, 476)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (506, N'7', 1, 505, 507, 476)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (507, N'50', 1, 506, 508, 476)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (508, N'71', 0, 507, NULL, 476)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (509, N'94 44 80 84 91 93', 1, NULL, NULL, 477)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (510, N'Красный', 1, 511, NULL, 478)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (511, N'Чёрный', 0, NULL, 510, 478)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (512, N'0', 1, NULL, NULL, 479)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (513, N'Прямой обход', 0, NULL, 514, 480)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (514, N'Центрированный обход', 0, 513, 515, 480)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (515, N'Обратный обход', 0, 514, 516, 480)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (516, N'Поиск в ширину', 1, 515, NULL, 480)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (517, N'Да', 0, NULL, 518, 481)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (518, N'Нет', 1, 517, NULL, 481)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (519, N'8', 0, NULL, 520, 482)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (520, N'10', 1, 519, 521, 482)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (521, N'43', 1, 520, 522, 482)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (522, N'46', 1, 521, 523, 482)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (523, N'65', 1, 522, 524, 482)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (524, N'77', 1, 523, 525, 482)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (525, N'78', 0, 524, NULL, 482)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (526, N'511', 1, NULL, NULL, 474)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1501, N'Да', 1, NULL, 1502, 1475)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1502, N'Нет', 0, 1501, NULL, 1475)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1503, N'15', 1, NULL, NULL, 1476)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1504, N'3 20 29 31 18', 1, NULL, NULL, 1477)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1505, N'1', 1, NULL, NULL, 1478)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1506, N'25 15 11 26 29', 1, NULL, NULL, 1479)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1507, N'2', 1, NULL, NULL, 1480)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1508, N'5', 1, NULL, NULL, 1481)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1509, N'5 6 12 8 21 14', 1, NULL, NULL, 1482)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1510, N'11 12 14 28 30 1', 1, NULL, NULL, 1483)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1511, N'O(NlogN)', 1, NULL, 1512, 1484)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1512, N'O(N^2)', 0, 1511, 1513, 1484)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1513, N'O(logN)', 0, 1512, 1514, 1484)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1514, N'O(2N)', 0, 1513, NULL, 1484)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1515, N'21', 1, NULL, NULL, 1485)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1516, N'3 20 26', 1, NULL, NULL, 1486)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1517, N'28', 1, NULL, NULL, 1487)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1518, N'21', 1, NULL, NULL, 1488)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1519, N'6', 1, NULL, NULL, 1489)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1520, N'3', 1, NULL, NULL, 1490)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1521, N'2', 1, NULL, NULL, 1491)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1522, N'1 8 19 22 10 5', 1, NULL, NULL, 1492)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1523, N'11 12 14 28 30 1', 1, NULL, NULL, 1493)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1524, N'O(NlogN)', 0, NULL, 1525, 1494)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1525, N'O(2N)', 0, 1524, 1526, 1494)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1526, N'O(logN)', 0, 1525, 1527, 1494)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1527, N'O(N^2)', 1, 1526, NULL, 1494)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1528, N'2 6 9 13 19 38 14 28', 1, NULL, NULL, 1495)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1529, N'3', 0, NULL, 1530, 1474)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1530, N'5', 0, 1529, 1531, 1474)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1531, N'6', 0, 1530, 1532, 1474)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1532, N'8', 1, 1531, 1533, 1474)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1533, N'10', 0, 1532, NULL, 1474)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1534, N'4', 1, NULL, NULL, 1496)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1535, N'Да', 0, NULL, 1536, 1497)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1536, N'Нет', 1, 1535, NULL, 1497)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1537, N'Да', 0, NULL, 1538, 1498)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1538, N'Нет', 1, 1537, NULL, 1498)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1539, N'20', 1, NULL, NULL, 1499)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1540, N'1', 0, NULL, 1541, 1500)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1541, N'2', 1, 1540, 1542, 1500)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1542, N'3', 0, 1541, 1543, 1500)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1543, N'5', 0, 1542, 1544, 1500)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1544, N'7', 0, 1543, NULL, 1500)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1545, N'48 6 70 3 12', 1, NULL, NULL, 1501)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1546, N'Да', 1, NULL, 1547, 1502)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1547, N'Нет', 0, 1546, NULL, 1502)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1548, N'2', 0, NULL, 1549, 1503)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1549, N'3', 1, 1548, 1550, 1503)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1550, N'13', 0, 1549, 1551, 1503)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1551, N'14', 1, 1550, 1552, 1503)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1552, N'17', 1, 1551, 1553, 1503)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1553, N'25', 1, 1552, 1554, 1503)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1554, N'54', 1, 1553, 1555, 1503)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1555, N'99', 0, 1554, NULL, 1503)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1611, N'4', 1, NULL, NULL, 1521)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1612, N'8', 1, NULL, NULL, 1522)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1613, N'5', 1, NULL, NULL, 1523)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1614, N'4', 1, NULL, 1615, 1524)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1615, N'Ответ 2', 0, 1614, NULL, 1524)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1616, N'5', 1, NULL, NULL, 1525)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1617, N'4', 1, NULL, NULL, 1526)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1618, N'3', 1, NULL, NULL, 1527)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1619, N'1, 5', 1, NULL, 1620, 1528)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1620, N'2, 3', 0, 1619, 1621, 1528)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1621, N'2, 4', 0, 1620, 1622, 1528)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1622, N'3, 3', 0, 1621, NULL, 1528)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1623, N'4', 1, NULL, 1624, 1529)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1624, N'5', 0, 1623, 1625, 1529)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1625, N'3', 0, 1624, 1626, 1529)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1626, N'7', 0, 1625, NULL, 1529)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1627, N'17, 10, 3', 1, NULL, 1628, 1530)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1628, N'11, 18, 19', 0, 1627, 1629, 1530)
GO
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1629, N'10, 18, 2', 0, 1628, 1630, 1530)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1630, N'5, 11, 30', 0, 1629, NULL, 1530)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1631, N'127', 1, NULL, NULL, 1531)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1632, N'32, 64', 0, NULL, 1633, 1532)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1633, N'31, 63', 0, 1632, 1634, 1532)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1634, N'32, 63', 1, 1633, 1635, 1532)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1635, N'16,33', 0, 1634, NULL, 1532)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1636, N'4', 1, NULL, NULL, 1533)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1637, N'17', 1, NULL, NULL, 1534)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1638, N'У корневого узла нет левого потомка', 0, NULL, 1639, 1535)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1639, N'Индекс левого потомка (i-го узла) равен 2*i', 0, 1638, 1640, 1535)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1640, N'У корневого элемента нет правого потомка', 0, 1639, 1641, 1535)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1641, N'Индекс правого потомка (i-го узла) равен 2*i+2', 1, 1640, 1642, 1535)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1642, N'Глубина листьев может отличаться на 2, но не больше', 0, 1641, NULL, 1535)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1643, N'Декартово дерево объединяет в себе свойства кучи и бинарного дерева', 1, NULL, 1644, 1536)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1644, N'Каждый узел в куче характеризуется парой величин (х,у), в зависимости от которых определяется расположение узла', 0, 1643, 1645, 1536)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1645, N'Куча заполнена на всех уровнях кроме, возможно, последнего, а в дереве узлы могут отсутствовать на разных уровнях', 1, 1644, 1646, 1536)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1646, N'И куча, и декартово дерево обязательно будут сбалансированными', 0, 1645, 1647, 1536)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1647, N'Декартово дерево не подходит для сортировки в отличие от кучи', 0, 1646, NULL, 1536)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1648, N'10', 1, NULL, NULL, 1537)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1649, N'Приоритет родительского узла не больше приоритета дочернего', 1, NULL, 1650, 1538)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1650, N'Приоритет узла не превышает приоритет родительского по отношению к нему узла', 0, 1649, 1651, 1538)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1651, N'В корне неубывающей кучи находится элемент с самым большим приоритетом', 0, 1650, NULL, 1538)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1652, N'Приоритет родительского узла не больше приоритета дочернего', 0, NULL, 1653, 1539)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1653, N'Приоритет узла не превышает приоритет родительского по отношению к нему узла', 1, 1652, 1654, 1539)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1654, N'В корне неубывающей кучи находится элемент с максимальным значением', 1, 1653, 1655, 1539)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1655, N'В корне расположен элемент с минимальным значением', 0, 1654, NULL, 1539)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1656, N'19', 1, NULL, 1657, 1540)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1657, N'37', 1, 1656, 1658, 1540)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1658, N'1', 1, 1657, 1659, 1540)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1659, N'43', 1, 1658, 1660, 1540)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1660, N'18', 1, 1659, 1661, 1540)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1661, N'7', 1, 1660, NULL, 1540)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1662, N'11', 0, NULL, 1663, 1541)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1663, N'19', 1, 1662, 1664, 1541)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1664, N'22', 1, 1663, 1665, 1541)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1665, N'26', 0, 1664, 1666, 1541)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1666, N'9', 0, 1665, 1667, 1541)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1667, N'3', 0, 1666, NULL, 1541)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1668, N'10', 1, NULL, NULL, 1542)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1669, N'256, 511', 1, NULL, 1670, 1553)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1670, N'128, 254', 0, 1669, 1671, 1553)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1671, N'255, 512', 0, 1670, 1672, 1553)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1672, N'127, 255', 0, 1671, NULL, 1553)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1673, N'6', 1, NULL, NULL, 1554)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1674, N'5', 1, NULL, NULL, 1543)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1675, N'11', 1, NULL, NULL, 1545)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1676, N'5', 1, NULL, NULL, 1546)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1677, N'10', 1, NULL, NULL, 1547)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1678, N'Приоритет родительского узла не больше приоритета дочернего ', 1, NULL, 1679, 1548)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1679, N'Приоритет узла не превышает приоритет родительского по отношению к нему узла', 0, 1678, 1680, 1548)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1680, N'В корне неубывающей кучи находится элемент с самым большим приоритетом', 0, 1679, NULL, 1548)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1681, N'Приоритет родительского узла не больше приоритета дочернего ', 0, NULL, 1682, 1555)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1682, N'Приоритет узла не превышает приоритет родительского по отношению к нему узла', 1, 1681, 1683, 1555)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1683, N'В корне неубывающей кучи находится элемент с максимальным значением', 1, 1682, 1684, 1555)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1684, N'В корне расположен элемент с минимальным значением', 0, 1683, NULL, 1555)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1685, N'53', 0, NULL, 1686, 1549)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1686, N'12', 0, 1685, 1687, 1549)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1687, N'28', 0, 1686, 1688, 1549)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1688, N'17', 0, 1687, 1689, 1549)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1689, N'9', 1, 1688, NULL, 1549)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1690, N'2', 0, NULL, 1691, 1550)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1691, N'10', 1, 1690, 1692, 1550)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1692, N'7', 1, 1691, 1693, 1550)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1693, N'26', 0, 1692, 1694, 1550)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1694, N'15', 0, 1693, 1695, 1550)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1695, N'21', 0, 1694, NULL, 1550)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1696, N'4', 1, NULL, NULL, 1558)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1697, N'32', 1, NULL, NULL, 1559)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1698, N'0', 1, NULL, NULL, 1560)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1699, N'4', 1, NULL, NULL, 1561)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1700, N'4', 1, NULL, NULL, 1562)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1701, N'7', 1, NULL, NULL, 1563)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1702, N'2', 1, NULL, 1703, 1564)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1703, N'1', 0, 1702, 1704, 1564)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1704, N'3', 0, 1703, NULL, 1564)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1705, N'2, 5', 1, NULL, 1706, 1565)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1706, N'4, 3', 0, 1705, 1707, 1565)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1707, N'1, 6', 0, 1706, 1708, 1565)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1708, N'4, 4', 0, 1707, NULL, 1565)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1709, N'2', 0, NULL, 1710, 1566)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1710, N'3', 1, 1709, 1711, 1566)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1711, N'4', 0, 1710, NULL, 1566)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1712, N'3, 8, 5', 1, NULL, 1713, 1567)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1713, N'20, 13, 19', 0, 1712, 1714, 1567)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1714, N'2, 3, 5', 0, 1713, 1715, 1567)
INSERT [dbo].[PublishedTestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1715, N'2, 5, 27', 0, 1714, NULL, 1567)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (473, N'Является ли данное дерево сбалансированным?', 478, 474, N'SingleAnswerQuestion', N'images\__tests-pub__\test_62\question473_7846.png', 62)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (474, N'Какое максимальное количество узлов может содержать AVL-дерево, имеющее высоту 8?
', 473, 475, N'FreeAnswerQuestion', NULL, 62)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (475, N'Верно ли следующее утверждение: в красно-чёрном дереве узлы-листья могут иметь как чёрный, так и красный цвет?
', 474, 476, N'SingleAnswerQuestion', NULL, 62)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (476, N'Укажите все узлы данного дерева, которые являются листьями.', 475, 477, N'MultiAnswerQuestion', N'images\__tests-pub__\test_62\question476_7188.png', 62)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (477, N'Какой путь необходимо преодолеть для того, чтобы найти узел с номером 93? Введите последовательность вершин (включая корень дерева и искомый узел), разделяя их пробелом.', 476, 479, N'FreeAnswerQuestion', N'images\__tests-pub__\test_62\question477_9166.png', 62)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (478, N'Какой цвет примет узел с ключом 68 после вставки в данное дерево узла с ключом 55?
', NULL, 473, N'SingleAnswerQuestion', N'images\__tests-pub__\test_62\question478_4662.png', 62)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (479, N'Какой коэффициент сбалансированности имеет вершина с ключом 30? Введите ответ по модулю. Примечание: данное дерево не обязательно является сбалансированным.', 477, 480, N'FreeAnswerQuestion', N'images\__tests-pub__\test_62\question479_4641.png', 62)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (480, N'В результате обхода данного дерева была получена cледующая последовательность ключей: [72, 30, 89, 25, 43,
78, 47, 71, 60]. Какой вид обхода дерева был использован?
', 479, 481, N'SingleAnswerQuestion', N'images\__tests-pub__\test_62\question480_5951.png', 62)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (481, N'Является ли данное дерево сбалансированным?', 480, 482, N'SingleAnswerQuestion', N'images\__tests-pub__\test_62\question481_5776.png', 62)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (482, N'Укажите все внутренние узлы данного дерева.', 481, NULL, N'MultiAnswerQuestion', N'images\__tests-pub__\test_62\question482_6716.png', 62)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1474, N'В изначально пустое красно-чёрное дерево последовательно добавляются ключи [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]. Сколько чёрных узлов в получившемся дереве?', NULL, 1475, N'SingleAnswerQuestion', NULL, 1064)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1475, N'Является ли данное дерево бинарным?', 1474, 1496, N'SingleAnswerQuestion', N'images\__tests-pub__\test_1064\question1475_6531.png', 1064)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1476, N'Сколько сравнений требуется для сортировки массива, изображенного на картинке, с использованием
сортировки выбором?
', NULL, 1477, N'FreeAnswerQuestion', N'images\__tests-pub__\test_1065\question1476_1513.png', 1065)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1477, N'Введите последовательность целых чисел, разделяя их пробелом, представляющих содержимое массива, изображенного на картинке, после 3 проходов сортировки вставками.', 1476, 1478, N'FreeAnswerQuestion', N'images\__tests-pub__\test_1065\question1477_7002.png', 1065)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1478, N'Сколько обменов требуется для сортировки массива, изображенного на картинке, с использованием сортировки пузырьком?', 1477, 1479, N'FreeAnswerQuestion', N'images\__tests-pub__\test_1065\question1478_4511.png', 1065)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1479, N'Введите последовательность целых чисел, разделяя их пробелом, представляющих содержимое массива,
изображенного на картинке, после 2 проходов сортировки пузырьком.', 1478, 1480, N'FreeAnswerQuestion', N'images\__tests-pub__\test_1065\question1479_9403.png', 1065)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1480, N'Сколько обменов требуется для сортировки массива, изображенного на картинке, с использованием сортировки пузырьком?', 1479, 1481, N'FreeAnswerQuestion', N'images\__tests-pub__\test_1065\question1480_6951.png', 1065)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1481, N'Массив из 5 целых чисел сортируется в порядке возрастания с использованием быстрой сортировки.
Предположим, что алгоритм только что завершил первый проход разбиения и обмена, таким образом изменив содержимое исходного массива на следующий массив,
изображенный на картинке.
Из приведенного на картинке массива
определите, сколько элементов могло
бы быть опорным элементом?', 1480, 1482, N'FreeAnswerQuestion', N'images\__tests-pub__\test_1065\question1481_4184.png', 1065)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1482, N'Введите последовательность целых чисел, разделяя их пробелом, представляющих содержимое массива, изображенного на картинке, после 2 проходов сортировки выбором.', 1481, 1483, N'FreeAnswerQuestion', N'images\__tests-pub__\test_1065\question1482_7994.png', 1065)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1483, N'Введите последовательность целых чисел, разделяя их пробелом, представляющих содержимое массива, изображенного на картинке, после 4 проходов сортировки вставками.', 1482, 1484, N'FreeAnswerQuestion', N'images\__tests-pub__\test_1065\question1483_5155.png', 1065)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1484, N'Эффективность метода сортировки слиянием выражается зависимостью', 1483, 1485, N'SingleAnswerQuestion', NULL, 1065)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1485, N'Сколько сравнений требуется для сортировки массива, изображенного на картинке, с использованием сортировки пузырьком?', 1484, NULL, N'FreeAnswerQuestion', N'images\__tests-pub__\test_1065\question1485_8721.png', 1065)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1486, N'Введите последовательность целых чисел, разделяя их пробелом, представляющих содержимое массива, изображенного на картинке, после 2 проходов сортировки
пузырьком.', NULL, 1487, N'FreeAnswerQuestion', N'images\__tests-pub__\test_1066\question1486_8377.png', 1066)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1487, N'Сколько сравнений требуется для сортировки массива, изображенного на картинке, с использованием сортировки пузырьком?', 1486, 1488, N'FreeAnswerQuestion', N'images\__tests-pub__\test_1066\question1487_3071.png', 1066)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1488, N'Сколько сравнений требуется для сортировки массива, изображенного на картинке, с использованием сортировки выбором?', 1487, 1489, N'FreeAnswerQuestion', N'images\__tests-pub__\test_1066\question1488_1940.png', 1066)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1489, N'Массив из 6 целых чисел сортируется в порядке возрастания с использованием быстрой сортировки.
Предположим, что алгоритм только что завершил первый проход разбиения и свопинга, таким образом изменив содержимое исходного массива на следующий массив, изображенный на картинке.
Из приведенного на картинке массива определите, сколько
элементов могли бы быть опорными?
', 1488, 1490, N'FreeAnswerQuestion', N'images\__tests-pub__\test_1066\question1489_1527.png', 1066)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1490, N'Сколько обменов требуется для сортировки массива, изображенного на картинке, с использованием сортировки пузырьком?', 1489, 1491, N'FreeAnswerQuestion', N'images\__tests-pub__\test_1066\question1490_3285.png', 1066)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1491, N'Сколько сравнений необходимо для сортировки массива,
изображенного на картинке, с использованием сортировки
выбором?', 1490, 1492, N'FreeAnswerQuestion', N'images\__tests-pub__\test_1066\question1491_9104.png', 1066)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1492, N'Введите последовательность целых чисел, разделяя их пробелом, представляющих содержимое массива, изображенного на картинке, после 3 проходов сортировки вставками.', 1491, 1493, N'FreeAnswerQuestion', N'images\__tests-pub__\test_1066\question1492_7268.png', 1066)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1493, N'Введите последовательность целых чисел, разделяя их пробелом, представляющих содержимое массива, 
изображенного на картинке, после 2 проходов сортировки
выбором.', 1492, 1494, N'FreeAnswerQuestion', N'images\__tests-pub__\test_1066\question1493_791.png', 1066)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1494, N'Эффективность метода быстрой сортировки в худшем случае выражается зависимостью
', 1493, 1495, N'SingleAnswerQuestion', NULL, 1066)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1495, N'Введите последовательность целых чисел, разделяя их пробелом, представляющих содержимое массива, изображенного на картинке, после 4 проходов сортировки выбором', 1494, NULL, N'FreeAnswerQuestion', N'images\__tests-pub__\test_1066\question1495_7047.png', 1066)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1496, N'Укажите минимальный элемент данного бинарного дерева.', 1475, 1497, N'FreeAnswerQuestion', N'images\__tests-pub__\test_1064\question1496_1417.png', 1064)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1497, N'Верно ли следующее утверждение: максимальный элемент бинарного дерева может иметь правый дочерний элемент?', 1496, 1498, N'SingleAnswerQuestion', NULL, 1064)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1498, N'Будет ли осуществлена одна из операций вращения после удаления из данного AVL-дерева узла с ключом 46?', 1497, 1499, N'SingleAnswerQuestion', N'images\__tests-pub__\test_1064\question1498_2398.png', 1064)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1499, N'Какое минимальное количество узлов может содержать AVL-дерево, имеющее высоту 5? ', 1498, 1500, N'FreeAnswerQuestion', NULL, 1064)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1500, N'Чему равняется чёрная высота данного дерева?
', 1499, 1501, N'SingleAnswerQuestion', N'images\__tests-pub__\test_1064\question1500_2439.png', 1064)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1501, N'Из данного AVL-дерева последовательно удаляются вершины 69 и 30. Далее совершается поуровневый обход
дерева (поиск в ширину). Введите первые пять узлов
последовательности, получающейся в результате обхода, разделяя узлы пробелом.', 1500, 1502, N'FreeAnswerQuestion', N'images\__tests-pub__\test_1064\question1501_3521.png', 1064)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1502, N'Является ли допустимым подобное размещение узлов в бинарном дереве?
', 1501, 1503, N'SingleAnswerQuestion', N'images\__tests-pub__\test_1064\question1502_8303.png', 1064)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1503, N'Укажите все узлы данного дерева, которые являются листьями.', 1502, NULL, N'MultiAnswerQuestion', N'images\__tests-pub__\test_1064\question1503_2961.png', 1064)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1521, N'Сколько биномиальных деревьев в куче из 23 элементов?', NULL, 1522, N'FreeAnswerQuestion', NULL, 1076)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1522, N'Сколько узлов в биномиальном дереве B3?', 1521, 1523, N'FreeAnswerQuestion', NULL, 1076)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1523, N'Сколько потомков у корня в биномиальном дереве B5?', 1522, 1524, N'FreeAnswerQuestion', NULL, 1076)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1524, N'В биномиальном лесу 18 узлов. Какая максимальная степень у дерева в этом лесу?', 1523, 1525, N'FreeAnswerQuestion', NULL, 1076)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1525, N'Сколько биномиальных деревьев в куче из 123 элементов? ', 1524, 1526, N'FreeAnswerQuestion', NULL, 1076)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1526, N'Какая высота у биномиального дерева В4?', 1525, 1527, N'FreeAnswerQuestion', NULL, 1076)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1527, N'Из скольких биномиальных деревьев будет состоять куча после удаления из нее минимального элемента?', 1526, 1528, N'FreeAnswerQuestion', N'images\__tests-pub__\test_1076\question1527_8957.png', 1076)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1528, N'Сколько биномиальных деревьев будет в итоговой куче после слияния куч H1 и Н2 и какова максимальная высота дерева в этой куче?', 1527, 1529, N'SingleAnswerQuestion', N'images\__tests-pub__\test_1076\question1528_9871.png', 1076)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1529, N'Есть биномиальная куча Н. Какое количество биномиальных деревьев в ней будет после извлечения минимального элемента?', 1528, 1530, N'SingleAnswerQuestion', N'images\__tests-pub__\test_1076\question1529_3155.png', 1076)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1530, N'Есть массив input={10,9,3,18,5,17,11,2,19,30}. Элементы из него поочередно добавляют в биномиальную невозрастающую кучу, которая изначально была пуста. какие дочерние элементы будут у корня самого большого биномиального дерева в этой куче?', 1529, NULL, N'SingleAnswerQuestion', NULL, 1076)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1531, N'Сколько листьев в куче из 253 элементов?', NULL, 1532, N'FreeAnswerQuestion', NULL, 1077)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1532, N'Высота кучи равна 6. Какое минимальное и максимальное число элементов в ней может быть?', 1531, 1533, N'SingleAnswerQuestion', NULL, 1077)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1533, N'Какова высота кучи, состоящей из 17 элементов?', 1532, 1534, N'FreeAnswerQuestion', NULL, 1077)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1534, N'Дана невозрастающая куча, в корень которой вставили новый элемент (12). Какой индекс будет у узла с этим элементом после процедуры просеивания?', 1533, 1535, N'FreeAnswerQuestion', N'images\__tests-pub__\test_1077\question1534_8962.png', 1077)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1535, N'Выберите, чем отличается обычная бинарная куча от слабой:', 1534, 1536, N'MultiAnswerQuestion', NULL, 1077)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1536, N'Выберите, чем отличается бинарная куча от декартова дерева:', 1535, 1537, N'MultiAnswerQuestion', NULL, 1077)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1537, N'Дана неубывающая куча, в корень которой вставили новый элемент (101). Какой индекс будет у узла с этим элементом после процедуры просеивания?', 1536, 1538, N'FreeAnswerQuestion', N'images\__tests-pub__\test_1077\question1537_5010.png', 1077)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1538, N'Выберите из списка основное свойство неубывающей кучи:', 1537, 1539, N'SingleAnswerQuestion', NULL, 1077)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1539, N'Выберите из списка основное свойство невозрастающей кучи:', 1538, 1540, N'MultiAnswerQuestion', NULL, 1077)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1540, N'Выберите, какое значение может принимать узел слабой неубывающей кучи, отмеченный на рисунке?', 1539, 1541, N'MultiAnswerQuestion', N'images\__tests-pub__\test_1077\question1540_7882.png', 1077)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1541, N'Выберите, какое значение может принимать узел невозрастающего декартова дерева, отмеченный на рисунке?', 1540, NULL, N'MultiAnswerQuestion', N'images\__tests-pub__\test_1077\question1541_3622.png', 1077)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1542, N'Элемент с каким индексом на рисунке нарушает основное свойство невозрастающей кучи?', NULL, 1553, N'FreeAnswerQuestion', N'images\__tests-pub__\test_1078\question1542_9129.png', 1078)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1543, N'Дана неубывающая куча, в корень которой вставили новый элемент (25). Какой индекс будет у узла с этим элементом после процедуры просеивания?', 1554, 1545, N'FreeAnswerQuestion', N'images\__tests-pub__\test_1078\question1543_2669.png', 1078)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1545, N'Для узла с каким индексом нарушено основное свойство неубывающей бинарной кучи?', 1543, 1546, N'FreeAnswerQuestion', N'images\__tests-pub__\test_1078\question1545_3562.png', 1078)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1546, N'Какова высота кучи, состоящей из 54 элементов?', 1545, 1547, N'FreeAnswerQuestion', NULL, 1078)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1547, N'Дана неубывающая куча, в корень которой вставили новый элемент (101). Какой индекс будет у узла с этим элементом после процедуры просеивания?', 1546, 1548, N'FreeAnswerQuestion', N'images\__tests-pub__\test_1078\question1547_3396.png', 1078)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1548, N'Выберите из списка основное свойство неубывающей кучи:', 1547, 1555, N'SingleAnswerQuestion', NULL, 1078)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1549, N'Выберите, какое значение может принимать узел слабой невозрастающей кучи, отмеченный на рисунке?', 1555, 1550, N'SingleAnswerQuestion', N'images\__tests-pub__\test_1078\question1549_6139.png', 1078)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1550, N'Выберите, какие значения может принимать узел неубывающего декартова дерева, отмеченный на рисунке?', 1549, NULL, N'MultiAnswerQuestion', N'images\__tests-pub__\test_1078\question1550_3739.png', 1078)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1553, N'Высота бинарной кучи равна 8. Какое минимальное и максимальное число элементов в ней может быть?', 1542, 1554, N'SingleAnswerQuestion', NULL, 1078)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1554, N'Какова высота кучи, состоящей из 88 элементов?', 1553, 1543, N'FreeAnswerQuestion', NULL, 1078)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1555, N'Выберите из списка основное свойство невозрастающей кучи:', 1548, 1549, N'MultiAnswerQuestion', NULL, 1078)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1558, N'Сколько биномиальных деревьев в куче из 45 элементов?', NULL, 1559, N'FreeAnswerQuestion', NULL, 1079)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1559, N'Сколько узлов в биномиальном дереве B5?', 1558, 1560, N'FreeAnswerQuestion', NULL, 1079)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1560, N'Сколько потомков у корня в биномиальном дереве B0?', 1559, 1561, N'FreeAnswerQuestion', NULL, 1079)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1561, N'В биномиальном лесу 25 узлов. Какая максимальная степень у дерева в этом лесу?', 1560, 1562, N'FreeAnswerQuestion', NULL, 1079)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1562, N'Сколько биномиальных деревьев в куче из 170 элементов?', 1561, 1563, N'FreeAnswerQuestion', NULL, 1079)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1563, N'Какая высота у биномиального дерева В7?', 1562, 1564, N'FreeAnswerQuestion', NULL, 1079)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1564, N'Из скольких биномиальных деревьев будет состоять куча после удаления из нее максимального элемента?', 1563, 1565, N'SingleAnswerQuestion', N'images\__tests-pub__\test_1079\question1564_8219.png', 1079)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1565, N'Сколько биномиальных деревьев будет в итоговой куче после слияния куч H1 и Н2 и какова максимальная высота дерева в этой куче?', 1564, 1566, N'SingleAnswerQuestion', N'images\__tests-pub__\test_1079\question1565_9251.png', 1079)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1566, N'Есть биномиальная куча Н. Какое количество биномиальных деревьев в ней будет после извлечения минимального элемента?', 1565, 1567, N'SingleAnswerQuestion', N'images\__tests-pub__\test_1079\question1566_3761.png', 1079)
INSERT [dbo].[PublishedTestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1567, N'Есть массив input={3,20,19,7,13,8,2,5,27}. Элементы из него поочередно добавляют в биномиальную неубывающую кучу, которая изначально была пуста. какие дочерние элементы будут у корня самого большого биномиального дерева в этой куче?', 1566, NULL, N'SingleAnswerQuestion', NULL, 1079)
INSERT [dbo].[PublishedTests] ([Id], [Name], [CreatedDate], [CreatedBy]) VALUES (62, N'Итоговый тест по деревьям поиска. Вариант 1', CAST(N'2021-11-28T17:06:37.063' AS DateTime), N'1eca0276-a31a-44c5-8633-1c1ed54c73b6')
INSERT [dbo].[PublishedTests] ([Id], [Name], [CreatedDate], [CreatedBy]) VALUES (1064, N'Итоговый тест по деревьям поиска. Вариант 2', CAST(N'2021-12-18T18:32:32.977' AS DateTime), N'1eca0276-a31a-44c5-8633-1c1ed54c73b6')
INSERT [dbo].[PublishedTests] ([Id], [Name], [CreatedDate], [CreatedBy]) VALUES (1065, N'Итоговый тест по сортировкам. Вариант 1', CAST(N'2021-12-18T14:51:44.993' AS DateTime), N'1eca0276-a31a-44c5-8633-1c1ed54c73b6')
INSERT [dbo].[PublishedTests] ([Id], [Name], [CreatedDate], [CreatedBy]) VALUES (1066, N'Итоговый тест по сортировкам. Вариант 2', CAST(N'2021-12-18T14:53:55.500' AS DateTime), N'1eca0276-a31a-44c5-8633-1c1ed54c73b6')
INSERT [dbo].[PublishedTests] ([Id], [Name], [CreatedDate], [CreatedBy]) VALUES (1076, N'Итоговый тест по биномиальной куче. Вариант 1', CAST(N'2022-05-26T13:50:16.163' AS DateTime), N'7ffdc73e-ffe0-4f76-a7cc-527af1c350a1')
INSERT [dbo].[PublishedTests] ([Id], [Name], [CreatedDate], [CreatedBy]) VALUES (1077, N'Итоговый тест по бинарной куче. Вариант 1', CAST(N'2022-05-26T13:49:52.857' AS DateTime), N'7ffdc73e-ffe0-4f76-a7cc-527af1c350a1')
INSERT [dbo].[PublishedTests] ([Id], [Name], [CreatedDate], [CreatedBy]) VALUES (1078, N'Итоговый тест по бинарной куче. Вариант 2', CAST(N'2022-05-26T13:50:44.957' AS DateTime), N'7ffdc73e-ffe0-4f76-a7cc-527af1c350a1')
INSERT [dbo].[PublishedTests] ([Id], [Name], [CreatedDate], [CreatedBy]) VALUES (1079, N'Итоговый тест по биномиальной куче. Вариант 2', CAST(N'2022-05-26T13:51:13.727' AS DateTime), N'7ffdc73e-ffe0-4f76-a7cc-527af1c350a1')
SET IDENTITY_INSERT [dbo].[TestAlgorithms] ON 

INSERT [dbo].[TestAlgorithms] ([Id], [TestId], [AlgorithmId]) VALUES (581, 62, N'binary-tree')
INSERT [dbo].[TestAlgorithms] ([Id], [TestId], [AlgorithmId]) VALUES (582, 62, N'red-black-tree')
INSERT [dbo].[TestAlgorithms] ([Id], [TestId], [AlgorithmId]) VALUES (583, 62, N'avl-tree')
INSERT [dbo].[TestAlgorithms] ([Id], [TestId], [AlgorithmId]) VALUES (1559, 1064, N'binary-tree')
INSERT [dbo].[TestAlgorithms] ([Id], [TestId], [AlgorithmId]) VALUES (1560, 1064, N'red-black-tree')
INSERT [dbo].[TestAlgorithms] ([Id], [TestId], [AlgorithmId]) VALUES (1561, 1064, N'avl-tree')
INSERT [dbo].[TestAlgorithms] ([Id], [TestId], [AlgorithmId]) VALUES (1562, 1065, N'bubble-sort')
INSERT [dbo].[TestAlgorithms] ([Id], [TestId], [AlgorithmId]) VALUES (1563, 1065, N'selection-sort')
INSERT [dbo].[TestAlgorithms] ([Id], [TestId], [AlgorithmId]) VALUES (1564, 1065, N'insertion-sort')
INSERT [dbo].[TestAlgorithms] ([Id], [TestId], [AlgorithmId]) VALUES (1565, 1065, N'quick-sort')
INSERT [dbo].[TestAlgorithms] ([Id], [TestId], [AlgorithmId]) VALUES (1566, 1065, N'merge-sort')
INSERT [dbo].[TestAlgorithms] ([Id], [TestId], [AlgorithmId]) VALUES (1567, 1066, N'bubble-sort')
INSERT [dbo].[TestAlgorithms] ([Id], [TestId], [AlgorithmId]) VALUES (1568, 1066, N'selection-sort')
INSERT [dbo].[TestAlgorithms] ([Id], [TestId], [AlgorithmId]) VALUES (1569, 1066, N'insertion-sort')
INSERT [dbo].[TestAlgorithms] ([Id], [TestId], [AlgorithmId]) VALUES (1570, 1066, N'quick-sort')
INSERT [dbo].[TestAlgorithms] ([Id], [TestId], [AlgorithmId]) VALUES (1571, 1066, N'merge-sort')
INSERT [dbo].[TestAlgorithms] ([Id], [TestId], [AlgorithmId]) VALUES (1583, 1076, N'binomial-heap')
INSERT [dbo].[TestAlgorithms] ([Id], [TestId], [AlgorithmId]) VALUES (1584, 1077, N'heaps-structure')
INSERT [dbo].[TestAlgorithms] ([Id], [TestId], [AlgorithmId]) VALUES (1585, 1078, N'heaps-structure')
INSERT [dbo].[TestAlgorithms] ([Id], [TestId], [AlgorithmId]) VALUES (1586, 1079, N'binomial-heap')
SET IDENTITY_INSERT [dbo].[TestAlgorithms] OFF
SET IDENTITY_INSERT [dbo].[TestAnswers] ON 

INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (500, N'Да', 1, NULL, 501, 473)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (501, N'Нет', 0, 500, NULL, 473)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (502, N'Да', 0, NULL, 503, 475)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (503, N'Нет', 1, 502, NULL, 475)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (504, N'4', 0, NULL, 505, 476)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (505, N'5', 1, 504, 506, 476)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (506, N'7', 1, 505, 507, 476)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (507, N'50', 1, 506, 508, 476)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (508, N'71', 0, 507, NULL, 476)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (509, N'94 44 80 84 91 93', 1, NULL, NULL, 477)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (510, N'Красный', 1, 511, NULL, 478)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (511, N'Чёрный', 0, NULL, 510, 478)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (512, N'0', 1, NULL, NULL, 479)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (513, N'Прямой обход', 0, NULL, 514, 480)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (514, N'Центрированный обход', 0, 513, 515, 480)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (515, N'Обратный обход', 0, 514, 516, 480)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (516, N'Поиск в ширину', 1, 515, NULL, 480)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (517, N'Да', 0, NULL, 518, 481)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (518, N'Нет', 1, 517, NULL, 481)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (519, N'8', 0, NULL, 520, 482)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (520, N'10', 1, 519, 521, 482)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (521, N'43', 1, 520, 522, 482)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (522, N'46', 1, 521, 523, 482)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (523, N'65', 1, 522, 524, 482)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (524, N'77', 1, 523, 525, 482)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (525, N'78', 0, 524, NULL, 482)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (526, N'511', 1, NULL, NULL, 474)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1501, N'Да', 1, NULL, 1502, 1475)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1502, N'Нет', 0, 1501, NULL, 1475)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1503, N'15', 1, NULL, NULL, 1476)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1504, N'3 20 29 31 18', 1, NULL, NULL, 1477)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1505, N'1', 1, NULL, NULL, 1478)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1506, N'25 15 11 26 29', 1, NULL, NULL, 1479)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1507, N'2', 1, NULL, NULL, 1480)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1508, N'5', 1, NULL, NULL, 1481)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1509, N'5 6 12 8 21 14', 1, NULL, NULL, 1482)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1510, N'11 12 14 28 30 1', 1, NULL, NULL, 1483)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1511, N'O(NlogN)', 1, NULL, 1512, 1484)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1512, N'O(N^2)', 0, 1511, 1513, 1484)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1513, N'O(logN)', 0, 1512, 1514, 1484)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1514, N'O(2N)', 0, 1513, NULL, 1484)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1515, N'21', 1, NULL, NULL, 1485)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1516, N'3 20 26', 1, NULL, NULL, 1486)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1517, N'28', 1, NULL, NULL, 1487)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1518, N'21', 1, NULL, NULL, 1488)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1519, N'6', 1, NULL, NULL, 1489)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1520, N'3', 1, NULL, NULL, 1490)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1521, N'2', 1, NULL, NULL, 1491)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1522, N'1 8 19 22 10 5', 1, NULL, NULL, 1492)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1523, N'11 12 14 28 30 1', 1, NULL, NULL, 1493)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1524, N'O(NlogN)', 0, NULL, 1525, 1494)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1525, N'O(2N)', 0, 1524, 1526, 1494)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1526, N'O(logN)', 0, 1525, 1527, 1494)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1527, N'O(N^2)', 1, 1526, NULL, 1494)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1528, N'2 6 9 13 19 38 14 28', 1, NULL, NULL, 1495)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1529, N'3', 0, NULL, 1530, 1474)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1530, N'5', 0, 1529, 1531, 1474)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1531, N'6', 0, 1530, 1532, 1474)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1532, N'8', 1, 1531, 1533, 1474)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1533, N'10', 0, 1532, NULL, 1474)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1534, N'4', 1, NULL, NULL, 1496)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1535, N'Да', 0, NULL, 1536, 1497)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1536, N'Нет', 1, 1535, NULL, 1497)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1537, N'Да', 0, NULL, 1538, 1498)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1538, N'Нет', 1, 1537, NULL, 1498)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1539, N'20', 1, NULL, NULL, 1499)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1540, N'1', 0, NULL, 1541, 1500)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1541, N'2', 1, 1540, 1542, 1500)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1542, N'3', 0, 1541, 1543, 1500)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1543, N'5', 0, 1542, 1544, 1500)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1544, N'7', 0, 1543, NULL, 1500)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1545, N'48 6 70 3 12', 1, NULL, NULL, 1501)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1546, N'Да', 1, NULL, 1547, 1502)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1547, N'Нет', 0, 1546, NULL, 1502)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1548, N'2', 0, NULL, 1549, 1503)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1549, N'3', 1, 1548, 1550, 1503)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1550, N'13', 0, 1549, 1551, 1503)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1551, N'14', 1, 1550, 1552, 1503)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1552, N'17', 1, 1551, 1553, 1503)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1553, N'25', 1, 1552, 1554, 1503)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1554, N'54', 1, 1553, 1555, 1503)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1555, N'99', 0, 1554, NULL, 1503)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1611, N'4', 1, NULL, NULL, 1521)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1612, N'8', 1, NULL, NULL, 1522)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1613, N'5', 1, NULL, NULL, 1523)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1614, N'4', 1, NULL, 1615, 1524)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1615, N'Ответ 2', 0, 1614, NULL, 1524)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1616, N'5', 1, NULL, NULL, 1525)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1617, N'4', 1, NULL, NULL, 1526)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1618, N'3', 1, NULL, NULL, 1527)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1619, N'1, 5', 1, NULL, 1620, 1528)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1620, N'2, 3', 0, 1619, 1621, 1528)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1621, N'2, 4', 0, 1620, 1622, 1528)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1622, N'3, 3', 0, 1621, NULL, 1528)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1623, N'4', 1, NULL, 1624, 1529)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1624, N'5', 0, 1623, 1625, 1529)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1625, N'3', 0, 1624, 1626, 1529)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1626, N'7', 0, 1625, NULL, 1529)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1627, N'17, 10, 3', 1, NULL, 1628, 1530)
GO
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1628, N'11, 18, 19', 0, 1627, 1629, 1530)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1629, N'10, 18, 2', 0, 1628, 1630, 1530)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1630, N'5, 11, 30', 0, 1629, NULL, 1530)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1631, N'127', 1, NULL, NULL, 1531)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1632, N'32, 64', 0, NULL, 1633, 1532)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1633, N'31, 63', 0, 1632, 1634, 1532)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1634, N'32, 63', 1, 1633, 1635, 1532)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1635, N'16,33', 0, 1634, NULL, 1532)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1636, N'4', 1, NULL, NULL, 1533)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1637, N'17', 1, NULL, NULL, 1534)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1638, N'У корневого узла нет левого потомка', 0, NULL, 1639, 1535)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1639, N'Индекс левого потомка (i-го узла) равен 2*i', 0, 1638, 1640, 1535)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1640, N'У корневого элемента нет правого потомка', 0, 1639, 1641, 1535)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1641, N'Индекс правого потомка (i-го узла) равен 2*i+2', 1, 1640, 1642, 1535)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1642, N'Глубина листьев может отличаться на 2, но не больше', 0, 1641, NULL, 1535)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1643, N'Декартово дерево объединяет в себе свойства кучи и бинарного дерева', 1, NULL, 1644, 1536)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1644, N'Каждый узел в куче характеризуется парой величин (х,у), в зависимости от которых определяется расположение узла', 0, 1643, 1645, 1536)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1645, N'Куча заполнена на всех уровнях кроме, возможно, последнего, а в дереве узлы могут отсутствовать на разных уровнях', 1, 1644, 1646, 1536)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1646, N'И куча, и декартово дерево обязательно будут сбалансированными', 0, 1645, 1647, 1536)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1647, N'Декартово дерево не подходит для сортировки в отличие от кучи', 0, 1646, NULL, 1536)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1648, N'10', 1, NULL, NULL, 1537)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1649, N'Приоритет родительского узла не больше приоритета дочернего', 1, NULL, 1650, 1538)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1650, N'Приоритет узла не превышает приоритет родительского по отношению к нему узла', 0, 1649, 1651, 1538)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1651, N'В корне неубывающей кучи находится элемент с самым большим приоритетом', 0, 1650, NULL, 1538)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1652, N'Приоритет родительского узла не больше приоритета дочернего', 0, NULL, 1653, 1539)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1653, N'Приоритет узла не превышает приоритет родительского по отношению к нему узла', 1, 1652, 1654, 1539)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1654, N'В корне неубывающей кучи находится элемент с максимальным значением', 1, 1653, 1655, 1539)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1655, N'В корне расположен элемент с минимальным значением', 0, 1654, NULL, 1539)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1656, N'19', 1, NULL, 1657, 1540)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1657, N'37', 1, 1656, 1658, 1540)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1658, N'1', 1, 1657, 1659, 1540)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1659, N'43', 1, 1658, 1660, 1540)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1660, N'18', 1, 1659, 1661, 1540)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1661, N'7', 1, 1660, NULL, 1540)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1662, N'11', 0, NULL, 1663, 1541)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1663, N'19', 1, 1662, 1664, 1541)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1664, N'22', 1, 1663, 1665, 1541)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1665, N'26', 0, 1664, 1666, 1541)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1666, N'9', 0, 1665, 1667, 1541)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1667, N'3', 0, 1666, NULL, 1541)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1668, N'10', 1, NULL, NULL, 1542)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1669, N'256, 511', 1, NULL, 1670, 1553)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1670, N'128, 254', 0, 1669, 1671, 1553)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1671, N'255, 512', 0, 1670, 1672, 1553)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1672, N'127, 255', 0, 1671, NULL, 1553)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1673, N'6', 1, NULL, NULL, 1554)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1674, N'5', 1, NULL, NULL, 1543)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1675, N'11', 1, NULL, NULL, 1545)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1676, N'5', 1, NULL, NULL, 1546)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1677, N'10', 1, NULL, NULL, 1547)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1678, N'Приоритет родительского узла не больше приоритета дочернего ', 1, NULL, 1679, 1548)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1679, N'Приоритет узла не превышает приоритет родительского по отношению к нему узла', 0, 1678, 1680, 1548)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1680, N'В корне неубывающей кучи находится элемент с самым большим приоритетом', 0, 1679, NULL, 1548)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1681, N'Приоритет родительского узла не больше приоритета дочернего ', 0, NULL, 1682, 1555)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1682, N'Приоритет узла не превышает приоритет родительского по отношению к нему узла', 1, 1681, 1683, 1555)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1683, N'В корне неубывающей кучи находится элемент с максимальным значением', 1, 1682, 1684, 1555)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1684, N'В корне расположен элемент с минимальным значением', 0, 1683, NULL, 1555)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1685, N'53', 0, NULL, 1686, 1549)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1686, N'12', 0, 1685, 1687, 1549)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1687, N'28', 0, 1686, 1688, 1549)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1688, N'17', 0, 1687, 1689, 1549)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1689, N'9', 1, 1688, NULL, 1549)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1690, N'2', 0, NULL, 1691, 1550)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1691, N'10', 1, 1690, 1692, 1550)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1692, N'7', 1, 1691, 1693, 1550)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1693, N'26', 0, 1692, 1694, 1550)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1694, N'15', 0, 1693, 1695, 1550)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1695, N'21', 0, 1694, NULL, 1550)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1696, N'4', 1, NULL, NULL, 1558)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1697, N'32', 1, NULL, NULL, 1559)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1698, N'0', 1, NULL, NULL, 1560)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1699, N'4', 1, NULL, NULL, 1561)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1700, N'4', 1, NULL, NULL, 1562)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1701, N'7', 1, NULL, NULL, 1563)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1702, N'2', 1, NULL, 1703, 1564)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1703, N'1', 0, 1702, 1704, 1564)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1704, N'3', 0, 1703, NULL, 1564)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1705, N'2, 5', 1, NULL, 1706, 1565)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1706, N'4, 3', 0, 1705, 1707, 1565)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1707, N'1, 6', 0, 1706, 1708, 1565)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1708, N'4, 4', 0, 1707, NULL, 1565)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1709, N'2', 0, NULL, 1710, 1566)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1710, N'3', 1, 1709, 1711, 1566)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1711, N'4', 0, 1710, NULL, 1566)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1712, N'3, 8, 5', 1, NULL, 1713, 1567)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1713, N'20, 13, 19', 0, 1712, 1714, 1567)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1714, N'2, 3, 5', 0, 1713, 1715, 1567)
INSERT [dbo].[TestAnswers] ([Id], [Value], [IsCorrect], [PreviousAnswerId], [NextAnswerId], [QuestionId]) VALUES (1715, N'2, 5, 27', 0, 1714, NULL, 1567)
SET IDENTITY_INSERT [dbo].[TestAnswers] OFF
SET IDENTITY_INSERT [dbo].[TestQuestions] ON 

INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (473, N'Является ли данное дерево сбалансированным?', 478, 474, N'SingleAnswerQuestion', N'images\__tests__\test_62\question473_7846.png', 62)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (474, N'Какое максимальное количество узлов может содержать AVL-дерево, имеющее высоту 8?
', 473, 475, N'FreeAnswerQuestion', NULL, 62)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (475, N'Верно ли следующее утверждение: в красно-чёрном дереве узлы-листья могут иметь как чёрный, так и красный цвет?
', 474, 476, N'SingleAnswerQuestion', NULL, 62)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (476, N'Укажите все узлы данного дерева, которые являются листьями.', 475, 477, N'MultiAnswerQuestion', N'images\__tests__\test_62\question476_7188.png', 62)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (477, N'Какой путь необходимо преодолеть для того, чтобы найти узел с номером 93? Введите последовательность вершин (включая корень дерева и искомый узел), разделяя их пробелом.', 476, 479, N'FreeAnswerQuestion', N'images\__tests__\test_62\question477_9166.png', 62)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (478, N'Какой цвет примет узел с ключом 68 после вставки в данное дерево узла с ключом 55?
', NULL, 473, N'SingleAnswerQuestion', N'images\__tests__\test_62\question478_4662.png', 62)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (479, N'Какой коэффициент сбалансированности имеет вершина с ключом 30? Введите ответ по модулю. Примечание: данное дерево не обязательно является сбалансированным.', 477, 480, N'FreeAnswerQuestion', N'images\__tests__\test_62\question479_4641.png', 62)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (480, N'В результате обхода данного дерева была получена cледующая последовательность ключей: [72, 30, 89, 25, 43,
78, 47, 71, 60]. Какой вид обхода дерева был использован?
', 479, 481, N'SingleAnswerQuestion', N'images\__tests__\test_62\question480_5951.png', 62)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (481, N'Является ли данное дерево сбалансированным?', 480, 482, N'SingleAnswerQuestion', N'images\__tests__\test_62\question481_5776.png', 62)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (482, N'Укажите все внутренние узлы данного дерева.', 481, NULL, N'MultiAnswerQuestion', N'images\__tests__\test_62\question482_6716.png', 62)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1474, N'В изначально пустое красно-чёрное дерево последовательно добавляются ключи [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]. Сколько чёрных узлов в получившемся дереве?', NULL, 1475, N'SingleAnswerQuestion', NULL, 1064)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1475, N'Является ли данное дерево бинарным?', 1474, 1496, N'SingleAnswerQuestion', N'images\__tests__\test_1064\question1475_6531.png', 1064)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1476, N'Сколько сравнений требуется для сортировки массива, изображенного на картинке, с использованием
сортировки выбором?
', NULL, 1477, N'FreeAnswerQuestion', N'images\__tests__\test_1065\question1476_1513.png', 1065)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1477, N'Введите последовательность целых чисел, разделяя их пробелом, представляющих содержимое массива, изображенного на картинке, после 3 проходов сортировки вставками.', 1476, 1478, N'FreeAnswerQuestion', N'images\__tests__\test_1065\question1477_7002.png', 1065)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1478, N'Сколько обменов требуется для сортировки массива, изображенного на картинке, с использованием сортировки пузырьком?', 1477, 1479, N'FreeAnswerQuestion', N'images\__tests__\test_1065\question1478_4511.png', 1065)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1479, N'Введите последовательность целых чисел, разделяя их пробелом, представляющих содержимое массива,
изображенного на картинке, после 2 проходов сортировки пузырьком.', 1478, 1480, N'FreeAnswerQuestion', N'images\__tests__\test_1065\question1479_9403.png', 1065)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1480, N'Сколько обменов требуется для сортировки массива, изображенного на картинке, с использованием сортировки пузырьком?', 1479, 1481, N'FreeAnswerQuestion', N'images\__tests__\test_1065\question1480_6951.png', 1065)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1481, N'Массив из 5 целых чисел сортируется в порядке возрастания с использованием быстрой сортировки.
Предположим, что алгоритм только что завершил первый проход разбиения и обмена, таким образом изменив содержимое исходного массива на следующий массив,
изображенный на картинке.
Из приведенного на картинке массива
определите, сколько элементов могло
бы быть опорным элементом?', 1480, 1482, N'FreeAnswerQuestion', N'images\__tests__\test_1065\question1481_4184.png', 1065)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1482, N'Введите последовательность целых чисел, разделяя их пробелом, представляющих содержимое массива, изображенного на картинке, после 2 проходов сортировки выбором.', 1481, 1483, N'FreeAnswerQuestion', N'images\__tests__\test_1065\question1482_7994.png', 1065)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1483, N'Введите последовательность целых чисел, разделяя их пробелом, представляющих содержимое массива, изображенного на картинке, после 4 проходов сортировки вставками.', 1482, 1484, N'FreeAnswerQuestion', N'images\__tests__\test_1065\question1483_5155.png', 1065)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1484, N'Эффективность метода сортировки слиянием выражается зависимостью', 1483, 1485, N'SingleAnswerQuestion', NULL, 1065)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1485, N'Сколько сравнений требуется для сортировки массива, изображенного на картинке, с использованием сортировки пузырьком?', 1484, NULL, N'FreeAnswerQuestion', N'images\__tests__\test_1065\question1485_8721.png', 1065)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1486, N'Введите последовательность целых чисел, разделяя их пробелом, представляющих содержимое массива, изображенного на картинке, после 2 проходов сортировки
пузырьком.', NULL, 1487, N'FreeAnswerQuestion', N'images\__tests__\test_1066\question1486_8377.png', 1066)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1487, N'Сколько сравнений требуется для сортировки массива, изображенного на картинке, с использованием сортировки пузырьком?', 1486, 1488, N'FreeAnswerQuestion', N'images\__tests__\test_1066\question1487_3071.png', 1066)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1488, N'Сколько сравнений требуется для сортировки массива, изображенного на картинке, с использованием сортировки выбором?', 1487, 1489, N'FreeAnswerQuestion', N'images\__tests__\test_1066\question1488_1940.png', 1066)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1489, N'Массив из 6 целых чисел сортируется в порядке возрастания с использованием быстрой сортировки.
Предположим, что алгоритм только что завершил первый проход разбиения и свопинга, таким образом изменив содержимое исходного массива на следующий массив, изображенный на картинке.
Из приведенного на картинке массива определите, сколько
элементов могли бы быть опорными?
', 1488, 1490, N'FreeAnswerQuestion', N'images\__tests__\test_1066\question1489_1527.png', 1066)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1490, N'Сколько обменов требуется для сортировки массива, изображенного на картинке, с использованием сортировки пузырьком?', 1489, 1491, N'FreeAnswerQuestion', N'images\__tests__\test_1066\question1490_3285.png', 1066)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1491, N'Сколько сравнений необходимо для сортировки массива,
изображенного на картинке, с использованием сортировки
выбором?', 1490, 1492, N'FreeAnswerQuestion', N'images\__tests__\test_1066\question1491_9104.png', 1066)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1492, N'Введите последовательность целых чисел, разделяя их пробелом, представляющих содержимое массива, изображенного на картинке, после 3 проходов сортировки вставками.', 1491, 1493, N'FreeAnswerQuestion', N'images\__tests__\test_1066\question1492_7268.png', 1066)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1493, N'Введите последовательность целых чисел, разделяя их пробелом, представляющих содержимое массива, 
изображенного на картинке, после 2 проходов сортировки
выбором.', 1492, 1494, N'FreeAnswerQuestion', N'images\__tests__\test_1066\question1493_791.png', 1066)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1494, N'Эффективность метода быстрой сортировки в худшем случае выражается зависимостью
', 1493, 1495, N'SingleAnswerQuestion', NULL, 1066)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1495, N'Введите последовательность целых чисел, разделяя их пробелом, представляющих содержимое массива, изображенного на картинке, после 4 проходов сортировки выбором', 1494, NULL, N'FreeAnswerQuestion', N'images\__tests__\test_1066\question1495_7047.png', 1066)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1496, N'Укажите минимальный элемент данного бинарного дерева.', 1475, 1497, N'FreeAnswerQuestion', N'images\__tests__\test_1064\question1496_1417.png', 1064)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1497, N'Верно ли следующее утверждение: максимальный элемент бинарного дерева может иметь правый дочерний элемент?', 1496, 1498, N'SingleAnswerQuestion', NULL, 1064)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1498, N'Будет ли осуществлена одна из операций вращения после удаления из данного AVL-дерева узла с ключом 46?', 1497, 1499, N'SingleAnswerQuestion', N'images\__tests__\test_1064\question1498_2398.png', 1064)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1499, N'Какое минимальное количество узлов может содержать AVL-дерево, имеющее высоту 5? ', 1498, 1500, N'FreeAnswerQuestion', NULL, 1064)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1500, N'Чему равняется чёрная высота данного дерева?
', 1499, 1501, N'SingleAnswerQuestion', N'images\__tests__\test_1064\question1500_2439.png', 1064)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1501, N'Из данного AVL-дерева последовательно удаляются вершины 69 и 30. Далее совершается поуровневый обход
дерева (поиск в ширину). Введите первые пять узлов
последовательности, получающейся в результате обхода, разделяя узлы пробелом.', 1500, 1502, N'FreeAnswerQuestion', N'images\__tests__\test_1064\question1501_3521.png', 1064)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1502, N'Является ли допустимым подобное размещение узлов в бинарном дереве?
', 1501, 1503, N'SingleAnswerQuestion', N'images\__tests__\test_1064\question1502_8303.png', 1064)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1503, N'Укажите все узлы данного дерева, которые являются листьями.', 1502, NULL, N'MultiAnswerQuestion', N'images\__tests__\test_1064\question1503_2961.png', 1064)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1521, N'Сколько биномиальных деревьев в куче из 23 элементов?', NULL, 1522, N'FreeAnswerQuestion', NULL, 1076)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1522, N'Сколько узлов в биномиальном дереве B3?', 1521, 1523, N'FreeAnswerQuestion', NULL, 1076)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1523, N'Сколько потомков у корня в биномиальном дереве B5?', 1522, 1524, N'FreeAnswerQuestion', NULL, 1076)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1524, N'В биномиальном лесу 18 узлов. Какая максимальная степень у дерева в этом лесу?', 1523, 1525, N'FreeAnswerQuestion', NULL, 1076)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1525, N'Сколько биномиальных деревьев в куче из 123 элементов? ', 1524, 1526, N'FreeAnswerQuestion', NULL, 1076)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1526, N'Какая высота у биномиального дерева В4?', 1525, 1527, N'FreeAnswerQuestion', NULL, 1076)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1527, N'Из скольких биномиальных деревьев будет состоять куча после удаления из нее минимального элемента?', 1526, 1528, N'FreeAnswerQuestion', N'images\__tests__\test_1076\question1527_8957.png', 1076)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1528, N'Сколько биномиальных деревьев будет в итоговой куче после слияния куч H1 и Н2 и какова максимальная высота дерева в этой куче?', 1527, 1529, N'SingleAnswerQuestion', N'images\__tests__\test_1076\question1528_9871.png', 1076)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1529, N'Есть биномиальная куча Н. Какое количество биномиальных деревьев в ней будет после извлечения минимального элемента?', 1528, 1530, N'SingleAnswerQuestion', N'images\__tests__\test_1076\question1529_3155.png', 1076)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1530, N'Есть массив input={10,9,3,18,5,17,11,2,19,30}. Элементы из него поочередно добавляют в биномиальную невозрастающую кучу, которая изначально была пуста. какие дочерние элементы будут у корня самого большого биномиального дерева в этой куче?', 1529, NULL, N'SingleAnswerQuestion', NULL, 1076)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1531, N'Сколько листьев в куче из 253 элементов?', NULL, 1532, N'FreeAnswerQuestion', NULL, 1077)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1532, N'Высота кучи равна 6. Какое минимальное и максимальное число элементов в ней может быть?', 1531, 1533, N'SingleAnswerQuestion', NULL, 1077)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1533, N'Какова высота кучи, состоящей из 17 элементов?', 1532, 1534, N'FreeAnswerQuestion', NULL, 1077)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1534, N'Дана невозрастающая куча, в корень которой вставили новый элемент (12). Какой индекс будет у узла с этим элементом после процедуры просеивания?', 1533, 1535, N'FreeAnswerQuestion', N'images\__tests__\test_1077\question1534_8962.png', 1077)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1535, N'Выберите, чем отличается обычная бинарная куча от слабой:', 1534, 1536, N'MultiAnswerQuestion', NULL, 1077)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1536, N'Выберите, чем отличается бинарная куча от декартова дерева:', 1535, 1537, N'MultiAnswerQuestion', NULL, 1077)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1537, N'Дана неубывающая куча, в корень которой вставили новый элемент (101). Какой индекс будет у узла с этим элементом после процедуры просеивания?', 1536, 1538, N'FreeAnswerQuestion', N'images\__tests__\test_1077\question1537_5010.png', 1077)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1538, N'Выберите из списка основное свойство неубывающей кучи:', 1537, 1539, N'SingleAnswerQuestion', NULL, 1077)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1539, N'Выберите из списка основное свойство невозрастающей кучи:', 1538, 1540, N'MultiAnswerQuestion', NULL, 1077)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1540, N'Выберите, какое значение может принимать узел слабой неубывающей кучи, отмеченный на рисунке?', 1539, 1541, N'MultiAnswerQuestion', N'images\__tests__\test_1077\question1540_7882.png', 1077)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1541, N'Выберите, какое значение может принимать узел невозрастающего декартова дерева, отмеченный на рисунке?', 1540, NULL, N'MultiAnswerQuestion', N'images\__tests__\test_1077\question1541_3622.png', 1077)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1542, N'Элемент с каким индексом на рисунке нарушает основное свойство невозрастающей кучи?', NULL, 1553, N'FreeAnswerQuestion', N'images\__tests__\test_1078\question1542_9129.png', 1078)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1543, N'Дана неубывающая куча, в корень которой вставили новый элемент (25). Какой индекс будет у узла с этим элементом после процедуры просеивания?', 1554, 1545, N'FreeAnswerQuestion', N'images\__tests__\test_1078\question1543_2669.png', 1078)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1545, N'Для узла с каким индексом нарушено основное свойство неубывающей бинарной кучи?', 1543, 1546, N'FreeAnswerQuestion', N'images\__tests__\test_1078\question1545_3562.png', 1078)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1546, N'Какова высота кучи, состоящей из 54 элементов?', 1545, 1547, N'FreeAnswerQuestion', NULL, 1078)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1547, N'Дана неубывающая куча, в корень которой вставили новый элемент (101). Какой индекс будет у узла с этим элементом после процедуры просеивания?', 1546, 1548, N'FreeAnswerQuestion', N'images\__tests__\test_1078\question1547_3396.png', 1078)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1548, N'Выберите из списка основное свойство неубывающей кучи:', 1547, 1555, N'SingleAnswerQuestion', NULL, 1078)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1549, N'Выберите, какое значение может принимать узел слабой невозрастающей кучи, отмеченный на рисунке?', 1555, 1550, N'SingleAnswerQuestion', N'images\__tests__\test_1078\question1549_6139.png', 1078)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1550, N'Выберите, какие значения может принимать узел неубывающего декартова дерева, отмеченный на рисунке?', 1549, NULL, N'MultiAnswerQuestion', N'images\__tests__\test_1078\question1550_3739.png', 1078)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1553, N'Высота бинарной кучи равна 8. Какое минимальное и максимальное число элементов в ней может быть?', 1542, 1554, N'SingleAnswerQuestion', NULL, 1078)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1554, N'Какова высота кучи, состоящей из 88 элементов?', 1553, 1543, N'FreeAnswerQuestion', NULL, 1078)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1555, N'Выберите из списка основное свойство невозрастающей кучи:', 1548, 1549, N'MultiAnswerQuestion', NULL, 1078)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1558, N'Сколько биномиальных деревьев в куче из 45 элементов?', NULL, 1559, N'FreeAnswerQuestion', NULL, 1079)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1559, N'Сколько узлов в биномиальном дереве B5?', 1558, 1560, N'FreeAnswerQuestion', NULL, 1079)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1560, N'Сколько потомков у корня в биномиальном дереве B0?', 1559, 1561, N'FreeAnswerQuestion', NULL, 1079)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1561, N'В биномиальном лесу 25 узлов. Какая максимальная степень у дерева в этом лесу?', 1560, 1562, N'FreeAnswerQuestion', NULL, 1079)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1562, N'Сколько биномиальных деревьев в куче из 170 элементов?', 1561, 1563, N'FreeAnswerQuestion', NULL, 1079)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1563, N'Какая высота у биномиального дерева В7?', 1562, 1564, N'FreeAnswerQuestion', NULL, 1079)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1564, N'Из скольких биномиальных деревьев будет состоять куча после удаления из нее максимального элемента?', 1563, 1565, N'SingleAnswerQuestion', N'images\__tests__\test_1079\question1564_8219.png', 1079)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1565, N'Сколько биномиальных деревьев будет в итоговой куче после слияния куч H1 и Н2 и какова максимальная высота дерева в этой куче?', 1564, 1566, N'SingleAnswerQuestion', N'images\__tests__\test_1079\question1565_9251.png', 1079)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1566, N'Есть биномиальная куча Н. Какое количество биномиальных деревьев в ней будет после извлечения минимального элемента?', 1565, 1567, N'SingleAnswerQuestion', N'images\__tests__\test_1079\question1566_3761.png', 1079)
INSERT [dbo].[TestQuestions] ([Id], [Value], [PreviousQuestionId], [NextQuestionId], [Type], [Image], [TestId]) VALUES (1567, N'Есть массив input={3,20,19,7,13,8,2,5,27}. Элементы из него поочередно добавляют в биномиальную неубывающую кучу, которая изначально была пуста. какие дочерние элементы будут у корня самого большого биномиального дерева в этой куче?', 1566, NULL, N'SingleAnswerQuestion', NULL, 1079)
SET IDENTITY_INSERT [dbo].[TestQuestions] OFF
SET IDENTITY_INSERT [dbo].[Tests] ON 

INSERT [dbo].[Tests] ([Id], [Name], [IsPublished], [CreatedDate], [CreatedBy], [UpdatedDate]) VALUES (62, N'Итоговый тест по деревьям поиска. Вариант 1', 1, CAST(N'2021-11-28T16:24:05.820' AS DateTime), N'1eca0276-a31a-44c5-8633-1c1ed54c73b6', CAST(N'2021-11-28T17:06:40.460' AS DateTime))
INSERT [dbo].[Tests] ([Id], [Name], [IsPublished], [CreatedDate], [CreatedBy], [UpdatedDate]) VALUES (1064, N'Итоговый тест по деревьям поиска. Вариант 2', 1, CAST(N'2021-12-16T20:09:31.287' AS DateTime), N'1eca0276-a31a-44c5-8633-1c1ed54c73b6', CAST(N'2021-12-18T18:32:37.320' AS DateTime))
INSERT [dbo].[Tests] ([Id], [Name], [IsPublished], [CreatedDate], [CreatedBy], [UpdatedDate]) VALUES (1065, N'Итоговый тест по сортировкам. Вариант 1', 1, CAST(N'2021-12-18T12:58:15.653' AS DateTime), N'1eca0276-a31a-44c5-8633-1c1ed54c73b6', CAST(N'2021-12-18T14:51:49.517' AS DateTime))
INSERT [dbo].[Tests] ([Id], [Name], [IsPublished], [CreatedDate], [CreatedBy], [UpdatedDate]) VALUES (1066, N'Итоговый тест по сортировкам. Вариант 2', 1, CAST(N'2021-12-18T13:11:46.050' AS DateTime), N'1eca0276-a31a-44c5-8633-1c1ed54c73b6', CAST(N'2021-12-18T14:54:00.023' AS DateTime))
INSERT [dbo].[Tests] ([Id], [Name], [IsPublished], [CreatedDate], [CreatedBy], [UpdatedDate]) VALUES (1076, N'Итоговый тест по биномиальной куче. Вариант 1', 1, CAST(N'2022-05-25T17:54:10.960' AS DateTime), N'7ffdc73e-ffe0-4f76-a7cc-527af1c350a1', CAST(N'2022-05-26T13:50:19.370' AS DateTime))
INSERT [dbo].[Tests] ([Id], [Name], [IsPublished], [CreatedDate], [CreatedBy], [UpdatedDate]) VALUES (1077, N'Итоговый тест по бинарной куче. Вариант 1', 1, CAST(N'2022-05-25T18:00:49.133' AS DateTime), N'7ffdc73e-ffe0-4f76-a7cc-527af1c350a1', CAST(N'2022-05-26T13:49:56.800' AS DateTime))
INSERT [dbo].[Tests] ([Id], [Name], [IsPublished], [CreatedDate], [CreatedBy], [UpdatedDate]) VALUES (1078, N'Итоговый тест по бинарной куче. Вариант 2', 1, CAST(N'2022-05-25T18:11:27.140' AS DateTime), N'7ffdc73e-ffe0-4f76-a7cc-527af1c350a1', CAST(N'2022-05-26T13:50:49.187' AS DateTime))
INSERT [dbo].[Tests] ([Id], [Name], [IsPublished], [CreatedDate], [CreatedBy], [UpdatedDate]) VALUES (1079, N'Итоговый тест по биномиальной куче. Вариант 2', 1, CAST(N'2022-05-25T18:21:17.047' AS DateTime), N'7ffdc73e-ffe0-4f76-a7cc-527af1c350a1', CAST(N'2022-05-26T13:51:16.940' AS DateTime))
SET IDENTITY_INSERT [dbo].[Tests] OFF
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Groups] ADD  DEFAULT ((0)) FOR [IsAvailableForRegister]
GO
ALTER TABLE [dbo].[Algorithms]  WITH CHECK ADD FOREIGN KEY([TimeComplexityId])
REFERENCES [dbo].[AlgorithmTimeComplexities] ([Id])
GO
ALTER TABLE [dbo].[Algorithms]  WITH CHECK ADD FOREIGN KEY([TimeComplexityId])
REFERENCES [dbo].[AlgorithmTimeComplexities] ([Id])
GO
ALTER TABLE [dbo].[Algorithms]  WITH CHECK ADD FOREIGN KEY([TimeComplexityId])
REFERENCES [dbo].[AlgorithmTimeComplexities] ([Id])
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
ALTER TABLE [dbo].[AspNetUsers]  WITH NOCHECK ADD FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([Id])
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH NOCHECK ADD FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([Id])
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH NOCHECK ADD FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[PublishedTestAnswers]  WITH CHECK ADD FOREIGN KEY([QuestionId])
REFERENCES [dbo].[PublishedTestQuestions] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PublishedTestQuestions]  WITH CHECK ADD FOREIGN KEY([TestId])
REFERENCES [dbo].[PublishedTests] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PublishedTests]  WITH CHECK ADD FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PublishedTests]  WITH CHECK ADD FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PublishedTests]  WITH CHECK ADD FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[TestAlgorithms]  WITH CHECK ADD FOREIGN KEY([AlgorithmId])
REFERENCES [dbo].[Algorithms] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TestAlgorithms]  WITH CHECK ADD FOREIGN KEY([TestId])
REFERENCES [dbo].[Tests] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TestAnswers]  WITH CHECK ADD FOREIGN KEY([QuestionId])
REFERENCES [dbo].[TestQuestions] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TestQuestions]  WITH CHECK ADD FOREIGN KEY([TestId])
REFERENCES [dbo].[Tests] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tests]  WITH CHECK ADD FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Tests]  WITH CHECK ADD FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Tests]  WITH CHECK ADD FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UserAnswers]  WITH NOCHECK ADD FOREIGN KEY([QuestionId])
REFERENCES [dbo].[PublishedTestQuestions] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserAnswers]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserTestResults]  WITH CHECK ADD FOREIGN KEY([TestId])
REFERENCES [dbo].[PublishedTests] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserTestResults]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
USE [master]
GO
ALTER DATABASE [algorithmixdb] SET  READ_WRITE 
GO
