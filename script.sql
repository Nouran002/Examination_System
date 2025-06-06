USE [Examination_Sys]
GO
/****** Object:  UserDefinedTableType [dbo].[ExamAnswersType]    Script Date: 4/14/2025 9:27:45 PM ******/
CREATE TYPE [dbo].[ExamAnswersType] AS TABLE(
	[Ques_Id] [int] NULL,
	[Selected_Option_Id] [int] NULL
)
GO
/****** Object:  Table [dbo].[Answers]    Script Date: 4/14/2025 9:27:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answers](
	[Answer_Id] [int] IDENTITY(1,1) NOT NULL,
	[Ques_Id] [int] NULL,
	[St_Id] [int] NULL,
	[Selected_Option_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Answer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coursee]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coursee](
	[Crs_Id] [int] NOT NULL,
	[Crs_Name] [nvarchar](100) NOT NULL,
	[Duration] [int] NULL,
	[Dept_Id] [int] NULL,
	[Ins_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Crs_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[departmentt]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departmentt](
	[Dept_Id] [int] NOT NULL,
	[Dept_Name] [nvarchar](100) NOT NULL,
	[Location] [nvarchar](100) NULL,
	[Manager_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Dept_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam_Ques]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam_Ques](
	[Exam_Id] [int] NOT NULL,
	[Ques_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Exam_Id] ASC,
	[Ques_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exams]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exams](
	[Exam_Id] [int] IDENTITY(1,1) NOT NULL,
	[Crs_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Exam_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[Ins_Id] [int] NOT NULL,
	[Ins_Name] [nvarchar](100) NOT NULL,
	[Degree] [nvarchar](100) NULL,
	[Salary] [decimal](10, 2) NULL,
	[Dept_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Ins_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Options]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Options](
	[Option_Id] [int] NOT NULL,
	[Ques_Id] [int] NULL,
	[Option_Text] [nvarchar](255) NULL,
	[IsCorrect_Option] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Option_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Questions]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[Ques_Id] [int] NOT NULL,
	[Ques_Type] [nvarchar](50) NULL,
	[Text] [nvarchar](500) NULL,
	[Crs_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Ques_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stu_Course]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stu_Course](
	[St_Id] [int] NOT NULL,
	[Crs_Id] [int] NOT NULL,
	[Grade] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[St_Id] ASC,
	[Crs_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stu_Exam]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stu_Exam](
	[St_Id] [int] NOT NULL,
	[Exam_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[St_Id] ASC,
	[Exam_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[St_Id] [int] NOT NULL,
	[St_Name] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](255) NULL,
	[Age] [int] NULL,
	[Dept_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[St_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Answers] ON 

INSERT [dbo].[Answers] ([Answer_Id], [Ques_Id], [St_Id], [Selected_Option_Id]) VALUES (1, 2, 1, 3)
INSERT [dbo].[Answers] ([Answer_Id], [Ques_Id], [St_Id], [Selected_Option_Id]) VALUES (2, 10, 1, 20)
INSERT [dbo].[Answers] ([Answer_Id], [Ques_Id], [St_Id], [Selected_Option_Id]) VALUES (3, 3, 1, 5)
SET IDENTITY_INSERT [dbo].[Answers] OFF
GO
INSERT [dbo].[Coursee] ([Crs_Id], [Crs_Name], [Duration], [Dept_Id], [Ins_Id]) VALUES (1, N'Artificial Intelligence', 30, 1, 1)
INSERT [dbo].[Coursee] ([Crs_Id], [Crs_Name], [Duration], [Dept_Id], [Ins_Id]) VALUES (2, N'Linear Algebra', 45, 2, 2)
INSERT [dbo].[Coursee] ([Crs_Id], [Crs_Name], [Duration], [Dept_Id], [Ins_Id]) VALUES (3, N'Quantum Mechanics', 40, 3, 3)
INSERT [dbo].[Coursee] ([Crs_Id], [Crs_Name], [Duration], [Dept_Id], [Ins_Id]) VALUES (4, N'Organic Chemistry', 35, 4, 4)
INSERT [dbo].[Coursee] ([Crs_Id], [Crs_Name], [Duration], [Dept_Id], [Ins_Id]) VALUES (5, N'Genetics', 50, 5, 5)
INSERT [dbo].[Coursee] ([Crs_Id], [Crs_Name], [Duration], [Dept_Id], [Ins_Id]) VALUES (6, N'World History', 25, 6, 6)
INSERT [dbo].[Coursee] ([Crs_Id], [Crs_Name], [Duration], [Dept_Id], [Ins_Id]) VALUES (7, N'Physical Geography', 20, 7, 7)
INSERT [dbo].[Coursee] ([Crs_Id], [Crs_Name], [Duration], [Dept_Id], [Ins_Id]) VALUES (8, N'Ethics', 15, 8, 8)
INSERT [dbo].[Coursee] ([Crs_Id], [Crs_Name], [Duration], [Dept_Id], [Ins_Id]) VALUES (9, N'Structural Engineering', 60, 9, 9)
INSERT [dbo].[Coursee] ([Crs_Id], [Crs_Name], [Duration], [Dept_Id], [Ins_Id]) VALUES (10, N'Microeconomics', 55, 10, 10)
INSERT [dbo].[Coursee] ([Crs_Id], [Crs_Name], [Duration], [Dept_Id], [Ins_Id]) VALUES (11, N'OOP', 100, 11, 11)
GO
INSERT [dbo].[departmentt] ([Dept_Id], [Dept_Name], [Location], [Manager_Id]) VALUES (1, N'Computer Science', N'Building A', 101)
INSERT [dbo].[departmentt] ([Dept_Id], [Dept_Name], [Location], [Manager_Id]) VALUES (2, N'Mathematics', N'Building B', 102)
INSERT [dbo].[departmentt] ([Dept_Id], [Dept_Name], [Location], [Manager_Id]) VALUES (3, N'Physics', N'Building C', 103)
INSERT [dbo].[departmentt] ([Dept_Id], [Dept_Name], [Location], [Manager_Id]) VALUES (4, N'Chemistry', N'Building D', 104)
INSERT [dbo].[departmentt] ([Dept_Id], [Dept_Name], [Location], [Manager_Id]) VALUES (5, N'Biology', N'Building E', 105)
INSERT [dbo].[departmentt] ([Dept_Id], [Dept_Name], [Location], [Manager_Id]) VALUES (6, N'History', N'Building F', 106)
INSERT [dbo].[departmentt] ([Dept_Id], [Dept_Name], [Location], [Manager_Id]) VALUES (7, N'Geography', N'Building G', 107)
INSERT [dbo].[departmentt] ([Dept_Id], [Dept_Name], [Location], [Manager_Id]) VALUES (8, N'Philosophy', N'Building H', 108)
INSERT [dbo].[departmentt] ([Dept_Id], [Dept_Name], [Location], [Manager_Id]) VALUES (9, N'Engineering', N'Building I', 109)
INSERT [dbo].[departmentt] ([Dept_Id], [Dept_Name], [Location], [Manager_Id]) VALUES (10, N'Economics', N'Building J', 110)
INSERT [dbo].[departmentt] ([Dept_Id], [Dept_Name], [Location], [Manager_Id]) VALUES (11, N'IT', N'Giza', 111)
GO
INSERT [dbo].[Exam_Ques] ([Exam_Id], [Ques_Id]) VALUES (1, 2)
INSERT [dbo].[Exam_Ques] ([Exam_Id], [Ques_Id]) VALUES (1, 10)
INSERT [dbo].[Exam_Ques] ([Exam_Id], [Ques_Id]) VALUES (2, 2)
INSERT [dbo].[Exam_Ques] ([Exam_Id], [Ques_Id]) VALUES (2, 10)
INSERT [dbo].[Exam_Ques] ([Exam_Id], [Ques_Id]) VALUES (3, 3)
INSERT [dbo].[Exam_Ques] ([Exam_Id], [Ques_Id]) VALUES (4, 3)
GO
SET IDENTITY_INSERT [dbo].[Exams] ON 

INSERT [dbo].[Exams] ([Exam_Id], [Crs_Id]) VALUES (1, 2)
INSERT [dbo].[Exams] ([Exam_Id], [Crs_Id]) VALUES (2, 2)
INSERT [dbo].[Exams] ([Exam_Id], [Crs_Id]) VALUES (3, 3)
INSERT [dbo].[Exams] ([Exam_Id], [Crs_Id]) VALUES (4, 3)
SET IDENTITY_INSERT [dbo].[Exams] OFF
GO
INSERT [dbo].[Instructor] ([Ins_Id], [Ins_Name], [Degree], [Salary], [Dept_Id]) VALUES (1, N'Dr. Mahmoud', N'PhD in AI', CAST(15000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Instructor] ([Ins_Id], [Ins_Name], [Degree], [Salary], [Dept_Id]) VALUES (2, N'Dr. Fatma', N'PhD in Algebra', CAST(14000.00 AS Decimal(10, 2)), 2)
INSERT [dbo].[Instructor] ([Ins_Id], [Ins_Name], [Degree], [Salary], [Dept_Id]) VALUES (3, N'Dr. Ahmed', N'PhD in Physics', CAST(13000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[Instructor] ([Ins_Id], [Ins_Name], [Degree], [Salary], [Dept_Id]) VALUES (4, N'Dr. Hanan', N'PhD in Chemistry', CAST(12000.00 AS Decimal(10, 2)), 4)
INSERT [dbo].[Instructor] ([Ins_Id], [Ins_Name], [Degree], [Salary], [Dept_Id]) VALUES (5, N'Dr. Samir', N'PhD in Biology', CAST(11000.00 AS Decimal(10, 2)), 5)
INSERT [dbo].[Instructor] ([Ins_Id], [Ins_Name], [Degree], [Salary], [Dept_Id]) VALUES (6, N'Dr. Rania', N'PhD in History', CAST(10000.00 AS Decimal(10, 2)), 6)
INSERT [dbo].[Instructor] ([Ins_Id], [Ins_Name], [Degree], [Salary], [Dept_Id]) VALUES (7, N'Dr. Tamer', N'PhD in Geography', CAST(9000.00 AS Decimal(10, 2)), 7)
INSERT [dbo].[Instructor] ([Ins_Id], [Ins_Name], [Degree], [Salary], [Dept_Id]) VALUES (8, N'Dr. Noha', N'PhD in Philosophy', CAST(8000.00 AS Decimal(10, 2)), 8)
INSERT [dbo].[Instructor] ([Ins_Id], [Ins_Name], [Degree], [Salary], [Dept_Id]) VALUES (9, N'Dr. Karim', N'PhD in Engineering', CAST(7000.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Instructor] ([Ins_Id], [Ins_Name], [Degree], [Salary], [Dept_Id]) VALUES (10, N'Dr. Lama', N'PhD in Economics', CAST(6000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[Instructor] ([Ins_Id], [Ins_Name], [Degree], [Salary], [Dept_Id]) VALUES (11, N'Dr.Hager', N'PhD in Engineering', CAST(10000.00 AS Decimal(10, 2)), 11)
GO
INSERT [dbo].[Options] ([Option_Id], [Ques_Id], [Option_Text], [IsCorrect_Option]) VALUES (1, 1, N'Artificial Intelligence', 1)
INSERT [dbo].[Options] ([Option_Id], [Ques_Id], [Option_Text], [IsCorrect_Option]) VALUES (2, 1, N'Machine Learning', 0)
INSERT [dbo].[Options] ([Option_Id], [Ques_Id], [Option_Text], [IsCorrect_Option]) VALUES (3, 2, N'A rectangular array', 1)
INSERT [dbo].[Options] ([Option_Id], [Ques_Id], [Option_Text], [IsCorrect_Option]) VALUES (4, 2, N'A single number', 0)
INSERT [dbo].[Options] ([Option_Id], [Ques_Id], [Option_Text], [IsCorrect_Option]) VALUES (5, 3, N'A state in quantum mechanics', 1)
INSERT [dbo].[Options] ([Option_Id], [Ques_Id], [Option_Text], [IsCorrect_Option]) VALUES (6, 3, N'A chemical element', 0)
INSERT [dbo].[Options] ([Option_Id], [Ques_Id], [Option_Text], [IsCorrect_Option]) VALUES (7, 4, N'A type of hydrocarbon', 1)
INSERT [dbo].[Options] ([Option_Id], [Ques_Id], [Option_Text], [IsCorrect_Option]) VALUES (8, 4, N'A mineral', 0)
INSERT [dbo].[Options] ([Option_Id], [Ques_Id], [Option_Text], [IsCorrect_Option]) VALUES (9, 5, N'Deoxyribonucleic Acid', 1)
INSERT [dbo].[Options] ([Option_Id], [Ques_Id], [Option_Text], [IsCorrect_Option]) VALUES (10, 5, N'Ribonucleic Acid', 0)
INSERT [dbo].[Options] ([Option_Id], [Ques_Id], [Option_Text], [IsCorrect_Option]) VALUES (11, 6, N'A French emperor', 1)
INSERT [dbo].[Options] ([Option_Id], [Ques_Id], [Option_Text], [IsCorrect_Option]) VALUES (12, 6, N'A British king', 0)
INSERT [dbo].[Options] ([Option_Id], [Ques_Id], [Option_Text], [IsCorrect_Option]) VALUES (13, 7, N'A large landmass', 1)
INSERT [dbo].[Options] ([Option_Id], [Ques_Id], [Option_Text], [IsCorrect_Option]) VALUES (14, 7, N'An ocean', 0)
INSERT [dbo].[Options] ([Option_Id], [Ques_Id], [Option_Text], [IsCorrect_Option]) VALUES (15, 8, N'Principles of right and wrong', 1)
INSERT [dbo].[Options] ([Option_Id], [Ques_Id], [Option_Text], [IsCorrect_Option]) VALUES (16, 8, N'A philosophy of science', 0)
INSERT [dbo].[Options] ([Option_Id], [Ques_Id], [Option_Text], [IsCorrect_Option]) VALUES (17, 9, N'A structural member', 1)
INSERT [dbo].[Options] ([Option_Id], [Ques_Id], [Option_Text], [IsCorrect_Option]) VALUES (18, 9, N'A mechanical gear', 0)
INSERT [dbo].[Options] ([Option_Id], [Ques_Id], [Option_Text], [IsCorrect_Option]) VALUES (19, 10, N'Economic principles', 1)
INSERT [dbo].[Options] ([Option_Id], [Ques_Id], [Option_Text], [IsCorrect_Option]) VALUES (20, 10, N'Political theories', 0)
GO
INSERT [dbo].[Questions] ([Ques_Id], [Ques_Type], [Text], [Crs_Id]) VALUES (1, N'MCQ', N'What is AI?', 1)
INSERT [dbo].[Questions] ([Ques_Id], [Ques_Type], [Text], [Crs_Id]) VALUES (2, N'MCQ', N'What is a matrix?', 2)
INSERT [dbo].[Questions] ([Ques_Id], [Ques_Type], [Text], [Crs_Id]) VALUES (3, N'MCQ', N'What is quantum superposition?', 3)
INSERT [dbo].[Questions] ([Ques_Id], [Ques_Type], [Text], [Crs_Id]) VALUES (4, N'MCQ', N'What is an alkane?', 4)
INSERT [dbo].[Questions] ([Ques_Id], [Ques_Type], [Text], [Crs_Id]) VALUES (5, N'MCQ', N'What is DNA?', 5)
INSERT [dbo].[Questions] ([Ques_Id], [Ques_Type], [Text], [Crs_Id]) VALUES (6, N'MCQ', N'Who was Napoleon?', 6)
INSERT [dbo].[Questions] ([Ques_Id], [Ques_Type], [Text], [Crs_Id]) VALUES (7, N'MCQ', N'What is a continent?', 7)
INSERT [dbo].[Questions] ([Ques_Id], [Ques_Type], [Text], [Crs_Id]) VALUES (8, N'MCQ', N'What is morality?', 8)
INSERT [dbo].[Questions] ([Ques_Id], [Ques_Type], [Text], [Crs_Id]) VALUES (9, N'MCQ', N'What is a beam?', 9)
INSERT [dbo].[Questions] ([Ques_Id], [Ques_Type], [Text], [Crs_Id]) VALUES (10, N'MCQ', N'What is supply and demand?', 2)
INSERT [dbo].[Questions] ([Ques_Id], [Ques_Type], [Text], [Crs_Id]) VALUES (11, N'T/F', N'What is Linq?', 10)
GO
INSERT [dbo].[Stu_Course] ([St_Id], [Crs_Id], [Grade]) VALUES (1, 1, N'A')
INSERT [dbo].[Stu_Course] ([St_Id], [Crs_Id], [Grade]) VALUES (1, 5, N'20')
INSERT [dbo].[Stu_Course] ([St_Id], [Crs_Id], [Grade]) VALUES (2, 2, N'B')
INSERT [dbo].[Stu_Course] ([St_Id], [Crs_Id], [Grade]) VALUES (3, 3, N'A')
INSERT [dbo].[Stu_Course] ([St_Id], [Crs_Id], [Grade]) VALUES (4, 4, N'B')
INSERT [dbo].[Stu_Course] ([St_Id], [Crs_Id], [Grade]) VALUES (6, 6, N'B')
INSERT [dbo].[Stu_Course] ([St_Id], [Crs_Id], [Grade]) VALUES (7, 7, N'A')
INSERT [dbo].[Stu_Course] ([St_Id], [Crs_Id], [Grade]) VALUES (8, 8, N'B')
INSERT [dbo].[Stu_Course] ([St_Id], [Crs_Id], [Grade]) VALUES (9, 9, N'A')
INSERT [dbo].[Stu_Course] ([St_Id], [Crs_Id], [Grade]) VALUES (10, 10, N'B')
GO
INSERT [dbo].[Stu_Exam] ([St_Id], [Exam_Id]) VALUES (1, 1)
INSERT [dbo].[Stu_Exam] ([St_Id], [Exam_Id]) VALUES (1, 3)
GO
INSERT [dbo].[Student] ([St_Id], [St_Name], [Address], [Age], [Dept_Id]) VALUES (1, N'Ahmed Ali', N'Cairo', 20, 1)
INSERT [dbo].[Student] ([St_Id], [St_Name], [Address], [Age], [Dept_Id]) VALUES (2, N'Mona Hassan', N'Alexandria', 21, 2)
INSERT [dbo].[Student] ([St_Id], [St_Name], [Address], [Age], [Dept_Id]) VALUES (3, N'Omar Mahmoud', N'Giza', 22, 3)
INSERT [dbo].[Student] ([St_Id], [St_Name], [Address], [Age], [Dept_Id]) VALUES (4, N'Sara Ibrahim', N'Aswan', 23, 4)
INSERT [dbo].[Student] ([St_Id], [St_Name], [Address], [Age], [Dept_Id]) VALUES (5, N'Khaled Mostafa', N'Luxor', 24, 5)
INSERT [dbo].[Student] ([St_Id], [St_Name], [Address], [Age], [Dept_Id]) VALUES (6, N'Nour Mohamed', N'Suez', 25, 6)
INSERT [dbo].[Student] ([St_Id], [St_Name], [Address], [Age], [Dept_Id]) VALUES (7, N'Hala Ahmed', N'Port Said', 26, 7)
INSERT [dbo].[Student] ([St_Id], [St_Name], [Address], [Age], [Dept_Id]) VALUES (8, N'Youssef Samir', N'Mansoura', 27, 8)
INSERT [dbo].[Student] ([St_Id], [St_Name], [Address], [Age], [Dept_Id]) VALUES (9, N'Fatma Tarek', N'Zagazig', 28, 9)
INSERT [dbo].[Student] ([St_Id], [St_Name], [Address], [Age], [Dept_Id]) VALUES (10, N'Hassan Adel', N'Tanta', 29, 10)
GO
ALTER TABLE [dbo].[Answers]  WITH CHECK ADD FOREIGN KEY([Ques_Id])
REFERENCES [dbo].[Questions] ([Ques_Id])
GO
ALTER TABLE [dbo].[Answers]  WITH CHECK ADD FOREIGN KEY([Selected_Option_Id])
REFERENCES [dbo].[Options] ([Option_Id])
GO
ALTER TABLE [dbo].[Answers]  WITH CHECK ADD FOREIGN KEY([St_Id])
REFERENCES [dbo].[Student] ([St_Id])
GO
ALTER TABLE [dbo].[Coursee]  WITH CHECK ADD FOREIGN KEY([Dept_Id])
REFERENCES [dbo].[departmentt] ([Dept_Id])
GO
ALTER TABLE [dbo].[Coursee]  WITH CHECK ADD FOREIGN KEY([Ins_Id])
REFERENCES [dbo].[Instructor] ([Ins_Id])
GO
ALTER TABLE [dbo].[Exam_Ques]  WITH CHECK ADD FOREIGN KEY([Exam_Id])
REFERENCES [dbo].[Exams] ([Exam_Id])
GO
ALTER TABLE [dbo].[Exam_Ques]  WITH CHECK ADD FOREIGN KEY([Ques_Id])
REFERENCES [dbo].[Questions] ([Ques_Id])
GO
ALTER TABLE [dbo].[Exams]  WITH CHECK ADD FOREIGN KEY([Crs_Id])
REFERENCES [dbo].[Coursee] ([Crs_Id])
GO
ALTER TABLE [dbo].[Instructor]  WITH CHECK ADD FOREIGN KEY([Dept_Id])
REFERENCES [dbo].[departmentt] ([Dept_Id])
GO
ALTER TABLE [dbo].[Options]  WITH CHECK ADD FOREIGN KEY([Ques_Id])
REFERENCES [dbo].[Questions] ([Ques_Id])
GO
ALTER TABLE [dbo].[Questions]  WITH CHECK ADD FOREIGN KEY([Crs_Id])
REFERENCES [dbo].[Coursee] ([Crs_Id])
GO
ALTER TABLE [dbo].[Stu_Course]  WITH CHECK ADD FOREIGN KEY([Crs_Id])
REFERENCES [dbo].[Coursee] ([Crs_Id])
GO
ALTER TABLE [dbo].[Stu_Course]  WITH CHECK ADD FOREIGN KEY([St_Id])
REFERENCES [dbo].[Student] ([St_Id])
GO
ALTER TABLE [dbo].[Stu_Exam]  WITH CHECK ADD FOREIGN KEY([Exam_Id])
REFERENCES [dbo].[Exams] ([Exam_Id])
GO
ALTER TABLE [dbo].[Stu_Exam]  WITH CHECK ADD FOREIGN KEY([Exam_Id])
REFERENCES [dbo].[Exams] ([Exam_Id])
GO
ALTER TABLE [dbo].[Stu_Exam]  WITH CHECK ADD FOREIGN KEY([St_Id])
REFERENCES [dbo].[Student] ([St_Id])
GO
ALTER TABLE [dbo].[Stu_Exam]  WITH CHECK ADD FOREIGN KEY([St_Id])
REFERENCES [dbo].[Student] ([St_Id])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([Dept_Id])
REFERENCES [dbo].[departmentt] ([Dept_Id])
GO
/****** Object:  StoredProcedure [dbo].[DeleteAnswer]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteAnswer]
    @St_Id INT
AS
BEGIN
    DELETE FROM Answers WHERE St_Id = @St_Id;
END;
EXEC DeleteAnswer 11;
GO
/****** Object:  StoredProcedure [dbo].[DeleteCourse]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteCourse]
    @Crs_Name NVARCHAR(50)
AS
BEGIN
    DELETE FROM Coursee WHERE Crs_Name = @Crs_Name;
END;
GO
/****** Object:  StoredProcedure [dbo].[DeleteDepartment]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteDepartment] @Dept_Id INT
AS
BEGIN
    DELETE FROM departmentt WHERE Dept_Id=@Dept_Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[DeleteExam]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteExam] @Exam_Id INT
AS
BEGIN
    DELETE FROM Exams WHERE Exam_Id=@Exam_Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[DeleteExamQuestion]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteExamQuestion] @Exam_Id INT
AS
BEGIN
    DELETE FROM Exam_Ques WHERE Exam_Id=@Exam_Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[DeleteInstructor]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteInstructor]
    @Ins_Id INT
AS
BEGIN
    DELETE FROM Instructor WHERE Ins_Id = @Ins_Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[DeleteOption]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteOption] @option_Id INT
AS
BEGIN
    DELETE FROM Options WHERE Option_Id=@option_Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[DeleteQuestion]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteQuestion]
    @Que_Id INT
AS
BEGIN
    DELETE FROM Questions WHERE Crs_Id = @Que_Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[DeleteStudent]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteStudent]
    @St_Id INT
AS
BEGIN
    DELETE FROM Student WHERE St_Id = @St_Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[DeleteStudentCourse]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteStudentCourse] @St_Id INT
AS
BEGIN
    DELETE FROM Stu_Course WHERE St_Id=@St_Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[DeleteStudentExams]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteStudentExams] @St_Id INT
AS
BEGIN
    DELETE FROM Stu_Exam WHERE St_Id=@St_Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[Exam_Answers]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Exam_Answers] @exam_id int, @st_id int, @ans ExamAnswersType readonly
as

insert into Stu_Exam values (@st_id,@exam_id)

insert into Answers (Ques_Id, St_Id, Selected_Option_Id)
select Ques_Id, @st_id, Selected_Option_Id from @ans;
GO
/****** Object:  StoredProcedure [dbo].[Exam_Correction]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Exam_Correction] @exam_id int, @st_id int
as 

DECLARE @grade INT, @TotalQuestions INT, @Percentage  float;

SELECT @TotalQuestions = COUNT(*)
    FROM Exam_Ques 
    WHERE Exam_Id = @exam_id;


SELECT @grade = COUNT(*)
FROM Answers A
JOIN Exam_Ques EQ ON A.Ques_Id = EQ.Ques_Id  
JOIN Questions Q ON A.Ques_Id = Q.Ques_Id 
join Options O on O.Ques_Id = Q.Ques_Id
WHERE A.St_Id = @st_id 
AND EQ.Exam_Id = @exam_id 
AND A.Selected_Option_Id = O.Option_Id
AND O.IsCorrect_Option = 1;

SET @Percentage = (CAST(@grade AS FLOAT) / @TotalQuestions) * 100;

SELECT @Percentage AS Percentage;
GO
/****** Object:  StoredProcedure [dbo].[GenerateExam]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GenerateExam] @cour_id int, @MCQ_num int , @TF_num int 
as

DECLARE @ExamId INT;
insert into Exams (Crs_Id) values (@cour_id)
SET @ExamId = SCOPE_IDENTITY();

insert into Exam_Ques (Exam_Id,Ques_Id)  
select @ExamId, Ques_Id from
(SELECT TOP (@MCQ_num) Ques_Id
FROM Questions
where Ques_Type = 'MCQ' and Crs_Id=@cour_id 
ORDER BY NEWID())AS RandomQues;

insert into Exam_Ques (Exam_Id,Ques_Id)
select @ExamId, Ques_Id from
(SELECT TOP (@TF_num) Ques_Id
FROM Questions
where Ques_Type = 'T/F' and Crs_Id=@cour_id 
ORDER BY NEWID()) AS RandomQues;

GO
/****** Object:  StoredProcedure [dbo].[GetAllAnswers]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllAnswers]
AS
BEGIN
    SELECT * FROM Answers;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetAllCourses]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllCourses]
AS
BEGIN
    SELECT * FROM Coursee;  -- تصحيح اسم الجدول
END;
GO
/****** Object:  StoredProcedure [dbo].[GetAllDepartments]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllDepartments]
AS
BEGIN
    SELECT * FROM departmentt;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetAllExamQuestions]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllExamQuestions]
AS
BEGIN
    SELECT * FROM Exam_Ques;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetAllExams]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllExams]
AS
BEGIN
    SELECT * FROM Exams;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetAllInstructors]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllInstructors]
AS
BEGIN
    SELECT * FROM Instructor;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetAllOptions]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllOptions]
AS
BEGIN
    SELECT * FROM Options;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetAllQuestions]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllQuestions]
AS
BEGIN
    SELECT * FROM Questions;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetAllStudentCourses]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllStudentCourses]
AS
BEGIN
    SELECT * FROM Stu_Course;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetAllStudentExams]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllStudentExams]
AS
BEGIN
    SELECT * FROM Stu_Exam;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetAllStudents]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllStudents]
AS
BEGIN
    SELECT * FROM Student;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetDepartmentByCourse]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetDepartmentByCourse] @cour_is int
as
select Dept_Name from departmentt 
join Coursee on Coursee.Dept_Id = departmentt.Dept_Id and Crs_Id = @cour_is

GO
/****** Object:  StoredProcedure [dbo].[GetInstructorCourses]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetInstructorCourses]
    @InstructorId INT
AS
BEGIN
    SELECT C.Crs_Name, COUNT(SC.St_Id) AS StudentCount
    FROM Coursee C
    LEFT JOIN Stu_Course SC ON C.Crs_Id = SC.Crs_Id
    WHERE C.Ins_Id = @InstructorId
    GROUP BY C.Crs_Name;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetQuesByExam]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetQuesByExam] @exam_id int
as
select Text from Questions 
join Exam_Ques on Exam_Ques.Ques_Id = Questions.Ques_Id and Exam_Id = @exam_id
GO
/****** Object:  StoredProcedure [dbo].[GetStudentAswersProc]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetStudentAswersProc] @exam_id int, @st_id int
as
select Text, Option_Text from Questions 
join Exam_Ques on Exam_Ques.Ques_Id = Questions.Ques_Id and Exam_Id = @exam_id
join Answers on Answers.Ques_Id = Questions.Ques_Id and St_Id =@st_id
join Options on Option_Id = Selected_Option_Id
GO
/****** Object:  StoredProcedure [dbo].[GetStudentGrades]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetStudentGrades]
    @StudentId INT
as 
begin 
 SELECT C.Crs_Name, SC.Grade
    FROM Coursee C
    INNER JOIN Stu_Course SC ON C.Crs_Id = SC.Crs_Id
    WHERE SC.St_Id = @StudentId;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetStudentsByDepartment]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetStudentsByDepartment]
    @DeptId INT
AS
BEGIN
    SELECT St_Id, St_Name, Address, Age, Dept_Id
    FROM Student
    WHERE Dept_Id = @DeptId;
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertAnswer]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertAnswer]
    @Ans_Id INT,
    @Ques_Id INT,
    @St_Id INT,
    @Selected_Option_Id INT
AS
BEGIN
    INSERT INTO Answers (Answer_Id, Ques_Id, St_Id, Selected_Option_Id) 
    VALUES (@Ans_Id, @Ques_Id, @St_Id, @Selected_Option_Id);
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertCourse]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertCourse]
    @Crs_Id INT,
    @Crs_Name NVARCHAR(50),
    @Duration INT,
     @Dep_Id INT,
	 @Ins_Id INT
   
AS
BEGIN
    INSERT INTO Coursee(Crs_Id, Crs_Name, Duration, Dept_Id, Ins_Id) 
    VALUES (@Crs_Id, @Crs_Name, @Duration, @Ins_Id, @Dep_Id);
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertDepartment]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertDepartment] @Dept_Id INT, @Dept_Name NVARCHAR(50), @Location NVARCHAR(50), @Manager_Id INT
AS
BEGIN
    INSERT INTO departmentt VALUES(@Dept_Id, @Dept_Name, @Location, @Manager_Id);
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertExam]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertExam] @Exam_Id INT, @Crs_Id INT
AS
BEGIN
    INSERT INTO Exams VALUES(@Exam_Id, @Crs_Id);
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertExamQuestion]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertExamQuestion] @Exam_Id INT, @Question_Id INT
AS
BEGIN
    INSERT INTO Exam_Ques VALUES(@Exam_Id, @Question_Id);
END;
EXEC InsertExamQuestion 1, 5;
GO
/****** Object:  StoredProcedure [dbo].[InsertInstructor]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertInstructor]
    @Ins_Id INT,
    @Ins_Name NVARCHAR(50),
    @Degree NVARCHAR(100),
    @Salary decimal(10,2),
    @Dep_Id INT
AS
BEGIN
    INSERT INTO Instructor (Ins_Id, Ins_Name, Degree, Salary, Dept_Id) 
    VALUES (@Ins_Id, @Ins_Name, @Degree, @Salary, @Dep_Id);
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertOptions]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertOptions] @option_Id INT, @ques_Id INT, @optionText nvarchar(255), @isCorrectOption bit
AS
BEGIN
    INSERT INTO Options VALUES(@option_Id, @ques_Id, @optionText, @isCorrectOption);
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertQuestion]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertQuestion]
    @Ques_Id INT,
    @Ques_Type NVARCHAR(10),
    @Ques_Text NVARCHAR(255),
    @Crs_Id INT
AS
BEGIN
    INSERT INTO Questions (Ques_Id, Ques_Type, Text, Crs_Id) 
    VALUES (@Ques_Id, @Ques_Type, @Ques_Text, @Crs_Id);
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertStudent]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertStudent]
    @St_Id INT,
    @St_Name NVARCHAR(50),
    @City NVARCHAR(50),
    @Age INT,
    @Dept_Id INT
AS
BEGIN
    INSERT INTO Student (St_Id, St_Name, Address, Age, Dept_Id) 
    VALUES (@St_Id, @St_Name, @City, @Age, @Dept_Id);
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertStudentCourse]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertStudentCourse] @St_Id INT, @Crs_Id INT, @Grade NVARCHAR(10)
AS
BEGIN
    INSERT INTO Stu_Course VALUES(@St_Id, @Crs_Id, @Grade);
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertStudentExam]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertStudentExam] @St_Id INT, @Exam_Id INT
AS
BEGIN
    INSERT INTO Stu_Exam VALUES(@St_Id, @Exam_Id);
END;
GO
/****** Object:  StoredProcedure [dbo].[UpdateAnswer]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateAnswer]
    @St_Id INT,
    @NewSelectedOption INT
AS
BEGIN
    UPDATE Answers SET Selected_Option_Id = @NewSelectedOption WHERE St_Id = @St_Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[UpdateCourse]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateCourse]
    @Crs_Id INT,
    @NewCrs_Name NVARCHAR(50)
AS
BEGIN
    UPDATE Coursee SET Crs_Name = @NewCrs_Name WHERE Crs_Id = @Crs_Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[UpdateDepartment]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateDepartment] @Dept_Id INT, @New_Dept_Name NVARCHAR(50)
AS
BEGIN
    UPDATE departmentt SET Dept_Name= @New_Dept_Name WHERE Dept_Id=@Dept_Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[UpdateExam]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateExam] @Old_Exam_Id INT, @New_Exam_Id INT
AS
BEGIN
    UPDATE Exams SET Exam_Id=@New_Exam_Id WHERE Exam_Id=@Old_Exam_Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[UpdateExamQuestion]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateExamQuestion] @Old_Exam_Id INT, @New_Exam_Id INT
AS
BEGIN
    UPDATE Exam_Ques SET Exam_Id=@New_Exam_Id WHERE Exam_Id=@Old_Exam_Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[UpdateInstructor]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateInstructor]
    @Ins_Id INT,
    @New_Ins_Name NVARCHAR(50)
AS
BEGIN
    UPDATE Instructor SET Ins_Name = @New_Ins_Name WHERE Ins_Id = @Ins_Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[UpdateOptions]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateOptions] @option_Id INT, @optionText nvarchar(255)
AS
BEGIN
    UPDATE Options SET Option_Text=@optionText WHERE Option_Id=@option_Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[UpdateQuestion]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateQuestion]
    @Old_Crs_Id INT,
    @New_Crs_Id INT
AS
BEGIN
    UPDATE Questions SET Crs_Id = @New_Crs_Id WHERE Crs_Id = @Old_Crs_Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[UpdateStudent]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateStudent]
    @St_Id INT,
    @NewAge INT
AS
BEGIN
    UPDATE Student SET Age = @NewAge WHERE St_Id = @St_Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[UpdateStudentCourse]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateStudentCourse] @St_Id INT, @New_Grade NVARCHAR(10)
AS
BEGIN
    UPDATE Stu_Course SET Grade=@New_Grade WHERE St_Id=@St_Id;
END;
EXEC UpdateStudentCourse 100, 'A';
GO
/****** Object:  StoredProcedure [dbo].[UpdateStudentExams]    Script Date: 4/14/2025 9:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateStudentExams] @St_Id INT, @Exam_Id INT
AS
BEGIN
    UPDATE Stu_Exam SET St_Id=@St_Id WHERE Exam_Id=@Exam_Id;
END;
GO
