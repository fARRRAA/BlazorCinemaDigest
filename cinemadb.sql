USE [blazordb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 03.07.2025 23:15:41 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 03.07.2025 23:15:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[author] [nvarchar](max) NULL,
	[genre] [nvarchar](max) NULL,
	[title] [nvarchar](max) NULL,
	[about] [nvarchar](max) NULL,
	[year] [date] NULL,
	[photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Events]    Script Date: 03.07.2025 23:15:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[type] [nvarchar](max) NULL,
	[date] [date] NULL,
	[city] [nvarchar](100) NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genres]    Script Date: 03.07.2025 23:15:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genres](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Genres] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieChatMessages]    Script Date: 03.07.2025 23:15:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieChatMessages](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[chatId] [int] NULL,
	[userId] [int] NULL,
	[message] [nvarchar](999) NULL,
	[sent_at] [datetime] NULL,
	[photoUrl] [nvarchar](300) NULL,
 CONSTRAINT [PK_MovieChatMessages] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieChats]    Script Date: 03.07.2025 23:15:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieChats](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[movieId] [int] NOT NULL,
	[created_at] [datetime] NULL,
 CONSTRAINT [PK_MovieChats] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 03.07.2025 23:15:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[genreId] [int] NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[rating] [decimal](18, 2) NOT NULL,
	[image] [nvarchar](max) NOT NULL,
	[duration] [time](7) NOT NULL,
	[releaseYear] [int] NOT NULL,
	[DurationString] [nvarchar](max) NULL,
 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Peoples]    Script Date: 03.07.2025 23:15:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peoples](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[desc] [nvarchar](50) NULL,
 CONSTRAINT [PK_peoples] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rent]    Script Date: 03.07.2025 23:15:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rent](
	[id] [int] NOT NULL,
	[rentalStart] [datetime] NULL,
	[rentalTime] [int] NULL,
	[userId] [int] NULL,
	[bookId] [int] NULL,
	[rentalEnd] [datetime] NULL,
	[status] [nvarchar](max) NULL,
 CONSTRAINT [PK_Rent] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 03.07.2025 23:15:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UnityUsers]    Script Date: 03.07.2025 23:15:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnityUsers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NULL,
	[email] [nvarchar](100) NULL,
	[login] [nvarchar](200) NULL,
	[password] [nvarchar](200) NULL,
	[coins] [real] NULL,
	[roleId] [int] NULL,
	[stars] [real] NULL,
	[currentLevel] [int] NULL,
 CONSTRAINT [PK_UnityUsers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserChatMessages]    Script Date: 03.07.2025 23:15:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserChatMessages](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[chatId] [int] NULL,
	[userId] [int] NULL,
	[message] [nvarchar](999) NULL,
	[sent_at] [datetime] NULL,
	[photoUrl] [nvarchar](300) NULL,
 CONSTRAINT [PK_UserChatMessages] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserChats]    Script Date: 03.07.2025 23:15:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserChats](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstUserId] [int] NULL,
	[secondUserId] [int] NULL,
	[created_at] [datetime] NULL,
 CONSTRAINT [PK_UserChats] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 03.07.2025 23:15:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[login] [nvarchar](max) NOT NULL,
	[password] [nvarchar](max) NOT NULL,
	[roleId] [int] NOT NULL,
	[email] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250113182020_frst', N'9.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250113182806_frst1', N'9.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250113182915_frst2', N'9.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250113183054_frst3', N'9.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250203172125_movie', N'9.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250203172515_gernes', N'9.0.0')
GO
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (1, N'Лев Толстой', N'Роман', N'Война и pepsi', N'Эпическое произведение о войне и любви', CAST(N'1869-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (2, N'Фёдор Достоевский', N'Роман', N'Преступление и наказание', N'История Раскольникова', CAST(N'1866-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (3, N'Чарльз Диккенс', N'Роман', N'Повесть о двух городах', N'История Французской революции', CAST(N'1859-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (4, N'Уильям Шекспир', N'Трагедия', N'Гамлет', N'История мести принца Дании', CAST(N'1600-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (5, N'Джейн Остин', N'Роман', N'Гордость и предубеждение', N'История любви Элизабет и Дарси', CAST(N'1813-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (6, N'Агата Кристи', N'Детектив', N'Убийство в Восточном экспрессе', N'Загадочное убийство на поезде', CAST(N'1934-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (7, N'Стивен Кинг', N'Ужасы', N'Оно', N'История про существо из канализации', CAST(N'1986-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (8, N'Дж.К. Роулинг', N'Фэнтези', N'Гарри Поттер и философский камень', N'Начало приключений Гарри', CAST(N'1997-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (9, N'Марк Твен', N'Приключения', N'Приключения Тома Сойера', N'История мальчика из провинциального городка', CAST(N'1876-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (10, N'Эрnest Хемингуэй', N'Роман', N'Старик и море', N'История рыбака и марлина', CAST(N'1952-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (11, N'Оскар Уайльд', N'Роман', N'Портрет Дориана Грея', N'История о вечной молодости', CAST(N'1890-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (12, N'Борис Пастернак', N'Роман', N'Доктор Живаго', N'История врача в революционной России', CAST(N'1957-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (13, N'Александр Пушкин', N'Поэма', N'Евгений Онегин', N'Первый русский роман в стихах', CAST(N'1833-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (14, N'Николай Гоголь', N'Роман', N'Мертвые души', N'История Чичикова', CAST(N'1842-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (15, N'Иван Тургенев', N'Роман', N'Отцы и дети', N'Конфликт поколений', CAST(N'1862-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (16, N'Михаил Булгаков', N'Роман', N'Мастер и Маргарита', N'История о встрече с дьяволом', CAST(N'1967-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (17, N'Виктор Гюго', N'Роман', N'Собор Парижской Богоматери', N'История Квазимодо', CAST(N'1831-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (18, N'Джордж Оруэлл', N'Антиутопия', N'1984', N'История тоталитарного государства', CAST(N'1949-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (19, N'Альберт Камю', N'Роман', N'Чума', N'История карантина в городе', CAST(N'1947-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (20, N'Роберт Льюис Стивенсон', N'Приключения', N'Остров сокровищ', N'История о поиске клада', CAST(N'1883-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (21, N'Артур Конан Дойл', N'Детектив', N'Полное собрание рассказов о Шерлоке Холмсе', N'Приключения великого сыщика', CAST(N'1892-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (22, N'Джон Рональд Толкин', N'Фэнтези', N'Властелин колец', N'История о кольце власти', CAST(N'1954-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (23, N'Герман Мелвилл', N'Роман', N'Моби Дик', N'История о белом ките', CAST(N'1851-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (24, N'Франц Кафка', N'Роман', N'Превращение', N'История человека, ставшего насекомым', CAST(N'1915-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (25, N'Маркес Габриэль', N'Роман', N'Сто лет одиночества', N'История семьи Буэндиа', CAST(N'1967-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (26, N'Антон Чехов', N'Пьеса', N'Чайка', N'История любви и творчества', CAST(N'1896-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (27, N'Маяковский Владимир', N'Поэзия', N'Облако в штанах', N'Революционная поэма', CAST(N'1915-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (28, N'Александр Сергеевич Грибоедов', N'Комедия', N'Горе от ума', N'Конфликт между Чацким и обществом', CAST(N'1825-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (29, N'Рэй Брэдбери', N'Научная фантастика', N'451 градус по Фаренгейту', N'История о запрещении книг', CAST(N'1953-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (30, N'Франсуа Рабле', N'Сатира', N'Гаргантюа и Пантагрюэль', N'История великанов', CAST(N'1532-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (31, N'Анри Пуаро', N'Детектив', N'Десять негритят', N'Загадочное убийство на острове', CAST(N'1939-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (32, N'Марк Леви', N'Роман', N'Если это destiné...', N'История любви через время', CAST(N'2010-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (33, N'Даниэль Дефо', N'Приключения', N'Робинзон Крузо', N'История выживания на необитаемом острове', CAST(N'1719-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (34, N'Харпер Ли', N'Роман', N'Убить пересмешника', N'История борьбы за справедливость', CAST(N'1960-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (35, N'Дуглас Адамс', N'Научная фантастика', N'Автостопом по галактике', N'Юмористическое путешествие по вселенной', CAST(N'1979-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (36, N'Марина Цветаева', N'Поэзия', N'Стихотворения и поэмы', N'Лирические произведения', CAST(N'1922-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (37, N'Сомерсет Моэм', N'Роман', N'Луна и шестипенсовик', N'История художника', CAST(N'1919-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (38, N'Анна Ахматова', N'Поэзия', N'Реквием', N'Поэма о сталинских репрессиях', CAST(N'1963-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (39, N'Роберт Фрост', N'Поэзия', N'Дорога не_taken', N'Стихотворение о выборе пути', CAST(N'1916-01-01' AS Date), N'https://...')
INSERT [dbo].[Books] ([id], [author], [genre], [title], [about], [year], [photo]) VALUES (40, N'Мартин Лютер Кинг', N'Эссе', N'У меня есть мечта', N'Выступление за гражданские права', CAST(N'1963-01-01' AS Date), N'https://...')
SET IDENTITY_INSERT [dbo].[Books] OFF
GO
SET IDENTITY_INSERT [dbo].[Events] ON 

INSERT [dbo].[Events] ([id], [name], [type], [date], [city]) VALUES (12, N'Конференция по ИИ', N'Научная', CAST(N'2023-10-01' AS Date), N'Москва')
INSERT [dbo].[Events] ([id], [name], [type], [date], [city]) VALUES (13, N'Выставка искусств', N'Культурная', CAST(N'2023-10-05' AS Date), N'Санкт-Петербург')
INSERT [dbo].[Events] ([id], [name], [type], [date], [city]) VALUES (14, N'Фестиваль музыки', N'Развлекательная', CAST(N'2023-10-10' AS Date), N'Казань')
INSERT [dbo].[Events] ([id], [name], [type], [date], [city]) VALUES (15, N'Марафон бега', N'Спортивная', CAST(N'2023-10-15' AS Date), N'Екатеринбург')
INSERT [dbo].[Events] ([id], [name], [type], [date], [city]) VALUES (16, N'Концерт рок-группы', N'Музыкальная', CAST(N'2023-10-20' AS Date), N'Новосибирск')
INSERT [dbo].[Events] ([id], [name], [type], [date], [city]) VALUES (17, N'Театральная премьера', N'Культурная', CAST(N'2023-10-25' AS Date), N'Челябинск')
INSERT [dbo].[Events] ([id], [name], [type], [date], [city]) VALUES (18, N'Конференция по программированию', N'Научная', CAST(N'2023-11-01' AS Date), N'Воронеж')
INSERT [dbo].[Events] ([id], [name], [type], [date], [city]) VALUES (19, N'Выставка современного искусства', N'Культурная', CAST(N'2023-11-05' AS Date), N'Омск')
INSERT [dbo].[Events] ([id], [name], [type], [date], [city]) VALUES (20, N'Фестиваль кухонь мира', N'Кулинарная', CAST(N'2023-11-10' AS Date), N'Самара')
INSERT [dbo].[Events] ([id], [name], [type], [date], [city]) VALUES (21, N'Марафон маркетинга', N'Бизнес', CAST(N'2023-11-15' AS Date), N'Уфа')
INSERT [dbo].[Events] ([id], [name], [type], [date], [city]) VALUES (22, N'Концерт классической музыки', N'Музыкальная', CAST(N'2023-11-20' AS Date), N'Краснодар')
INSERT [dbo].[Events] ([id], [name], [type], [date], [city]) VALUES (23, N'Турнир по шахматам', N'Спортивная', CAST(N'2023-11-25' AS Date), N'Ростов-на-Дону')
INSERT [dbo].[Events] ([id], [name], [type], [date], [city]) VALUES (24, N'Конференция по медицине', N'Научная', CAST(N'2023-12-01' AS Date), N'Волгоград')
INSERT [dbo].[Events] ([id], [name], [type], [date], [city]) VALUES (25, N'Выставка антиквариата', N'Культурная', CAST(N'2023-12-05' AS Date), N'Пермь')
INSERT [dbo].[Events] ([id], [name], [type], [date], [city]) VALUES (26, N'Фестиваль народных промыслов', N'Культурная', CAST(N'2023-12-10' AS Date), N'Калининград')
INSERT [dbo].[Events] ([id], [name], [type], [date], [city]) VALUES (27, N'Марафон здоровья', N'Спортивная', CAST(N'2023-12-15' AS Date), N'Саратов')
INSERT [dbo].[Events] ([id], [name], [type], [date], [city]) VALUES (28, N'Концерт джазовой музыки', N'Музыкальная', CAST(N'2023-12-20' AS Date), N'Тюмень')
INSERT [dbo].[Events] ([id], [name], [type], [date], [city]) VALUES (29, N'Театральный фестиваль', N'Культурная', CAST(N'2023-12-25' AS Date), N'Иркутск')
INSERT [dbo].[Events] ([id], [name], [type], [date], [city]) VALUES (30, N'Конференция по экологии', N'Научная', CAST(N'2024-01-01' AS Date), N'Ярославль')
INSERT [dbo].[Events] ([id], [name], [type], [date], [city]) VALUES (31, N'Выставка фотографий', N'Культурная', CAST(N'2024-01-05' AS Date), N'Владивосток')
INSERT [dbo].[Events] ([id], [name], [type], [date], [city]) VALUES (32, N'Фестиваль снежных скульптур', N'Развлекательная', CAST(N'2024-01-10' AS Date), N'Хабаровск')
SET IDENTITY_INSERT [dbo].[Events] OFF
GO
SET IDENTITY_INSERT [dbo].[Genres] ON 

INSERT [dbo].[Genres] ([id], [name], [description]) VALUES (1, N'Боевик', N'Фильмы с динамичными сценами и экшеном.')
INSERT [dbo].[Genres] ([id], [name], [description]) VALUES (2, N'Комедия', N'Веселые и легкие фильмы для поднятия настроения.')
INSERT [dbo].[Genres] ([id], [name], [description]) VALUES (3, N'Драма', N'Фильмы с глубоким эмоциональным сюжетом.')
INSERT [dbo].[Genres] ([id], [name], [description]) VALUES (4, N'Ужасы', N'Фильмы, которые пугают и держат в напряжении.')
INSERT [dbo].[Genres] ([id], [name], [description]) VALUES (5, N'Фантастика', N'Фильмы о будущем, технологиях и космосе.')
INSERT [dbo].[Genres] ([id], [name], [description]) VALUES (6, N'Фэнтези', N'Фильмы с магией, драконами и вымышленными мирами.')
INSERT [dbo].[Genres] ([id], [name], [description]) VALUES (7, N'Триллер', N'Фильмы с напряженным сюжетом и неожиданными поворотами.')
INSERT [dbo].[Genres] ([id], [name], [description]) VALUES (8, N'Мелодрама', N'Фильмы о любви и отношениях.')
INSERT [dbo].[Genres] ([id], [name], [description]) VALUES (9, N'Приключения', N'Фильмы о захватывающих путешествиях и открытиях.')
INSERT [dbo].[Genres] ([id], [name], [description]) VALUES (10, N'Анимация', N'Мультфильмы и анимационные фильмы для всех возрастов.')
SET IDENTITY_INSERT [dbo].[Genres] OFF
GO
SET IDENTITY_INSERT [dbo].[MovieChatMessages] ON 

INSERT [dbo].[MovieChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (1026, 1, 4002, N'dfdsf', CAST(N'2025-03-01T16:29:07.157' AS DateTime), N'https://localhost:7270/api/Photos/photo/Group 6.webp')
INSERT [dbo].[MovieChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (1027, 1, 4002, N'привет', CAST(N'2025-03-01T16:31:47.190' AS DateTime), N'https://localhost:7270/api/Photos/photo/Group 3.webp')
INSERT [dbo].[MovieChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (1028, 1, 4002, N'dfdsffs', CAST(N'2025-03-01T16:35:17.900' AS DateTime), N'https://localhost:7270/api/Photos/photo/bingus 1.webp')
INSERT [dbo].[MovieChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (2005, 1, 7003, N'ку', CAST(N'2025-03-02T23:54:47.527' AS DateTime), N'')
INSERT [dbo].[MovieChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (3005, 1, 7002, N'ку', CAST(N'2025-03-03T22:04:42.427' AS DateTime), N'')
INSERT [dbo].[MovieChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (3006, 1, 7003, N'213', CAST(N'2025-03-03T22:04:59.110' AS DateTime), N'')
INSERT [dbo].[MovieChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (4005, 1, 7002, N'assad', CAST(N'2025-03-05T12:52:11.330' AS DateTime), N'')
INSERT [dbo].[MovieChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (4006, 1, 7002, N'zxcxz', CAST(N'2025-03-05T12:52:31.703' AS DateTime), N'')
INSERT [dbo].[MovieChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (4007, 1, 7002, N'dscz', CAST(N'2025-03-05T12:52:36.893' AS DateTime), N'')
INSERT [dbo].[MovieChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (4008, 1, 7002, N'asd', CAST(N'2025-03-05T12:54:27.737' AS DateTime), N'https://localhost:7270/api/Photos/photo/hfD8kxW9xlyBRzXpTpIUacXUvK7mTus6GIAYbQ6A5-yE--hWYtxq5tPMLPgKagnUVKxzPsMnaXA9pOkaVm68rbUzHkAzTzXvRoQ3izwz1f3FdLxu9x_pjT.webp')
INSERT [dbo].[MovieChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (4009, 1, 7002, N'ada', CAST(N'2025-03-05T12:54:41.107' AS DateTime), N'https://localhost:7270/api/Photos/photo/hfD8kxW9xlyBRzXpTpIUacXUvK7mTus6GIAYbQ6A5-yE--hWYtxq5tPMLPgKagnUVKxzPsMnaXA9pOkaVm68rbUzHkAzTzXvRoQ3izwz1f3FdLxu9x_pjT.webp')
INSERT [dbo].[MovieChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (4010, 1, 7002, N'ffdsfds', CAST(N'2025-03-05T12:54:58.763' AS DateTime), N'https://localhost:7270/api/Photos/photo/hfD8kxW9xlyBRzXpTpIUacXUvK7mTus6GIAYbQ6A5-yE--hWYtxq5tPMLPgKagnUVKxzPsMnaXA9pOkaVm68rbUzHkAzTzXvRoQ3izwz1f3FdLxu9x_pjT.webp')
INSERT [dbo].[MovieChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (5005, 1, 4002, N'fdfsdf', CAST(N'2025-04-07T17:40:11.190' AS DateTime), N'')
INSERT [dbo].[MovieChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (5006, 1, 4002, N'sadasd12', CAST(N'2025-04-07T17:40:30.040' AS DateTime), N'')
INSERT [dbo].[MovieChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (5007, 1, 4002, N'sada', CAST(N'2025-04-07T17:40:36.020' AS DateTime), N'')
INSERT [dbo].[MovieChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (6005, 1, 4002, N'awdsaddsad', CAST(N'2025-04-12T15:56:19.210' AS DateTime), N'')
INSERT [dbo].[MovieChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (6006, 1, 4002, N'12321312', CAST(N'2025-04-12T15:56:32.500' AS DateTime), N'')
SET IDENTITY_INSERT [dbo].[MovieChatMessages] OFF
GO
SET IDENTITY_INSERT [dbo].[MovieChats] ON 

INSERT [dbo].[MovieChats] ([id], [movieId], [created_at]) VALUES (1, 51, CAST(N'2025-02-23T20:54:43.713' AS DateTime))
INSERT [dbo].[MovieChats] ([id], [movieId], [created_at]) VALUES (2, 52, CAST(N'2025-02-24T14:43:11.153' AS DateTime))
INSERT [dbo].[MovieChats] ([id], [movieId], [created_at]) VALUES (3, 53, CAST(N'2025-02-24T14:43:13.753' AS DateTime))
INSERT [dbo].[MovieChats] ([id], [movieId], [created_at]) VALUES (4, 54, CAST(N'2025-02-24T14:43:15.073' AS DateTime))
INSERT [dbo].[MovieChats] ([id], [movieId], [created_at]) VALUES (5, 55, CAST(N'2025-02-24T14:43:16.310' AS DateTime))
INSERT [dbo].[MovieChats] ([id], [movieId], [created_at]) VALUES (6, 56, CAST(N'2025-02-24T14:43:16.917' AS DateTime))
SET IDENTITY_INSERT [dbo].[MovieChats] OFF
GO
SET IDENTITY_INSERT [dbo].[Movies] ON 

INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (51, N'Миссия невыполнима: Последствия', 1, N'Итан Хант и его команда сталкиваются с новыми угрозами.', CAST(7.70 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/misnev.webp', CAST(N'02:27:00' AS Time), 2018, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (52, N'Джон Уик', 1, N'Легендарный убийца мстит за смерть своей собаки.', CAST(7.40 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/john_wick.webp', CAST(N'01:41:00' AS Time), 2014, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (53, N'Безумный Макс: Дорога ярости', 1, N'Постапокалиптический мир, где герой борется за выживание.', CAST(8.10 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/mad_max-square.png', CAST(N'02:00:00' AS Time), 2015, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (54, N'Терминатор 2: Судный день', 1, N'Робот из будущего защищает мальчика от более совершенного киборга.', CAST(8.50 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/Terminator2poster.jpg', CAST(N'02:17:00' AS Time), 1991, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (55, N'Начало', 1, N'Группа специалистов внедряется в сны, чтобы украсть идеи.', CAST(8.80 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/inseption.jpg', CAST(N'02:28:00' AS Time), 2010, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (56, N'Один дома', 2, N'Мальчик остался один дома и защищает дом от грабителей.', CAST(7.60 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/home_alon.jpg', CAST(N'01:43:00' AS Time), 1990, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (57, N'Мальчишник в Вегасе', 2, N'Группа друзей отправляется в Вегас на мальчишник.', CAST(7.70 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/The_Hangover.jpg', CAST(N'01:40:00' AS Time), 2009, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (58, N'Трудный ребенок', 1, N'Маленький мальчик устраивает хаос в семье.', CAST(6.90 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/i.webp', CAST(N'01:21:00' AS Time), 1990, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (59, N'Маска', 2, N'Скромный клерк находит маску, которая меняет его жизнь.', CAST(6.90 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/i (1).webp', CAST(N'01:41:00' AS Time), 1994, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (60, N'День сурка', 2, N'Мужчина застревает в одном и том же дне.', CAST(8.00 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/orig (1).webp', CAST(N'01:41:00' AS Time), 1993, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (61, N'Форрест Гамп', 3, N'История человека с низким IQ, который стал свидетелем ключевых событий XX века.', CAST(8.80 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/forrest_gump.jpg', CAST(N'02:22:00' AS Time), 1994, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (62, N'Зеленая миля', 3, N'История о заключенном с необычными способностями.', CAST(8.60 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/green_mile.webp', CAST(N'03:09:00' AS Time), 1999, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (63, N'Побег из Шоушенка', 3, N'Два заключенных дружат и мечтают о свободе.', CAST(9.30 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/20170105141732!Movie_poster_the_shawshank_redemption.jpg', CAST(N'02:22:00' AS Time), 1994, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (64, N'Список Шиндлера', 3, N'История о человеке, спасшем тысячи евреев во время Холокоста.', CAST(8.90 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/Schindler_s_List_movie.webp', CAST(N'03:15:00' AS Time), 1993, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (65, N'1+1', 3, N'История дружбы между богатым инвалидом и уличным парнем.', CAST(8.80 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/20120816160921!Intouchables.jpg', CAST(N'01:52:00' AS Time), 2011, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (66, N'Оно', 4, N'Злой клоун терроризирует детей в маленьком городке.', CAST(7.30 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/it.jpg', CAST(N'02:15:00' AS Time), 2017, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (67, N'Сияние', 4, N'Семья переезжает в отель, где начинают происходить странные вещи.', CAST(8.40 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/the_shining.webp', CAST(N'02:26:00' AS Time), 1980, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (68, N'Пила: Игра на выживание', 4, N'Люди оказываются в ловушке и должны выполнять жуткие задания.', CAST(7.60 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/saw.webp', CAST(N'01:43:00' AS Time), 2004, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (69, N'Заклятие', 4, N'Семья сталкивается с паранормальными явлениями в своем доме.', CAST(7.50 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/conjuring.webp', CAST(N'01:52:00' AS Time), 2013, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (70, N'Хэллоуин', 4, N'Майкл Майерс сбегает из психиатрической больницы и возвращается в родной город.', CAST(7.70 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/halloween.webp', CAST(N'01:31:00' AS Time), 1978, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (71, N'Интерстеллар', 5, N'Группа ученых отправляется в космос, чтобы найти новый дом для человечества.', CAST(8.60 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/interstellar.webp', CAST(N'02:49:00' AS Time), 2014, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (72, N'Матрица', 5, N'Хакер узнает, что реальность — это симуляция.', CAST(8.70 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/matrix.webp', CAST(N'02:16:00' AS Time), 1999, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (73, N'Бегущий по лезвию 2049', 5, N'Охотник за головами раскрывает тайну, которая может изменить мир.', CAST(8.00 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/blade_runner.webp', CAST(N'02:44:00' AS Time), 2017, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (74, N'Чужой', 5, N'Экипаж космического корабля сталкивается с инопланетным существом.', CAST(8.40 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/alien.webp', CAST(N'01:57:00' AS Time), 1979, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (75, N'Терминатор', 5, N'Робот из будущего пытается убить женщину, чей сын станет лидером сопротивления.', CAST(8.00 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/Terminator_poster.webp', CAST(N'01:47:00' AS Time), 1984, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (76, N'Властелин колец: Братство кольца', 6, N'Фродо отправляется в путешествие, чтобы уничтожить Кольцо Всевластья.', CAST(8.80 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/lotr_fellowship.webp', CAST(N'02:58:00' AS Time), 2001, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (77, N'Гарри Поттер и философский камень', 6, N'Мальчик узнает, что он волшебник, и поступает в школу магии.', CAST(7.60 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/harry_potter_1.webp', CAST(N'02:32:00' AS Time), 2001, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (78, N'Хроники Нарнии: Лев, колдунья и волшебный шкаф', 6, N'Дети попадают в волшебный мир через шкаф.', CAST(6.90 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/narnia.webp', CAST(N'02:23:00' AS Time), 2005, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (79, N'Пираты Карибского моря: Проклятие Черной жемчужины', 6, N'Капитан Джек Воробей ищет заколдованный корабль.', CAST(8.00 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/Pirates-of-the-Caribbean-The-Curse-of-the-Black-Pearl-.webp', CAST(N'02:23:00' AS Time), 2003, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (80, N'Аватар', 6, N'Человек отправляется на далекую планету и становится частью местного племени.', CAST(7.80 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/Avatar-2009.webp', CAST(N'02:42:00' AS Time), 2009, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (81, N'Семь', 7, N'Два детектива охотятся за серийным убийцей, который использует семь смертных грехов.', CAST(8.60 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/se7en.webp', CAST(N'02:07:00' AS Time), 1995, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (82, N'Исчезнувшая', 7, N'Мужчина ищет свою пропавшую жену, но все указывает на его вину.', CAST(8.10 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/gone_girl.webp', CAST(N'02:29:00' AS Time), 2014, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (83, N'Молчание ягнят', 7, N'Молодая агент ФБР обращается за помощью к серийному убийце.', CAST(8.60 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/silence_lambs.webp', CAST(N'01:58:00' AS Time), 1991, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (84, N'Зодиак', 7, N'Журналист и детектив расследуют дела серийного убийцы.', CAST(7.70 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/zodiac.webp', CAST(N'02:37:00' AS Time), 2007, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (85, N'Остров проклятых', 7, N'Сыщик расследует дело в психиатрической больнице на острове.', CAST(8.20 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/shutter_island.webp', CAST(N'02:18:00' AS Time), 2010, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (86, N'Титаник', 8, N'История любви на фоне крушения легендарного корабля.', CAST(7.80 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/titanic.webp', CAST(N'03:14:00' AS Time), 1997, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (87, N'Дневник памяти', 8, N'История любви, рассказанная через дневник.', CAST(7.80 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/notebook.webp', CAST(N'02:03:00' AS Time), 2004, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (88, N'Ла-Ла Ленд', 8, N'Молодые люди мечтают о славе в Лос-Анджелесе.', CAST(8.00 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/La_La_Land.webp', CAST(N'02:08:00' AS Time), 2016, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (89, N'Виноваты звезды', 8, N'Двое подростков с онкологией влюбляются друг в друга.', CAST(7.70 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/fault_in_stars.webp', CAST(N'02:06:00' AS Time), 2014, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (90, N'Город ангелов', 8, N'Ангел влюбляется в смертную женщину.', CAST(6.70 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/City_Of_Angels.webp', CAST(N'01:54:00' AS Time), 1998, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (91, N'Индиана Джонс: В поисках утраченного ковчега', 9, N'Археолог ищет библейский артефакт.', CAST(8.40 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/Indiana-jones-last-crusade-poster.webp', CAST(N'01:55:00' AS Time), 1981, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (92, N'Пираты Карибского моря: На краю света', 9, N'Джек Воробей и его команда отправляются в новое приключение.', CAST(7.10 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/pirates_caribbean_3.webp', CAST(N'02:49:00' AS Time), 2007, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (93, N'Джуманджи: Зов джунглей', 9, N'Группа подростков попадает в настольную игру.', CAST(6.90 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/jumanji.webp', CAST(N'01:59:00' AS Time), 2017, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (94, N'Лара Крофт: Расхитительница гробниц', 9, N'Археолог ищет древний артефакт.', CAST(5.70 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/Lara_Croft_film.webp', CAST(N'01:40:00' AS Time), 2001, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (95, N'Хоббит: Нежданное путешествие', 9, N'Бильбо Бэггинс отправляется в путешествие с гномами.', CAST(7.80 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/hobbit.webp', CAST(N'02:49:00' AS Time), 2012, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (96, N'Король Лев', 10, N'Молодой лев Симба борется за свое место в кругу жизни.', CAST(8.50 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/lion_king.webp', CAST(N'01:28:00' AS Time), 1994, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (97, N'Холодное сердце', 10, N'Сестры Эльза и Анна сталкиваются с магией и опасностями.', CAST(7.40 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/frozen.webp', CAST(N'01:42:00' AS Time), 2013, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (98, N'История игрушек', 10, N'Игрушки оживают, когда людей нет рядом.', CAST(8.30 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/toy_story.webp', CAST(N'01:21:00' AS Time), 1995, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (99, N'Шрек', 10, N'Огр отправляется в путешествие, чтобы спасти принцессу.', CAST(7.80 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/shrek.webp', CAST(N'01:30:00' AS Time), 2001, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (100, N'Головоломка', 10, N'Эмоции внутри девочки пытаются справиться с переездом.', CAST(8.10 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/inside_out.webp', CAST(N'01:35:00' AS Time), 2015, NULL)
INSERT [dbo].[Movies] ([id], [name], [genreId], [description], [rating], [image], [duration], [releaseYear], [DurationString]) VALUES (2007, N'Полночное солнце', 3, N'Внезапная и страстная любовь яркой вспышкой озаряет жизнь больной девушки', CAST(7.00 AS Decimal(18, 2)), N'https://localhost:7270/api/Photos/photo/midnight_sun.webp', CAST(N'01:45:00' AS Time), 2017, NULL)
SET IDENTITY_INSERT [dbo].[Movies] OFF
GO
SET IDENTITY_INSERT [dbo].[Peoples] ON 

INSERT [dbo].[Peoples] ([id], [name], [desc]) VALUES (1, N'Ильдар', N'Фаррахов')
INSERT [dbo].[Peoples] ([id], [name], [desc]) VALUES (2, N'Михаил', N'Митрофанов')
INSERT [dbo].[Peoples] ([id], [name], [desc]) VALUES (3, N'Михаил', N'Митрофанов')
INSERT [dbo].[Peoples] ([id], [name], [desc]) VALUES (4, N'Михаил', N'Митрофанов')
INSERT [dbo].[Peoples] ([id], [name], [desc]) VALUES (10, N'dsdsd', N'sdsd123')
SET IDENTITY_INSERT [dbo].[Peoples] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([id], [name]) VALUES (1, N'admin')
INSERT [dbo].[Role] ([id], [name]) VALUES (2, N'user')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[UnityUsers] ON 

INSERT [dbo].[UnityUsers] ([id], [name], [email], [login], [password], [coins], [roleId], [stars], [currentLevel]) VALUES (3, N'fara', N'fara@mail.ru', N'fara', N'123', 22, 2, 0, 2)
INSERT [dbo].[UnityUsers] ([id], [name], [email], [login], [password], [coins], [roleId], [stars], [currentLevel]) VALUES (4, N'user1', N'fara@mail.ru', N'fara', N'123', 60, 2, 4, 2)
INSERT [dbo].[UnityUsers] ([id], [name], [email], [login], [password], [coins], [roleId], [stars], [currentLevel]) VALUES (5, N'user2', N'fara@mail.ru', N'fara', N'123', 28, 2, 4, 2)
SET IDENTITY_INSERT [dbo].[UnityUsers] OFF
GO
SET IDENTITY_INSERT [dbo].[UserChatMessages] ON 

INSERT [dbo].[UserChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (1, 5, 7002, N'sdfdsf', CAST(N'2025-03-02T23:12:04.307' AS DateTime), N'')
INSERT [dbo].[UserChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (2, 5, 7002, N'ку', CAST(N'2025-03-02T23:18:22.450' AS DateTime), N'')
INSERT [dbo].[UserChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (3, 5, 4002, N'цйцуйц', CAST(N'2025-03-02T23:18:59.657' AS DateTime), N'')
INSERT [dbo].[UserChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (4, 5, 7002, N'цйцуйвс', CAST(N'2025-03-02T23:19:17.593' AS DateTime), N'')
INSERT [dbo].[UserChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (5, 5, 7002, N'asdsad', CAST(N'2025-03-02T23:21:39.317' AS DateTime), N'')
INSERT [dbo].[UserChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (6, 5, 7002, N'fsdfs', CAST(N'2025-03-02T23:24:06.797' AS DateTime), N'')
INSERT [dbo].[UserChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (7, 5, 4002, N'asdsad', CAST(N'2025-03-02T23:27:37.707' AS DateTime), N'')
INSERT [dbo].[UserChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (8, 5, 4002, N'ssdf', CAST(N'2025-03-02T23:30:53.760' AS DateTime), N'')
INSERT [dbo].[UserChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (9, 5, 7002, N'dasdas', CAST(N'2025-03-02T23:31:07.873' AS DateTime), N'')
INSERT [dbo].[UserChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (10, 5, 7002, N'фывывф', CAST(N'2025-03-02T23:38:11.383' AS DateTime), N'')
INSERT [dbo].[UserChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (11, 5, 4002, N'12112', CAST(N'2025-03-02T23:38:34.660' AS DateTime), N'')
INSERT [dbo].[UserChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (12, 5, 7002, N'ааываыв', CAST(N'2025-03-02T23:51:05.437' AS DateTime), N'https://localhost:7270/api/Photos/photo/Problem_Child.webp')
INSERT [dbo].[UserChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (1002, 2, 7002, N'привет', CAST(N'2025-03-03T15:29:49.590' AS DateTime), N'')
INSERT [dbo].[UserChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (1003, 2, 7003, N'вываы', CAST(N'2025-03-03T15:30:00.170' AS DateTime), N'')
INSERT [dbo].[UserChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (2002, 2, 7002, N'кд чд', CAST(N'2025-03-03T22:13:20.077' AS DateTime), N'')
INSERT [dbo].[UserChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (2003, 2, 7003, N'йцу', CAST(N'2025-03-03T22:13:55.977' AS DateTime), N'')
INSERT [dbo].[UserChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (3002, 2, 7002, N'dfsf', CAST(N'2025-03-04T22:37:54.583' AS DateTime), N'')
INSERT [dbo].[UserChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (3003, 2, 7002, N'sadsad', CAST(N'2025-03-04T22:39:55.790' AS DateTime), N'')
INSERT [dbo].[UserChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (3004, 2, 7002, N'', CAST(N'2025-03-04T22:40:01.730' AS DateTime), N'')
INSERT [dbo].[UserChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (3005, 2, 7002, N'sdasd', CAST(N'2025-03-04T22:42:52.797' AS DateTime), N'')
INSERT [dbo].[UserChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (3006, 2, 7002, N'asdsa1', CAST(N'2025-03-04T22:43:39.503' AS DateTime), N'')
INSERT [dbo].[UserChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (3007, 2, 7003, N'sdfds', CAST(N'2025-03-04T22:44:00.823' AS DateTime), N'')
INSERT [dbo].[UserChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (3008, 2, 7002, N'xv', CAST(N'2025-03-04T22:44:12.790' AS DateTime), N'')
INSERT [dbo].[UserChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (3009, 2, 7002, N'sdf', CAST(N'2025-03-04T22:46:36.260' AS DateTime), N'')
INSERT [dbo].[UserChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (3010, 2, 7003, N'sesf', CAST(N'2025-03-04T22:47:23.533' AS DateTime), N'')
INSERT [dbo].[UserChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (3011, 2, 7002, N'123', CAST(N'2025-03-04T23:02:46.563' AS DateTime), N'')
INSERT [dbo].[UserChatMessages] ([id], [chatId], [userId], [message], [sent_at], [photoUrl]) VALUES (3012, 2, 7003, N'dfdfsf', CAST(N'2025-03-04T23:03:19.957' AS DateTime), N'')
SET IDENTITY_INSERT [dbo].[UserChatMessages] OFF
GO
SET IDENTITY_INSERT [dbo].[UserChats] ON 

INSERT [dbo].[UserChats] ([id], [firstUserId], [secondUserId], [created_at]) VALUES (2, 7002, 7003, CAST(N'2025-03-02T21:58:14.593' AS DateTime))
INSERT [dbo].[UserChats] ([id], [firstUserId], [secondUserId], [created_at]) VALUES (5, 7002, 4002, CAST(N'2025-03-02T22:55:00.683' AS DateTime))
INSERT [dbo].[UserChats] ([id], [firstUserId], [secondUserId], [created_at]) VALUES (6, 4002, 4002, CAST(N'2025-03-02T23:30:41.460' AS DateTime))
INSERT [dbo].[UserChats] ([id], [firstUserId], [secondUserId], [created_at]) VALUES (1002, 7002, 7002, CAST(N'2025-03-04T22:32:52.923' AS DateTime))
INSERT [dbo].[UserChats] ([id], [firstUserId], [secondUserId], [created_at]) VALUES (1003, 7003, 7003, CAST(N'2025-03-04T22:46:25.767' AS DateTime))
INSERT [dbo].[UserChats] ([id], [firstUserId], [secondUserId], [created_at]) VALUES (2002, 4002, 7003, CAST(N'2025-03-05T12:43:30.877' AS DateTime))
SET IDENTITY_INSERT [dbo].[UserChats] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [name], [description], [login], [password], [roleId], [email]) VALUES (3, N'Иванов Иван', N'aodm ivneiveve', N'ivanov123', N'123', 2, N'ivanov123@mail.ru')
INSERT [dbo].[Users] ([id], [name], [description], [login], [password], [roleId], [email]) VALUES (4002, N'Фаррахов Ильдар', N'admin', N'admin', N'admin', 1, N'admin@mail.ru')
INSERT [dbo].[Users] ([id], [name], [description], [login], [password], [roleId], [email]) VALUES (7002, N'user1', N'user1', N'string', N'string', 2, N'user!@mail.ru')
INSERT [dbo].[Users] ([id], [name], [description], [login], [password], [roleId], [email]) VALUES (7003, N'user2', N'user2', N'user2', N'123', 2, N'user2@mail.ru')
INSERT [dbo].[Users] ([id], [name], [description], [login], [password], [roleId], [email]) VALUES (8002, N'ildar', N'dasdsad', N'123123', N'123123123', 2, N'ildar@mail.ru')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Genres] ADD  DEFAULT (N'') FOR [description]
GO
ALTER TABLE [dbo].[MovieChats] ADD  CONSTRAINT [DF_MovieChats_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[Role] ADD  DEFAULT (N'') FOR [name]
GO
ALTER TABLE [dbo].[UnityUsers] ADD  CONSTRAINT [DF_UnityUsers_coins]  DEFAULT ((0)) FOR [coins]
GO
ALTER TABLE [dbo].[UnityUsers] ADD  CONSTRAINT [DF_UnityUsers_stars]  DEFAULT ((0)) FOR [stars]
GO
ALTER TABLE [dbo].[UnityUsers] ADD  CONSTRAINT [DF_UnityUsers_currentLevel]  DEFAULT ((1)) FOR [currentLevel]
GO
ALTER TABLE [dbo].[UserChats] ADD  CONSTRAINT [DF_UserChats_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [roleId]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (N'') FOR [email]
GO
ALTER TABLE [dbo].[MovieChatMessages]  WITH CHECK ADD  CONSTRAINT [FK_MovieChatMessages_MovieChats] FOREIGN KEY([chatId])
REFERENCES [dbo].[MovieChats] ([id])
GO
ALTER TABLE [dbo].[MovieChatMessages] CHECK CONSTRAINT [FK_MovieChatMessages_MovieChats]
GO
ALTER TABLE [dbo].[MovieChatMessages]  WITH CHECK ADD  CONSTRAINT [FK_MovieChatMessages_Users] FOREIGN KEY([userId])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[MovieChatMessages] CHECK CONSTRAINT [FK_MovieChatMessages_Users]
GO
ALTER TABLE [dbo].[MovieChats]  WITH CHECK ADD  CONSTRAINT [FK_MovieChats_Movies] FOREIGN KEY([movieId])
REFERENCES [dbo].[Movies] ([id])
GO
ALTER TABLE [dbo].[MovieChats] CHECK CONSTRAINT [FK_MovieChats_Movies]
GO
ALTER TABLE [dbo].[Movies]  WITH CHECK ADD  CONSTRAINT [FK_Movies_Genres_genreId] FOREIGN KEY([genreId])
REFERENCES [dbo].[Genres] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Movies] CHECK CONSTRAINT [FK_Movies_Genres_genreId]
GO
ALTER TABLE [dbo].[Rent]  WITH CHECK ADD  CONSTRAINT [FK_Rent_Books] FOREIGN KEY([bookId])
REFERENCES [dbo].[Books] ([id])
GO
ALTER TABLE [dbo].[Rent] CHECK CONSTRAINT [FK_Rent_Books]
GO
ALTER TABLE [dbo].[Rent]  WITH CHECK ADD  CONSTRAINT [FK_Rent_Users] FOREIGN KEY([userId])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Rent] CHECK CONSTRAINT [FK_Rent_Users]
GO
ALTER TABLE [dbo].[UnityUsers]  WITH CHECK ADD  CONSTRAINT [FK_UnityUsers_Role] FOREIGN KEY([roleId])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[UnityUsers] CHECK CONSTRAINT [FK_UnityUsers_Role]
GO
ALTER TABLE [dbo].[UserChatMessages]  WITH CHECK ADD  CONSTRAINT [FK_UserChatMessages_UserChats] FOREIGN KEY([chatId])
REFERENCES [dbo].[UserChats] ([id])
GO
ALTER TABLE [dbo].[UserChatMessages] CHECK CONSTRAINT [FK_UserChatMessages_UserChats]
GO
ALTER TABLE [dbo].[UserChatMessages]  WITH CHECK ADD  CONSTRAINT [FK_UserChatMessages_Users] FOREIGN KEY([userId])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[UserChatMessages] CHECK CONSTRAINT [FK_UserChatMessages_Users]
GO
ALTER TABLE [dbo].[UserChats]  WITH CHECK ADD  CONSTRAINT [FK_UserChats_Users] FOREIGN KEY([firstUserId])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[UserChats] CHECK CONSTRAINT [FK_UserChats_Users]
GO
ALTER TABLE [dbo].[UserChats]  WITH CHECK ADD  CONSTRAINT [FK_UserChats_Users1] FOREIGN KEY([secondUserId])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[UserChats] CHECK CONSTRAINT [FK_UserChats_Users1]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Role_roleId] FOREIGN KEY([roleId])
REFERENCES [dbo].[Role] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Role_roleId]
GO
