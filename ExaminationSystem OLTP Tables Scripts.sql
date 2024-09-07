USE [ExaminationSystem]
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 9/7/2024 1:13:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer](
	[St_ID] [int] NOT NULL,
	[ex_ID] [int] NOT NULL,
	[QS_ID] [int] NOT NULL,
	[St_Answer] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[St_ID] ASC,
	[ex_ID] ASC,
	[QS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Branch]    Script Date: 9/7/2024 1:13:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branch](
	[B_ID] [int] NOT NULL,
	[B_name] [varchar](100) NULL,
	[B_location] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[B_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[branch_Intake]    Script Date: 9/7/2024 1:13:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[branch_Intake](
	[B_ID] [int] NOT NULL,
	[Intake_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[B_ID] ASC,
	[Intake_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[branch_intake_track]    Script Date: 9/7/2024 1:13:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[branch_intake_track](
	[B_ID] [int] NOT NULL,
	[Intake_ID] [int] NOT NULL,
	[track_ID] [int] NOT NULL,
 CONSTRAINT [PK_branch_intake_track] PRIMARY KEY CLUSTERED 
(
	[B_ID] ASC,
	[Intake_ID] ASC,
	[track_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Choice]    Script Date: 9/7/2024 1:13:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Choice](
	[choice_ID] [int] NOT NULL,
	[choice_Desc] [text] NULL,
	[QS_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[choice_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[company]    Script Date: 9/7/2024 1:13:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[company](
	[company_ID] [int] NOT NULL,
	[company_name] [varchar](100) NULL,
	[company_Location] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[company_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 9/7/2024 1:13:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[course_ID] [int] NOT NULL,
	[cr_name] [varchar](100) NULL,
	[Num_hours] [int] NULL,
	[evaluation] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[course_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[course_instructor]    Script Date: 9/7/2024 1:13:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[course_instructor](
	[course_ID] [int] NOT NULL,
	[ins_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[course_ID] ASC,
	[ins_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 9/7/2024 1:13:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Dept_ID] [int] NOT NULL,
	[Dept_Name] [varchar](250) NULL,
	[Manger_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Dept_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 9/7/2024 1:13:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[ex_ID] [int] NOT NULL,
	[duration] [int] NULL,
	[start_time] [datetime] NULL,
	[course_ID] [int] NULL,
	[ex_grade] [float] NULL,
	[Modification_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ex_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Graduates]    Script Date: 9/7/2024 1:13:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Graduates](
	[graduate_ID] [int] NOT NULL,
	[graduate_name] [varchar](100) NULL,
	[job_title] [varchar](100) NULL,
	[track_ID] [int] NULL,
	[Gender] [varchar](50) NULL,
	[G_Faculty] [varchar](50) NULL,
	[Age] [int] NULL,
	[G_city] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[graduate_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[graduates_company]    Script Date: 9/7/2024 1:13:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[graduates_company](
	[graduates_ID] [int] NOT NULL,
	[company_ID] [int] NOT NULL,
	[grad_Salary] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[graduates_ID] ASC,
	[company_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 9/7/2024 1:13:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[ins_ID] [int] NOT NULL,
	[ins_name] [varchar](100) NULL,
	[ins_email] [varchar](100) NULL,
	[ins_gender] [varchar](10) NULL,
	[Salary] [decimal](10, 2) NULL,
	[Dept_ID] [int] NULL,
	[Ins_city] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ins_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InstructorPhone]    Script Date: 9/7/2024 1:13:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InstructorPhone](
	[ins_ID] [int] NOT NULL,
	[ins_phone] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ins_ID] ASC,
	[ins_phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Intake]    Script Date: 9/7/2024 1:13:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Intake](
	[Intake_ID] [int] NOT NULL,
	[Intake_name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Intake_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 9/7/2024 1:13:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[Qs_ID] [int] NOT NULL,
	[Qs_degree] [int] NULL,
	[Qs_desc] [text] NULL,
	[Qs_type] [varchar](100) NULL,
	[correct_answer] [text] NULL,
	[Course_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Qs_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_exam]    Script Date: 9/7/2024 1:13:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_exam](
	[Qs_ID] [int] NOT NULL,
	[ex_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Qs_ID] ASC,
	[ex_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 9/7/2024 1:13:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[St_ID] [int] NOT NULL,
	[St_name] [varchar](100) NULL,
	[St_age] [int] NULL,
	[St_email] [varchar](100) NULL,
	[gender] [varchar](10) NULL,
	[track_ID] [int] NULL,
	[St_city] [varchar](50) NULL,
	[St_Faculty] [varchar](50) NULL,
	[Certification] [int] NULL,
	[Freelance] [varchar](100) NULL,
	[B_ID] [int] NULL,
	[Intake_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[St_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student_exam]    Script Date: 9/7/2024 1:13:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student_exam](
	[Std_ID] [int] NOT NULL,
	[ex_ID] [int] NOT NULL,
	[st_Grade] [varchar](10) NULL,
	[exam_percentage] [decimal](5, 2) NULL,
	[St_status] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Std_ID] ASC,
	[ex_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Phone]    Script Date: 9/7/2024 1:13:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Phone](
	[St_ID] [int] NOT NULL,
	[St_Phone] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[St_ID] ASC,
	[St_Phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topic]    Script Date: 9/7/2024 1:13:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topic](
	[Topic_ID] [int] NOT NULL,
	[Course_ID] [int] NULL,
	[Topic_Name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Topic_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trackcourse]    Script Date: 9/7/2024 1:13:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trackcourse](
	[track_ID] [int] NOT NULL,
	[course_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[track_ID] ASC,
	[course_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tracks]    Script Date: 9/7/2024 1:13:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tracks](
	[track_ID] [int] NOT NULL,
	[Track_name] [varchar](100) NULL,
	[ins_ID] [int] NULL,
	[Dept_ID] [int] NULL,
	[duration] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[track_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (1, 1, 2, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (1, 1, 3, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (1, 1, 4, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (1, 1, 5, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (1, 1, 6, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (1, 1, 13, N'def function_name():')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (1, 1, 14, N'/*')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (1, 1, 15, N'Creator')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (1, 1, 19, N'use module_name')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (1, 1, 20, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (1, 20, 64, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (1, 20, 65, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (1, 20, 69, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (1, 20, 74, N'text-color')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (1, 20, 75, N'ol')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (1, 20, 76, N'Cascading Style Sheets')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (1, 20, 77, N'footer')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (1, 20, 78, N'font-size')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (1, 20, 79, N'href')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (1, 20, 80, N'To group inline elements together')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (2, 1, 2, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (2, 1, 3, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (2, 1, 4, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (2, 1, 5, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (2, 1, 6, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (2, 1, 13, N'function function_name()')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (2, 1, 14, N'#')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (2, 1, 15, N'Constructor')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (2, 1, 19, N'include module_name')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (2, 1, 20, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (5, 2, 83, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (5, 2, 84, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (5, 2, 88, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (5, 2, 89, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (5, 2, 90, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (5, 2, 93, N'2 GB')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (5, 2, 94, N'Graphs')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (5, 2, 96, N'Visuals')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (5, 2, 98, N'Bar chart')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (5, 2, 99, N'Record-Level Security')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (6, 2, 83, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (6, 2, 84, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (6, 2, 88, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (6, 2, 89, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (6, 2, 90, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (6, 2, 93, N'1 GB')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (6, 2, 94, N'Tables')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (6, 2, 96, N'Groups')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (6, 2, 98, N'Line chart')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (6, 2, 99, N'Record-Level Security')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (13, 5, 41, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (13, 5, 43, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (13, 5, 47, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (13, 5, 48, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (13, 5, 50, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (13, 5, 51, N'SELECT')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (13, 5, 52, N'WHERE')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (13, 5, 53, N'To combine rows from two or more tables based on a related column')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (13, 5, 54, N'ORDER BY')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (13, 5, 57, N'ADD TABLE')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (15, 6, 41, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (15, 6, 42, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (15, 6, 46, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (15, 6, 48, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (15, 6, 49, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (15, 6, 51, N'SELECT')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (15, 6, 54, N'ORDER BY')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (15, 6, 55, N'UPDATE')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (15, 6, 58, N'To group rows that have the same values into summary rows')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (15, 6, 59, N'COUNT()')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (21, 3, 21, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (21, 3, 24, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (21, 3, 26, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (21, 3, 29, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (21, 3, 30, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (21, 3, 34, N'Static Method')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (21, 3, 36, N'extends')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (21, 3, 37, N'Polymorphism')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (21, 3, 39, N'Abstract Class')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (21, 3, 40, N'Class Method')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (33, 3, 21, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (33, 3, 24, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (33, 3, 26, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (33, 3, 29, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (33, 3, 30, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (33, 3, 34, N'Class Method')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (33, 3, 36, N'Super')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (33, 3, 37, N'Inheritance')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (33, 3, 39, N'Class')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (33, 3, 40, N'Class Method')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (35, 4, 43, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (35, 4, 44, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (35, 4, 45, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (35, 4, 46, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (35, 4, 49, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (35, 4, 53, N'To aggregate data by grouping records')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (35, 4, 54, N'ORDER BY')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (35, 4, 55, N'ALTER')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (35, 4, 56, N'TRUNCATE TABLE')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (35, 4, 59, N'COUNT()')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (52, 4, 43, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (52, 4, 44, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (52, 4, 45, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (52, 4, 46, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (52, 4, 49, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (52, 4, 53, N'To combine rows from two or more tables based on a related column')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (52, 4, 54, N'ORDER BY')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (52, 4, 55, N'UPDATE')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (52, 4, 56, N'DROP TABLE')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (52, 4, 59, N'COUNT()')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (55, 5, 41, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (55, 5, 43, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (55, 5, 47, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (55, 5, 48, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (55, 5, 50, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (55, 5, 51, N'SELECT')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (55, 5, 52, N'WHERE')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (55, 5, 53, N'To combine rows from two or more tables based on a related column')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (55, 5, 54, N'DISTINCT')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (55, 5, 57, N'MAKE TABLE')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (60, 6, 41, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (60, 6, 42, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (60, 6, 46, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (60, 6, 48, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (60, 6, 49, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (60, 6, 51, N'SELECT')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (60, 6, 54, N'ORDER BY')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (60, 6, 55, N'UPDATE')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (60, 6, 58, N'To sort rows into groups based on the column values')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (60, 6, 59, N'COUNT()')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (200, 11, 26, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (200, 11, 27, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (200, 11, 31, N'Nested Class')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (200, 11, 32, N'Inheritance')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (200, 11, 33, N'Encapsulation')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (200, 11, 34, N'Static Method')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (200, 11, 37, N'Inheritance')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (200, 11, 38, N'Method Overriding')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (200, 11, 39, N'Abstract Class')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (200, 11, 40, N'Class Method')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (201, 7, 41, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (201, 7, 43, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (201, 7, 46, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (201, 7, 51, N'SELECT')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (201, 7, 54, N'ORDER BY')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (201, 7, 55, N'UPDATE')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (201, 7, 56, N'DROP TABLE')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (201, 7, 57, N'CREATE TABLE')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (201, 7, 59, N'COUNT()')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (201, 7, 60, N'MODIFY TABLE ADD COLUMN')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (202, 13, 21, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (202, 13, 23, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (202, 13, 24, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (202, 13, 25, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (202, 13, 28, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (202, 13, 33, N'Polymorphism')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (202, 13, 36, N'implements')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (202, 13, 37, N'Inheritance')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (202, 13, 39, N'Abstract Class')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (202, 13, 40, N'Instance Method')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (203, 14, 81, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (203, 14, 82, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (203, 14, 83, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (203, 14, 87, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (203, 14, 89, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (203, 14, 93, N'10 GB')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (203, 14, 95, N'Sharing reports and dashboards')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (203, 14, 96, N'Groups')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (203, 14, 99, N'Row-Level Security')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (203, 14, 100, N'To visualize relationships between tables')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (250, 17, 63, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (250, 17, 64, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (250, 17, 67, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (250, 17, 68, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (250, 17, 69, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (250, 17, 71, N'meta')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (250, 17, 73, N'alt')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (250, 17, 77, N'footer')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (250, 17, 78, N'font-size')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (250, 17, 80, N'To group inline elements together')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (250, 30, 82, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (250, 30, 84, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (250, 30, 85, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (250, 30, 88, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (250, 30, 89, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (250, 30, 93, N'1 GB')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (250, 30, 97, N'.pbix')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (250, 30, 98, N'Line chart')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (250, 30, 99, N'Row-Level Security')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (250, 30, 100, N'To provide an overview of key metrics')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (255, 25, 101, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (255, 25, 102, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (255, 25, 105, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (255, 25, 106, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (255, 25, 107, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (255, 25, 111, N'DNS')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (255, 25, 112, N'Network Layer')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (255, 25, 113, N'To map IP addresses to MAC addresses')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (255, 25, 115, N'LAN')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (255, 25, 120, N'Transport Layer')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (333, 24, 1, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (333, 24, 3, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (333, 24, 4, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (333, 24, 9, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (333, 24, 10, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (333, 24, 11, N'8')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (333, 24, 13, N'def function_name():')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (333, 24, 17, N'class')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (333, 24, 18, N'character')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (333, 24, 19, N'import module_name')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (400, 16, 101, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (400, 16, 103, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (400, 16, 106, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (400, 16, 108, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (400, 16, 110, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (400, 16, 111, N'FTP')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (400, 16, 114, N'HTTP')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (400, 16, 115, N'WAN')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (400, 16, 118, N'Mesh')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (400, 16, 120, N'Session Layer')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (444, 22, 1, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (444, 22, 3, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (444, 22, 10, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (444, 22, 11, N'8')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (444, 22, 12, N'List')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (444, 22, 15, N'Constructor')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (444, 22, 16, N'5.0')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (444, 22, 17, N'class')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (444, 22, 18, N'character')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (444, 22, 19, N'import module_name')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (450, 18, 61, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (450, 18, 62, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (450, 18, 65, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (450, 18, 66, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (450, 18, 67, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (450, 18, 69, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (450, 18, 70, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (450, 18, 74, N'font-color')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (450, 18, 75, N'ol')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (450, 18, 79, N'href')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (500, 15, 101, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (500, 15, 102, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (500, 15, 105, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (500, 15, 106, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (500, 15, 113, N'To map IP addresses to MAC addresses')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (500, 15, 114, N'HTTPS')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (500, 15, 115, N'LAN')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (500, 15, 118, N'Star')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (500, 15, 119, N'FTP')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (500, 15, 120, N'Transport Layer')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (522, 19, 63, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (522, 19, 66, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (522, 19, 68, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (522, 19, 71, N'meta')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (522, 19, 73, N'alt')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (522, 19, 74, N'font-color')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (522, 19, 75, N'ol')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (522, 19, 76, N'Cascading Style Sheets')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (522, 19, 78, N'font-size')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (522, 19, 80, N'To group inline elements together')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (555, 21, 3, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (555, 21, 4, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (555, 21, 5, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (555, 21, 6, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (555, 21, 9, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (555, 21, 11, N'8')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (555, 21, 12, N'List')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (555, 21, 14, N'#')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (555, 21, 16, N'5')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (555, 21, 18, N'character')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (588, 28, 81, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (588, 28, 89, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (588, 28, 90, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (588, 28, 91, N'Power BI Service')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (588, 28, 92, N'DAX')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (588, 28, 95, N'Sharing reports and dashboards')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (588, 28, 97, N'.pbix')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (588, 28, 98, N'Line chart')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (588, 28, 99, N'Row-Level Security')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (600, 10, 21, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (600, 10, 23, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (600, 10, 26, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (600, 10, 29, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (600, 10, 30, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (600, 10, 31, N'Composite Class')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (600, 10, 32, N'Polymorphism')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (600, 10, 33, N'Polymorphism')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (600, 10, 37, N'Abstraction')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (600, 10, 40, N'Static Variable')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (641, 27, 83, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (641, 27, 84, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (641, 27, 86, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (641, 27, 90, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (641, 27, 91, N'Power BI Desktop')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (641, 27, 93, N'1 GB')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (641, 27, 95, N'Sharing reports and dashboards')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (641, 27, 97, N'.pbix')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (641, 27, 98, N'Line chart')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (641, 27, 99, N'Row-Level Security')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (666, 23, 5, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (666, 23, 7, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (666, 23, 8, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (666, 23, 9, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (666, 23, 12, N'List')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (666, 23, 13, N'def function_name():')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (666, 23, 14, N'#')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (666, 23, 16, N'5.0')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (666, 23, 18, N'character')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (666, 23, 19, N'import module_name')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (700, 9, 21, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (700, 9, 25, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (700, 9, 28, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (700, 9, 30, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (700, 9, 32, N'Encapsulation')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (700, 9, 33, N'Encapsulation')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (700, 9, 36, N'uses')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (700, 9, 37, N'Polymorphism')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (700, 9, 38, N'Method Overloading')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (700, 9, 40, N'Instance Method')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (701, 29, 81, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (701, 29, 82, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (701, 29, 84, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (701, 29, 85, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (701, 29, 87, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (701, 29, 90, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (701, 29, 92, N'DAX')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (701, 29, 97, N'.pbix')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (701, 29, 98, N'Line chart')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (701, 29, 100, N'To provide an overview of key metrics')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (711, 26, 82, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (711, 26, 85, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (711, 26, 86, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (711, 26, 87, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (711, 26, 89, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (711, 26, 91, N'Power BI Desktop')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (711, 26, 92, N'DAX')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (711, 26, 93, N'1 GB')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (711, 26, 98, N'Line chart')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (711, 26, 99, N'Row-Level Security')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (778, 31, 41, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (778, 31, 42, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (778, 31, 43, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (778, 31, 44, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (778, 31, 47, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (778, 31, 48, N'False')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (778, 31, 49, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (778, 31, 50, N'True')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (778, 31, 52, N'WHERE')
GO
INSERT [dbo].[Answer] ([St_ID], [ex_ID], [QS_ID], [St_Answer]) VALUES (778, 31, 58, N'To group rows that have the same values in specified columns and perform aggregate functions on them')
GO
INSERT [dbo].[Branch] ([B_ID], [B_name], [B_location]) VALUES (1, N'Qena ITI', N'Qena, Egypt')
GO
INSERT [dbo].[Branch] ([B_ID], [B_name], [B_location]) VALUES (2, N'Alexandria ITI', N'Alexandria, Egypt')
GO
INSERT [dbo].[Branch] ([B_ID], [B_name], [B_location]) VALUES (3, N'Minya ITI', N'Minya, Egypt')
GO
INSERT [dbo].[Branch] ([B_ID], [B_name], [B_location]) VALUES (4, N'New Capital ITI', N'Cairo, Egypt')
GO
INSERT [dbo].[Branch] ([B_ID], [B_name], [B_location]) VALUES (5, N'Aswan ITI', N'Aswan, Egypt')
GO
INSERT [dbo].[Branch] ([B_ID], [B_name], [B_location]) VALUES (6, N'Asyut ITI', N'Asyut, Egypt')
GO
INSERT [dbo].[Branch] ([B_ID], [B_name], [B_location]) VALUES (7, N'Ismailia ITI', N'Ismailia, Egypt')
GO
INSERT [dbo].[Branch] ([B_ID], [B_name], [B_location]) VALUES (8, N'Fayoum ITI', N'Fayoum, Egypt')
GO
INSERT [dbo].[Branch] ([B_ID], [B_name], [B_location]) VALUES (9, N'Beni Suef ITI', N'Beni Suef, Egypt')
GO
INSERT [dbo].[Branch] ([B_ID], [B_name], [B_location]) VALUES (10, N'Sohag ITI', N'Sohag, Egypt')
GO
INSERT [dbo].[Branch] ([B_ID], [B_name], [B_location]) VALUES (11, N'Menofia ITI', N'Menofia, Egypt')
GO
INSERT [dbo].[Branch] ([B_ID], [B_name], [B_location]) VALUES (12, N'Cairo University ITI', N'Cairo, Egypt')
GO
INSERT [dbo].[Branch] ([B_ID], [B_name], [B_location]) VALUES (13, N'Smart Village ITI', N'Giza, Egypt')
GO
INSERT [dbo].[Branch] ([B_ID], [B_name], [B_location]) VALUES (14, N'Mansoura ITI', N'Mansoura, Egypt')
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (1, 1)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (1, 2)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (1, 5)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (2, 1)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (2, 2)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (2, 4)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (2, 5)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (3, 1)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (3, 3)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (3, 8)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (4, 2)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (4, 3)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (4, 4)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (4, 6)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (4, 9)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (4, 12)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (5, 2)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (5, 4)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (5, 5)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (5, 7)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (5, 10)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (5, 13)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (5, 14)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (5, 15)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (6, 3)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (6, 5)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (6, 6)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (6, 7)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (6, 8)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (6, 16)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (6, 17)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (6, 18)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (7, 4)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (7, 7)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (7, 9)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (7, 10)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (7, 13)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (7, 19)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (7, 20)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (8, 1)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (8, 2)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (8, 7)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (8, 8)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (8, 11)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (8, 12)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (8, 21)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (8, 22)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (8, 23)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (8, 24)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (9, 3)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (9, 4)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (9, 9)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (9, 11)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (9, 12)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (9, 15)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (9, 21)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (9, 22)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (9, 23)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (9, 25)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (9, 26)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (10, 5)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (10, 7)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (10, 10)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (10, 11)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (10, 13)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (10, 14)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (10, 15)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (10, 16)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (10, 17)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (10, 23)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (10, 27)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (10, 28)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (10, 29)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (10, 30)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (10, 33)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (10, 41)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (10, 42)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (10, 43)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (10, 44)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (10, 45)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (11, 6)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (11, 10)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (11, 12)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (11, 16)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (11, 17)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (11, 19)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (11, 20)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (11, 23)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (11, 24)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (11, 25)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (11, 27)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (11, 28)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (11, 29)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (11, 31)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (11, 32)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (11, 33)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (11, 41)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (11, 42)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (11, 43)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (11, 44)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (11, 45)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (12, 6)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (12, 8)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (12, 9)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (12, 11)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (12, 13)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (12, 16)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (12, 18)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (12, 19)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (12, 20)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (12, 21)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (12, 22)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (12, 24)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (12, 25)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (12, 26)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (12, 27)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (12, 28)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (12, 29)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (12, 30)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (12, 31)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (12, 32)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (12, 33)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (12, 34)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (12, 35)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (12, 36)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (12, 41)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (12, 42)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (12, 43)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (12, 44)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (12, 45)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (13, 6)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (13, 8)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (13, 9)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (13, 11)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (13, 12)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (13, 14)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (13, 15)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (13, 17)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (13, 21)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (13, 22)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (13, 23)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (13, 24)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (13, 25)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (13, 26)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (13, 27)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (13, 28)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (13, 29)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (13, 30)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (13, 31)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (13, 32)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (13, 33)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (13, 34)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (13, 35)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (13, 36)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (13, 37)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (13, 38)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (13, 39)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (13, 41)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (13, 42)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (13, 43)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (13, 44)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (13, 45)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (14, 10)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (14, 13)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (14, 14)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (14, 16)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (14, 18)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (14, 19)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (14, 20)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (14, 21)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (14, 22)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (14, 24)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (14, 26)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (14, 40)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (14, 41)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (14, 42)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (14, 43)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (14, 44)
GO
INSERT [dbo].[branch_Intake] ([B_ID], [Intake_ID]) VALUES (14, 45)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (1, 1, 1)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (1, 1, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (1, 1, 21)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (1, 2, 2)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (1, 5, 1)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (1, 5, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (1, 5, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (2, 1, 1)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (2, 1, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (2, 1, 21)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (2, 2, 2)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (2, 4, 4)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (2, 4, 10)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (2, 4, 17)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (2, 5, 1)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (2, 5, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (2, 5, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (3, 1, 1)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (3, 1, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (3, 1, 21)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (3, 3, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (3, 3, 22)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (3, 3, 24)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (3, 8, 4)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (3, 8, 8)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (3, 8, 24)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (4, 2, 2)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (4, 3, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (4, 3, 22)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (4, 3, 24)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (4, 4, 4)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (4, 4, 10)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (4, 4, 17)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (4, 6, 2)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (4, 6, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (4, 6, 22)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (4, 9, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (4, 9, 9)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (4, 9, 25)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (4, 9, 26)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (4, 9, 27)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (4, 12, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (4, 12, 8)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (4, 12, 12)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (5, 2, 2)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (5, 4, 4)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (5, 4, 10)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (5, 4, 17)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (5, 5, 1)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (5, 5, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (5, 5, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (5, 7, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (5, 7, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (5, 7, 23)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (5, 10, 1)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (5, 10, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (5, 10, 10)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (5, 10, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (5, 13, 4)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (5, 13, 9)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (5, 13, 13)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (5, 14, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (5, 14, 10)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (5, 14, 14)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (5, 15, 1)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (5, 15, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (5, 15, 11)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (5, 15, 15)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (6, 3, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (6, 3, 22)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (6, 3, 24)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (6, 5, 1)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (6, 5, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (6, 5, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (6, 6, 2)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (6, 6, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (6, 6, 22)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (6, 7, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (6, 7, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (6, 7, 23)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (6, 8, 4)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (6, 8, 8)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (6, 8, 24)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (6, 16, 2)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (6, 16, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (6, 16, 12)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (6, 16, 16)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (6, 17, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (6, 17, 8)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (6, 17, 13)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (6, 17, 17)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (6, 18, 4)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (6, 18, 9)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (6, 18, 14)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (6, 18, 18)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (7, 4, 4)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (7, 4, 10)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (7, 4, 17)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (7, 7, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (7, 7, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (7, 7, 23)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (7, 9, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (7, 9, 9)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (7, 9, 25)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (7, 9, 26)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (7, 9, 27)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (7, 10, 1)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (7, 10, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (7, 10, 10)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (7, 10, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (7, 13, 4)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (7, 13, 9)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (7, 13, 13)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (7, 19, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (7, 19, 10)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (7, 19, 15)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (7, 19, 19)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (7, 19, 26)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (7, 20, 1)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (7, 20, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (7, 20, 11)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (7, 20, 16)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (7, 20, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 1, 1)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 1, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 1, 21)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 2, 2)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 7, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 7, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 7, 23)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 8, 4)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 8, 8)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 8, 24)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 11, 2)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 11, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 11, 11)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 11, 26)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 12, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 12, 8)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 12, 12)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 21, 2)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 21, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 21, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 21, 12)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 21, 17)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 21, 21)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 22, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 22, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 22, 8)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 22, 13)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 22, 18)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 22, 22)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 23, 4)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 23, 9)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 23, 14)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 23, 19)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 23, 23)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 24, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 24, 10)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 24, 15)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 24, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (8, 24, 24)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 3, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 3, 22)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 3, 24)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 4, 4)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 4, 10)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 4, 17)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 9, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 9, 9)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 9, 25)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 9, 26)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 9, 27)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 11, 2)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 11, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 11, 11)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 11, 26)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 12, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 12, 8)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 12, 12)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 15, 1)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 15, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 15, 11)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 15, 15)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 21, 2)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 21, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 21, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 21, 12)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 21, 17)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 21, 21)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 22, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 22, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 22, 8)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 22, 13)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 22, 18)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 22, 22)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 23, 4)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 23, 9)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 23, 14)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 23, 19)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 23, 23)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 25, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 25, 11)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 25, 16)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 25, 21)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 25, 25)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 26, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 26, 12)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 26, 17)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 26, 22)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (9, 26, 27)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 5, 1)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 5, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 5, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 7, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 7, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 7, 23)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 10, 1)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 10, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 10, 10)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 10, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 11, 2)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 11, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 11, 11)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 11, 26)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 13, 4)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 13, 9)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 13, 13)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 14, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 14, 10)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 14, 14)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 15, 1)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 15, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 15, 11)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 15, 15)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 16, 2)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 16, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 16, 12)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 16, 16)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 17, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 17, 8)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 17, 13)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 17, 17)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 23, 4)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 23, 9)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 23, 14)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 23, 19)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 23, 23)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 27, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 27, 8)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 27, 13)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 27, 18)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 27, 23)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 28, 4)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 28, 9)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 28, 14)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 28, 19)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 28, 24)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 29, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 29, 10)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 29, 15)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 29, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 29, 25)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 30, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 30, 11)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 30, 16)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 30, 21)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 33, 9)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 33, 14)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 33, 19)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 33, 24)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 33, 27)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 41, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 41, 15)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 41, 16)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 41, 22)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 41, 25)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 42, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 42, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 42, 16)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 42, 17)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 42, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 43, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 43, 11)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 43, 13)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 43, 18)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 43, 19)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 43, 23)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 44, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 44, 4)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 44, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 44, 10)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 44, 15)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 44, 17)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 44, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 44, 22)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 44, 25)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 45, 2)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 45, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 45, 9)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 45, 11)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 45, 12)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 45, 16)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 45, 18)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 45, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 45, 23)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 45, 25)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 45, 26)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (10, 45, 27)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 6, 2)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 6, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 6, 22)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 10, 1)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 10, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 10, 10)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 10, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 12, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 12, 8)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 12, 12)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 16, 2)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 16, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 16, 12)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 16, 16)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 17, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 17, 8)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 17, 13)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 17, 17)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 19, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 19, 10)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 19, 15)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 19, 19)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 19, 26)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 20, 1)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 20, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 20, 11)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 20, 16)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 20, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 23, 4)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 23, 9)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 23, 14)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 23, 19)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 23, 23)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 24, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 24, 10)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 24, 15)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 24, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 24, 24)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 25, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 25, 11)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 25, 16)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 25, 21)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 25, 25)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 27, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 27, 8)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 27, 13)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 27, 18)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 27, 23)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 28, 4)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 28, 9)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 28, 14)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 28, 19)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 28, 24)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 29, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 29, 10)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 29, 15)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 29, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 29, 25)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 31, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 31, 12)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 31, 17)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 31, 22)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 32, 2)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 32, 8)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 32, 13)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 32, 18)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 32, 23)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 33, 9)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 33, 14)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 33, 19)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 33, 24)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 33, 27)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 41, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 41, 15)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 41, 16)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 41, 22)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 41, 25)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 42, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 42, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 42, 16)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 42, 17)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 42, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 43, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 43, 11)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 43, 13)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 43, 18)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 43, 19)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 43, 23)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 44, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 44, 4)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 44, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 44, 10)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 44, 15)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 44, 17)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 44, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 44, 22)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 44, 25)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 45, 2)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 45, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 45, 9)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 45, 11)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 45, 12)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 45, 16)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 45, 18)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 45, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 45, 23)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 45, 25)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 45, 26)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (11, 45, 27)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 6, 2)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 6, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 6, 22)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 8, 4)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 8, 8)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 8, 24)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 9, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 9, 9)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 9, 25)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 9, 26)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 9, 27)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 11, 2)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 11, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 11, 11)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 11, 26)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 13, 4)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 13, 9)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 13, 13)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 16, 2)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 16, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 16, 12)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 16, 16)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 18, 4)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 18, 9)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 18, 14)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 18, 18)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 19, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 19, 10)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 19, 15)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 19, 19)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 19, 26)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 20, 1)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 20, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 20, 11)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 20, 16)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 20, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 21, 2)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 21, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 21, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 21, 12)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 21, 17)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 21, 21)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 22, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 22, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 22, 8)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 22, 13)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 22, 18)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 22, 22)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 24, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 24, 10)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 24, 15)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 24, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 24, 24)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 25, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 25, 11)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 25, 16)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 25, 21)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 25, 25)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 26, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 26, 12)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 26, 17)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 26, 22)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 26, 27)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 27, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 27, 8)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 27, 13)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 27, 18)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 27, 23)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 28, 4)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 28, 9)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 28, 14)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 28, 19)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 28, 24)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 29, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 29, 10)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 29, 15)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 29, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 29, 25)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 30, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 30, 11)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 30, 16)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 30, 21)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 31, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 31, 12)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 31, 17)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 31, 22)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 32, 2)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 32, 8)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 32, 13)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 32, 18)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 32, 23)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 33, 9)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 33, 14)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 33, 19)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 33, 24)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 33, 27)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 34, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 34, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 34, 10)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 34, 15)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 34, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 34, 25)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 35, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 35, 16)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 35, 21)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 36, 11)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 36, 17)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 36, 22)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 41, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 41, 15)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 41, 16)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 41, 22)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 41, 25)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 42, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 42, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 42, 16)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 42, 17)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 42, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 43, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 43, 11)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 43, 13)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 43, 18)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 43, 19)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 43, 23)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 44, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 44, 4)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 44, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 44, 10)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 44, 15)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 44, 17)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 44, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 44, 22)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 44, 25)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 45, 2)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 45, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 45, 9)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 45, 11)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 45, 12)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 45, 16)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 45, 18)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 45, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 45, 23)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 45, 25)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 45, 26)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (12, 45, 27)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 6, 2)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 6, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 6, 22)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 8, 4)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 8, 8)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 8, 24)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 9, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 9, 9)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 9, 25)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 9, 26)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 9, 27)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 11, 2)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 11, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 11, 11)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 11, 26)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 12, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 12, 8)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 12, 12)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 14, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 14, 10)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 14, 14)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 15, 1)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 15, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 15, 11)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 15, 15)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 17, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 17, 8)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 17, 13)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 17, 17)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 21, 2)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 21, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 21, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 21, 12)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 21, 17)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 21, 21)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 22, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 22, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 22, 8)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 22, 13)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 22, 18)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 22, 22)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 23, 4)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 23, 9)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 23, 14)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 23, 19)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 23, 23)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 24, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 24, 10)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 24, 15)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 24, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 24, 24)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 25, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 25, 11)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 25, 16)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 25, 21)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 25, 25)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 26, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 26, 12)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 26, 17)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 26, 22)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 26, 27)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 27, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 27, 8)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 27, 13)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 27, 18)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 27, 23)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 28, 4)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 28, 9)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 28, 14)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 28, 19)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 28, 24)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 29, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 29, 10)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 29, 15)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 29, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 29, 25)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 30, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 30, 11)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 30, 16)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 30, 21)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 31, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 31, 12)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 31, 17)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 31, 22)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 32, 2)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 32, 8)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 32, 13)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 32, 18)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 32, 23)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 33, 9)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 33, 14)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 33, 19)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 33, 24)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 33, 27)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 34, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 34, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 34, 10)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 34, 15)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 34, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 34, 25)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 35, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 35, 16)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 35, 21)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 36, 11)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 36, 17)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 36, 22)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 37, 12)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 37, 18)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 37, 23)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 38, 19)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 38, 24)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 39, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 39, 25)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 41, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 41, 15)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 41, 16)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 41, 22)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 41, 25)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 42, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 42, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 42, 16)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 42, 17)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 42, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 43, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 43, 11)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 43, 13)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 43, 18)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 43, 19)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 43, 23)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 44, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 44, 4)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 44, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 44, 10)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 44, 15)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 44, 17)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 44, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 44, 22)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 44, 25)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 45, 2)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 45, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 45, 9)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 45, 11)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 45, 12)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 45, 16)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 45, 18)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 45, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 45, 23)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 45, 25)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 45, 26)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (13, 45, 27)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 10, 1)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 10, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 10, 10)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 10, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 13, 4)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 13, 9)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 13, 13)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 14, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 14, 10)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 14, 14)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 16, 2)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 16, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 16, 12)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 16, 16)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 18, 4)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 18, 9)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 18, 14)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 18, 18)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 19, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 19, 10)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 19, 15)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 19, 19)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 19, 26)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 20, 1)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 20, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 20, 11)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 20, 16)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 20, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 21, 2)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 21, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 21, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 21, 12)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 21, 17)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 21, 21)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 22, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 22, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 22, 8)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 22, 13)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 22, 18)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 22, 22)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 24, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 24, 10)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 24, 15)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 24, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 24, 24)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 26, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 26, 12)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 26, 17)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 26, 22)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 26, 27)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 40, 15)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 40, 21)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 40, 26)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 41, 5)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 41, 15)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 41, 16)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 41, 22)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 41, 25)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 42, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 42, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 42, 16)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 42, 17)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 42, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 43, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 43, 11)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 43, 13)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 43, 18)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 43, 19)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 43, 23)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 44, 3)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 44, 4)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 44, 7)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 44, 10)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 44, 15)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 44, 17)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 44, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 44, 22)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 44, 25)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 45, 2)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 45, 6)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 45, 9)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 45, 11)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 45, 12)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 45, 16)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 45, 18)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 45, 20)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 45, 23)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 45, 25)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 45, 26)
GO
INSERT [dbo].[branch_intake_track] ([B_ID], [Intake_ID], [track_ID]) VALUES (14, 45, 27)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (1, N'True', 1)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (2, N'False', 1)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (3, N'True', 2)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (4, N'False', 2)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (5, N'True', 3)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (6, N'False', 3)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (7, N'True', 4)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (8, N'False', 4)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (9, N'True', 5)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (10, N'False', 5)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (11, N'True', 6)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (12, N'False', 6)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (13, N'True', 7)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (14, N'False', 7)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (15, N'True', 8)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (16, N'False', 8)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (17, N'True', 9)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (18, N'False', 9)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (19, N'True', 10)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (20, N'False', 10)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (21, N'6', 11)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (22, N'8', 11)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (23, N'9', 11)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (24, N'10', 11)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (25, N'List', 12)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (26, N'Tuple', 12)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (27, N'String', 12)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (28, N'Integer', 12)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (29, N'function():', 13)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (30, N'def function_name():', 13)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (31, N'function function_name():', 13)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (32, N'define function():', 13)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (33, N'//', 14)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (34, N'/*', 14)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (35, N'#', 14)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (36, N'--', 14)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (37, N'Destructor', 15)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (38, N'Constructor', 15)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (39, N'Instantiator', 15)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (40, N'Creator', 15)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (41, N'5', 16)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (42, N'5.0', 16)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (43, N'5.00', 16)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (44, N'50', 16)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (45, N'def', 17)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (46, N'function', 17)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (47, N'class', 17)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (48, N'method', 17)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (49, N'list', 18)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (50, N'dictionary', 18)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (51, N'character', 18)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (52, N'set', 18)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (53, N'import module_name', 19)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (54, N'include module_name', 19)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (55, N'use module_name', 19)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (56, N'require module_name', 19)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (57, N'False', 20)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (58, N'True', 20)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (59, N'None', 20)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (60, N'Error', 20)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (61, N'True', 21)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (62, N'False', 21)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (63, N'True', 22)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (64, N'False', 22)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (65, N'True', 23)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (66, N'False', 23)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (67, N'True', 24)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (68, N'False', 24)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (69, N'True', 25)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (70, N'False', 25)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (71, N'True', 26)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (72, N'False', 26)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (73, N'True', 27)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (74, N'False', 27)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (75, N'True', 28)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (76, N'False', 28)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (77, N'True', 29)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (78, N'False', 29)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (79, N'True', 30)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (80, N'False', 30)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (81, N'Nested Class', 31)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (82, N'Inner Class', 31)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (83, N'Subclass', 31)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (84, N'Composite Class', 31)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (85, N'Inheritance', 32)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (86, N'Encapsulation', 32)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (87, N'Abstraction', 32)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (88, N'Polymorphism', 32)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (89, N'Encapsulation', 33)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (90, N'Inheritance', 33)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (91, N'Polymorphism', 33)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (92, N'Abstraction', 33)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (93, N'Static Method', 34)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (94, N'Instance Method', 34)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (95, N'Class Variable', 34)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (96, N'Instance Variable', 34)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (97, N'Method Overloading', 35)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (98, N'Method Overriding', 35)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (99, N'Method Hiding', 35)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (100, N'Method Sharing', 35)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (101, N'extends', 36)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (102, N'implements', 36)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (103, N'inherits', 36)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (104, N'uses', 36)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (105, N'Polymorphism', 37)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (106, N'Encapsulation', 37)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (107, N'Inheritance', 37)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (108, N'Abstraction', 37)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (109, N'Method Overriding', 38)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (110, N'Method Overloading', 38)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (111, N'Method Hiding', 38)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (112, N'Method Sharing', 38)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (113, N'Abstract Class', 39)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (114, N'Concrete Class', 39)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (115, N'Static Class', 39)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (116, N'Final Class', 39)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (117, N'Class Method', 40)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (118, N'Instance Method', 40)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (119, N'Static Variable', 40)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (120, N'Instance Variable', 40)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (121, N'True', 41)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (122, N'False', 41)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (123, N'True', 42)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (124, N'False', 42)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (125, N'True', 43)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (126, N'False', 43)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (127, N'True', 44)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (128, N'False', 44)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (129, N'True', 45)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (130, N'False', 45)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (131, N'True', 46)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (132, N'False', 46)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (133, N'True', 47)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (134, N'False', 47)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (135, N'True', 48)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (136, N'False', 48)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (137, N'True', 49)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (138, N'False', 49)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (139, N'True', 50)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (140, N'False', 50)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (141, N'SELECT', 51)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (142, N'INSERT INTO', 51)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (143, N'UPDATE', 51)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (144, N'DELETE', 51)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (145, N'GROUP BY', 52)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (146, N'ORDER BY', 52)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (147, N'HAVING', 52)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (148, N'WHERE', 52)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (149, N'To sort records in ascending or descending order', 53)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (150, N'To filter records based on a specified condition', 53)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (151, N'To combine rows from two or more tables based on a related column', 53)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (152, N'To aggregate data by grouping records

', 53)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (153, N'GROUP BY', 54)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (154, N'ORDER BY', 54)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (155, N'DISTINCT', 54)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (156, N'FILTER', 54)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (157, N'INSERT INTO', 55)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (158, N'DELETE', 55)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (159, N'UPDATE', 55)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (160, N'ALTER', 55)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (161, N'DROP TABLE', 56)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (162, N'DELETE TABLE', 56)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (163, N'REMOVE TABLE', 56)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (164, N'TRUNCATE TABLE', 56)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (165, N'ADD TABLE', 57)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (166, N'NEW TABLE', 57)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (167, N'CREATE TABLE', 57)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (168, N'MAKE TABLE', 57)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (169, N'To group rows that have the same values in specified columns and perform aggregate functions on them', 58)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (170, N'To filter records based on a specified condition', 58)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (171, N'To sort records in ascending or descending order', 58)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (172, N'To combine rows from two or more tables', 58)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (173, N'AVG()', 59)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (174, N'COUNT()', 59)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (175, N'MAX()', 59)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (176, N'SUM()', 59)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (177, N'MODIFY TABLE ADD COLUMN', 60)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (178, N'UPDATE TABLE ADD COLUMN', 60)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (179, N'CHANGE TABLE ADD COLUMN', 60)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (180, N'ALTER TABLE ADD COLUMN', 60)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (181, N'True', 61)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (182, N'False', 61)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (183, N'True', 62)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (184, N'False', 62)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (185, N'True', 63)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (186, N'False', 63)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (187, N'True', 64)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (188, N'False', 64)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (189, N'True', 65)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (190, N'False', 65)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (191, N'True', 66)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (192, N'False', 66)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (193, N'True', 67)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (194, N'False', 67)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (195, N'True', 68)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (196, N'False', 68)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (197, N'True', 69)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (198, N'False', 69)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (199, N'True', 70)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (200, N'False', 70)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (201, N'head', 71)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (202, N'meta', 71)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (203, N'title', 71)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (204, N'link', 71)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (205, N'break', 72)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (206, N'lb', 72)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (207, N'br', 72)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (208, N'newline', 72)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (209, N'title', 73)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (210, N'alt', 73)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (211, N'src', 73)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (212, N'href', 73)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (213, N'background-color', 74)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (214, N'text-color', 74)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (215, N'color', 74)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (216, N'font-color', 74)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (217, N'ul', 75)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (218, N'ol', 75)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (219, N'li', 75)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (220, N'dl', 75)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (221, N'Colorful Style Sheets', 76)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (222, N'Cascading Style Sheets', 76)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (223, N'Creative Style Sheets', 76)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (224, N'Computer Style Sheets', 76)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (225, N'section', 77)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (226, N'footer', 77)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (227, N'bottom', 77)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (228, N'end', 77)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (229, N'font-family', 78)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (230, N'font-size', 78)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (231, N'text-size', 78)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (232, N'size', 78)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (233, N'link', 79)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (234, N'href', 79)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (235, N'a', 79)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (236, N'url', 79)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (237, N'To create a form', 80)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (238, N'To style an element', 80)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (239, N'To group inline elements together', 80)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (240, N'To group block-level elements together', 80)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (241, N'True', 81)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (242, N'False', 81)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (243, N'True', 82)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (244, N'False', 82)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (245, N'True', 83)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (246, N'False', 83)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (247, N'True', 84)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (248, N'False', 84)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (249, N'True', 85)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (250, N'False', 85)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (251, N'True', 86)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (252, N'False', 86)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (253, N'True', 87)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (254, N'False', 87)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (255, N'True', 88)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (256, N'False', 88)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (257, N'True', 89)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (258, N'False', 89)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (259, N'True', 90)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (260, N'False', 90)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (261, N'Power BI Desktop', 91)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (262, N'Power BI Service', 91)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (263, N'Power BI Mobile', 91)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (264, N'Power BI Gateway', 91)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (265, N'SQL', 92)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (266, N'R', 92)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (267, N'DAX', 92)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (268, N'Python', 92)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (269, N'10 GB', 93)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (270, N'2 GB', 93)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (271, N'500 MB', 93)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (272, N'1 GB', 93)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (273, N'Relationships', 94)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (274, N'Tables', 94)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (275, N'Graphs', 94)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (276, N'Reports', 94)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (277, N'Data cleansing', 95)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (278, N'Creating data models', 95)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (279, N'Sharing reports and dashboards', 95)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (280, N'Writing DAX queries', 95)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (281, N'Filters', 96)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (282, N'Slicers', 96)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (283, N'Groups', 96)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (284, N'Visuals', 96)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (285, N'.pbix', 97)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (286, N'.pbit', 97)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (287, N'.xlsx', 97)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (288, N'.csv', 97)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (289, N'Bar chart', 98)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (290, N'Pie chart', 98)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (291, N'Line chart', 98)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (292, N'Histogram', 98)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (293, N'Report-Level Security', 99)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (294, N'Row-Level Security', 99)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (295, N'Role-Level Security', 99)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (296, N'Record-Level Security', 99)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (297, N'To store data', 100)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (298, N'To visualize relationships between tables', 100)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (299, N'To write complex DAX queries', 100)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (300, N'To provide an overview of key metrics', 100)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (301, N'True', 101)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (302, N'False', 101)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (303, N'True', 102)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (304, N'False', 102)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (305, N'True', 103)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (306, N'False', 103)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (307, N'True', 104)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (308, N'False', 104)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (309, N'True', 105)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (310, N'False', 105)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (311, N'True', 106)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (312, N'False', 106)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (313, N'True', 107)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (314, N'False', 107)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (315, N'True', 108)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (316, N'False', 108)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (317, N'True', 109)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (318, N'False', 109)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (319, N'True', 110)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (320, N'False', 110)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (321, N'DHCP', 111)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (322, N'DNS', 111)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (323, N'FTP', 111)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (324, N'SMTP', 111)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (325, N'Data Link Layer', 112)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (326, N'Transport Layer', 112)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (327, N'Network Layer', 112)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (328, N'Application Layer', 112)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (329, N'To map IP addresses to MAC addresses', 113)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (330, N'To translate domain names to IP addresses', 113)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (331, N'To encrypt data packets', 113)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (332, N'To ensure data packet delivery', 113)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (333, N'HTTP', 114)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (334, N'HTTPS', 114)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (335, N'FTP', 114)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (336, N'Telnet', 114)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (337, N'LAN', 115)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (338, N'WAN', 115)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (339, N'MAN', 115)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (340, N'SAN', 115)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (341, N'Switch', 116)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (342, N'Router', 116)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (343, N'Hub', 116)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (344, N'Bridge', 116)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (345, N'443', 117)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (346, N'22', 117)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (347, N'80', 117)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (348, N'21', 117)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (349, N'Bus', 118)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (350, N'Ring', 118)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (351, N'Star', 118)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (352, N'Mesh', 118)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (353, N'SMTP', 119)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (354, N'HTTP', 119)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (355, N'FTP', 119)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (356, N'IMAP', 119)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (357, N'Presentation Layer', 120)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (358, N'Session Layer', 120)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (359, N'Transport Layer', 120)
GO
INSERT [dbo].[Choice] ([choice_ID], [choice_Desc], [QS_ID]) VALUES (360, N'Application Layer', 120)
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (2, N'Telecom Data', N'Cairo, Egypt')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (3, N'Orange EG', N'Cairo, Egypt')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (4, N'Egyptian Steel Industries', N'Suez, Egypt')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (5, N'Nile Cement Company', N'Qena, Egypt')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (6, N'Alexandria Glass Manufacturing', N'Alexandria, Egypt')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (7, N'Delta Motors', N'Port Said, Egypt')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (8, N'Luxor Tourism Group', N'Luxor, Egypt')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (9, N'Aswan Solar Energy', N'Aswan, Egypt')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (10, N'Red Sea Resorts', N'Hurghada, Egypt')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (11, N'Dahab Diving Center', N'Dahab, Egypt')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (12, N'Sinai Development Corporation', N'Sharm El Sheikh, Egypt')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (13, N'Sohag Agriculture Company', N'Sohag, Egypt')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (14, N'Xceeds', N'Cairo ,Egypt')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (15, N'IBM', N'Cairo ,Egypt')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (16, N'Valeo', N'Cairo, Egypt')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (17, N'Giza System', N'Cairo, Egypt')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (18, N'EJADA', N'Cairo, Egypt')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (19, N'Microsoft', N'New York, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (20, N'Google', N'Mountain View, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (21, N'Amazon', N'Seattle, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (22, N'Apple', N'Cupertino, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (23, N'Samsung', N'Seoul, South Korea')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (24, N'Facebook', N'London, UK')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (25, N'Pervatio', N'Abu Dhabi, UAE')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (26, N'Siemens', N'Munich, Germany')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (27, N'Schneider Electric', N'Rueil-Malmaison, France')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (28, N'Honeywell', N'Charlotte, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (29, N'Emerson', N'St. Louis, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (30, N'Google', N'Armonk, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (31, N'Tesla', N'Palo Alto, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (32, N'Uber', N'San Francisco, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (33, N'Airbnb', N'San Francisco, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (34, N'Netflix', N'Los Angeles, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (35, N'Spotify', N'Stockholm, Sweden')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (36, N'Adidas', N'Herzogenaurach, Germany')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (37, N'Nike', N'Beaverton, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (38, N'Coca-Cola', N'Atlanta, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (39, N'Pepsi', N'Purchase, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (40, N'Nestlé', N'Vevey, Switzerland')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (41, N'Unilever', N'London, UK')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (42, N'Procter & Gamble', N'Cincinnati, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (43, N'Johnson & Johnson', N'New Brunswick, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (44, N'Pfizer', N'New York, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (45, N'Novartis', N'Basel, Switzerland')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (46, N'Roche', N'Basel, Switzerland')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (47, N'Sanofi', N'Paris, France')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (48, N'AstraZeneca', N'Cambridge, UK')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (49, N'Bayer', N'Leverkusen, Germany')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (50, N'GlaxoSmithKline', N'Brentford, UK')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (51, N'Merck', N'Kenilworth, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (52, N'Bristol-Myers Squibb', N'New York, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (53, N'Amgen', N'Thousand Oaks, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (54, N'Gilead Sciences', N'Foster City, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (55, N'Abbvie', N'North Chicago, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (56, N'Eli Lilly', N'Indianapolis, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (57, N'Novo Nordisk', N'Bagsværd, Denmark')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (58, N'Sanofi', N'Paris, France')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (59, N'Boehringer Ingelheim', N'Ingelheim am Rhein, Germany')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (60, N'Takeda', N'Osaka, Japan')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (61, N'AbbVie', N'North Chicago, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (62, N'Celgene', N'Summit, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (63, N'Regeneron', N'Tarrytown, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (64, N'Biogen', N'Cambridge, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (65, N'Vertex', N'Boston, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (66, N'Alexion', N'Boston, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (67, N'Tesla', N'Palo Alto, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (68, N'Uber', N'San Francisco, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (69, N'Airbnb', N'San Francisco, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (70, N'Netflix', N'Los Angeles, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (71, N'Spotify', N'Stockholm, Sweden')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (72, N'Adidas', N'Herzogenaurach, Germany')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (73, N'Nike', N'Beaverton, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (74, N'Coca-Cola', N'Atlanta, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (75, N'Pepsi', N'Purchase, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (76, N'Nestlé', N'Vevey, Switzerland')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (77, N'Unilever', N'London, UK')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (78, N'Procter & Gamble', N'Cincinnati, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (79, N'Johnson & Johnson', N'New Brunswick, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (80, N'Pfizer', N'New York, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (81, N'Novartis', N'Basel, Switzerland')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (82, N'Roche', N'Basel, Switzerland')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (83, N'Sanofi', N'Paris, France')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (84, N'AstraZeneca', N'Cambridge, UK')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (85, N'Bayer', N'Leverkusen, Germany')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (86, N'GlaxoSmithKline', N'Brentford, UK')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (87, N'Valeo', N'Cairo, Egypt')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (88, N'BankMisr', N'Cairo, Egypt')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (89, N'EJADA', N'Cairo, Egypt')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (90, N'Microsoft', N'New York, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (91, N'Google', N'Mountain View, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (92, N'Amazon', N'Seattle, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (93, N'Apple', N'Cupertino, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (94, N'Samsung', N'Seoul, South Korea')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (95, N'Facebook', N'London, UK')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (96, N'Pervatio', N'Abu Dhabi, UAE')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (97, N'Siemens', N'Munich, Germany')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (98, N'Schneider Electric', N'Rueil-Malmaison, France')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (99, N'Honeywell', N'Charlotte, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (100, N'Emerson', N'St. Louis, USA')
GO
INSERT [dbo].[company] ([company_ID], [company_name], [company_Location]) VALUES (101, N'Google', N'Armonk, USA')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (1, N'IntoductionToPython', 20, N'Final Exam')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (2, N'Data Analysis with Python', 10, N'Projects')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (3, N'Data Visualization Fundamentals', 5, N'Projects')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (4, N'Machine Learning Basics', 40, N'Final Exam')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (5, N'Big Data Analytics', 60, N'Projects')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (6, N'Introduction to SQL', 10, N'Assignments')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (7, N'PowerBI', 40, N'Final Exam')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (8, N'Statistical Analysis with R', 31, N'Projects')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (9, N'Data Mining and Warehousing', 25, N'Assignments')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (10, N'oop', 40, N'Final Exam')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (11, N'Software Development Fundamentals', 25, N'Projects')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (12, N'Web Development Basics', 5, N'Assignments')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (13, N'Database Management Systems', 10, N'Final Exam')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (14, N'Software Engineering Principles', 25, N'Projects')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (15, N'Mobile App Development', 25, N'Assignments')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (16, N'Cloud Computing Fundamentals', 8, N'Final Exam')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (17, N'Introduction to AI and Machine Learning', 30, N'Projects')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (18, N'Natural Language Processing', 10, N'Assignments')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (19, N'Deep Learning Essentials', 12, N'Final Exam')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (20, N'Computer Vision Fundamentals', 40, N'Projects')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (21, N'Blockchain Basics', 15, N'Assignments')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (22, N'Cybersecurity Fundamentals', 12, N'Final Exam')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (23, N'Ethical Hacking', 14, N'Projects')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (24, N'Digital Forensics', 8, N'Assignments')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (25, N'Network Security', 12, N'Final Exam')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (26, N'Internet of Things (IoT)', 20, N'Projects')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (27, N'Embedded Systems', 30, N'Assignments')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (28, N'Frontend', 25, N'Final Exam')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (29, N'Augmented Reality (AR) Development', 50, N'Projects')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (30, N'Game Development Fundamentals', 40, N'Assignments')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (31, N'Unity Game Development', 25, N'Final Exam')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (32, N'Mobile Game Development', 20, N'Projects')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (33, N'2D Animation', 9, N'Assignments')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (34, N'3D Modeling and Animation', 12, N'Final Exam')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (35, N'Character Design', 14, N'Projects')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (36, N'Digital Painting', 8, N'Assignments')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (37, N'Graphic Design Fundamentals', 22, N'Final Exam')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (38, N'UI/UX Design', 15, N'Projects')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (39, N'Logo Design', 22, N'Assignments')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (40, N'Motion Graphics', 33, N'Final Exam')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (41, N'Video Editing', 22, N'Projects')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (42, N'Photography Basics', 40, N'Assignments')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (43, N'Adobe Photoshop Mastery', 35, N'Final Exam')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (44, N'Adobe Illustrator Mastery', 7, N'Projects')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (45, N'Adobe Premiere Pro Mastery', 32, N'Assignments')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (46, N'Cinema 4D Basics', 24, N'Final Exam')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (47, N'Maya Basics', 30, N'Projects')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (48, N'ZBrush Basics', 40, N'Assignments')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (49, N'After Effects Basics', 15, N'Final Exam')
GO
INSERT [dbo].[Course] ([course_ID], [cr_name], [Num_hours], [evaluation]) VALUES (50, N'Houdini Basics', 12, N'Projects')
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (1, 1)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (1, 11)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (1, 21)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (1, 31)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (1, 41)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (1, 51)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (2, 1)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (2, 12)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (2, 21)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (2, 32)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (2, 41)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (2, 52)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (3, 1)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (3, 13)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (3, 21)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (3, 33)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (3, 41)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (3, 53)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (4, 1)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (4, 14)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (4, 21)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (4, 34)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (4, 41)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (4, 54)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (5, 1)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (5, 15)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (5, 35)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (5, 41)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (5, 55)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (6, 2)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (6, 22)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (6, 31)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (6, 42)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (6, 51)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (7, 2)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (7, 12)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (7, 22)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (7, 32)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (7, 42)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (7, 52)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (8, 2)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (8, 13)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (8, 22)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (8, 33)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (8, 53)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (9, 14)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (9, 22)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (9, 34)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (9, 54)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (10, 15)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (10, 35)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (10, 55)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (11, 3)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (11, 23)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (11, 31)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (11, 43)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (12, 3)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (12, 23)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (12, 32)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (12, 43)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (13, 3)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (13, 13)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (13, 23)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (13, 43)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (13, 53)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (14, 3)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (14, 14)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (14, 23)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (14, 34)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (14, 43)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (14, 54)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (15, 15)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (15, 35)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (15, 55)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (16, 4)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (16, 24)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (16, 31)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (16, 44)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (17, 4)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (17, 24)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (17, 32)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (17, 44)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (18, 4)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (18, 13)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (18, 24)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (18, 44)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (18, 53)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (19, 4)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (19, 14)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (19, 24)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (19, 34)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (19, 44)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (19, 54)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (20, 4)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (20, 35)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (20, 44)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (21, 5)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (21, 25)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (21, 45)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (21, 51)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (22, 5)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (22, 25)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (22, 32)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (22, 45)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (23, 25)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (23, 45)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (24, 25)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (24, 34)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (24, 45)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (25, 25)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (25, 35)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (26, 6)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (26, 16)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (26, 26)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (26, 36)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (26, 46)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (26, 56)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (27, 17)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (27, 26)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (27, 37)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (27, 46)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (27, 57)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (28, 18)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (28, 38)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (28, 46)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (28, 58)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (29, 19)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (29, 39)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (29, 46)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (29, 59)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (30, 20)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (30, 40)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (30, 46)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (30, 60)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (31, 7)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (31, 16)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (31, 27)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (31, 36)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (31, 47)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (31, 56)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (32, 7)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (32, 27)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (32, 37)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (32, 47)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (33, 7)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (33, 18)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (33, 38)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (33, 47)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (33, 58)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (34, 7)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (34, 19)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (34, 39)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (34, 47)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (34, 59)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (35, 7)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (35, 20)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (35, 40)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (35, 60)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (36, 8)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (36, 16)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (36, 28)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (36, 36)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (36, 48)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (37, 8)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (37, 28)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (37, 37)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (37, 48)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (38, 8)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (38, 18)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (38, 38)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (38, 58)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (39, 8)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (39, 19)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (39, 28)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (39, 39)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (39, 59)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (40, 8)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (40, 20)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (40, 28)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (40, 40)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (40, 48)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (41, 9)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (41, 29)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (41, 36)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (41, 49)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (42, 9)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (42, 29)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (42, 37)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (42, 49)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (43, 9)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (43, 18)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (43, 38)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (43, 58)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (44, 9)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (44, 19)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (44, 39)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (44, 59)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (45, 9)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (45, 20)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (45, 40)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (45, 60)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (46, 10)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (46, 30)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (46, 36)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (46, 50)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (47, 10)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (47, 30)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (48, 10)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (48, 18)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (48, 30)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (48, 58)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (49, 10)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (49, 19)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (49, 39)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (50, 10)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (50, 20)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (50, 40)
GO
INSERT [dbo].[course_instructor] ([course_ID], [ins_ID]) VALUES (50, 60)
GO
INSERT [dbo].[Department] ([Dept_ID], [Dept_Name], [Manger_ID]) VALUES (1, N'Industrial Systems', 1)
GO
INSERT [dbo].[Department] ([Dept_ID], [Dept_Name], [Manger_ID]) VALUES (2, N'Content Developments', 2)
GO
INSERT [dbo].[Department] ([Dept_ID], [Dept_Name], [Manger_ID]) VALUES (3, N'Infastructure Network and Security Services', 3)
GO
INSERT [dbo].[Department] ([Dept_ID], [Dept_Name], [Manger_ID]) VALUES (4, N'Information Systems', 4)
GO
INSERT [dbo].[Department] ([Dept_ID], [Dept_Name], [Manger_ID]) VALUES (5, N'Software Engineering and Development', 5)
GO
INSERT [dbo].[Department] ([Dept_ID], [Dept_Name], [Manger_ID]) VALUES (6, N'Cognitive Computing and Artificial Intelligence', 6)
GO
INSERT [dbo].[Department] ([Dept_ID], [Dept_Name], [Manger_ID]) VALUES (7, N'QA Engineering & Validation', 7)
GO
INSERT [dbo].[Exam] ([ex_ID], [duration], [start_time], [course_ID], [ex_grade], [Modification_Date]) VALUES (1, 120, CAST(N'2024-08-01T09:00:00.000' AS DateTime), 1, 15, CAST(N'2024-08-21T09:04:18.370' AS DateTime))
GO
INSERT [dbo].[Exam] ([ex_ID], [duration], [start_time], [course_ID], [ex_grade], [Modification_Date]) VALUES (2, 60, CAST(N'2024-08-02T11:00:00.000' AS DateTime), 7, 15, CAST(N'2024-08-21T09:15:08.523' AS DateTime))
GO
INSERT [dbo].[Exam] ([ex_ID], [duration], [start_time], [course_ID], [ex_grade], [Modification_Date]) VALUES (3, 60, CAST(N'2024-08-05T05:00:00.000' AS DateTime), 10, 15, CAST(N'2024-08-21T09:30:11.687' AS DateTime))
GO
INSERT [dbo].[Exam] ([ex_ID], [duration], [start_time], [course_ID], [ex_grade], [Modification_Date]) VALUES (4, 60, CAST(N'2024-08-07T17:00:00.000' AS DateTime), 13, 15, CAST(N'2024-08-21T09:45:06.333' AS DateTime))
GO
INSERT [dbo].[Exam] ([ex_ID], [duration], [start_time], [course_ID], [ex_grade], [Modification_Date]) VALUES (5, 60, CAST(N'2024-08-11T18:00:00.000' AS DateTime), 13, 15, CAST(N'2024-08-21T09:55:14.500' AS DateTime))
GO
INSERT [dbo].[Exam] ([ex_ID], [duration], [start_time], [course_ID], [ex_grade], [Modification_Date]) VALUES (6, 60, CAST(N'2024-08-20T01:00:00.000' AS DateTime), 13, 15, CAST(N'2024-08-21T10:10:12.660' AS DateTime))
GO
INSERT [dbo].[Exam] ([ex_ID], [duration], [start_time], [course_ID], [ex_grade], [Modification_Date]) VALUES (7, 60, CAST(N'2024-08-20T03:00:00.000' AS DateTime), 13, 17, CAST(N'2024-08-29T11:15:10.757' AS DateTime))
GO
INSERT [dbo].[Exam] ([ex_ID], [duration], [start_time], [course_ID], [ex_grade], [Modification_Date]) VALUES (8, 60, CAST(N'2024-09-10T05:00:00.000' AS DateTime), 13, 17, CAST(N'2024-08-29T11:38:05.820' AS DateTime))
GO
INSERT [dbo].[Exam] ([ex_ID], [duration], [start_time], [course_ID], [ex_grade], [Modification_Date]) VALUES (9, 90, CAST(N'2024-08-20T07:00:00.000' AS DateTime), 10, 16, CAST(N'2024-08-29T11:45:16.340' AS DateTime))
GO
INSERT [dbo].[Exam] ([ex_ID], [duration], [start_time], [course_ID], [ex_grade], [Modification_Date]) VALUES (10, 90, CAST(N'2024-08-20T09:00:00.000' AS DateTime), 10, 15, CAST(N'2024-08-29T11:59:12.550' AS DateTime))
GO
INSERT [dbo].[Exam] ([ex_ID], [duration], [start_time], [course_ID], [ex_grade], [Modification_Date]) VALUES (11, 90, CAST(N'2024-08-20T11:00:00.000' AS DateTime), 10, 18, CAST(N'2024-08-30T00:20:22.213' AS DateTime))
GO
INSERT [dbo].[Exam] ([ex_ID], [duration], [start_time], [course_ID], [ex_grade], [Modification_Date]) VALUES (12, 90, CAST(N'2024-09-09T13:00:00.000' AS DateTime), 10, 18, CAST(N'2024-08-30T00:25:08.177' AS DateTime))
GO
INSERT [dbo].[Exam] ([ex_ID], [duration], [start_time], [course_ID], [ex_grade], [Modification_Date]) VALUES (13, 90, CAST(N'2024-08-20T15:00:00.000' AS DateTime), 10, 15, CAST(N'2024-08-30T00:38:19.000' AS DateTime))
GO
INSERT [dbo].[Exam] ([ex_ID], [duration], [start_time], [course_ID], [ex_grade], [Modification_Date]) VALUES (14, 120, CAST(N'2024-08-20T17:00:00.000' AS DateTime), 7, 15, CAST(N'2024-08-30T00:47:46.447' AS DateTime))
GO
INSERT [dbo].[Exam] ([ex_ID], [duration], [start_time], [course_ID], [ex_grade], [Modification_Date]) VALUES (15, 45, CAST(N'2024-08-20T19:00:00.000' AS DateTime), 25, 16, CAST(N'2024-08-30T00:55:02.637' AS DateTime))
GO
INSERT [dbo].[Exam] ([ex_ID], [duration], [start_time], [course_ID], [ex_grade], [Modification_Date]) VALUES (16, 45, CAST(N'2024-08-20T21:00:00.000' AS DateTime), 25, 15, CAST(N'2024-08-30T01:05:01.600' AS DateTime))
GO
INSERT [dbo].[Exam] ([ex_ID], [duration], [start_time], [course_ID], [ex_grade], [Modification_Date]) VALUES (17, 90, CAST(N'2024-08-20T23:00:00.000' AS DateTime), 28, 15, CAST(N'2024-08-30T01:12:59.107' AS DateTime))
GO
INSERT [dbo].[Exam] ([ex_ID], [duration], [start_time], [course_ID], [ex_grade], [Modification_Date]) VALUES (18, 90, CAST(N'2024-08-21T01:00:00.000' AS DateTime), 28, 13, CAST(N'2024-08-30T01:20:56.107' AS DateTime))
GO
INSERT [dbo].[Exam] ([ex_ID], [duration], [start_time], [course_ID], [ex_grade], [Modification_Date]) VALUES (19, 90, CAST(N'2024-08-21T03:00:00.000' AS DateTime), 28, 17, CAST(N'2024-08-30T01:31:14.540' AS DateTime))
GO
INSERT [dbo].[Exam] ([ex_ID], [duration], [start_time], [course_ID], [ex_grade], [Modification_Date]) VALUES (20, 90, CAST(N'2024-08-21T05:00:00.000' AS DateTime), 28, 17, CAST(N'2024-08-30T01:42:36.863' AS DateTime))
GO
INSERT [dbo].[Exam] ([ex_ID], [duration], [start_time], [course_ID], [ex_grade], [Modification_Date]) VALUES (21, 60, CAST(N'2024-08-21T07:00:00.000' AS DateTime), 1, 15, CAST(N'2024-08-30T01:51:18.340' AS DateTime))
GO
INSERT [dbo].[Exam] ([ex_ID], [duration], [start_time], [course_ID], [ex_grade], [Modification_Date]) VALUES (22, 60, CAST(N'2024-08-21T09:00:00.000' AS DateTime), 1, 17, CAST(N'2024-08-30T02:01:22.127' AS DateTime))
GO
INSERT [dbo].[Exam] ([ex_ID], [duration], [start_time], [course_ID], [ex_grade], [Modification_Date]) VALUES (23, 60, CAST(N'2024-08-21T11:00:00.000' AS DateTime), 1, 16, CAST(N'2024-08-30T02:16:45.663' AS DateTime))
GO
INSERT [dbo].[Exam] ([ex_ID], [duration], [start_time], [course_ID], [ex_grade], [Modification_Date]) VALUES (24, 60, CAST(N'2024-08-21T13:00:00.000' AS DateTime), 1, 15, CAST(N'2024-08-30T02:23:54.240' AS DateTime))
GO
INSERT [dbo].[Exam] ([ex_ID], [duration], [start_time], [course_ID], [ex_grade], [Modification_Date]) VALUES (25, 45, CAST(N'2024-08-21T15:00:00.000' AS DateTime), 25, 15, CAST(N'2024-08-30T02:31:49.300' AS DateTime))
GO
INSERT [dbo].[Exam] ([ex_ID], [duration], [start_time], [course_ID], [ex_grade], [Modification_Date]) VALUES (26, 120, CAST(N'2024-08-21T17:00:00.000' AS DateTime), 7, 15, CAST(N'2024-08-30T02:42:14.657' AS DateTime))
GO
INSERT [dbo].[Exam] ([ex_ID], [duration], [start_time], [course_ID], [ex_grade], [Modification_Date]) VALUES (27, 120, CAST(N'2024-08-21T19:00:00.000' AS DateTime), 7, 16, CAST(N'2024-08-30T02:49:58.973' AS DateTime))
GO
INSERT [dbo].[Exam] ([ex_ID], [duration], [start_time], [course_ID], [ex_grade], [Modification_Date]) VALUES (28, 120, CAST(N'2024-08-21T21:00:00.000' AS DateTime), 7, 17, CAST(N'2024-08-30T02:58:21.967' AS DateTime))
GO
INSERT [dbo].[Exam] ([ex_ID], [duration], [start_time], [course_ID], [ex_grade], [Modification_Date]) VALUES (29, 120, CAST(N'2024-08-21T23:00:00.000' AS DateTime), 7, 14, CAST(N'2024-08-30T03:07:09.947' AS DateTime))
GO
INSERT [dbo].[Exam] ([ex_ID], [duration], [start_time], [course_ID], [ex_grade], [Modification_Date]) VALUES (30, 120, CAST(N'2024-08-22T01:00:00.000' AS DateTime), 7, 15, CAST(N'2024-08-30T03:15:37.957' AS DateTime))
GO
INSERT [dbo].[Exam] ([ex_ID], [duration], [start_time], [course_ID], [ex_grade], [Modification_Date]) VALUES (31, 60, CAST(N'2024-08-22T03:00:00.000' AS DateTime), 13, 12, CAST(N'2024-08-30T03:45:55.210' AS DateTime))
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (1, N'Ahmed Ali', N'Cloud Engineer', 16, N'M', N'Faculty of Computers and Artificial Intelligence', 25, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (2, N'Fatma Mohamed', N'Cloud Engineer', 16, N'F', N'Faculty of Computers and Artificial Intelligence', 24, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (3, N'Mohamed Salem', N'Cloud Engineer', 16, N'M', N'Faculty of Computers and Artificial Intelligence', 24, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (4, N'Yasmine Ibrahim', N'Cloud Engineer', 16, N'F', N'Faculty of Computers and Artificial Intelligence', 24, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (5, N'Omar Hassan', N'Cloud Engineer', 16, N'M', N'Faculty of Computers and Artificial Intelligence', 24, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (6, N'Nour Gaber', N'Cloud Engineer', 16, N'F', N'Faculty of Computers and Artificial Intelligence', 24, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (7, N'Karim Mahmoud', N'Cloud Engineer', 16, N'M', N'Faculty of Computers and Artificial Intelligence', 25, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (8, N'Sara Abdel Rahman', N'Cloud Engineer', 16, N'F', N'Faculty of Computers and Artificial Intelligence', 25, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (9, N'Amr Fathi', N'Cloud Engineer', 16, N'M', N'Faculty of Computers and Artificial Intelligence', 25, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (10, N'Aya Hamed', N'Cloud Engineer', 16, N'F', N'Faculty of Computers and Artificial Intelligence', 25, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (11, N'Ali Hassan', N'Cloud Engineer', 16, N'M', N'Faculty of Computers and Artificial Intelligence', 25, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (12, N'Yasmine Khaled', N'Cloud Engineer', 16, N'F', N'Faculty of Computers and Artificial Intelligence', 25, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (13, N'Mohamed Ezzat', N'Cloud Engineer', 16, N'M', N'Faculty of Computers and Artificial Intelligence', 25, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (14, N'Nada Ahmed', N'Cloud Engineer', 16, N'F', N'Faculty of Computers and Artificial Intelligence', 25, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (15, N'Amr Sayed', N'Cloud Engineer', 16, N'M', N'Faculty of Computers and Artificial Intelligence', 25, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (16, N'Salma Mahmoud', N'Cloud Engineer', 16, N'F', N'Faculty of Computers and Artificial Intelligence', 25, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (17, N'Khaled Ali', N'Cloud Engineer', 16, N'M', N'Faculty of Computers and Artificial Intelligence', 25, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (18, N'Laila Salem', N'Cloud Engineer', 16, N'F', N'Faculty of Computers and Artificial Intelligence', 25, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (19, N'Ahmed Hassan', N'Cloud Engineer', 16, N'M', N'Faculty of Computers and Artificial Intelligence', 25, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (20, N'Mona Abdel Rahman', N'Cloud Engineer', 16, N'F', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (21, N'Hassan Sayed', N'Cloud Engineer', 16, N'M', N'Faculty of Computers and Artificial Intelligence', 26, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (22, N'Nour Mohamed', N'Cloud Engineer', 16, N'F', N'Faculty of Computers and Artificial Intelligence', 26, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (23, N'Ali Ibrahim', N'Cloud Engineer', 16, N'M', N'Faculty of Computers and Artificial Intelligence', 26, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (24, N'Sara Mahmoud', N'Cloud Engineer', 16, N'F', N'Faculty of Computers and Artificial Intelligence', 26, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (25, N'Amr Khaled', N'Cloud Engineer', 16, N'M', N'Faculty of Computers and Artificial Intelligence', 26, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (26, N'Nada Ali', N'Cloud Engineer', 16, N'F', N'Faculty of Computers and Artificial Intelligence', 26, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (27, N'Mahmoud Salem', N'Cloud Engineer', 16, N'M', N'Faculty of Computers and Artificial Intelligence', 26, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (28, N'Salma Hassan', N'Cloud Engineer', 16, N'F', N'Faculty of Computers and Artificial Intelligence', 25, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (29, N'Hassan Ahmed', N'Cloud Engineer', 16, N'M', N'Faculty of Computers and Artificial Intelligence', 26, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (30, N'Laila Khaled', N'Cloud Engineer', 16, N'F', N'Faculty of Computers and Artificial Intelligence', 26, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (31, N'Ahmed Sayed', N'Cloud Engineer', 16, N'M', N'Faculty of Computers and Artificial Intelligence', 27, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (32, N'Mona Mohamed', N'Cloud Engineer', 16, N'M', N'Faculty of Computers and Artificial Intelligence', 27, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (33, N'Hassan Ibrahim', N'Cloud Engineer', 16, N'M', N'Faculty of Computers and Artificial Intelligence', 27, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (34, N'Nour Mahmoud', N'Cloud Engineer', 16, N'M', N'Faculty of Computers and Artificial Intelligence', 27, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (35, N'Ali Salem', N'Cloud Engineer', 16, N'M', N'Faculty of Computers and Artificial Intelligence', 27, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (36, N'Sara Hassan', N'Cloud Engineer', 16, N'M', N'Faculty of Computers and Artificial Intelligence', 27, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (37, N'Amr Ahmed', N'Cloud Engineer', 16, N'M', N'Faculty of Computers and Artificial Intelligence', 27, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (38, N'Nada Khaled', N'Cloud Engineer', 16, N'M', N'Faculty of Computers and Artificial Intelligence', 27, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (39, N'Mahmoud Sayed', N'Cloud Engineer', 16, N'M', N'Faculty of Computers and Artificial Intelligence', 27, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (40, N'Salma Mohamed', N'Cloud Engineer', 16, N'M', N'Faculty of Computers and Artificial Intelligence', 27, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (41, N'Hassan Amr', N'Embedded System Engineer', 2, N'F', N'Faculty of Computers and Artificial Intelligence', 27, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (42, N'Karim Ahmed', N'Embedded System Engineer', 2, N'F', N'Faculty of Computers and Artificial Intelligence', 28, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (43, N'Mohamed Ali', N'Embedded System Engineer', 2, N'F', N'Faculty of Computers and Artificial Intelligence', 29, N'Giza')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (44, N'Youssef Hassan', N'Embedded System Engineer', 2, N'F', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (45, N'Amr Karim', N'Embedded System Engineer', 2, N'F', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (46, N'Ahmed Mohamed', N'Embedded System Engineer', 2, N'F', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (47, N'Ali Youssef', N'Embedded System Engineer', 2, N'F', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (48, N'Hassan Amr', N'Embedded System Engineer', 2, N'F', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (49, N'Karim Ahmed', N'Embedded System Engineer', 2, N'F', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (50, N'Mohamed Ali', N'Embedded System Engineer', 2, N'F', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (51, N'Youssef Hassan', N'Embedded System Engineer', 2, N'F', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (52, N'Amr Karim', N'Embedded System Engineer', 2, N'F', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (53, N'Ahmed Mohamed', N'Embedded System Engineer', 2, N'F', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (54, N'Ali Youssef', N'Embedded System Engineer', 2, N'F', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (55, N'Hassan Amr', N'Embedded System Engineer', 2, N'F', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (56, N'Karim Ahmed', N'Embedded System Engineer', 2, N'F', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (57, N'Mohamed Ali', N'Embedded System Engineer', 2, N'F', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (58, N'Youssef Hassan', N'Embedded System Engineer', 2, N'F', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (59, N'Amr Karim', N'Embedded System Engineer', 2, N'F', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (60, N'Ahmed Mohamed', N'Embedded System Engineer', 2, N'F', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (61, N'Hassan Ahmed', N'Geospatial Analyst', 15, N'F', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (62, N'Nour Khaled', N'Geospatial Analyst', 15, N'F', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (63, N'Ali Sayed', N'Geospatial Analyst', 15, N'F', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (64, N'Sara Mohamed', N'Geospatial Analyst', 15, N'F', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (65, N'Amr Ibrahim', N'Geospatial Analyst', 15, N'F', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (66, N'Nada Mahmoud', N'Geospatial Analyst', 15, N'F', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (67, N'Mahmoud Sayed', N'Geospatial Analyst', 15, N'F', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (68, N'Hassan Ahmed', N'Backend Developer PHP', 1, N'F', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (69, N'Nour Khaled', N'Backend Developer PHP', 1, N'F', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (70, N'Ali Sayed', N'Backend Developer PHP', 1, N'F', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (71, N'Sara Mohamed', N'Backend Developer PHP', 1, N'F', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (72, N'Amr Ibrahim', N'Backend Developer PHP', 1, N'M', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (73, N'Nada Mahmoud', N'Backend Developer PHP', 1, N'M', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (74, N'Mahmoud Sayed', N'Backend Developer PHP', 1, N'M', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (75, N'Salma Mohamed', N'Backend Developer PHP', 1, N'M', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (76, N'Hassan Ibrahim', N'Backend Developer PHP', 1, N'M', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (77, N'Laila Mahmoud', N'Backend Developer PHP', 1, N'M', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (78, N'Ahmed Salem', N'Backend Developer PHP', 1, N'M', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (79, N'Mona Hassan', N'Backend Developer PHP', 1, N'M', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (80, N'Hassan Ahmed', N'Backend Developer PHP', 1, N'M', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (81, N'Nour Khaled', N'Backend Developer PHP', 1, N'M', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (82, N'Ali Sayed', N'Backend Developer PHP', 1, N'M', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (83, N'Sara Mohamed', N'Backend Developer PHP', 1, N'M', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (84, N'Amr Ibrahim', N'Backend Developer PHP', 1, N'M', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (85, N'Nada Mahmoud', N'Backend Developer PHP', 1, N'M', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (86, N'Mahmoud Sayed', N'Backend Developer PHP', 1, N'M', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (87, N'Salma Mohamed', N'Backend Developer PHP', 1, N'M', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (88, N'Hassan Ibrahim', N'Backend Developer PHP', 1, N'M', N'Faculty of Computers and Artificial Intelligence', 29, N'Zagazig')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (89, N'Laila Mahmoud', N'Backend Developer PHP', 1, N'M', N'Faculty of Computers and Artificial Intelligence', 29, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (90, N'Ahmed Salem', N'Backend Developer PHP', 1, N'M', N'Faculty of Computers and Artificial Intelligence', 29, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (91, N'Mona Hassan', N'Backend Developer PHP', 1, N'M', N'Faculty of Computers and Artificial Intelligence', 29, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (92, N'Hassan Ahmed', N'Backend Developer PHP', 1, N'M', N'Faculty of Computers and Artificial Intelligence', 29, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (93, N'Nour Khaled', N'Backend Developer PHP', 1, N'M', N'Faculty of Computers and Artificial Intelligence', 29, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (94, N'Ali Sayed', N'Backend Developer PHP', 1, N'M', N'Faculty of Computers and Artificial Intelligence', 29, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (95, N'Sara Mohamed', N'Backend Developer PHP', 1, N'M', N'Faculty of Computers and Artificial Intelligence', 29, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (96, N'Amr Ibrahim', N'Backend Developer PHP', 1, N'M', N'Faculty of Computers and Artificial Intelligence', 29, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (97, N'Nada Mahmoud', N'Backend Developer PHP', 1, N'M', N'Faculty of Computers and Artificial Intelligence', 29, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (98, N'Mahmoud Sayed', N'Backend Developer PHP', 1, N'M', N'Faculty of Computers and Artificial Intelligence', 29, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (99, N'Salma Mohamed', N'Backend Developer PHP', 1, N'M', N'Faculty of Computers and Artificial Intelligence', 29, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (100, N'Hassan Ibrahim', N'Backend Developer PHP', 1, N'M', N'Faculty of Computers and Artificial Intelligence', 29, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (101, N'Laila Mahmoud', N'Full Stack .NET Developer', 1, N'M', N'Faculty of Science', 25, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (102, N'Ahmed Salem', N'Full Stack .NET Developer', 1, N'M', N'Faculty of Science', 25, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (103, N'Mona Hassan', N'Full Stack .NET Developer', 1, N'M', N'Faculty of Science', 24, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (104, N'Hassan Ahmed', N'Full Stack .NET Developer', 1, N'M', N'Faculty of Science', 23, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (105, N'Nour Khaled', N'Full Stack .NET Developer', 1, N'M', N'Faculty of Science', 23, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (106, N'Ali Sayed', N'Full Stack .NET Developer', 1, N'M', N'Faculty of Science', 23, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (107, N'Sara Mohamed', N'Full Stack .NET Developer', 1, N'M', N'Faculty of Science', 23, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (108, N'Amr Ibrahim', N'Full Stack .NET Developer', 1, N'M', N'Faculty of Science', 26, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (109, N'Nada Mahmoud', N'Full Stack .NET Developer', 1, N'M', N'Faculty of Science', 26, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (110, N'Mahmoud Sayed', N'Full Stack .NET Developer', 1, N'M', N'Faculty of Science', 26, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (111, N'Salma Mohamed', N'Full Stack .NET Developer', 1, N'M', N'Faculty of Science', 26, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (112, N'Hassan Ibrahim', N'Full Stack .NET Developer', 1, N'M', N'Faculty of Science', 26, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (113, N'Laila Mahmoud', N'Full Stack .NET Developer', 1, N'M', N'Faculty of Science', 26, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (114, N'Ahmed Salem', N'Full Stack .NET Developer', 1, N'M', N'Faculty of Science', 26, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (115, N'Mona Hassan', N'Full Stack .NET Developer', 1, N'M', N'Faculty of Science', 26, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (116, N'Hassan Ahmed', N'Full Stack .NET Developer', 1, N'M', N'Faculty of Science', 26, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (117, N'Nour Khaled', N'Full Stack .NET Developer', 1, N'M', N'Faculty of Science', 26, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (118, N'Ali Sayed', N'Full Stack .NET Developer', 1, N'M', N'Faculty of Science', 26, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (119, N'Sara Mohamed', N'Full Stack .NET Developer', 1, N'M', N'Faculty of Science', 26, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (120, N'Amr Ibrahim', N'Full Stack .NET Developer', 1, N'M', N'Faculty of Science', 26, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (121, N'Nada Mahmoud', N'MERN Stack Developer', 1, N'M', N'Faculty of Science', 26, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (122, N'Mahmoud Sayed', N'MERN Stack Developer', 1, N'M', N'Faculty of Science', 26, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (123, N'Salma Mohamed', N'MERN Stack Developer', 1, N'M', N'Faculty of Science', 26, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (124, N'Hassan Ibrahim', N'MERN Stack Developer', 1, N'M', N'Faculty of Science', 26, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (125, N'Laila Mahmoud', N'MERN Stack Developer', 1, N'M', N'Faculty of Science', 26, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (126, N'Ahmed Salem', N'MERN Stack Developer', 1, N'M', N'Faculty of Science', 27, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (127, N'Mona Hassan', N'MERN Stack Developer', 1, N'M', N'Faculty of Science', 27, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (128, N'Hassan Ahmed', N'MERN Stack Developer', 1, N'M', N'Faculty of Science', 29, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (129, N'Nour Khaled', N'MERN Stack Developer', 1, N'M', N'Faculty of Science', 28, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (130, N'Ali Sayed', N'MERN Stack Developer', 1, N'M', N'Faculty of Science', 28, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (131, N'Sara Mohamed', N'Frontend Developer', 1, N'M', N'Faculty of Science', 28, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (132, N'Amr Ibrahim', N'Frontend Developer', 1, N'M', N'Faculty of Science', 28, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (133, N'Nada Mahmoud', N'Frontend Developer', 1, N'M', N'Faculty of Science', 28, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (134, N'Mahmoud Sayed', N'Frontend Developer', 1, N'M', N'Faculty of Science', 28, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (135, N'Salma Mohamed', N'Frontend Developer', 1, N'M', N'Faculty of Science', 28, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (136, N'Hassan Ibrahim', N'Frontend Developer', 1, N'M', N'Faculty of Science', 28, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (137, N'Laila Mahmoud', N'Frontend Developer', 1, N'M', N'Faculty of Science', 28, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (138, N'Ahmed Salem', N'Frontend Developer', 1, N'M', N'Faculty of Science', 28, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (139, N'Mona Hassan', N'Frontend Developer', 1, N'M', N'Faculty of Science', 28, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (140, N'Hassan Ahmed', N'Frontend Developer', 1, N'M', N'Faculty of Science', 28, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (141, N'Nour Khaled', N'Frontend Developer', 1, N'M', N'Faculty of Science', 28, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (142, N'Ali Sayed', N'Frontend Developer', 1, N'M', N'Faculty of Science', 28, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (143, N'Sara Mohamed', N'Frontend Developer', 1, N'M', N'Faculty of Science', 28, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (144, N'Amr Ibrahim', N'Frontend Developer', 1, N'M', N'Faculty of Science', 28, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (145, N'Nada Mahmoud', N'Frontend Developer', 1, N'M', N'Faculty of Science', 28, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (146, N'Mahmoud Sayed', N'Frontend Developer', 1, N'F', N'Faculty of Science', 28, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (147, N'Salma Mohamed', N'Frontend Developer', 1, N'F', N'Faculty of Science', 28, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (148, N'Hassan Ibrahim', N'Frontend Developer', 1, N'F', N'Faculty of Science', 28, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (149, N'Laila Mahmoud', N'Frontend Developer', 1, N'F', N'Faculty of Science', 33, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (150, N'Ahmed Salem', N'Frontend Developer', 1, N'F', N'Faculty of Science', 33, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (151, N'Mona Hassan', N'Frontend Developer', 1, N'F', N'Faculty of Science', 33, N'Cairo')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (152, N'Hassan Ahmed', N'Frontend Developer', 1, N'F', N'Faculty of Science', 33, N'Fayoum')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (153, N'Nour Khaled', N'Frontend Developer', 1, N'F', N'Faculty of Science', 30, N'Fayoum')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (154, N'Ali Sayed', N'Frontend Developer', 1, N'F', N'Faculty of Science', 30, N'Fayoum')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (155, N'Sara Mohamed', N'Frontend Developer', 1, N'F', N'Faculty of Science', 30, N'Fayoum')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (156, N'Amr Ibrahim', N'Frontend Developer', 1, N'F', N'Faculty of Science', 30, N'Fayoum')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (157, N'Nada Mahmoud', N'Frontend Developer', 1, N'F', N'Faculty of Science', 30, N'Fayoum')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (158, N'Mahmoud Sayed', N'Frontend Developer', 1, N'F', N'Faculty of Science', 30, N'Fayoum')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (159, N'Salma Mohamed', N'Frontend Developer', 1, N'F', N'Faculty of Science', 30, N'Fayoum')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (160, N'Hassan Ibrahim', N'Frontend Developer', 1, N'F', N'Faculty of Science', 30, N'Fayoum')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (161, N'Laila Mahmoud', N'Frontend Developer', 1, N'F', N'Faculty of Science', 31, N'Fayoum')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (162, N'Ahmed Salem', N'Frontend Developer', 1, N'F', N'Faculty of Science', 32, N'Fayoum')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (163, N'Mona Hassan', N'Frontend Developer', 1, N'F', N'Faculty of Science', 32, N'Fayoum')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (164, N'Hassan Ahmed', N'Frontend Developer', 1, N'F', N'Faculty of Science', 32, N'Fayoum')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (165, N'Nour Khaled', N'Frontend Developer', 1, N'F', N'Faculty of Science', 32, N'Fayoum')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (166, N'Ali Sayed', N'Frontend Developer', 1, N'F', N'Faculty of Science', 32, N'Fayoum')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (167, N'Sara Mohamed', N'Frontend Developer', 1, N'F', N'Faculty of Science', 32, N'Fayoum')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (168, N'Amr Ibrahim', N'Frontend Developer', 1, N'F', N'Faculty of Agriculture', 32, N'Fayoum')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (169, N'Nada Mahmoud', N'Frontend Developer', 1, N'F', N'Faculty of Agriculture', 32, N'Fayoum')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (170, N'Mahmoud Sayed', N'Frontend Developer', 1, N'F', N'Faculty of Agriculture', 32, N'Fayoum')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (171, N'Salma Mohamed', N'Angular Developer', 1, N'F', N'Faculty of Agriculture', 32, N'Fayoum')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (172, N'Hassan Ibrahim', N'Angular Developer', 1, N'F', N'Faculty of Agriculture', 32, N'Fayoum')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (173, N'Laila Mahmoud', N'Angular Developer', 1, N'F', N'Faculty of Agriculture', 32, N'Fayoum')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (174, N'Ahmed Salem', N'Angular Developer', 1, N'F', N'Faculty of Agriculture', 34, N'Fayoum')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (175, N'Mona Hassan', N'Angular Developer', 1, N'F', N'Faculty of Agriculture', 34, N'Fayoum')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (176, N'Hassan Ahmed', N'Angular Developer', 1, N'F', N'Faculty of Agriculture', 34, N'Fayoum')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (177, N'Nour Khaled', N'Angular Developer', 1, N'F', N'Faculty of Agriculture', 34, N'Fayoum')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (178, N'Ali Sayed', N'Angular Developer', 1, N'F', N'Faculty of Agriculture', 34, N'Fayoum')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (179, N'Sara Mohamed', N'Angular Developer', 1, N'F', N'Faculty of Agriculture', 34, N'Fayoum')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (180, N'Amr Ibrahim', N'Angular Developer', 1, N'F', N'Faculty of Agriculture', 34, N'Fayoum')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (181, N'Nada Mahmoud', N'Angular Developer', 1, N'F', N'Faculty of Agriculture', 34, N'Fayoum')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (182, N'Mahmoud Sayed', N'Angular Developer', 1, N'F', N'Faculty of Agriculture', 34, N'Fayoum')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (183, N'Salma Mohamed', N'Angular Developer', 1, N'F', N'Faculty of Agriculture', 34, N'Fayoum')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (184, N'Hassan Ibrahim', N'WordPress Developer', 1, N'F', N'Faculty of Agriculture', 34, N'Fayoum')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (185, N'Laila Mahmoud', N'WordPress Developer', 1, N'F', N'Faculty of Agriculture', 34, N'Fayoum')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (186, N'Ahmed Salem', N'WordPress Developer', 1, N'F', N'Faculty of Agriculture', 30, N'Benha')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (187, N'Mona Hassan', N'WordPress Developer', 1, N'F', N'Faculty of Agriculture', 30, N'Benha')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (188, N'Hassan Ahmed', N'WordPress Developer', 1, N'F', N'Faculty of Agriculture', 30, N'Benha')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (189, N'Fatima Mohamed', N'Data Scientist', 18, N'F', N'Faculty of Agriculture', 30, N'Benha')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (190, N'Omar Hassan', N'Data Scientist', 18, N'F', N'Faculty of Agriculture', 30, N'Benha')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (191, N'Nour Ahmed', N'Data Scientist', 18, N'F', N'Faculty of Agriculture', 30, N'Benha')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (192, N'Ali Mohamed', N'Data Scientist', 18, N'F', N'Faculty of Agriculture', 30, N'Benha')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (193, N'Sara Hassan', N'Data Scientist', 18, N'F', N'Faculty of Agriculture', 30, N'Benha')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (194, N'Khaled Ahmed', N'Data Scientist', 18, N'F', N'Faculty of Agriculture', 30, N'Benha')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (195, N'Layla Ali', N'Data Scientist', 18, N'F', N'Faculty of Agriculture', 30, N'Benha')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (196, N'Mohamed Hassan', N'Data Scientist', 18, N'F', N'Faculty of Agriculture', 30, N'Benha')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (197, N'Yasmin Ahmed', N'Data Scientist', 18, N'F', N'Faculty of Agriculture', 30, N'Benha')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (198, N'Amr Mohamed', N'Data Scientist', 18, N'F', N'Faculty of Agriculture', 30, N'Benha')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (199, N'Nada Hassan', N'Data Scientist', 18, N'F', N'Faculty of Agriculture', 30, N'Benha')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (200, N'Hassan Ali', N'Data Scientist', 18, N'M', N'Faculty of Agriculture', 30, N'Benha')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (201, N'Safia Mohamed', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 27, N'Asyut')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (202, N'Karim Hassan', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 27, N'Asyut')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (203, N'Nadia Ali', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 27, N'Asyut')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (204, N'Tarek Mohamed', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 27, N'Asyut')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (205, N'Dina Hassan', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 27, N'Asyut')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (206, N'Mahmoud Ahmed', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 27, N'Asyut')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (207, N'Heba Mohamed', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 27, N'Asyut')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (208, N'Sami Hassan', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 27, N'Asyut')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (209, N'Rania Ali', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 27, N'Asyut')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (210, N'Mohamed Hassan', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 27, N'Asyut')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (211, N'Hana Ahmed', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 27, N'Asyut')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (212, N'Omar Mohamed', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 27, N'Asyut')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (213, N'Farida Hassan', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 27, N'Asyut')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (214, N'Ali Ahmed', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 27, N'Asyut')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (215, N'Nada Mohamed', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 27, N'Asyut')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (216, N'Khaled Hassan', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 27, N'Asyut')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (217, N'Layla Ali', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 27, N'Asyut')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (218, N'Mohamed Hassan', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 27, N'Asyut')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (219, N'Yasmin Ahmed', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 27, N'Asyut')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (220, N'Amr Mohamed', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 27, N'Asyut')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (221, N'Nadia Hassan', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 27, N'Asyut')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (222, N'Tarek Ali', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 27, N'Asyut')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (223, N'Dina Mohamed', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 27, N'Asyut')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (224, N'Mahmoud Hassan', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 27, N'Asyut')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (225, N'Heba Ahmed', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 27, N'Asyut')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (226, N'Sami Mohamed', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 28, N'Asyut')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (227, N'Rania Hassan', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 28, N'Asyut')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (228, N'Mohamed Ali', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 28, N'Asyut')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (229, N'Hana Mohamed', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 28, N'Asyut')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (230, N'Omar Hassan', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 28, N'Asyut')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (231, N'Farida Ahmed', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 28, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (232, N'Ali Mohamed', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 28, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (233, N'Nada Hassan', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 28, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (234, N'Khaled Ali', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 28, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (235, N'Layla Mohamed', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 28, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (236, N'Mohamed Hassan', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 28, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (237, N'Yasmin Ahmed', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 28, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (238, N'Amr Mohamed', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 28, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (239, N'Nadia Hassan', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 28, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (240, N'Tarek Ali', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 28, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (241, N'Dina Mohamed', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 28, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (242, N'Mahmoud Hassan', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 28, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (243, N'Heba Ahmed', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 28, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (244, N'Sami Mohamed', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 28, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (245, N'Rania Hassan', N'Data Scientist', 18, N'F', N'Faculty of Commerce', 28, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (246, N'Mohamed Ali', N'Data Scientist', 18, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (247, N'Fatima Mohamed', N'Penetration Tester', 13, N'F', N'Faculty of Commerce', 28, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (248, N'Omar Hassan', N'Penetration Tester', 13, N'F', N'Faculty of Commerce', 28, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (249, N'Nour Ahmed', N'Penetration Tester', 13, N'F', N'Faculty of Commerce', 28, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (250, N'Ali Mohamed', N'Penetration Tester', 13, N'F', N'Faculty of Commerce', 28, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (251, N'Sara Hassan', N'Penetration Tester', 13, N'F', N'Faculty of Commerce', 28, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (252, N'Khaled Ahmed', N'Penetration Tester', 13, N'F', N'Faculty of Commerce', 28, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (253, N'Layla Ali', N'Penetration Tester', 13, N'F', N'Faculty of Commerce', 28, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (254, N'Mohamed Hassan', N'Penetration Tester', 13, N'F', N'Faculty of Commerce', 28, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (255, N'Yasmin Ahmed', N'Penetration Tester', 13, N'F', N'Faculty of Commerce', 28, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (256, N'Amr Mohamed', N'Penetration Tester', 13, N'F', N'Faculty of Commerce', 29, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (257, N'Nada Hassan', N'Penetration Tester', 13, N'F', N'Faculty of Commerce', 29, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (258, N'Hassan Ali', N'Penetration Tester', 13, N'F', N'Faculty of Commerce', 29, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (259, N'Safia Mohamed', N'Penetration Tester', 13, N'F', N'Faculty of Commerce', 29, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (260, N'Karim Hassan', N'Penetration Tester', 13, N'F', N'Faculty of Commerce', 29, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (261, N'Nadia Ali', N'Penetration Tester', 13, N'F', N'Faculty of Commerce', 29, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (262, N'Tarek Mohamed', N'Penetration Tester', 13, N'F', N'Faculty of Commerce', 29, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (263, N'Dina Hassan', N'Penetration Tester', 13, N'F', N'Faculty of Commerce', 29, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (264, N'Mahmoud Ahmed', N'Penetration Tester', 13, N'F', N'Faculty of Commerce', 29, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (265, N'Heba Mohamed', N'Penetration Tester', 13, N'F', N'Faculty of Commerce', 29, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (266, N'Sami Hassan', N'Penetration Tester', 13, N'F', N'Faculty of Commerce', 29, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (267, N'Rania Ali', N'Penetration Tester', 13, N'F', N'Faculty of Commerce', 29, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (268, N'Mohamed Hassan', N'Penetration Tester', 13, N'F', N'Faculty of Commerce', 29, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (269, N'Hana Ahmed', N'Penetration Tester', 13, N'F', N'Faculty of Commerce', 29, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (270, N'Omar Mohamed', N'Penetration Tester', 13, N'F', N'Faculty of Commerce', 29, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (271, N'Farida Hassan', N'Penetration Tester', 13, N'F', N'Faculty of Commerce', 29, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (272, N'Ali Ahmed', N'Penetration Tester', 13, N'F', N'Faculty of Commerce', 29, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (273, N'Nada Mohamed', N'Penetration Tester', 13, N'F', N'Faculty of Commerce', 29, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (274, N'Khaled Hassan', N'Penetration Tester', 13, N'F', N'Faculty of Commerce', 29, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (275, N'Layla Ali', N'Penetration Tester', 13, N'F', N'Faculty of Commerce', 29, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (276, N'Mohamed Hassan', N'Penetration Tester', 13, N'F', N'Faculty of Commerce', 29, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (277, N'Yasmin Ahmed', N'Penetration Tester', 13, N'F', N'Faculty of Commerce', 29, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (278, N'Amr Mohamed', N'Penetration Tester', 13, N'F', N'Faculty of Commerce', 29, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (279, N'Nadia Hassan', N'Penetration Tester', 13, N'F', N'Faculty of Commerce', 29, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (280, N'Tarek Ali', N'Penetration Tester', 13, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (281, N'Dina Mohamed', N'Penetration Tester', 13, N'F', N'Faculty of Dentistry', 29, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (282, N'Mahmoud Hassan', N'Penetration Tester', 13, N'F', N'Faculty of Dentistry', 29, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (283, N'Heba Ahmed', N'Penetration Tester', 13, N'F', N'Faculty of Dentistry', 29, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (284, N'Sami Mohamed', N'Penetration Tester', 13, N'F', N'Faculty of Dentistry', 29, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (285, N'Rania Hassan', N'Penetration Tester', 13, N'F', N'Faculty of Dentistry', 29, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (286, N'Mohamed Ali', N'Penetration Tester', 13, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (287, N'Fatima Mohamed', N'Security Analyst', 13, N'F', N'Faculty of Dentistry', 31, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (288, N'Omar Hassan', N'Security Analyst', 13, N'F', N'Faculty of Dentistry', 31, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (289, N'Nour Ahmed', N'Security Analyst', 13, N'F', N'Faculty of Dentistry', 31, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (290, N'Ali Mohamed', N'Security Analyst', 13, N'F', N'Faculty of Dentistry', 31, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (291, N'Sara Hassan', N'Security Analyst', 13, N'F', N'Faculty of Dentistry', 31, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (292, N'Khaled Ahmed', N'Security Analyst', 13, N'F', N'Faculty of Dentistry', 31, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (293, N'Layla Ali', N'Security Analyst', 13, N'F', N'Faculty of Dentistry', 31, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (294, N'Mohamed Hassan', N'Security Analyst', 13, N'F', N'Faculty of Dentistry', 31, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (295, N'Yasmin Ahmed', N'Security Analyst', 13, N'F', N'Faculty of Dentistry', 31, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (296, N'Amr Mohamed', N'Security Analyst', 13, N'F', N'Faculty of Dentistry', 31, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (297, N'Nada Hassan', N'Security Analyst', 13, N'F', N'Faculty of Dentistry', 31, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (298, N'Hassan Ali', N'Security Analyst', 13, N'F', N'Faculty of Dentistry', 31, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (299, N'Safia Mohamed', N'Security Analyst', 13, N'F', N'Faculty of Dentistry', 31, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (300, N'Karim Hassan', N'Security Analyst', 13, N'F', N'Faculty of Dentistry', 31, N'Alexandria')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (301, N'Nadia Ali', N'Security Analyst', 13, N'F', N'Faculty of Physical Education', 31, N'Beni Suef')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (302, N'Hassan Ahmed', N'Power BI Developer', 25, N'F', N'Faculty of Physical Education', 31, N'Beni Suef')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (303, N'Nour Khaled', N'Power BI Developer', 25, N'F', N'Faculty of Physical Education', 31, N'Beni Suef')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (304, N'Ali Sayed', N'Power BI Developer', 25, N'F', N'Faculty of Physical Education', 31, N'Beni Suef')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (305, N'Sara Mohamed', N'Power BI Developer', 25, N'F', N'Faculty of Physical Education', 31, N'Beni Suef')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (306, N'Amr Ibrahim', N'Power BI Developer', 25, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (307, N'Nada Mahmoud', N'Power BI Developer', 25, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (308, N'Mahmoud Sayed', N'Power BI Developer', 25, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (309, N'Salma Mohamed', N'Power BI Developer', 25, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (310, N'Hassan Ibrahim', N'Power BI Developer', 25, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (311, N'Laila Mahmoud', N'Power BI Developer', 25, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (312, N'Ahmed Salem', N'Power BI Developer', 25, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (313, N'Mona Hassan', N'Power BI Developer', 25, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (314, N'Hassan Ahmed', N'Power BI Developer', 25, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (315, N'Nour Khaled', N'Power BI Developer', 25, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (316, N'Ali Sayed', N'Power BI Developer', 25, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (317, N'Sara Mohamed', N'Power BI Developer', 25, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (318, N'Amr Ibrahim', N'Power BI Developer', 25, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (319, N'Nada Mahmoud', N'Power BI Developer', 25, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (320, N'Mahmoud Sayed', N'Power BI Developer', 25, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (321, N'Salma Mohamed', N'Power BI Developer', 25, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (322, N'Hassan Ibrahim', N'Power BI Developer', 25, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (323, N'Laila Mahmoud', N'Power BI Developer', 25, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (324, N'Ahmed Salem', N'Power BI Developer', 25, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (325, N'Mona Hassan', N'Power BI Developer', 25, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (326, N'Hassan Ahmed', N'Power BI Developer', 25, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (327, N'Nour Khaled', N'Power BI Developer', 25, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (328, N'Ali Sayed', N'Power BI Developer', 25, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (329, N'Sara Mohamed', N'Power BI Developer', 25, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (330, N'Amr Ibrahim', N'Power BI Developer', 25, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (331, N'Nada Mahmoud', N'Power BI Developer', 25, N'M', N'Faculty of Computers and Information', 32, N'Beni Suef')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (332, N'Mahmoud Sayed', N'Power BI Developer', 25, N'M', N'Faculty of Computers and Information', 32, N'Beni Suef')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (333, N'Salma Mohamed', N'Power BI Developer', 25, N'M', N'Faculty of Computers and Information', 32, N'Beni Suef')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (334, N'Hassan Ibrahim', N'Power BI Developer', 25, N'M', N'Faculty of Computers and Information', 32, N'Beni Suef')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (335, N'Laila Mahmoud', N'Power BI Developer', 25, N'M', N'Faculty of Computers and Information', 32, N'Beni Suef')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (336, N'Ahmed Salem', N'Power BI Developer', 25, N'M', N'Faculty of Computers and Information', 32, N'Beni Suef')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (337, N'Mona Hassan', N'Power BI Developer', 25, N'M', N'Faculty of Computers and Information', 32, N'Beni Suef')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (338, N'Fatima Mohamed', N'UI/UX Designer', 23, N'M', N'Faculty of Computers and Information', 32, N'Beni Suef')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (339, N'Omar Hassan', N'UI/UX Designer', 23, N'M', N'Faculty of Computers and Information', 32, N'Beni Suef')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (340, N'Nour Ahmed', N'UI/UX Designer', 23, N'M', N'Faculty of Computers and Information', 32, N'Beni Suef')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (341, N'Ali Mohamed', N'UI/UX Designer', 23, N'M', N'Faculty of Computers and Information', 32, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (342, N'Sara Hassan', N'UI/UX Designer', 23, N'M', N'Faculty of Computers and Information', 32, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (343, N'Khaled Ahmed', N'UI/UX Designer', 23, N'M', N'Faculty of Computers and Information', 32, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (344, N'Layla Ali', N'UI/UX Designer', 23, N'M', N'Faculty of Computers and Information', 32, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (345, N'Mohamed Hassan', N'UI/UX Designer', 23, N'M', N'Faculty of Computers and Information', 32, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (346, N'Yasmin Ahmed', N'UI/UX Designer', 23, N'M', N'Faculty of Computers and Information', 32, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (347, N'Amr Mohamed', N'UI/UX Designer', 23, N'M', N'Faculty of Computers and Information', 32, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (348, N'Nada Hassan', N'UI/UX Designer', 23, N'M', N'Faculty of Computers and Information', 32, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (349, N'Hassan Ali', N'UI/UX Designer', 23, N'M', N'Faculty of Computers and Information', 32, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (350, N'Safia Mohamed', N'UI/UX Designer', 23, N'M', N'Faculty of Computers and Information', 32, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (351, N'Karim Hassan', N'UI/UX Designer', 23, N'M', N'Faculty of Computers and Information', 32, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (352, N'Nadia Ali', N'UI/UX Designer', 23, N'M', N'Faculty of Computers and Information', 32, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (353, N'Tarek Mohamed', N'UI/UX Designer', 23, N'M', N'Faculty of Computers and Information', 32, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (354, N'Dina Hassan', N'UI/UX Designer', 23, N'M', N'Faculty of Computers and Information', 32, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (355, N'Mahmoud Ahmed', N'UI/UX Designer', 23, N'M', N'Faculty of Computers and Information', 32, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (356, N'Heba Mohamed', N'UI/UX Designer', 23, N'M', N'Faculty of Computers and Information', 24, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (357, N'Sami Hassan', N'UI/UX Designer', 23, N'M', N'Faculty of Computers and Information', 24, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (358, N'Rania Ali', N'UI/UX Designer', 23, N'M', N'Faculty of Computers and Information', 24, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (359, N'Mohamed Hassan', N'UI/UX Designer', 23, N'M', N'Faculty of Computers and Information', 24, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (360, N'Hana Ahmed', N'UI/UX Designer', 23, N'M', N'Faculty of Computers and Information', 24, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (361, N'Omar Mohamed', N'UI/UX Designer', 23, N'M', N'Faculty of Computers and Information', 24, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (362, N'Farida Hassan', N'UI/UX Designer', 23, N'M', N'Faculty of Computers and Information', 24, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (363, N'Ali Ahmed', N'UI/UX Designer', 23, N'M', N'Faculty of Computers and Information', 24, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (364, N'Nada Mohamed', N'UI/UX Designer', 23, N'M', N'Faculty of Computers and Information', 24, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (365, N'Khaled Hassan', N'UI/UX Designer', 23, N'M', N'Faculty of Computers and Information', 24, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (366, N'Layla Ali', N'UI/UX Designer', 23, N'M', N'Faculty of Computers and Information', 24, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (367, N'Mohamed Hassan', N'UI/UX Designer', 23, N'M', N'Faculty of Computers and Information', 24, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (368, N'Yasmin Ahmed', N'UI/UX Designer', 23, N'M', N'Faculty of Computers and Information', 24, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (369, N'Amr Mohamed', N'UI/UX Designer', 23, N'M', N'Faculty of Computers and Information', 24, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (370, N'Nadia Hassan', N'UI/UX Designer', 23, N'M', N'Faculty of Computers and Information', 24, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (371, N'Tarek Ali', N'UI/UX Designer', 23, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (372, N'Dina Mohamed', N'UI/UX Designer', 23, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (373, N'Mahmoud Hassan', N'UI/UX Designer', 23, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (374, N'Heba Ahmed', N'UI/UX Designer', 23, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (375, N'Sami Mohamed', N'UI/UX Designer', 23, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (376, N'Rania Hassan', N'UI/UX Designer', 23, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (377, N'Mohamed Ali', N'UI/UX Designer', 23, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (378, N'Hana Mohamed', N'UI/UX Designer', 23, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (379, N'Omar Hassan', N'UI/UX Designer', 23, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (380, N'Farida Ahmed', N'UI/UX Designer', 23, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (381, N'Ali Mohamed', N'UI/UX Designer', 23, N'M', N'Faculty of Nursing', 24, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (382, N'Nada Hassan', N'UI/UX Designer', 23, N'M', N'Faculty of Nursing', 24, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (383, N'Khaled Ali', N'UI/UX Designer', 23, N'M', N'Faculty of Nursing', 24, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (384, N'Layla Mohamed', N'UI/UX Designer', 23, N'M', N'Faculty of Nursing', 24, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (385, N'Mohamed Hassan', N'UI/UX Designer', 23, N'M', N'Faculty of Nursing', 24, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (386, N'Yasmin Ahmed', N'UI/UX Designer', 23, N'M', N'Faculty of Nursing', 26, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (387, N'Amr Mohamed', N'UI/UX Designer', 23, N'M', N'Faculty of Nursing', 26, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (388, N'Nadia Hassan', N'UI/UX Designer', 23, N'M', N'Faculty of Nursing', 26, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (389, N'Tarek Ali', N'UI/UX Designer', 23, N'M', N'Faculty of Nursing', 26, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (390, N'Dina Mohamed', N'UI/UX Designer', 23, N'M', N'Faculty of Nursing', 26, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (391, N'Mahmoud Hassan', N'UI/UX Designer', 23, N'M', N'Faculty of Nursing', 26, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (392, N'Heba Ahmed', N'UI/UX Designer', 23, N'M', N'Faculty of Nursing', 26, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (393, N'Sami Mohamed', N'UI/UX Designer', 23, N'M', N'Faculty of Nursing', 26, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (394, N'Rania Hassan', N'UI/UX Designer', 23, N'M', N'Faculty of Nursing', 26, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (395, N'Mohamed Ali', N'UI/UX Designer', 23, N'M', N'Faculty of Nursing', 26, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (396, N'Fatima Mohamed', N'Game Programmer', 9, N'M', N'Faculty of Nursing', 26, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (397, N'Omar Hassan', N'Game Programmer', 9, N'M', N'Faculty of Nursing', 26, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (398, N'Nour Ahmed', N'Game Programmer', 9, N'M', N'Faculty of Nursing', 26, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (399, N'Ali Mohamed', N'Game Programmer', 9, N'M', N'Faculty of Nursing', 26, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (400, N'Sara Hassan', N'Game Programmer', 9, N'M', N'Faculty of Nursing', 26, N'Qena')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (401, N'Khaled Ahmed', N'Game Programmer', 9, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (402, N'Layla Ali', N'Game Programmer', 9, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (403, N'Mohamed Hassan', N'Game Programmer', 9, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (404, N'Ahmed Ali', N'Game Desinger', 7, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (405, N'Laila Khaled', N'Game Desinger', 7, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (406, N'Yasmine Ibrahim', N'Game Desinger', 7, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (407, N'Karim Mahmoud', N'Game Desinger', 7, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (408, N'Fatima Mohamed', N'Game Desinger', 4, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (409, N'Omar Hassan', N'Network Engineer', 4, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (410, N'Nour Ahmed', N'Network Engineer', 4, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (411, N'Ali Mohamed', N'Network Engineer', 4, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (412, N'Sara Hassan', N'Network Engineer', 4, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (413, N'Khaled Ahmed', N'Network Engineer', 4, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (414, N'Layla Ali', N'Network Engineer', 4, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (415, N'Mohamed Hassan', N'Network Engineer', 4, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (416, N'Yasmin Ahmed', N'Network Engineer', 4, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (417, N'Amr Mohamed', N'Network Engineer', 4, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (418, N'Nada Hassan', N'Network Engineer', 4, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (419, N'Hassan Ali', N'Network Engineer', 4, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (420, N'Safia Mohamed', N'Network Engineer', 4, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (421, N'Karim Hassan', N'Network Engineer', 4, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (422, N'Nadia Ali', N'Network Engineer', 4, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (423, N'Ahmed Ali', N'Industrial Automation Engineer', 5, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (424, N'Fatima Mohamed', N'Industrial Automation Engineer', 5, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (425, N'Mohamed Salem', N'Industrial Automation Engineer', 5, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (426, N'Yasmine Ibrahim', N'Industrial Automation Engineer', 5, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (427, N'Omar Hassan', N'Industrial Automation Engineer', 5, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (428, N'Ali Ahmed', N'Application Developer', 22, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (429, N'Sara Ahmed', N'Application Developer', 22, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (430, N'Mona Khaled', N'Application Developer', 22, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (431, N'Youssef Hassan', N'Application Developer', 22, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (432, N'Nour Mohamed', N'Application Developer', 22, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (433, N'Khaled Ali', N'Application Developer', 22, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (434, N'Dina Hassan', N'Application Developer', 22, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (435, N'Rania Ali', N'Application Developer', 22, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (436, N'Ahmed Samir', N'Application Developer', 22, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (437, N'Fatima Hassan', N'Application Developer', 22, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (438, N'Omar Ali', N'Application Developer', 22, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (439, N'Layla Ahmed', N'Application Developer', 22, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (440, N'Hassan Mohamed', N'Application Developer', 22, N'M', N'Faculty of Engineering', 26, N'Tanta')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (441, N'Mona Ahmed', N'Application Developer', 22, N'M', N'Faculty of Engineering', 26, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (442, N'Karim Ali', N'Application Developer', 22, N'M', N'Faculty of Engineering', 26, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (443, N'Nada Khaled', N'Application Developer', 22, N'M', N'Faculty of Engineering', 26, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (444, N'Amina Ibrahim', N'DevOps Engineer', 21, N'M', N'Faculty of Engineering', 26, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (445, N'Zaid Ahmed', N'DevOps Engineer', 21, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (446, N'Sara Khaled', N'DevOps Engineer', 21, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (447, N'Hassan Ezzat', N'DevOps Engineer', 21, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (448, N'Nour Ali', N'DevOps Engineer', 21, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (449, N'Mona Fathy', N'DevOps Engineer', 21, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (450, N'Omar Mahmoud', N'DevOps Engineer', 21, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (451, N'Layla Hassan', N'DevOps Engineer', 21, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (452, N'Khaled Mohamed', N'DevOps Engineer', 21, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (453, N'Laila Ahmed', N'Software Architect', 24, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (454, N'Omar Ezzat', N'Software Architect', 24, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (455, N'Nour Mohamed', N'Software Architect', 24, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (456, N'Amina Khaled', N'Software Architect', 24, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (457, N'Hassan El-Sayed', N'Software Architect', 24, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (458, N'Fatima Ali', N'Software Architect', 24, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (459, N'Ahmed Farouk', N'ERP Developer', 19, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (460, N'Mona Said', N'ERP Developer', 19, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (461, N'Omar Khaled', N'ERP Developer', 19, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (462, N'Laila Nour', N'ERP Developer', 19, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (463, N'Youssef Mohamed', N'ERP Developer', 19, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (464, N'Dina Ali', N'ERP Developer', 19, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (465, N'Mahmoud Hassan', N'ERP Developer', 19, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (466, N'Sara Khaled', N'IT Specialist', 14, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (467, N'Ali Ahmed', N'IT Specialist', 14, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (468, N'Nour Hassan', N'IT Specialist', 14, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (469, N'Khaled Mohamed', N'IT Specialist', 14, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (470, N'Ahmed Salah', N'Motion Designer', 8, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (471, N'Fatima Ali', N'Motion Designer', 8, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (472, N'Mona Samir', N'Motion Designer', 8, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (473, N'Youssef Ahmed', N'Motion Designer', 8, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (474, N'Layla Khaled', N'Motion Designer', 8, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (475, N'Omar Salah', N'Motion Designer', 8, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (476, N'Sara Ahmed', N'Motion Designer', 8, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (477, N'Khaled Ali', N'Motion Designer', 8, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (478, N'Nour Mohamed', N'Motion Designer', 8, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (479, N'Hassan Ibrahim', N'Motion Designer', 8, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (480, N'Amr Khaled', N'Motion Designer', 8, N'M', N'Faculty of Engineering', 25, N'Sohag')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (481, N'Nadia Ahmed', N'Motion Designer', 8, N'M', N'Faculty of Engineering', 25, N'Mansaura')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (482, N'Mohamed Ali', N'Motion Designer', 8, N'M', N'Faculty of Engineering', 25, N'Mansaura')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (483, N'Dina Mohamed', N'Motion Designer', 8, N'M', N'Faculty of Engineering', 25, N'Mansaura')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (484, N'Rania Ali', N'Motion Designer', 8, N'M', N'Faculty of Engineering', 25, N'Mansaura')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (485, N'Ali Hasan', N'FX Artist', 10, N'M', N'Faculty of Engineering', 25, N'Mansaura')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (486, N'Mona Khaled', N'FX Artist', 10, N'M', N'Faculty of Engineering', 25, N'Mansaura')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (487, N'Omar Ahmed', N'FX Artist', 10, N'M', N'Faculty of Engineering', 25, N'Mansaura')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (488, N'Fatima Samir', N'FX Artist', 10, N'M', N'Faculty of Engineering', 25, N'Mansaura')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (489, N'Youssef Ibrahim', N'FX Artist', 10, N'M', N'Faculty of Engineering', 25, N'Mansaura')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (490, N'Amina Hussein', N'IoT Platform Developer', 17, N'M', N'Faculty of Engineering', 25, N'Mansaura')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (491, N'Omar Khaled', N'IoT Platform Developer', 17, N'M', N'Faculty of Engineering', 25, N'Mansaura')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (492, N'Sara Ahmed', N'IoT Platform Developer', 17, N'M', N'Faculty of Engineering', 25, N'Mansaura')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (493, N'Tarek Mohamed', N'IoT Platform Developer', 17, N'M', N'Faculty of Engineering', 25, N'Mansaura')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (494, N'Mona Hassan', N'IoT Platform Developer', 17, N'M', N'Faculty of Engineering', 25, N'Mansaura')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (495, N'Ali Ibrahim', N'IoT Platform Developer', 17, N'M', N'Faculty of Engineering', 25, N'Mansaura')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (496, N'Hassan Ali', N'IoT Platform Developer', 17, N'M', N'Faculty of Engineering', 25, N'Mansaura')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (497, N'Nour Mohamed', N'IoT Platform Developer', 17, N'M', N'Faculty of Engineering', 25, N'Mansaura')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (498, N'Yasmin Khaled', N'IoT Platform Developer', 17, N'M', N'Faculty of Engineering', 25, N'Mansaura')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (499, N'Mohamed Ezzat', N'Data Engineer', 20, N'M', N'Faculty of Engineering', 25, N'Mansaura')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (500, N'Nour Ahmed', N'Data Engineer', 20, N'M', N'Faculty of Engineering', 25, N'Ismailia')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (501, N'Ali Youssef', N'Data Engineer', 20, N'M', N'Faculty of Education', 34, N'Luxor')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (502, N'Fatima Mohamed', N'Data Engineer', 20, N'M', N'Faculty of Education', 34, N'Luxor')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (503, N'Omar Hassan', N'Data Engineer', 20, N'M', N'Faculty of Education', 34, N'Luxor')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (504, N'Sara Hassan', N'Data Engineer', 20, N'M', N'Faculty of Education', 34, N'Luxor')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (505, N'Khaled Ali', N'Data Engineer', 20, N'M', N'Faculty of Education', 34, N'Luxor')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (506, N'Layla Ali', N'Data Engineer', 20, N'M', N'Faculty of Education', 34, N'Luxor')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (507, N'Yasmin Ahmed', N'Data Engineer', 20, N'M', N'Faculty of Education', 34, N'Luxor')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (508, N'Amr Mohamed', N'Data Engineer', 20, N'M', N'Faculty of Education', 34, N'Luxor')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (509, N'Nada Hassan', N'Data Engineer', 20, N'M', N'Faculty of Education', 34, N'Luxor')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (510, N'Hassan Ali', N'Data Engineer', 20, N'M', N'Faculty of Education', 34, N'Luxor')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (511, N'Karim Hassan', N'Data Engineer', 20, N'M', N'Faculty of Education', 34, N'Luxor')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (512, N'Nadia Ali', N'Data Engineer', 20, N'M', N'Faculty of Education', 34, N'Luxor')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (513, N'Tarek Mohamed', N'Data Engineer', 20, N'M', N'Faculty of Education', 34, N'Luxor')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (514, N'Dina Hassan', N'Data Engineer', 20, N'M', N'Faculty of Education', 34, N'Luxor')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (515, N'Mahmoud Ahmed', N'Data Engineer', 20, N'M', N'Faculty of Education', 34, N'Luxor')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (516, N'Heba Mohamed', N'Data Engineer', 20, N'M', N'Faculty of Education', 34, N'Luxor')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (517, N'Sami Hassan', N'Data Engineer', 20, N'M', N'Faculty of Education', 34, N'Luxor')
GO
INSERT [dbo].[Graduates] ([graduate_ID], [graduate_name], [job_title], [track_ID], [Gender], [G_Faculty], [Age], [G_city]) VALUES (518, N'Alaa Salah', N'Software Engineering', 20, N'M', N'Faculty of Education', 34, N'Luxor')
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (1, 5, CAST(6200.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (2, 7, CAST(6300.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (3, 15, CAST(6400.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (4, 22, CAST(6500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (5, 33, CAST(6600.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (6, 9, CAST(6700.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (7, 20, CAST(6800.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (8, 31, CAST(6900.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (9, 42, CAST(7000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (10, 55, CAST(7100.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (12, 2, CAST(7200.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (13, 3, CAST(7300.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (14, 4, CAST(7400.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (15, 6, CAST(7500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (16, 8, CAST(7600.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (17, 10, CAST(7700.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (18, 12, CAST(7800.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (19, 14, CAST(7900.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (20, 16, CAST(8000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (21, 18, CAST(8100.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (22, 20, CAST(8200.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (23, 22, CAST(8300.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (24, 24, CAST(8400.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (25, 26, CAST(8500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (26, 28, CAST(8600.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (27, 30, CAST(8700.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (28, 32, CAST(8800.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (29, 34, CAST(8900.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (30, 36, CAST(9000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (31, 38, CAST(9100.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (32, 40, CAST(9200.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (33, 42, CAST(9300.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (34, 44, CAST(9400.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (35, 46, CAST(9500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (36, 48, CAST(9600.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (37, 50, CAST(9700.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (38, 52, CAST(9800.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (39, 54, CAST(9900.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (40, 56, CAST(10000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (41, 58, CAST(10100.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (42, 60, CAST(10200.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (43, 62, CAST(10300.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (44, 64, CAST(10400.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (45, 66, CAST(10500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (46, 68, CAST(10600.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (47, 70, CAST(10700.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (48, 72, CAST(10800.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (49, 74, CAST(10900.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (50, 76, CAST(11000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (51, 78, CAST(11100.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (52, 80, CAST(11200.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (53, 82, CAST(11300.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (54, 84, CAST(11400.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (55, 86, CAST(11500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (56, 88, CAST(11600.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (57, 90, CAST(11700.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (58, 92, CAST(11800.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (59, 94, CAST(11900.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (60, 96, CAST(12000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (61, 98, CAST(12100.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (62, 100, CAST(12200.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (64, 3, CAST(12300.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (65, 5, CAST(12400.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (66, 7, CAST(12500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (67, 9, CAST(12600.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (68, 11, CAST(12700.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (69, 13, CAST(12800.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (70, 15, CAST(12900.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (71, 17, CAST(13000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (72, 19, CAST(13100.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (73, 21, CAST(13200.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (74, 23, CAST(13300.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (75, 25, CAST(13400.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (76, 27, CAST(13500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (77, 29, CAST(13600.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (78, 31, CAST(13700.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (79, 33, CAST(13800.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (80, 35, CAST(13900.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (81, 37, CAST(14000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (82, 39, CAST(14100.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (83, 41, CAST(14200.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (84, 43, CAST(14300.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (85, 45, CAST(14400.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (86, 47, CAST(14500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (87, 49, CAST(14600.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (88, 51, CAST(14700.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (89, 53, CAST(14800.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (90, 55, CAST(14900.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (91, 57, CAST(15000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (92, 59, CAST(14000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (93, 61, CAST(14100.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (94, 63, CAST(14200.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (95, 65, CAST(14300.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (96, 67, CAST(14400.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (97, 69, CAST(14500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (98, 71, CAST(14600.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (99, 73, CAST(14700.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (100, 75, CAST(14800.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (101, 77, CAST(14900.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (102, 79, CAST(15000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (103, 81, CAST(14000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (104, 83, CAST(14100.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (105, 85, CAST(14200.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (106, 87, CAST(14300.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (107, 89, CAST(14400.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (108, 91, CAST(14500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (109, 93, CAST(14600.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (110, 95, CAST(14700.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (111, 97, CAST(14800.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (112, 99, CAST(14900.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (114, 2, CAST(15000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (115, 3, CAST(14000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (116, 4, CAST(14100.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (117, 5, CAST(14200.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (118, 6, CAST(14300.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (119, 7, CAST(14400.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (120, 8, CAST(14500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (121, 9, CAST(14600.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (122, 10, CAST(14700.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (123, 11, CAST(14800.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (124, 12, CAST(14900.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (125, 13, CAST(15000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (126, 14, CAST(14000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (127, 15, CAST(14100.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (128, 16, CAST(14200.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (129, 17, CAST(14300.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (130, 18, CAST(14400.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (131, 19, CAST(14500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (132, 20, CAST(14600.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (133, 21, CAST(14700.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (134, 22, CAST(14800.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (135, 23, CAST(14900.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (136, 24, CAST(15000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (137, 25, CAST(14000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (138, 26, CAST(14100.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (139, 27, CAST(14200.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (140, 28, CAST(14300.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (141, 29, CAST(14400.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (142, 30, CAST(14500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (143, 31, CAST(14600.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (144, 32, CAST(14700.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (145, 33, CAST(14800.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (146, 34, CAST(14900.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (147, 35, CAST(15000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (148, 36, CAST(14000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (149, 37, CAST(14100.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (150, 38, CAST(14200.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (151, 39, CAST(14300.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (152, 40, CAST(14400.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (153, 41, CAST(14500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (154, 42, CAST(14600.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (155, 43, CAST(14700.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (156, 44, CAST(14800.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (157, 45, CAST(14900.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (158, 46, CAST(15000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (159, 47, CAST(14000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (160, 48, CAST(14100.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (161, 49, CAST(14200.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (162, 50, CAST(14300.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (163, 51, CAST(14400.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (164, 52, CAST(14500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (165, 53, CAST(14600.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (166, 54, CAST(14700.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (167, 55, CAST(14800.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (168, 56, CAST(14900.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (169, 57, CAST(15000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (170, 58, CAST(14000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (171, 59, CAST(14100.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (172, 60, CAST(14200.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (173, 61, CAST(14300.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (174, 62, CAST(14400.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (175, 63, CAST(14500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (176, 64, CAST(14600.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (177, 65, CAST(14700.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (178, 66, CAST(14800.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (179, 67, CAST(14900.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (180, 68, CAST(15000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (181, 69, CAST(14000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (182, 70, CAST(14100.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (183, 71, CAST(14200.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (184, 72, CAST(14300.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (185, 73, CAST(14400.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (186, 74, CAST(14500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (187, 75, CAST(14600.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (188, 76, CAST(14700.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (189, 77, CAST(14800.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (190, 78, CAST(14900.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (191, 79, CAST(15000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (192, 80, CAST(14000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (193, 81, CAST(14100.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (194, 82, CAST(14200.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (195, 83, CAST(14300.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (196, 84, CAST(14400.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (197, 85, CAST(14500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (198, 86, CAST(14600.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (199, 87, CAST(14700.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[graduates_company] ([graduates_ID], [company_ID], [grad_Salary]) VALUES (200, 88, CAST(14800.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (1, N'Ahmed', N'ahmed.abdelrahman@example.com', N'M', CAST(6000.00 AS Decimal(10, 2)), 5, N'Cairo')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (2, N'Fatma', N'fatma.ali@example.com', N'F', CAST(5500.00 AS Decimal(10, 2)), 5, N'Alexandria')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (3, N'Mohamed', N'mohamed.gaber@example.com', N'M', CAST(7000.00 AS Decimal(10, 2)), 5, N'Giza')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (4, N'Nadia', N'nadia.fahmy@example.com', N'F', CAST(5200.00 AS Decimal(10, 2)), 5, N'Luxor')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (5, N'Amr', N'amr.hassan@example.com', N'M', CAST(6500.00 AS Decimal(10, 2)), 1, N'Aswan')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (6, N'Sara', N'sara.khalil@example.com', N'F', CAST(5300.00 AS Decimal(10, 2)), 1, N'Sharm El Sheikh')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (7, N'Mahmoud', N'mahmoud.mohamed@example.com', N'M', CAST(5800.00 AS Decimal(10, 2)), 1, N'Hurghada')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (8, N'Yasmen', N'yasmine.nasser@example.com', N'F', CAST(5200.00 AS Decimal(10, 2)), 1, N'Dahab')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (9, N'Hassan', N'hassan.omar@example.com', N'M', CAST(6000.00 AS Decimal(10, 2)), 1, N'Asyut')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (10, N'Dina', N'dina.said@example.com', N'F', CAST(5400.00 AS Decimal(10, 2)), 1, N'Suez')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (11, N'Youssif', N'youssef.sami@example.com', N'M', CAST(6300.00 AS Decimal(10, 2)), 1, N'Ismailia')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (12, N'Rania', N'rania.sobhy@example.com', N'F', CAST(5100.00 AS Decimal(10, 2)), 1, N'Fayoum')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (13, N'Omar', N'omar.taha@example.com', N'M', CAST(6800.00 AS Decimal(10, 2)), 1, N'Beni Suef')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (14, N'Hoda', N'hoda.wael@example.com', N'F', CAST(5400.00 AS Decimal(10, 2)), 1, N'Sohag')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (15, N'Khaled', N'khaled.mohamed@example.com', N'M', CAST(5900.00 AS Decimal(10, 2)), 1, N'Qena')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (16, N'Nour', N'nour.ali@example.com', N'F', CAST(5300.00 AS Decimal(10, 2)), 1, N'Minya')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (17, N'Omar', N'omar.gaber@example.com', N'M', CAST(7000.00 AS Decimal(10, 2)), 1, N'Damietta')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (18, N'Nadia', N'nadia.khaled@example.com', N'F', CAST(5400.00 AS Decimal(10, 2)), 1, N'Kafr El Sheikh')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (19, N'Amr', N'amr.hassan@example.com', N'M', CAST(6200.00 AS Decimal(10, 2)), 1, N'Mansoura')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (20, N'Sara', N'sara.mohamed@example.com', N'F', CAST(5500.00 AS Decimal(10, 2)), 1, N'Tanta')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (21, N'Mahmoud', N'mahmoud.ali@example.com', N'M', CAST(5700.00 AS Decimal(10, 2)), 2, N'Zagazig')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (22, N'Yara', N'yasmine.omar@example.com', N'F', CAST(5200.00 AS Decimal(10, 2)), 2, N'Mahalla El Kubra')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (23, N'Hassan', N'hassan.khaled@example.com', N'M', CAST(6100.00 AS Decimal(10, 2)), 2, N'Assiut')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (24, N'Dina', N'dina.ahmed@example.com', N'F', CAST(5500.00 AS Decimal(10, 2)), 2, N'Banha')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (25, N'Youssif', N'youssef.ali@example.com', N'M', CAST(6400.00 AS Decimal(10, 2)), 2, N'Suez')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (26, N'Rania', N'rania.sami@example.com', N'F', CAST(5300.00 AS Decimal(10, 2)), 2, N'Mansoura')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (27, N'Omar', N'omar.mahmoud@example.com', N'M', CAST(6600.00 AS Decimal(10, 2)), 2, N'Aswan')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (28, N'Hoda', N'hoda.mohamed@example.com', N'F', CAST(5200.00 AS Decimal(10, 2)), 2, N'Faiyum')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (29, N'Khaled', N'khaled.aly@example.com', N'M', CAST(5900.00 AS Decimal(10, 2)), 2, N'Kafr El Sheikh')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (30, N'Noha', N'noha.ismail@example.com', N'F', CAST(5600.00 AS Decimal(10, 2)), 2, N'Hurghada')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (31, N'Ahmed', N'ahmed.mahmoud@example.com', N'M', CAST(6200.00 AS Decimal(10, 2)), 3, N'Luxor')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (32, N'Salma', N'salma.mohamed@example.com', N'F', CAST(5300.00 AS Decimal(10, 2)), 3, N'Qena')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (33, N'Hassan', N'hassan.ali@example.com', N'M', CAST(6400.00 AS Decimal(10, 2)), 3, N'Mansoura')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (34, N'Rania', N'rania.saeed@example.com', N'F', CAST(5500.00 AS Decimal(10, 2)), 3, N'Sohag')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (35, N'Youssif', N'youssef.mahmoud@example.com', N'M', CAST(6000.00 AS Decimal(10, 2)), 3, N'Banha')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (36, N'Nour', N'nour.omar@example.com', N'F', CAST(5700.00 AS Decimal(10, 2)), 3, N'Giza')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (37, N'Ali', N'ali.khalil@example.com', N'M', CAST(6300.00 AS Decimal(10, 2)), 3, N'Zagazig')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (38, N'Rasha', N'rasha.gaber@example.com', N'F', CAST(5400.00 AS Decimal(10, 2)), 3, N'Aswan')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (39, N'Omar', N'omar.hassan@example.com', N'M', CAST(6500.00 AS Decimal(10, 2)), 4, N'Tanta')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (40, N'Mona', N'mona.ibrahim@example.com', N'F', CAST(5600.00 AS Decimal(10, 2)), 4, N'Ismailia')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (41, N'Amr', N'amr.said@example.com', N'M', CAST(6100.00 AS Decimal(10, 2)), 4, N'Damanhur')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (42, N'Heba', N'heba.mahmoud@example.com', N'F', CAST(5500.00 AS Decimal(10, 2)), 4, N'Shibin El Kom')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (43, N'Tarek', N'tarek.aly@example.com', N'M', CAST(6600.00 AS Decimal(10, 2)), 4, N'Cairo')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (44, N'Nada', N'nada.ali@example.com', N'F', CAST(5700.00 AS Decimal(10, 2)), 4, N'Alexandria')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (45, N'Khaled', N'khaled.ismail@example.com', N'M', CAST(6200.00 AS Decimal(10, 2)), 6, N'Giza')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (46, N'Noura', N'noura.mahmoud@example.com', N'F', CAST(5500.00 AS Decimal(10, 2)), 6, N'Luxor')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (47, N'Ahmed', N'ahmed.omar@example.com', N'M', CAST(6400.00 AS Decimal(10, 2)), 6, N'Aswan')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (48, N'Rana', N'rana.hassan@example.com', N'F', CAST(5600.00 AS Decimal(10, 2)), 7, N'Sharm El Sheikh')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (49, N'Yasser', N'yasser.ali@example.com', N'M', CAST(6300.00 AS Decimal(10, 2)), 7, N'Hurghada')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (50, N'Nadia', N'nadia.saeed@example.com', N'F', CAST(5400.00 AS Decimal(10, 2)), 7, N'Dahab')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (51, N'Khaled', N'khaled.mahmoud@example.com', N'M', CAST(6500.00 AS Decimal(10, 2)), 5, N'Asyut')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (52, N'Mona', N'mona.hassan@example.com', N'F', CAST(5700.00 AS Decimal(10, 2)), 5, N'Suez')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (53, N'Amr', N'amr.ali@example.com', N'M', CAST(6100.00 AS Decimal(10, 2)), 5, N'Ismailia')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (54, N'Heba', N'heba.saeed@example.com', N'F', CAST(5500.00 AS Decimal(10, 2)), 5, N'Fayoum')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (55, N'Tarek', N'tarek.mahmoud@example.com', N'M', CAST(6600.00 AS Decimal(10, 2)), 5, N'Beni Suef')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (56, N'Nada', N'nada.ali@example.com', N'F', CAST(5700.00 AS Decimal(10, 2)), 5, N'Sohag')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (57, N'Khaled', N'khaled.ismail@example.com', N'M', CAST(6200.00 AS Decimal(10, 2)), 5, N'Qena')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (58, N'Noura', N'noura.mahmoud@example.com', N'F', CAST(5500.00 AS Decimal(10, 2)), 5, N'Minya')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (59, N'Ahmed', N'ahmed.omar@example.com', N'M', CAST(6400.00 AS Decimal(10, 2)), 5, N'Damietta')
GO
INSERT [dbo].[Instructor] ([ins_ID], [ins_name], [ins_email], [ins_gender], [Salary], [Dept_ID], [Ins_city]) VALUES (60, N'Radwa', N'Radwa.alaa@example.com', N'F', CAST(6400.00 AS Decimal(10, 2)), 5, N'Kafr El Sheikh')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (1, N'01012345678')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (2, N'01023456789')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (3, N'01034567890')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (4, N'01045678901')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (5, N'01056789012')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (6, N'01067890123')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (7, N'01078901234')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (8, N'01089012345')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (9, N'01090123456')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (10, N'01091234567')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (11, N'01092345678')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (12, N'01093456789')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (13, N'01094567890')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (14, N'01095678901')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (15, N'01096789012')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (16, N'01097890123')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (17, N'01098901234')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (18, N'01099012345')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (19, N'01000123456')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (20, N'01001234567')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (21, N'01002345678')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (22, N'01003456789')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (23, N'01004567890')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (24, N'01005678901')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (25, N'01006789012')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (26, N'01007890123')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (27, N'01008901234')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (28, N'01009012345')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (29, N'01010123456')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (30, N'01011234567')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (31, N'01012345679')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (32, N'01023456780')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (33, N'01034567891')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (34, N'01045678902')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (35, N'01056789013')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (36, N'01067890124')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (37, N'01078901235')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (38, N'01089012346')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (39, N'01090123457')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (40, N'01091234568')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (41, N'01092345679')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (42, N'01093456780')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (43, N'01094567891')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (44, N'01095678902')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (45, N'01096789013')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (46, N'01097890124')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (47, N'01098901235')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (48, N'01099012346')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (49, N'01000123457')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (50, N'01121259924')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (51, N'01002345679')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (52, N'01003456780')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (53, N'01004567891')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (54, N'01005678902')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (55, N'01006789013')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (56, N'01007890124')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (57, N'01008901235')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (58, N'01009012346')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (59, N'01010123457')
GO
INSERT [dbo].[InstructorPhone] ([ins_ID], [ins_phone]) VALUES (60, N'01010123457')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (1, N'intake1')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (2, N'intake2')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (3, N'intake3')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (4, N'intake4')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (5, N'intake5')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (6, N'intake6')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (7, N'intake7')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (8, N'intake8')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (9, N'intake9')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (10, N'intake10')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (11, N'intake11')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (12, N'intake12')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (13, N'intake13')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (14, N'intake14')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (15, N'intake15')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (16, N'intake16')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (17, N'intake17')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (18, N'intake18')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (19, N'intake19')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (20, N'intake20')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (21, N'intake21')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (22, N'intake22')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (23, N'intake23')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (24, N'intake24')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (25, N'intake25')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (26, N'intake26')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (27, N'intake27')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (28, N'intake28')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (29, N'intake29')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (30, N'intake30')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (31, N'intake31')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (32, N'intake32')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (33, N'intake33')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (34, N'intake34')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (35, N'intake35')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (36, N'intake36')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (37, N'intake37')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (38, N'intake38')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (39, N'intake39')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (40, N'intake40')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (41, N'intake41')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (42, N'intake42')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (43, N'intake43')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (44, N'intake44')
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_name]) VALUES (45, N'intake45')
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (1, 1, N'In Python, the "print" function can take multiple arguments.', N'True/False', N'True', 1)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (2, 1, N'In Python, lists are immutable.', N'True/False', N'False', 1)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (3, 1, N'In Python, the "len" function returns the number of items in an object.', N'True/False', N'True', 1)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (4, 1, N'In Python, tuples can be modified after creation.', N'True/False', N'False', 1)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (5, 1, N'In Python, you can use the "in" keyword to check if an item exists in a list.', N'True/False', N'True', 1)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (6, 1, N'In Python, strings are mutable and can be changed after they are created.', N'True/False', N'False', 1)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (7, 1, N'In Python, the "break" statement can be used to exit a loop prematurely.', N'True/False', N'True', 1)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (8, 1, N'In Python, indentation is used to define blocks of code.', N'True/False', N'True', 1)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (9, 1, N'In Python, a dictionary is a collection of key-value pairs.', N'True/False', N'True', 1)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (10, 1, N'In Python, the "range" function generates a list of numbers.', N'True/False', N'False', 1)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (11, 2, N'What is the output of print(2 ** 3)?', N'MCQ', N'8', 1)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (12, 2, N'Which of the following is a mutable data type in Python?', N'MCQ', N'List', 1)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (13, 2, N'What is the correct syntax for defining a function in Python?', N'MCQ', N'def function_name():', 1)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (14, 2, N'How do you start a comment in Python?', N'MCQ', N'#', 1)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (15, 2, N'Which of the following is used to create an object in Python?', N'MCQ', N'Constructor', 1)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (16, 2, N'What will be the output of print(10 / 2)?', N'MCQ', N'5.0', 1)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (17, 2, N'Which of the following keyword is used to create a class in Python?', N'MCQ', N'class', 1)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (18, 2, N'Which of the following is not a Python built-in data type?', N'MCQ', N'character', 1)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (19, 2, N'What is the correct way to import a module in Python?', N'MCQ', N'import module_name', 1)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (20, 2, N'What will be the output of print(bool("False"))?', N'MCQ', N'True', 1)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (21, 1, N'In object-oriented programming, a class can be derived from more than one parent class.', N'True/False', N'True', 10)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (22, 1, N'Encapsulation is the principle of bundling data with methods that operate on that data.', N'True/False', N'True', 10)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (23, 1, N'Inheritance allows an object to inherit methods and properties from another class.', N'True/False', N'True', 10)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (24, 1, N'An abstract class cannot be instantiated directly.', N'True/False', N'True', 10)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (25, 1, N'Polymorphism allows objects of different classes to be treated as objects of a common superclass.', N'True/False', N'True', 10)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (26, 1, N'In OOP, a subclass can override the methods of its superclass.', N'True/False', N'True', 10)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (27, 1, N'A private method in a class cannot be accessed from outside the class.', N'True/False', N'True', 10)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (28, 1, N'Method overloading is a concept where methods with the same name can have different signatures.', N'True/False', N'True', 10)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (29, 1, N'Polymorphism and inheritance are mutually exclusive concepts in OOP.', N'True/False', N'False', 10)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (30, 1, N'An interface in OOP is a class that can have concrete methods and properties.', N'True/False', N'False', 10)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (31, 2, N'What is the term used to describe the process of defining a class within another class?', N'MCQ', N'Nested Class', 10)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (32, 2, N'In OOP, what is the mechanism that allows a class to use methods and properties of another class?', N'MCQ', N'Inheritance', 10)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (33, 2, N'Which principle of OOP is used to hide the internal implementation details of a class?', N'MCQ', N'Encapsulation', 10)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (34, 2, N'What term is used to describe a method that is shared across all instances of a class?', N'MCQ', N'Static Method', 10)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (35, 2, N'In OOP, what is the term for creating multiple methods with the same name but different parameters?', N'MCQ', N'Method Overloading', 10)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (36, 2, N'What keyword is used in many OOP languages to inherit properties and methods from a superclass?', N'MCQ', N'extends', 10)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (37, 2, N'What is the principle of OOP that ensures an object can be used as a member of a class?', N'MCQ', N'Inheritance', 10)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (38, 2, N'Which term describes the ability of a subclass to provide a specific implementation of a method already defined in its superclass?', N'MCQ', N'Method Overriding', 10)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (39, 2, N'What term is used for a class that cannot be instantiated on its own and must be inherited?', N'MCQ', N'Abstract Class', 10)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (40, 2, N'In OOP, what is the term for a function that belongs to a class rather than an instance of a class?', N'MCQ', N'Class Method', 10)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (41, 1, N'In SQL, the "SELECT" statement is used to retrieve data from a database.', N'True/False', N'True', 13)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (42, 1, N'In SQL, the "INSERT" statement is used to delete data from a database.', N'True/False', N'False', 13)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (43, 1, N'In a relational database, a primary key must be unique for each record.', N'True/False', N'True', 13)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (44, 1, N'Normalization in databases is used to denormalize data.', N'True/False', N'False', 13)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (45, 1, N'In SQL, the "UPDATE" statement modifies existing records in a table.', N'True/False', N'True', 13)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (46, 1, N'A foreign key in a database table is used to uniquely identify a record.', N'True/False', N'False', 13)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (47, 1, N'In SQL, the "DELETE" statement removes records from a table.', N'True/False', N'True', 13)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (48, 1, N'In SQL, the "WHERE" clause is used to specify the columns to be retrieved.', N'True/False', N'False', 13)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (49, 1, N'In a database, an index improves the speed of data retrieval operations.', N'True/False', N'True', 13)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (50, 1, N'In SQL, the "JOIN" clause is used to combine rows from two or more tables.', N'True/False', N'True', 13)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (51, 2, N'Which SQL statement is used to retrieve data from a database?', N'MCQ', N'SELECT', 13)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (52, 2, N'Which SQL clause is used to filter records in a result set?', N'MCQ', N'WHERE', 13)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (53, 2, N'What is the purpose of the SQL JOIN clause?', N'MCQ', N'To combine rows from two or more tables based on a related column', 13)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (54, 2, N'Which SQL keyword is used to sort the results of a query?', N'MCQ', N'ORDER BY', 13)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (55, 2, N'What is the SQL command to update an existing record in a table?', N'MCQ', N'UPDATE', 13)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (56, 2, N'Which SQL statement is used to remove a table from a database?', N'MCQ', N'DROP TABLE', 13)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (57, 2, N'What SQL keyword is used to create a new table in a database?', N'MCQ', N'CREATE TABLE', 13)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (58, 2, N'What is the purpose of the SQL GROUP BY clause?', N'MCQ', N'To group rows that have the same values in specified columns and perform aggregate functions on them', 13)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (59, 2, N'Which SQL function is used to count the number of rows in a table?', N'MCQ', N'COUNT()', 13)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (60, 2, N'What is the SQL command to add a new column to an existing table?', N'MCQ', N'ALTER TABLE ADD COLUMN', 13)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (61, 1, N'In HTML, the <a> tag is used to create hyperlinks.', N'True/False', N'True', 28)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (62, 1, N'CSS stands for Cascading Style Sheets.', N'True/False', N'True', 28)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (63, 1, N'The <div> tag in HTML is used to define a division or section in a document.', N'True/False', N'True', 28)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (64, 1, N'In CSS, the property "color" is used to set the background color of an element.', N'True/False', N'False', 28)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (65, 1, N'The <img> tag in HTML is used to embed images in a webpage.', N'True/False', N'True', 28)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (66, 1, N'CSS styles can be applied inline using the style attribute.', N'True/False', N'True', 28)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (67, 1, N'The <table> tag is used to create forms in HTML.', N'True/False', N'False', 28)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (68, 1, N'In CSS, the "border" property is used to set the border of an element.', N'True/False', N'True', 28)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (69, 1, N'HTML tags are not case-sensitive.', N'True/False', N'True', 28)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (70, 1, N'The <span> tag in HTML is a block-level element.', N'True/False', N'False', 28)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (71, 2, N'Which HTML element is used to define the metadata for a document?', N'MCQ', N'meta', 28)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (72, 2, N'What is the correct HTML element for inserting a line break?', N'MCQ', N'br', 28)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (73, 2, N'Which attribute is used to provide alternative text for an image in HTML?', N'MCQ', N'alt', 28)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (74, 2, N'In CSS, which property is used to change the text color of an element?', N'MCQ', N'color', 28)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (75, 2, N'Which HTML tag is used to create an ordered list?', N'MCQ', N'ol', 28)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (76, 2, N'What does CSS stand for?', N'MCQ', N'Cascading Style Sheets', 28)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (77, 2, N'Which HTML element is used to specify a footer for a document or section?', N'MCQ', N'footer', 28)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (78, 2, N'In CSS, which property is used to change the font size of an element?', N'MCQ', N'font-size', 28)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (79, 2, N'Which HTML element is used to create a hyperlink?', N'MCQ', N'a', 28)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (80, 2, N'What is the purpose of the <div> element in HTML?', N'MCQ', N'To group block-level elements together', 28)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (81, 1, N'Power BI is a cloud-based business analytics service.', N'True/False', N'True', 7)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (82, 1, N'Power BI can only connect to cloud-based data sources.', N'True/False', N'False', 7)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (83, 1, N'In Power BI, a report is a single visual representation.', N'True/False', N'False', 7)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (84, 1, N'Power BI Desktop allows you to create data models and reports.', N'True/False', N'True', 7)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (85, 1, N'Power BI cannot be used to share reports with others.', N'True/False', N'False', 7)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (86, 1, N'You can schedule data refreshes in Power BI.', N'True/False', N'True', 7)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (87, 1, N'Power BI only supports data import, not live data connections.', N'True/False', N'False', 7)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (88, 1, N'Power BI offers tools for data cleansing and transformation.', N'True/False', N'True', 7)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (89, 1, N'Dashboards in Power BI can contain multiple reports.', N'True/False', N'False', 7)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (90, 1, N'Power BI Pro and Power BI Premium offer the same features.', N'True/False', N'False', 7)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (91, 2, N'Which component of Power BI is used to create reports and data models?', N'MCQ', N'Power BI Desktop', 7)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (92, 2, N'Which language is primarily used in Power BI for data manipulation?', N'MCQ', N'DAX', 7)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (93, 2, N'What is the maximum size of a dataset that can be imported into Power BI Pro?', N'MCQ', N'1 GB', 7)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (94, 2, N'Which feature in Power BI allows you to create a visual representation of data across multiple datasets?', N'MCQ', N'Relationships', 7)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (95, 2, N'What is the primary purpose of Power BI service?', N'MCQ', N'Sharing reports and dashboards', 7)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (96, 2, N'Which feature in Power BI allows you to group visuals together?', N'MCQ', N'Groups', 7)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (97, 2, N'What is the default file extension for a Power BI Desktop file?', N'MCQ', N'.pbix', 7)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (98, 2, N'Which type of chart is best for displaying trends over time in Power BI?', N'MCQ', N'Line chart', 7)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (99, 2, N'In Power BI, what does "RLS" stand for?', N'MCQ', N'Row-Level Security', 7)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (100, 2, N'What is the main use of Power BI dashboards?', N'MCQ', N'To provide an overview of key metrics', 7)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (101, 1, N'In a network, switches operate at the data link layer of the OSI model.', N'True/False', N'True', 25)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (102, 1, N'A MAC address is a unique identifier assigned to a network interface card (NIC).', N'True/False', N'True', 25)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (103, 1, N'Wi-Fi operates on the same frequency as Bluetooth.', N'True/False', N'False', 25)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (104, 1, N'In networking, a hub broadcasts data to all devices connected to it.', N'True/False', N'True', 25)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (105, 1, N'NAT (Network Address Translation) allows multiple devices on a local network to share a single public IP address.', N'True/False', N'True', 25)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (106, 1, N'Ping is a tool used to measure the speed of an internet connection.', N'True/False', N'False', 25)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (107, 1, N'Subnetting is a technique used to divide a network into smaller, more efficient sub-networks.', N'True/False', N'True', 25)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (108, 1, N'In a star topology, all devices are connected directly to each other.', N'True/False', N'False', 25)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (109, 1, N'The transport layer of the OSI model is responsible for ensuring error-free data transmission.', N'True/False', N'True', 25)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (110, 1, N'FTP (File Transfer Protocol) is a secure method of transferring files over the internet.', N'True/False', N'False', 25)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (111, 2, N'Which of the following protocols is used to assign IP addresses automatically?', N'MCQ', N'DHCP', 25)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (112, 2, N'Which layer of the OSI model is responsible for routing packets between devices?', N'MCQ', N'Network Layer', 25)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (113, 2, N'What is the purpose of the ARP protocol in networking?', N'MCQ', N'To map IP addresses to MAC addresses', 25)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (114, 2, N'Which protocol is used for secure communication over a network?', N'MCQ', N'HTTPS', 25)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (115, 2, N'What type of network is typically confined to a single building or campus?', N'MCQ', N'LAN', 25)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (116, 2, N'Which device is used to connect multiple networks and direct traffic between them?', N'MCQ', N'Router', 25)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (117, 2, N'What is the default port number for HTTP?', N'MCQ', N'80', 25)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (118, 2, N'Which of the following is a common topology for a local area network (LAN)?', N'MCQ', N'Star', 25)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (119, 2, N'Which protocol is used to transfer files from one host to another over a TCP-based network?', N'MCQ', N'FTP', 25)
GO
INSERT [dbo].[Question] ([Qs_ID], [Qs_degree], [Qs_desc], [Qs_type], [correct_answer], [Course_ID]) VALUES (120, 2, N'Which layer of the OSI model is responsible for establishing, managing, and terminating connections between applications?', N'MCQ', N'Session Layer', 25)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (1, 22)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (1, 24)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (2, 1)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (3, 1)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (3, 21)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (3, 22)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (3, 24)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (4, 1)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (4, 21)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (4, 24)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (5, 1)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (5, 21)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (5, 23)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (6, 1)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (6, 21)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (7, 23)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (8, 23)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (9, 21)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (9, 23)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (9, 24)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (10, 22)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (10, 24)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (11, 21)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (11, 22)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (11, 24)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (12, 21)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (12, 22)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (12, 23)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (13, 1)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (13, 23)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (13, 24)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (14, 1)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (14, 21)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (14, 23)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (15, 1)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (15, 22)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (16, 21)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (16, 22)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (16, 23)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (17, 22)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (17, 24)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (18, 21)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (18, 22)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (18, 23)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (18, 24)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (19, 1)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (19, 22)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (19, 23)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (19, 24)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (20, 1)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (21, 3)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (21, 9)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (21, 10)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (21, 13)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (23, 10)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (23, 13)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (24, 3)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (24, 13)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (25, 9)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (25, 12)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (25, 13)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (26, 3)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (26, 10)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (26, 11)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (27, 11)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (28, 9)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (28, 13)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (29, 3)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (29, 10)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (29, 12)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (30, 3)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (30, 9)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (30, 10)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (31, 10)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (31, 11)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (31, 12)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (32, 9)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (32, 10)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (32, 11)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (32, 12)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (33, 9)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (33, 10)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (33, 11)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (33, 12)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (33, 13)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (34, 3)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (34, 11)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (34, 12)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (35, 12)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (36, 3)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (36, 9)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (36, 12)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (36, 13)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (37, 3)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (37, 9)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (37, 10)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (37, 11)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (37, 13)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (38, 9)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (38, 11)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (39, 3)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (39, 11)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (39, 12)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (39, 13)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (40, 3)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (40, 9)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (40, 10)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (40, 11)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (40, 12)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (40, 13)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (41, 5)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (41, 6)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (41, 7)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (41, 31)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (42, 6)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (42, 31)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (43, 4)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (43, 5)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (43, 7)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (43, 31)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (44, 4)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (44, 31)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (45, 4)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (45, 8)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (46, 4)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (46, 6)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (46, 7)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (47, 5)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (47, 31)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (48, 5)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (48, 6)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (48, 31)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (49, 4)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (49, 6)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (49, 8)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (49, 31)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (50, 5)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (50, 8)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (50, 31)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (51, 5)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (51, 6)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (51, 7)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (51, 8)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (52, 5)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (52, 31)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (53, 4)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (53, 5)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (53, 8)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (54, 4)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (54, 5)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (54, 6)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (54, 7)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (54, 8)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (55, 4)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (55, 6)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (55, 7)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (55, 8)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (56, 4)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (56, 7)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (57, 5)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (57, 7)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (57, 8)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (58, 6)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (58, 8)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (58, 31)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (59, 4)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (59, 6)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (59, 7)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (59, 8)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (60, 7)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (61, 18)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (62, 18)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (63, 17)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (63, 19)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (64, 17)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (64, 20)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (65, 18)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (65, 20)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (66, 18)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (66, 19)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (67, 17)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (67, 18)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (68, 17)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (68, 19)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (69, 17)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (69, 18)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (69, 20)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (70, 18)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (71, 17)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (71, 19)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (73, 17)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (73, 19)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (74, 18)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (74, 19)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (74, 20)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (75, 18)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (75, 19)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (75, 20)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (76, 19)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (76, 20)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (77, 17)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (77, 20)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (78, 17)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (78, 19)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (78, 20)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (79, 18)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (79, 20)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (80, 17)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (80, 19)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (80, 20)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (81, 14)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (81, 28)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (81, 29)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (82, 14)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (82, 26)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (82, 29)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (82, 30)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (83, 2)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (83, 14)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (83, 27)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (84, 2)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (84, 27)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (84, 29)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (84, 30)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (85, 26)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (85, 29)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (85, 30)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (86, 26)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (86, 27)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (87, 14)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (87, 26)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (87, 29)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (88, 2)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (88, 30)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (89, 2)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (89, 14)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (89, 26)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (89, 28)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (89, 30)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (90, 2)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (90, 27)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (90, 28)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (90, 29)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (91, 26)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (91, 27)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (91, 28)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (92, 26)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (92, 28)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (92, 29)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (93, 2)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (93, 14)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (93, 26)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (93, 27)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (93, 30)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (94, 2)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (95, 14)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (95, 27)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (95, 28)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (96, 2)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (96, 14)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (97, 27)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (97, 28)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (97, 29)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (97, 30)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (98, 2)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (98, 26)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (98, 27)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (98, 28)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (98, 29)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (98, 30)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (99, 2)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (99, 14)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (99, 26)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (99, 27)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (99, 28)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (99, 30)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (100, 14)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (100, 28)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (100, 29)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (100, 30)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (101, 15)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (101, 16)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (101, 25)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (102, 15)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (102, 25)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (103, 16)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (105, 15)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (105, 25)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (106, 15)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (106, 16)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (106, 25)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (107, 25)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (108, 16)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (110, 16)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (111, 16)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (111, 25)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (112, 25)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (113, 15)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (113, 25)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (114, 15)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (114, 16)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (115, 15)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (115, 16)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (115, 25)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (118, 15)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (118, 16)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (119, 15)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (120, 15)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (120, 16)
GO
INSERT [dbo].[question_exam] ([Qs_ID], [ex_ID]) VALUES (120, 25)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (1, N'Mohamed Hassan', 22, N'mohamed.hassan@example.com', N'M', 2, N'Cairo', N'Faculty of Engineering', 3, N'Failed', 2, 1)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (2, N'Fatma Ali', 23, N'fatma.ali@example.com', N'F', 2, N'Alexandria', N'Faculty of Medicine', 3, N'Passed', 2, 2)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (3, N'Ahmed Nasser', 24, N'ahmed.nasser@example.com', N'M', 3, N'Giza', N'Faculty of Commerce', 3, N'Passed', 3, 3)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (4, N'Aya Ibrahim', 25, N'aya.ibrahim@example.com', N'F', 4, N'Luxor', N'Faculty of Agriculture', 4, N'Failed', 2, 4)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (5, N'Ali Mohamed', 26, N'ali.mohamed@example.com', N'M', 5, N'Aswan', N'Faculty of Arts', 1, N'Passed', 1, 5)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (6, N'Nour Ahmed', 27, N'nour.ahmed@example.com', N'F', 6, N'Sharm El Sheikh', N'Faculty of Pharmacy', 2, N'Failed', 4, 6)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (7, N'Omar Hassan', 28, N'omar.hassan@example.com', N'M', 7, N'Hurghada', N'Faculty of Science', 3, N'Passed', 5, 7)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (8, N'Sara Ali', 29, N'sara.ali@example.com', N'F', 8, N'Dahab', N'Faculty of Dentistry', 4, N'Failed', 3, 8)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (9, N'Youssef Ibrahim', 30, N'youssef.ibrahim@example.com', N'M', 9, N'Asyut', N'Faculty of Law', 1, N'Passed', 4, 9)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (10, N'Laila Hassan', 31, N'laila.hassan@example.com', N'F', 10, N'Suez', N'Faculty of Education', 2, N'Failed', 2, 4)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (11, N'Khaled Ali', 32, N'khaled.ali@example.com', N'M', 11, N'Ismailia', N'Faculty of Nursing', 3, N'Passed', 8, 11)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (12, N'Samar Ibrahim', 22, N'samar.ibrahim@example.com', N'F', 12, N'Fayoum', N'Faculty of Physical Education', 4, N'Failed', 4, 12)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (13, N'Mohamed Mohamed', 23, N'mohamed.mohamed@example.com', N'M', 13, N'Beni Suef', N'Faculty of Engineering', 1, N'Passed', 5, 13)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (14, N'Aya Ali', 24, N'aya.ali@example.com', N'F', 14, N'Sohag', N'Faculty of Computers and Information', 2, N'Failed', 5, 14)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (15, N'Ahmed Ibrahim', 25, N'ahmed.ibrahim@example.com', N'M', 15, N'Qena', N'Faculty of Specific Education', 3, N'Passed', 5, 15)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (16, N'Nada Hassan', 26, N'nada.hassan@example.com', N'F', 16, N'Minya', N'Faculty of Archaeology', 4, N'Failed', 6, 16)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (17, N'Youssef Ali', 27, N'youssef.ali@example.com', N'M', 17, N'Damietta', N'Faculty of Fine Arts', 1, N'Passed', 2, 4)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (18, N'Laila Ibrahim', 28, N'laila.ibrahim@example.com', N'F', 18, N'Kafr El Sheikh', N'Faculty of Computers and Information Technology', 2, N'Failed', 6, 18)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (19, N'Mohamed Mohamed', 29, N'mohamed.mohamed@example.com', N'M', 19, N'Mansoura', N'Faculty of Medicine', 3, N'Passed', 7, 19)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (20, N'Nour Ali', 30, N'nour.ali@example.com', N'F', 20, N'Tanta', N'Faculty of Computers and Artificial Intelligence', 4, N'Failed', 1, 1)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (21, N'Ahmed Hassan', 31, N'ahmed.hassan@example.com', N'M', 21, N'Zagazig', N'Faculty of Engineering', 1, N'Passed', 1, 1)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (22, N'Sara Ali', 32, N'sara.ali@example.com', N'F', 22, N'Mahalla El Kubra', N'Faculty of Commerce', 2, N'Failed', 3, 3)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (23, N'Youssef Ibrahim', 22, N'youssef.ibrahim@example.com', N'M', 23, N'Assiut', N'Faculty of Agriculture', 3, N'Passed', 5, 7)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (24, N'Laila Hassan', 23, N'laila.hassan@example.com', N'F', 24, N'Banha', N'Faculty of Arts', 4, N'Failed', 3, 3)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (25, N'Khaled Ali', 24, N'khaled.ali@example.com', N'M', 26, N'Suez', N'Faculty of Pharmacy', 1, N'Passed', 4, 9)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (26, N'Samar Ibrahim', 25, N'samar.ibrahim@example.com', N'F', 27, N'Mansoura', N'Faculty of Science', 2, N'Passed', 4, 9)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (27, N'Mohamed Mohamed', 26, N'mohamed.mohamed@example.com', N'M', 17, N'Aswan', N'Faculty of Dentistry', 3, N'Passed', 13, 36)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (28, N'Aya Ali', 27, N'aya.ali@example.com', N'F', 18, N'Faiyum', N'Faculty of Law', 4, N'Failed', 12, 18)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (29, N'Ahmed Ibrahim', 28, N'ahmed.ibrahim@example.com', N'M', 19, N'Kafr El Sheikh', N'Faculty of Education', 1, N'Passed', 11, 19)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (30, N'Nada Hassan', 29, N'nada.hassan@example.com', N'F', 10, N'Hurghada', N'Faculty of Nursing', 2, N'Failed', 4, 4)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (31, N'Youssef Ali', 30, N'youssef.ali@example.com', N'M', 11, N'Luxor', N'Faculty of Physical Education', 3, N'Passed', 9, 11)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (32, N'Laila Ibrahim', 31, N'laila.ibrahim@example.com', N'F', 12, N'Qena', N'Faculty of Engineering', 4, N'Failed', 8, 12)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (33, N'Mohamed Mohamed', 32, N'mohamed.mohamed@example.com', N'M', 1, N'Mansoura', N'Faculty of Computers and Information', 1, N'Passed', 3, 1)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (34, N'Aya Ali', 22, N'aya.ali@example.com', N'F', 2, N'Sohag', N'Faculty of Specific Education', 2, N'Failed', 4, 2)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (35, N'Ahmed Ibrahim', 23, N'ahmed.ibrahim@example.com', N'M', 3, N'Banha', N'Faculty of Archaeology', 3, N'Passed', 4, 3)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (36, N'Nada Hassan', 24, N'nada.hassan@example.com', N'F', 4, N'Giza', N'Faculty of Fine Arts', 4, N'Failed', 4, 4)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (37, N'Youssef Ali', 25, N'youssef.ali@example.com', N'M', 5, N'Zagazig', N'Faculty of Computers and Information Technology', 1, N'Passed', 2, 5)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (38, N'Laila Ibrahim', 26, N'laila.ibrahim@example.com', N'F', 6, N'Aswan', N'Faculty of Medicine', 2, N'Failed', 6, 6)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (39, N'Mohamed Mohamed', 27, N'mohamed.mohamed@example.com', N'M', 7, N'Tanta', N'Faculty of Computers and Artificial Intelligence', 3, N'Passed', 6, 7)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (40, N'Aya Ali', 28, N'aya.ali@example.com', N'F', 8, N'Ismailia', N'Faculty of Engineering', 4, N'Failed', 6, 8)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (41, N'Ahmed Ibrahim', 29, N'ahmed.ibrahim@example.com', N'M', 9, N'Damanhur', N'Faculty of Commerce', 1, N'Passed', 7, 9)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (42, N'Nada Hassan', 30, N'nada.hassan@example.com', N'F', 10, N'Shibin El Kom', N'Faculty of Agriculture', 2, N'Passed', 5, 4)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (43, N'Youssef Ali', 31, N'youssef.ali@example.com', N'M', 11, N'Cairo', N'Faculty of Arts', 3, N'Passed', 10, 11)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (44, N'Laila Ibrahim', 32, N'laila.ibrahim@example.com', N'F', 12, N'Alexandria', N'Faculty of Pharmacy', 4, N'Failed', 9, 12)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (45, N'Mohamed Mohamed', 22, N'mohamed.mohamed@example.com', N'M', 13, N'Giza', N'Faculty of Science', 1, N'Passed', 7, 13)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (46, N'Aya Ali', 23, N'aya.ali@example.com', N'F', 14, N'Luxor', N'Faculty of Dentistry', 2, N'Failed', 10, 14)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (47, N'Ahmed Ibrahim', 24, N'ahmed.ibrahim@example.com', N'M', 15, N'Aswan', N'Faculty of Law', 3, N'Passed', 9, 15)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (48, N'Nada Hassan', 25, N'nada.hassan@example.com', N'F', 16, N'Sharm El Sheikh', N'Faculty of Education', 4, N'Failed', 10, 16)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (49, N'Youssef Ali', 26, N'youssef.ali@example.com', N'M', 17, N'Hurghada', N'Faculty of Nursing', 1, N'Passed', 4, 4)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (50, N'Laila Ibrahim', 27, N'laila.ibrahim@example.com', N'F', 18, N'Dahab', N'Faculty of Physical Education', 2, N'Passed', 14, 18)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (51, N'Mohamed Mohamed', 28, N'mohamed.mohamed@example.com', N'M', 19, N'Asyut', N'Faculty of Engineering', 3, N'Passed', 12, 19)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (52, N'Aya Ali', 29, N'aya.ali@example.com', N'F', 20, N'Suez', N'Faculty of Computers and Information', 4, N'Failed', 2, 1)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (53, N'Ahmed Ibrahim', 30, N'ahmed.ibrahim@example.com', N'M', 21, N'Ismailia', N'Faculty of Specific Education', 1, N'Passed', 2, 1)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (54, N'Nada Hassan', 31, N'nada.hassan@example.com', N'F', 22, N'Fayoum', N'Faculty of Archaeology', 2, N'Failed', 4, 3)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (55, N'Youssef Ali', 32, N'youssef.ali@example.com', N'M', 23, N'Beni Suef', N'Faculty of Fine Arts', 3, N'Passed', 6, 7)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (56, N'Laila Ibrahim', 22, N'laila.ibrahim@example.com', N'F', 27, N'Sohag', N'Faculty of Computers and Information Technology', 4, N'Failed', 7, 9)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (57, N'Mohamed Mohamed', 23, N'mohamed.mohamed@example.com', N'M', 26, N'Qena', N'Faculty of Medicine', 1, N'Passed', 7, 9)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (58, N'Aya Ali', 24, N'aya.ali@example.com', N'F', 6, N'Minya', N'Faculty of Computers and Artificial Intelligence', 2, N'Failed', 11, 6)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (59, N'Ahmed Ibrahim', 25, N'ahmed.ibrahim@example.com', N'M', 7, N'Damietta', N'Faculty of Engineering', 3, N'Passed', 7, 7)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (60, N'Nada Hassan', 26, N'nada.hassan@example.com', N'F', 8, N'Kafr El Sheikh', N'Faculty of Commerce', 4, N'Failed', 8, 8)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (61, N'Youssef Ali', 27, N'youssef.ali@example.com', N'M', 9, N'Mansoura', N'Faculty of Agriculture', 1, N'Passed', 9, 9)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (62, N'Laila Ibrahim', 28, N'laila.ibrahim@example.com', N'F', 10, N'Tanta', N'Faculty of Arts', 2, N'Passed', 7, 4)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (63, N'Mohamed Mohamed', 29, N'mohamed.mohamed@example.com', N'M', 1, N'Zagazig', N'Faculty of Pharmacy', 3, N'Passed', 8, 1)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (64, N'Aya Ali', 30, N'aya.ali@example.com', N'F', 12, N'Mahalla El Kubra', N'Faculty of Science', 4, N'Failed', 11, 12)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (65, N'Ahmed Ibrahim', 31, N'ahmed.ibrahim@example.com', N'M', 1, N'Assiut', N'Faculty of Dentistry', 1, N'Passed', 1, 5)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (66, N'Nada Hassan', 32, N'nada.hassan@example.com', N'F', 2, N'Banha', N'Faculty of Law', 2, N'Failed', 5, 2)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (67, N'Youssef Ali', 22, N'youssef.ali@example.com', N'M', 3, N'Suez', N'Faculty of Education', 3, N'Passed', 6, 3)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (68, N'Laila Ibrahim', 23, N'laila.ibrahim@example.com', N'F', 4, N'Mansoura', N'Faculty of Nursing', 4, N'Failed', 5, 4)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (69, N'Mohamed Mohamed', 24, N'mohamed.mohamed@example.com', N'M', 5, N'Aswan', N'Faculty of Physical Education', 1, N'Passed', 5, 5)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (70, N'Aya Ali', 25, N'aya.ali@example.com', N'F', 6, N'Faiyum', N'Faculty of Engineering', 2, N'Failed', 12, 6)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (71, N'Ahmed Ibrahim', 26, N'ahmed.ibrahim@example.com', N'M', 7, N'Kafr El Sheikh', N'Faculty of Computers and Information', 3, N'Passed', 8, 7)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (72, N'Nada Hassan', 27, N'nada.hassan@example.com', N'F', 8, N'Hurghada', N'Faculty of Specific Education', 4, N'Failed', 12, 8)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (73, N'Youssef Ali', 28, N'youssef.ali@example.com', N'M', 9, N'Luxor', N'Faculty of Archaeology', 1, N'Passed', 12, 9)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (74, N'Laila Ibrahim', 29, N'laila.ibrahim@example.com', N'F', 10, N'Qena', N'Faculty of Fine Arts', 2, N'Failed', 9, 4)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (75, N'Mohamed Mohamed', 30, N'mohamed.mohamed@example.com', N'M', 11, N'Mansoura', N'Faculty of Computers and Information Technology', 3, N'Passed', 12, 11)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (76, N'Aya Ali', 31, N'aya.ali@example.com', N'F', 12, N'Sohag', N'Faculty of Medicine', 4, N'Failed', 13, 12)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (77, N'Ahmed Ibrahim', 32, N'ahmed.ibrahim@example.com', N'M', 13, N'Banha', N'Faculty of Computers and Artificial Intelligence', 1, N'Passed', 10, 13)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (78, N'Nada Hassan', 22, N'nada.hassan@example.com', N'F', 14, N'Giza', N'Faculty of Engineering', 2, N'Failed', 13, 14)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (79, N'Youssef Ali', 23, N'youssef.ali@example.com', N'M', 15, N'Zagazig', N'Faculty of Commerce', 3, N'Passed', 10, 15)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (80, N'Laila Ibrahim', 24, N'laila.ibrahim@example.com', N'F', 16, N'Aswan', N'Faculty of Agriculture', 4, N'Failed', 11, 16)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (81, N'Mohamed Mohamed', 25, N'mohamed.mohamed@example.com', N'M', 17, N'Tanta', N'Faculty of Arts', 1, N'Passed', 5, 4)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (82, N'Aya Ali', 26, N'aya.ali@example.com', N'F', 18, N'Ismailia', N'Faculty of Pharmacy', 2, N'Failed', 8, 22)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (83, N'Ahmed Ibrahim', 27, N'ahmed.ibrahim@example.com', N'M', 19, N'Damanhur', N'Faculty of Science', 3, N'Passed', 14, 19)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (84, N'Nada Hassan', 28, N'nada.hassan@example.com', N'F', 20, N'Shibin El Kom', N'Faculty of Dentistry', 4, N'Failed', 3, 1)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (85, N'Youssef Ali', 29, N'youssef.ali@example.com', N'M', 21, N'Cairo', N'Faculty of Law', 1, N'Passed', 3, 1)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (86, N'Laila Ibrahim', 30, N'laila.ibrahim@example.com', N'F', 22, N'Alexandria', N'Faculty of Education', 2, N'Failed', 6, 3)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (87, N'Mohamed Mohamed', 31, N'mohamed.mohamed@example.com', N'M', 23, N'Giza', N'Faculty of Nursing', 3, N'Passed', 7, 7)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (88, N'Aya Ali', 32, N'aya.ali@example.com', N'F', 24, N'Luxor', N'Faculty of Physical Education', 4, N'Failed', 4, 3)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (89, N'Ahmed Ibrahim', 22, N'ahmed.ibrahim@example.com', N'M', 26, N'Aswan', N'Faculty of Engineering', 1, N'Passed', 9, 9)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (90, N'Nada Hassan', 23, N'nada.hassan@example.com', N'F', 27, N'Sharm El Sheikh', N'Faculty of Computers and Information', 2, N'Failed', 9, 9)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (91, N'Youssef Ali', 24, N'youssef.ali@example.com', N'M', 17, N'Hurghada', N'Faculty of Specific Education', 3, N'Passed', 10, 42)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (92, N'Laila Ibrahim', 25, N'laila.ibrahim@example.com', N'F', 8, N'Dahab', N'Faculty of Archaeology', 4, N'Failed', 13, 8)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (93, N'Mohamed Mohamed', 26, N'mohamed.mohamed@example.com', N'M', 9, N'Asyut', N'Faculty of Fine Arts', 1, N'Passed', 13, 9)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (94, N'Aya Ali', 27, N'aya.ali@example.com', N'F', 10, N'Cairo', N'Faculty of Computers and Information Technology', 2, N'Failed', 5, 10)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (95, N'Ahmed Ibrahim', 28, N'ahmed.ibrahim@example.com', N'M', 1, N'Alexandria', N'Faculty of Medicine', 3, N'Passed', 2, 5)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (96, N'Nada Hassan', 29, N'nada.hassan@example.com', N'F', 2, N'Giza', N'Faculty of Computers and Artificial Intelligence', 4, N'Failed', 8, 2)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (97, N'Youssef Ali', 30, N'youssef.ali@example.com', N'M', 1, N'Luxor', N'Faculty of Engineering', 1, N'Passed', 5, 5)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (98, N'Laila Ibrahim', 31, N'laila.ibrahim@example.com', N'F', 2, N'Aswan', N'Faculty of Commerce', 2, N'Failed', 4, 6)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (99, N'Mohamed Mohamed', 32, N'mohamed.mohamed@example.com', N'M', 3, N'Sharm El Sheikh', N'Faculty of Agriculture', 3, N'Passed', 9, 3)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (100, N'Aya Ali', 22, N'aya.ali@example.com', N'F', 4, N'Hurghada', N'Faculty of Arts', 4, N'Failed', 7, 4)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (101, N'Ahmed Mohamed', 25, N'ahmed.mohamed@gmail.com', N'M', 1, N'Dahab', N'Faculty of Pharmacy', 1, N'Passed', 6, 5)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (102, N'Fatma Ali', 23, N'fatma.ali@gmail.com', N'F', 2, N'Asyut', N'Faculty of Science', 2, N'Failed', 6, 6)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (103, N'Omar Ibrahim', 28, N'omar.ibrahim@gmail.com', N'M', 3, N'Suez', N'Faculty of Dentistry', 3, N'Passed', 1, 5)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (104, N'Nada Hassan', 30, N'nada.hassan@gmail.com', N'F', 4, N'Ismailia', N'Faculty of Law', 4, N'Failed', 9, 4)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (105, N'Ali Abdelaziz', 24, N'ali.abdelaziz@gmail.com', N'M', 5, N'Fayoum', N'Faculty of Education', 1, N'Passed', 6, 5)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (106, N'Hala Mahmoud', 29, N'hala.mahmoud@gmail.com', N'F', 6, N'Beni Suef', N'Faculty of Nursing', 2, N'Failed', 13, 6)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (107, N'Khaled Gaber', 26, N'khaled.gaber@gmail.com', N'M', 7, N'Sohag', N'Faculty of Physical Education', 3, N'Passed', 10, 7)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (108, N'Sara Ezzat', 27, N'sara.ezzat@gmail.com', N'F', 8, N'Qena', N'Faculty of Engineering', 4, N'Failed', 4, 12)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (109, N'Hassan Adel', 31, N'hassan.adel@gmail.com', N'M', 9, N'Minya', N'Faculty of Computers and Information', 1, N'Passed', 5, 13)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (110, N'Yasmin Hamdy', 22, N'yasmin.hamdy@gmail.com', N'F', 10, N'Damietta', N'Faculty of Specific Education', 2, N'Failed', 7, 10)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (111, N'Mohamed Mahmoud', 32, N'mohamed.mahmoud@gmail.com', N'M', 11, N'Kafr El Sheikh', N'Faculty of Archaeology', 3, N'Passed', 13, 11)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (112, N'Aya Abdelrahman', 23, N'aya.abdelrahman@gmail.com', N'F', 12, N'Mansoura', N'Faculty of Fine Arts', 4, N'Failed', 6, 16)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (113, N'Ali Hassan', 28, N'ali.hassan@gmail.com', N'M', 13, N'Tanta', N'Faculty of Computers and Information Technology', 1, N'Passed', 12, 13)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (114, N'Mona El Said', 27, N'mona.elsaid@gmail.com', N'F', 14, N'Zagazig', N'Faculty of Medicine', 2, N'Failed', 14, 14)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (115, N'Ahmed Nasser', 24, N'ahmed.nasser@gmail.com', N'M', 15, N'Mahalla El Kubra', N'Faculty of Computers and Artificial Intelligence', 3, N'Passed', 13, 15)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (116, N'Layla Salem', 29, N'layla.salem@gmail.com', N'F', 16, N'Assiut', N'Faculty of Engineering', 4, N'Failed', 12, 16)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (117, N'Youssef Khaled', 26, N'youssef.khaled@gmail.com', N'M', 17, N'Banha', N'Faculty of Commerce', 1, N'Passed', 7, 4)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (118, N'Hana Mohamed', 30, N'hana.mohamed@gmail.com', N'F', 18, N'Suez', N'Faculty of Agriculture', 2, N'Failed', 9, 22)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (119, N'Kareem Ali', 25, N'kareem.ali@gmail.com', N'M', 19, N'Mansoura', N'Faculty of Arts', 3, N'Passed', 8, 23)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (120, N'Laila Omar', 22, N'laila.omar@gmail.com', N'F', 20, N'Aswan', N'Faculty of Pharmacy', 4, N'Failed', 8, 1)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (121, N'Amr Hassan', 27, N'amr.hassan@gmail.com', N'M', 21, N'Faiyum', N'Faculty of Science', 1, N'Passed', 8, 1)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (122, N'Nour Ezzat', 24, N'nour.ezzat@gmail.com', N'F', 22, N'Kafr El Sheikh', N'Faculty of Dentistry', 2, N'Failed', 9, 3)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (123, N'Karim Mohamed', 29, N'karim.mohamed@gmail.com', N'M', 23, N'Hurghada', N'Faculty of Law', 3, N'Passed', 8, 7)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (124, N'Mona Ahmed', 30, N'mona.ahmed@gmail.com', N'F', 24, N'Luxor', N'Faculty of Education', 4, N'Failed', 6, 3)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (125, N'Adel Samir', 26, N'adel.samir@gmail.com', N'M', 1, N'Qena', N'Faculty of Nursing', 1, N'Passed', 10, 5)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (126, N'Dina Khaled', 27, N'dina.khaled@gmail.com', N'F', 2, N'Mansoura', N'Faculty of Physical Education', 2, N'Failed', 11, 6)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (127, N'Tarek Ahmed', 28, N'tarek.ahmed@gmail.com', N'M', 3, N'Sohag', N'Faculty of Engineering', 3, N'Passed', 2, 5)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (128, N'Salma Youssef', 31, N'salma.youssef@gmail.com', N'F', 4, N'Banha', N'Faculty of Computers and Information', 4, N'Failed', 3, 8)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (129, N'Youssef Ali', 24, N'youssef.ali@gmail.com', N'M', 5, N'Giza', N'Faculty of Specific Education', 1, N'Passed', 10, 5)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (130, N'Maha Samir', 29, N'maha.samir@gmail.com', N'F', 6, N'Zagazig', N'Faculty of Archaeology', 2, N'Failed', 5, 10)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (131, N'Rania Mahmoud', 32, N'rania.mahmoud@gmail.com', N'F', 7, N'Aswan', N'Faculty of Fine Arts', 3, N'Passed', 8, 11)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (132, N'Mohamed Gaber', 25, N'mohamed.gaber@gmail.com', N'M', 8, N'Tanta', N'Faculty of Computers and Information Technology', 4, N'Failed', 8, 12)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (133, N'Noura Omar', 26, N'noura.omar@gmail.com', N'F', 9, N'Ismailia', N'Faculty of Medicine', 1, N'Passed', 7, 13)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (134, N'Karim Ali', 27, N'karim.ali@gmail.com', N'M', 10, N'Damanhur', N'Faculty of Computers and Artificial Intelligence', 2, N'Failed', 10, 10)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (135, N'Aya Hassan', 28, N'aya.hassan@gmail.com', N'F', 11, N'Shibin El Kom', N'Faculty of Engineering', 3, N'Passed', 5, 15)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (136, N'Ahmed Salem', 30, N'ahmed.salem@gmail.com', N'M', 12, N'Cairo', N'Faculty of Commerce', 4, N'Failed', 10, 16)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (137, N'Sara Khaled', 22, N'sara.khaled@gmail.com', N'F', 13, N'Alexandria', N'Faculty of Agriculture', 1, N'Passed', 14, 13)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (138, N'Ali Mohamed', 25, N'ali.mohamed@gmail.com', N'M', 14, N'Giza', N'Faculty of Arts', 2, N'Failed', 6, 18)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (139, N'Nada Ibrahim', 27, N'nada.ibrahim@gmail.com', N'F', 15, N'Luxor', N'Faculty of Pharmacy', 3, N'Passed', 7, 19)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (140, N'Youssef Samir', 29, N'youssef.samir@gmail.com', N'M', 16, N'Aswan', N'Faculty of Science', 4, N'Failed', 14, 16)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (141, N'Hana Adel', 31, N'hana.adel@gmail.com', N'F', 17, N'Cairo', N'Faculty of Dentistry', 1, N'Passed', 9, 4)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (142, N'Omar Hassan', 24, N'omar.hassan@gmail.com', N'M', 18, N'Alexandria', N'Faculty of Law', 2, N'Failed', 12, 22)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (143, N'Dina Ali', 30, N'dina.ali@gmail.com', N'F', 19, N'Giza', N'Faculty of Education', 3, N'Passed', 9, 23)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (144, N'Tamer Mahmoud', 22, N'tamer.mahmoud@gmail.com', N'M', 20, N'Luxor', N'Faculty of Nursing', 4, N'Failed', 5, 10)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (145, N'Sara Hassan', 25, N'sara.hassan@gmail.com', N'F', 26, N'Aswan', N'Faculty of Physical Education', 1, N'Passed', 12, 9)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (146, N'Mahmoud Nabil', 26, N'mahmoud.nabil@gmail.com', N'M', 27, N'Sharm El Sheikh', N'Faculty of Engineering', 2, N'Failed', 12, 9)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (147, N'Farida Ahmed', 28, N'farida.ahmed@gmail.com', N'F', 23, N'Hurghada', N'Faculty of Computers and Information', 3, N'Passed', 10, 7)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (148, N'Khaled Aly', 30, N'khaled.aly@gmail.com', N'M', 24, N'Dahab', N'Faculty of Specific Education', 4, N'Failed', 9, 3)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (149, N'Nour Essam', 29, N'nour.essam@gmail.com', N'F', 1, N'Asyut', N'Faculty of Archaeology', 1, N'Passed', 5, 10)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (150, N'Ahmed Khaled', 24, N'ahmed.khaled@gmail.com', N'M', 2, N'Suez', N'Faculty of Fine Arts', 2, N'Failed', 12, 6)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (151, N'Fatima Khaled', 27, N'fatima.khaled@gmail.com', N'F', 3, N'Ismailia', N'Faculty of Computers and Information Technology', 3, N'Passed', 5, 5)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (152, N'Omar Ali', 31, N'omar.ali@gmail.com', N'M', 4, N'Fayoum', N'Faculty of Medicine', 4, N'Failed', 6, 8)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (153, N'Nadia Ahmed', 22, N'nadia.ahmed@gmail.com', N'F', 5, N'Beni Suef', N'Faculty of Computers and Artificial Intelligence', 1, N'Passed', 4, 9)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (154, N'Ali Saeed', 26, N'ali.saeed@gmail.com', N'M', 6, N'Sohag', N'Faculty of Engineering', 2, N'Failed', 7, 10)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (155, N'Hanan Ali', 28, N'hanan.ali@gmail.com', N'F', 7, N'Qena', N'Faculty of Commerce', 3, N'Passed', 9, 11)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (156, N'Khalid Mahmoud', 30, N'khalid.mahmoud@gmail.com', N'M', 8, N'Minya', N'Faculty of Agriculture', 4, N'Failed', 9, 12)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (157, N'Sara Abdelrahman', 25, N'sara.abdelrahman@gmail.com', N'F', 9, N'Damietta', N'Faculty of Arts', 1, N'Passed', 10, 13)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (158, N'Hassan Mohamed', 32, N'hassan.mohamed@gmail.com', N'M', 10, N'Kafr El Sheikh', N'Faculty of Pharmacy', 2, N'Failed', 11, 10)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (159, N'Yasmin Nasser', 24, N'yasmin.nasser@gmail.com', N'F', 11, N'Mansoura', N'Faculty of Science', 3, N'Passed', 9, 15)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (160, N'Mohammed Ali', 26, N'mohammed.ali@gmail.com', N'M', 12, N'Tanta', N'Faculty of Dentistry', 4, N'Failed', 11, 16)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (161, N'Aya Saeed', 29, N'aya.saeed@gmail.com', N'F', 13, N'Zagazig', N'Faculty of Law', 1, N'Passed', 6, 17)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (162, N'Ali Abdelrahman', 27, N'ali.abdelrahman@gmail.com', N'M', 14, N'Mahalla El Kubra', N'Faculty of Education', 2, N'Failed', 12, 18)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (163, N'Mona Mahmoud', 28, N'mona.mahmoud@gmail.com', N'F', 15, N'Assiut', N'Faculty of Nursing', 3, N'Passed', 11, 19)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (164, N'Omar Mohamed', 30, N'omar.mohamed@gmail.com', N'M', 16, N'Banha', N'Faculty of Physical Education', 4, N'Failed', 7, 20)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (165, N'Laila Nasser', 31, N'laila.nasser@gmail.com', N'F', 17, N'Suez', N'Faculty of Engineering', 1, N'Passed', 6, 17)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (166, N'Ahmed Ali', 25, N'ahmed.ali@gmail.com', N'M', 26, N'Mansoura', N'Faculty of Computers and Information', 2, N'Failed', 13, 9)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (167, N'Nada Hassan', 22, N'nada.hassan@gmail.com', N'F', 27, N'Aswan', N'Faculty of Specific Education', 3, N'Passed', 13, 9)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (168, N'Ahmed Mahmoud', 26, N'ahmed.mahmoud@gmail.com', N'M', 20, N'Faiyum', N'Faculty of Archaeology', 4, N'Failed', 7, 10)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (169, N'Nour Mohamed', 27, N'nour.mohamed@gmail.com', N'F', 21, N'Kafr El Sheikh', N'Faculty of Fine Arts', 1, N'Passed', 8, 21)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (170, N'Youssef Ali', 28, N'youssef.ali@gmail.com', N'M', 22, N'Hurghada', N'Faculty of Computers and Information Technology', 2, N'Failed', 4, 6)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (171, N'Aya Hassan', 29, N'aya.hassan@gmail.com', N'F', 23, N'Luxor', N'Faculty of Medicine', 3, N'Passed', 9, 23)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (172, N'Khaled Nasser', 30, N'khaled.nasser@gmail.com', N'M', 24, N'Qena', N'Faculty of Computers and Artificial Intelligence', 4, N'Failed', 3, 8)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (173, N'Farah Ahmed', 31, N'farah.ahmed@gmail.com', N'F', 1, N'Mansoura', N'Faculty of Engineering', 1, N'Passed', 7, 10)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (174, N'Omar Hassan', 32, N'omar.hassan@gmail.com', N'M', 2, N'Sohag', N'Faculty of Commerce', 2, N'Failed', 13, 6)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (175, N'Nada Ali', 24, N'nada.ali@gmail.com', N'F', 3, N'Banha', N'Faculty of Agriculture', 3, N'Passed', 6, 5)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (176, N'Ahmed Mohamed', 26, N'ahmed.mohamed@gmail.com', N'M', 4, N'Giza', N'Faculty of Arts', 4, N'Failed', 8, 8)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (177, N'Hoda Khaled', 25, N'hoda.khaled@gmail.com', N'F', 5, N'Zagazig', N'Faculty of Pharmacy', 1, N'Passed', 7, 9)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (178, N'Amr Saeed', 27, N'amr.saeed@gmail.com', N'M', 6, N'Aswan', N'Faculty of Science', 2, N'Failed', 10, 10)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (179, N'Yasmin Mahmoud', 28, N'yasmin.mahmoud@gmail.com', N'F', 7, N'Tanta', N'Faculty of Dentistry', 3, N'Passed', 10, 11)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (180, N'Omar Ali', 29, N'omar.ali@gmail.com', N'M', 8, N'Ismailia', N'Faculty of Law', 4, N'Failed', 11, 12)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (181, N'Hanan Abdelrahman', 30, N'hanan.abdelrahman@gmail.com', N'F', 9, N'Damanhur', N'Faculty of Education', 1, N'Passed', 12, 13)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (182, N'Mohamed Nasser', 31, N'mohamed.nasser@gmail.com', N'M', 10, N'Shibin El Kom', N'Faculty of Nursing', 2, N'Failed', 14, 10)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (183, N'Laila Ali', 32, N'laila.ali@gmail.com', N'F', 11, N'Cairo', N'Faculty of Physical Education', 3, N'Passed', 10, 15)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (184, N'Tarek Mahmoud', 22, N'tarek.mahmoud@gmail.com', N'M', 12, N'Alexandria', N'Faculty of Engineering', 4, N'Failed', 12, 16)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (185, N'Nada Hassan', 23, N'nada.hassan@gmail.com', N'F', 13, N'Giza', N'Faculty of Computers and Information', 1, N'Passed', 10, 17)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (186, N'Ahmed Saeed', 24, N'ahmed.saeed@gmail.com', N'M', 14, N'Luxor', N'Faculty of Specific Education', 2, N'Failed', 14, 18)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (187, N'Salma Ali', 26, N'salma.ali@gmail.com', N'F', 15, N'Aswan', N'Faculty of Archaeology', 3, N'Passed', 12, 19)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (188, N'Youssef Mohamed', 27, N'youssef.mohamed@gmail.com', N'M', 16, N'Cairo', N'Faculty of Fine Arts', 4, N'Failed', 11, 20)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (189, N'Laila Khaled', 28, N'laila.khaled@gmail.com', N'F', 17, N'Alexandria', N'Faculty of Computers and Information Technology', 1, N'Passed', 10, 17)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (190, N'Amr Nasser', 29, N'amr.nasser@gmail.com', N'M', 18, N'Giza', N'Faculty of Medicine', 2, N'Failed', 13, 22)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (191, N'Nour Ali', 30, N'nour.ali@gmail.com', N'F', 19, N'Luxor', N'Faculty of Computers and Artificial Intelligence', 3, N'Passed', 10, 23)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (192, N'Ahmed Mahmoud', 31, N'ahmed.mahmoud@gmail.com', N'M', 20, N'Aswan', N'Faculty of Engineering', 4, N'Failed', 10, 10)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (193, N'Yasmin Mohamed', 32, N'yasmin.mohamed@gmail.com', N'F', 21, N'Sharm El Sheikh', N'Faculty of Commerce', 1, N'Passed', 9, 21)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (194, N'Omar Ali', 22, N'omar.ali@gmail.com', N'M', 22, N'Hurghada', N'Faculty of Agriculture', 2, N'Failed', 6, 6)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (195, N'Hanan Hassan', 23, N'hanan.hassan@gmail.com', N'F', 23, N'Dahab', N'Faculty of Arts', 3, N'Passed', 10, 23)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (196, N'Khaled Saeed', 24, N'khaled.saeed@gmail.com', N'M', 24, N'Asyut', N'Faculty of Pharmacy', 4, N'Failed', 6, 8)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (197, N'Salma Ali', 25, N'salma.ali@gmail.com', N'F', 1, N'Suez', N'Faculty of Science', 1, N'Passed', 10, 10)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (198, N'Youssef Mahmoud', 26, N'youssef.mahmoud@gmail.com', N'M', 2, N'Ismailia', N'Faculty of Dentistry', 3, N'Failed', 8, 11)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (199, N'Laila Nasser', 27, N'laila.nasser@gmail.com', N'F', 3, N'Fayoum', N'Faculty of Law', 2, N'Failed', 10, 5)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (200, N'Yasmen Samir', 23, N'yasmene.samir@gmail.com', N'F', 25, N'Helwan', N'Faculty of Computers and Artificial Intelligence', 4, N'Passed', 12, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (201, N'Radwa Alaa', 22, N'alaaradwa244@gmail.com', N'F', 25, N'Cairo', N'Faculty of Computers and Artificial Intelligence', 4, N'Passed', 12, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (202, N'Rehab Galal', 27, N'rehabgalal68@gmail.com', N'F', 25, N'Benha', N'Faculty of Computers and Artificial Intelligence', 4, N'Passed', 12, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (203, N'Alaa Salah', 23, N'alaa.salah.22001@gmail.com', N'F', 25, N'Zagazig', N'Faculty of Computers and Artificial Intelligence', 4, N'Passed', 12, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (204, N'Ali Ahmed', 23, N'Ali.Ahmed@gmail.com', N'M', 25, N'Giza', N'Faculty of Commerce', 4, N'Passed', 4, 9)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (205, N'omar', 25, N'omar.ahmed@gmail.com', N'M', 5, N'Mansoura', N'Faculty of Agriculture', 2, N'Failed', 9, 9)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (206, N'Omar Youssef', 23, N'omar.youssef@example.com', N'M', 1, N'Cairo', N'Faculty of Engineering', 3, N'Failed', 11, 10)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (207, N'Sara Hassan', 24, N'sara.hassan@example.com', N'F', 1, N'Tanta', N'Faculty of Computers and Artificial Intelligence', 4, N'Failed', 14, 10)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (208, N'Youssef Ali', 22, N'youssef.ali@example.com', N'M', 1, N'Zagazig', N'Faculty of Engineering', 1, N'Passed', 5, 15)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (209, N'Nour Mohamed', 25, N'nour.mohamed@example.com', N'F', 1, N'Mansoura', N'Faculty of Computers and Information', 1, N'Passed', 9, 15)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (210, N'Ahmed Khaled', 26, N'ahmed.khaled@example.com', N'M', 1, N'Suez', N'Faculty of Computers and Information', 4, N'Failed', 10, 15)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (211, N'Fatma Mahmoud', 23, N'fatma.mahmoud@example.com', N'F', 1, N'Ismailia', N'Faculty of Specific Education', 1, N'Passed', 13, 15)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (212, N'Rania Samir', 24, N'rania.samir@example.com', N'F', 1, N'Zagazig', N'Faculty of Pharmacy', 3, N'Passed', 7, 20)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (213, N'Mahmoud Adel', 22, N'mahmoud.adel@example.com', N'M', 1, N'Shibin El Kom', N'Faculty of Dentistry', 4, N'Failed', 11, 20)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (214, N'Salma Hassan', 25, N'salma.hassan@example.com', N'F', 1, N'Cairo', N'Faculty of Law', 1, N'Passed', 12, 20)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (215, N'Tarek Youssef', 23, N'tarek.youssef@example.com', N'M', 1, N'Aswan', N'Faculty of Pharmacy', 4, N'Failed', 14, 20)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (216, N'Nada Ahmed', 24, N'nada.ahmed@example.com', N'F', 2, N'Faiyum', N'Faculty of Science', 1, N'Passed', 9, 11)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (217, N'Ali Said', 22, N'ali.said@example.com', N'M', 2, N'Giza', N'Faculty of Computers and Artificial Intelligence', 4, N'Failed', 10, 11)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (218, N'Mona Ibrahim', 26, N'mona.ibrahim@example.com', N'F', 2, N'Banha', N'Faculty of Law', 2, N'Failed', 12, 11)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (219, N'Karim Mostafa', 23, N'karim.mostafa@example.com', N'M', 2, N'Sohag', N'Faculty of Specific Education', 2, N'Failed', 13, 11)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (220, N'Rana Tarek', 24, N'rana.tarek@example.com', N'F', 2, N'Alexandria', N'Faculty of Medicine', 3, N'Passed', 6, 16)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (221, N'Hassan Ali', 22, N'hassan.ali@example.com', N'M', 2, N'Giza', N'Faculty of Commerce', 3, N'Passed', 10, 16)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (222, N'Laila Mohamed', 25, N'laila.mohamed@example.com', N'F', 2, N'Mahalla El Kubra', N'Faculty of Commerce', 2, N'Failed', 11, 16)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (223, N'Mohamed Samir', 23, N'mohamed.samir@example.com', N'M', 2, N'Banha', N'Faculty of Archaeology', 3, N'Passed', 12, 16)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (224, N'Nadine Youssef', 24, N'nadine.youssef@example.com', N'F', 2, N'Banha', N'Faculty of Arts', 4, N'Failed', 14, 16)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (225, N'Yara Mahmoud', 22, N'yara.mahmoud@example.com', N'F', 2, N'Suez', N'Faculty of Education', 3, N'Passed', 8, 21)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (226, N'Khaled Omar', 24, N'khaled.omar@example.com', N'M', 2, N'Fayoum', N'Faculty of Archaeology', 2, N'Failed', 9, 21)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (227, N'Yasmin Ali', 23, N'yasmin.ali@example.com', N'F', 2, N'Alexandria', N'Faculty of Education', 2, N'Failed', 12, 21)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (228, N'Omar Mohamed', 25, N'omar.mohamed@example.com', N'M', 2, N'Luxor', N'Faculty of Physical Education', 4, N'Failed', 13, 21)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (229, N'Heba Ibrahim', 22, N'heba.ibrahim@example.com', N'F', 2, N'Sharm El Sheikh', N'Faculty of Agriculture', 3, N'Passed', 14, 21)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (230, N'Karim Ahmed', 24, N'karim.ahmed@example.com', N'M', 2, N'Kafr El Sheikh', N'Faculty of Dentistry', 2, N'Failed', 11, 32)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (231, N'Amira Samir', 25, N'amira.samir@example.com', N'F', 2, N'Luxor', N'Faculty of Education', 4, N'Failed', 12, 32)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (232, N'Adel Youssef', 23, N'adel.youssef@example.com', N'M', 2, N'Dahab', N'Faculty of Specific Education', 4, N'Failed', 13, 32)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (233, N'Nourhan Tarek', 22, N'nourhan.tarek@example.com', N'F', 2, N'Cairo', N'Faculty of Dentistry', 1, N'Passed', 10, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (234, N'Mohamed Hassan', 26, N'mohamed.hassan@example.com', N'M', 2, N'Hurghada', N'Faculty of Arts', 4, N'Failed', 11, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (235, N'Salma Ali', 24, N'salma.ali@example.com', N'F', 2, N'Ismailia', N'Faculty of Law', 4, N'Failed', 12, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (236, N'Ahmed Nabil', 23, N'ahmed.nabil@example.com', N'M', 2, N'Banha', N'Faculty of Commerce', 1, N'Passed', 13, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (237, N'Reem Youssef', 25, N'reem.youssef@example.com', N'F', 2, N'Tanta', N'Faculty of Arts', 1, N'Passed', 14, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (238, N'Youssef Samir', 22, N'youssef.samir@example.com', N'M', 3, N'Shibin El Kom', N'Faculty of Agriculture', 2, N'Passed', 5, 7)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (239, N'Maha Khaled', 23, N'maha.khaled@example.com', N'F', 3, N'Hurghada', N'Faculty of Nursing', 2, N'Failed', 6, 7)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (240, N'Tamer Hassan', 24, N'tamer.hassan@example.com', N'M', 3, N'Hurghada', N'Faculty of Nursing', 1, N'Passed', 7, 7)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (241, N'Lina Ahmed', 25, N'lina.ahmed@example.com', N'F', 3, N'Mansoura', N'Faculty of Nursing', 4, N'Failed', 8, 7)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (242, N'Mahmoud Ali', 22, N'mahmoud.ali@example.com', N'M', 3, N'Tanta', N'Faculty of Arts', 2, N'Passed', 10, 7)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (243, N'Dalia Nabil', 24, N'dalia.nabil@example.com', N'F', 3, N'Qena', N'Faculty of Fine Arts', 2, N'Failed', 4, 12)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (244, N'Omar Mostafa', 23, N'omar.mostafa@example.com', N'M', 3, N'Damietta', N'Faculty of Fine Arts', 1, N'Passed', 8, 12)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (245, N'Rania Youssef', 22, N'rania.youssef@example.com', N'F', 3, N'Giza', N'Faculty of Fine Arts', 4, N'Failed', 9, 12)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (246, N'Sami Ahmed', 25, N'sami.ahmed@example.com', N'M', 3, N'Suez', N'Faculty of Education', 2, N'Failed', 11, 12)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (247, N'Laila Samir', 23, N'laila.samir@example.com', N'F', 3, N'Luxor', N'Faculty of Agriculture', 4, N'Failed', 13, 12)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (248, N'Ali Karim', 24, N'ali.karim@example.com', N'M', 3, N'Aswan', N'Faculty of Arts', 1, N'Passed', 6, 17)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (249, N'Nadine Khaled', 22, N'nadine.khaled@example.com', N'F', 3, N'Zagazig', N'Faculty of Computers and Information Technology', 1, N'Passed', 10, 17)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (250, N'Hassan Adel', 25, N'hassan.adel@example.com', N'M', 3, N'Assiut', N'Faculty of Dentistry', 1, N'Passed', 11, 17)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (251, N'Nada Omar', 23, N'nada.omar@example.com', N'F', 3, N'Aswan', N'Faculty of Physical Education', 1, N'Passed', 13, 17)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (252, N'Youssef Mohamed', 24, N'youssef.mohamed@example.com', N'M', 3, N'Luxor', N'Faculty of Engineering', 1, N'Passed', 8, 22)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (253, N'Rana Ali', 22, N'rana.ali@example.com', N'F', 3, N'Alexandria', N'Faculty of Medicine', 3, N'Passed', 9, 22)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (254, N'Karim Tarek', 25, N'karim.tarek@example.com', N'M', 3, N'Fayoum', N'Faculty of Education', 1, N'Passed', 12, 22)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (255, N'Nour Hassan', 23, N'nour.hassan@example.com', N'F', 3, N'Dahab', N'Faculty of Pharmacy', 1, N'Passed', 13, 22)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (256, N'Amr Samir', 24, N'amr.samir@example.com', N'M', 3, N'Suez', N'Faculty of Dentistry', 3, N'Passed', 14, 22)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (257, N'Mona Youssef', 22, N'mona.youssef@example.com', N'F', 3, N'Ismailia', N'Faculty of Computers and Information Technology', 3, N'Passed', 10, 27)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (258, N'Tamer Khaled', 25, N'tamer.khaled@example.com', N'M', 3, N'Qena', N'Faculty of Nursing', 1, N'Passed', 11, 27)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (259, N'Layla Ahmed', 23, N'layla.ahmed@example.com', N'F', 3, N'Sohag', N'Faculty of Engineering', 3, N'Passed', 12, 27)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (260, N'Nourhan Ali', 24, N'nourhan.ali@example.com', N'F', 3, N'Giza', N'Faculty of Specific Education', 1, N'Passed', 13, 27)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (261, N'Kareem Hassan', 22, N'kareem.hassan@example.com', N'M', 3, N'Banha', N'Faculty of Agriculture', 3, N'Passed', 10, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (262, N'Rana Adel', 25, N'rana.adel@example.com', N'F', 3, N'Fayoum', N'Faculty of Law', 2, N'Failed', 11, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (263, N'Omar Nabil', 23, N'omar.nabil@example.com', N'M', 3, N'Hurghada', N'Faculty of Agriculture', 2, N'Failed', 12, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (264, N'Maha Youssef', 24, N'maha.youssef@example.com', N'F', 3, N'Hurghada', N'Faculty of Computers and Information Technology', 2, N'Failed', 13, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (265, N'Tamer Mohamed', 22, N'tamer.mohamed@example.com', N'M', 3, N'Suez', N'Faculty of Fine Arts', 2, N'Failed', 14, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (266, N'Salma Karim', 25, N'salma.karim@example.com', N'F', 4, N'Sohag', N'Faculty of Commerce', 2, N'Failed', 12, 8)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (267, N'Ali Youssef', 23, N'ali.youssef@example.com', N'M', 4, N'Mansoura', N'Faculty of Physical Education', 2, N'Failed', 13, 8)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (268, N'Nadine Hassan', 24, N'nadine.hassan@example.com', N'F', 4, N'Asyut', N'Faculty of Science', 2, N'Failed', 5, 13)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (269, N'Khaled Adel', 22, N'khaled.adel@example.com', N'M', 4, N'Beni Suef', N'Faculty of Nursing', 2, N'Failed', 7, 13)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (270, N'Reem Samir', 25, N'reem.samir@example.com', N'F', 4, N'Aswan', N'Faculty of Commerce', 2, N'Failed', 10, 13)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (271, N'Karim Youssef', 23, N'karim.youssef@example.com', N'M', 4, N'Faiyum', N'Faculty of Engineering', 2, N'Failed', 12, 13)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (272, N'Lina Tarek', 24, N'lina.tarek@example.com', N'F', 4, N'Minya', N'Faculty of Computers and Artificial Intelligence', 2, N'Failed', 14, 13)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (273, N'Mahmoud Ali', 22, N'mahmoud.ali@example.com', N'M', 4, N'Aswan', N'Faculty of Medicine', 2, N'Failed', 6, 18)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (274, N'Nour Youssef', 25, N'nour.youssef@example.com', N'F', 4, N'Sharm El Sheikh', N'Faculty of Pharmacy', 2, N'Failed', 12, 18)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (275, N'Youssef Samir', 23, N'youssef.samir@example.com', N'M', 4, N'Hurghada', N'Faculty of Science', 3, N'Passed', 14, 18)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (276, N'Nada Ali', 24, N'nada.ali@example.com', N'F', 4, N'Assiut', N'Faculty of Agriculture', 3, N'Passed', 8, 23)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (277, N'Ahmed Tamer', 22, N'ahmed.tamer@example.com', N'M', 4, N'Tanta', N'Faculty of Computers and Artificial Intelligence', 3, N'Passed', 9, 23)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (278, N'Laila Youssef', 25, N'laila.youssef@example.com', N'F', 4, N'Damietta', N'Faculty of Engineering', 3, N'Passed', 10, 23)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (279, N'Omar Hassan', 23, N'omar.hassan@example.com', N'M', 4, N'Beni Suef', N'Faculty of Fine Arts', 3, N'Passed', 11, 23)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (280, N'Salma Nabil', 24, N'salma.nabil@example.com', N'F', 4, N'Kafr El Sheikh', N'Faculty of Computers and Information', 3, N'Passed', 13, 23)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (281, N'Rania Adel', 22, N'rania.adel@example.com', N'F', 4, N'Giza', N'Faculty of Nursing', 3, N'Passed', 10, 28)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (282, N'Amr Youssef', 25, N'amr.youssef@example.com', N'M', 4, N'Sohag', N'Faculty of Physical Education', 3, N'Passed', 11, 28)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (283, N'Mona Samir', 23, N'mona.samir@example.com', N'F', 4, N'Hurghada', N'Faculty of Law', 3, N'Passed', 12, 28)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (284, N'Karim Khaled', 24, N'karim.khaled@example.com', N'M', 4, N'Hurghada', N'Faculty of Computers and Information', 3, N'Passed', 13, 28)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (285, N'Nada Mohamed', 22, N'nada.mohamed@example.com', N'F', 4, N'Fayoum', N'Faculty of Medicine', 4, N'Failed', 10, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (286, N'Mahmoud Nabil', 25, N'mahmoud.nabil@example.com', N'M', 4, N'Banha', N'Faculty of Computers and Information', 4, N'Failed', 11, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (287, N'Laila Ali', 23, N'laila.ali@example.com', N'F', 4, N'Dahab', N'Faculty of Archaeology', 4, N'Failed', 12, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (288, N'Nadine Samir', 24, N'nadine.samir@example.com', N'F', 4, N'Hurghada', N'Faculty of Specific Education', 4, N'Failed', 13, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (289, N'Youssef Adel', 22, N'youssef.adel@example.com', N'M', 4, N'Kafr El Sheikh', N'Faculty of Commerce', 4, N'Failed', 14, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (290, N'Tamer Youssef', 25, N'tamer.youssef@example.com', N'M', 5, N'Ismailia', N'Faculty of Engineering', 4, N'Failed', 12, 9)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (291, N'Salma Khaled', 23, N'salma.khaled@example.com', N'F', 5, N'Dahab', N'Faculty of Dentistry', 4, N'Failed', 13, 9)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (292, N'Omar Ali', 24, N'omar.ali@example.com', N'M', 5, N'Qena', N'Faculty of Computers and Artificial Intelligence', 4, N'Failed', 5, 14)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (293, N'Rana Samir', 22, N'rana.samir@example.com', N'F', 5, N'Giza', N'Faculty of Arts', 4, N'Failed', 10, 14)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (294, N'Kareem Mohamed', 25, N'kareem.mohamed@example.com', N'M', 5, N'Asyut', N'Faculty of Pharmacy', 4, N'Failed', 13, 14)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (295, N'Maha Adel', 23, N'maha.adel@example.com', N'F', 5, N'Zagazig', N'Faculty of Pharmacy', 1, N'Passed', 14, 14)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (296, N'Nour Youssef', 24, N'nour.youssef@example.com', N'F', 5, N'Mansoura', N'Faculty of Computers and Information', 2, N'Failed', 7, 19)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (297, N'Mohamed Karim', 22, N'mohamed.karim@example.com', N'M', 5, N'Aswan', N'Faculty of Specific Education', 3, N'Passed', 11, 19)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (298, N'Nada Tarek', 25, N'nada.tarek@example.com', N'F', 5, N'Giza', N'Faculty of Commerce', 4, N'Passed', 12, 19)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (299, N'Yasmin Ali', 23, N'yasmin.ali@example.com', N'F', 5, N'Mansoura', N'Faculty of Agriculture', 2, N'Failed', 14, 19)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (300, N'Tamer Hassan', 24, N'tamer.hassan@example.com', N'M', 5, N'Asyut', N'Faculty of Law', 1, N'Passed', 8, 21)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (301, N'Lina Ali', 22, N'lina.ali@example.com', N'F', 5, N'Damanhur', N'Faculty of Commerce', 1, N'Passed', 9, 21)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (302, N'Omar Khaled', 25, N'omar.khaled@example.com', N'M', 5, N'Suez', N'Faculty of Pharmacy', 1, N'Passed', 12, 21)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (303, N'Karim Nabil', 23, N'karim.nabil@example.com', N'M', 5, N'Mansoura', N'Faculty of Science', 2, N'Passed', 13, 21)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (304, N'Nourhan Adel', 24, N'nourhan.adel@example.com', N'F', 5, N'Mansoura', N'Faculty of Agriculture', 1, N'Passed', 14, 21)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (305, N'Salma Youssef', 22, N'salma.youssef@example.com', N'F', 5, N'Sohag', N'Faculty of Computers and Information Technology', 4, N'Failed', 8, 22)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (306, N'Ahmed Samir', 25, N'ahmed.samir@example.com', N'M', 5, N'Qena', N'Faculty of Medicine', 1, N'Passed', 9, 22)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (307, N'Reem Khaled', 23, N'reem.khaled@example.com', N'F', 5, N'Luxor', N'Faculty of Archaeology', 1, N'Passed', 12, 22)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (308, N'Amr Ali', 24, N'amr.ali@example.com', N'M', 5, N'Asyut', N'Faculty of Fine Arts', 1, N'Passed', 13, 22)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (309, N'Laila Nabil', 22, N'laila.nabil@example.com', N'F', 5, N'Aswan', N'Faculty of Engineering', 1, N'Passed', 14, 22)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (310, N'Tamer Adel', 25, N'tamer.adel@example.com', N'M', 5, N'Sharm El Sheikh', N'Faculty of Computers and Information', 2, N'Failed', 8, 24)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (311, N'Mona Youssef', 23, N'mona.youssef@example.com', N'F', 5, N'Beni Suef', N'Faculty of Computers and Artificial Intelligence', 1, N'Passed', 11, 24)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (312, N'Ali Samir', 24, N'ali.samir@example.com', N'M', 5, N'Aswan', N'Faculty of Physical Education', 1, N'Passed', 12, 24)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (313, N'Nada Khaled', 22, N'nada.khaled@example.com', N'F', 5, N'Sharm El Sheikh', N'Faculty of Engineering', 2, N'Failed', 13, 24)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (314, N'Youssef Ali', 25, N'youssef.ali@example.com', N'M', 5, N'Luxor', N'Faculty of Nursing', 4, N'Failed', 14, 24)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (315, N'Nadine Nabil', 23, N'nadine.nabil@example.com', N'F', 5, N'Sohag', N'Faculty of Engineering', 2, N'Failed', 10, 29)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (316, N'Kareem Adel', 24, N'kareem.adel@example.com', N'M', 5, N'Kafr El Sheikh', N'Faculty of Pharmacy', 2, N'Failed', 11, 29)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (317, N'Maha Youssef', 22, N'maha.youssef@example.com', N'F', 5, N'Zagazig', N'Faculty of Archaeology', 2, N'Failed', 12, 29)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (318, N'Mahmoud Samir', 25, N'mahmoud.samir@example.com', N'M', 5, N'Damanhur', N'Faculty of Computers and Artificial Intelligence', 2, N'Failed', 13, 29)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (319, N'Layla Khaled', 23, N'layla.khaled@example.com', N'F', 5, N'Cairo', N'Faculty of Computers and Information Technology', 2, N'Failed', 12, 34)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (320, N'Omar Ali', 24, N'omar.ali@example.com', N'M', 5, N'Damietta', N'Faculty of Specific Education', 2, N'Failed', 13, 34)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (321, N'Salma Nabil', 22, N'salma.nabil@example.com', N'F', 5, N'Faiyum', N'Faculty of Archaeology', 4, N'Failed', 10, 41)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (322, N'Rania Adel', 25, N'rania.adel@example.com', N'F', 5, N'Asyut', N'Faculty of Archaeology', 1, N'Passed', 11, 41)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (323, N'Amr Youssef', 23, N'amr.youssef@example.com', N'M', 5, N'Aswan', N'Faculty of Science', 2, N'Failed', 12, 41)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (324, N'Mona Samir', 24, N'mona.samir@example.com', N'F', 5, N'Mansoura', N'Faculty of Engineering', 1, N'Passed', 13, 41)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (325, N'Tamer Khaled', 22, N'tamer.khaled@example.com', N'M', 5, N'Suez', N'Faculty of Science', 1, N'Passed', 14, 41)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (326, N'Lina Youssef', 25, N'lina.youssef@example.com', N'F', 6, N'Shibin El Kom', N'Faculty of Nursing', 2, N'Failed', 11, 10)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (327, N'Youssef Ali', 23, N'youssef.ali@example.com', N'M', 6, N'Aswan', N'Faculty of Engineering', 4, N'Failed', 14, 10)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (328, N'Nada Samir', 24, N'nada.samir@example.com', N'F', 6, N'Ismailia', N'Faculty of Dentistry', 3, N'Failed', 5, 15)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (329, N'Karim Adel', 22, N'karim.adel@example.com', N'M', 6, N'Tanta', N'Faculty of Dentistry', 3, N'Passed', 9, 15)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (330, N'Maha Youssef', 25, N'maha.youssef@example.com', N'F', 6, N'Kafr El Sheikh', N'Faculty of Archaeology', 3, N'Passed', 10, 15)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (331, N'Laila Khaled', 23, N'laila.khaled@example.com', N'F', 6, N'Aswan', N'Faculty of Fine Arts', 3, N'Passed', 13, 15)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (332, N'Omar Ali', 24, N'omar.ali@example.com', N'M', 6, N'Qena', N'Faculty of Commerce', 3, N'Passed', 7, 20)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (333, N'Nadine Nabil', 22, N'nadine.nabil@example.com', N'F', 6, N'Mansoura', N'Faculty of Computers and Information Technology', 3, N'Passed', 11, 20)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (334, N'Mahmoud Samir', 25, N'mahmoud.samir@example.com', N'M', 6, N'Luxor', N'Faculty of Physical Education', 3, N'Passed', 12, 20)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (335, N'Karim Adel', 23, N'karim.adel@example.com', N'M', 6, N'Cairo', N'Faculty of Arts', 3, N'Passed', 14, 20)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (336, N'Reem Youssef', 24, N'reem.youssef@example.com', N'F', 6, N'Ismailia', N'Faculty of Nursing', 3, N'Passed', 9, 25)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (337, N'Amr Ali', 22, N'amr.ali@example.com', N'M', 6, N'Fayoum', N'Faculty of Physical Education', 4, N'Failed', 11, 25)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (338, N'Layla Khaled', 25, N'layla.khaled@example.com', N'F', 6, N'Alexandria', N'Faculty of Pharmacy', 4, N'Failed', 12, 25)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (339, N'Tamer Nabil', 23, N'tamer.nabil@example.com', N'M', 6, N'Qena', N'Faculty of Engineering', 4, N'Failed', 13, 25)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (340, N'Lina Samir', 24, N'lina.samir@example.com', N'F', 6, N'Sohag', N'Faculty of Medicine', 4, N'Failed', 10, 30)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (341, N'Nourhan Ali', 22, N'nourhan.ali@example.com', N'F', 6, N'Mahalla El Kubra', N'Faculty of Science', 4, N'Failed', 12, 30)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (342, N'Ali Khaled', 25, N'ali.khaled@example.com', N'M', 6, N'Minya', N'Faculty of Agriculture', 4, N'Failed', 13, 30)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (343, N'Rania Youssef', 23, N'rania.youssef@example.com', N'F', 6, N'Tanta', N'Faculty of Computers and Information Technology', 4, N'Failed', 12, 34)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (344, N'Mona Samir', 24, N'mona.samir@example.com', N'F', 6, N'Qena', N'Faculty of Engineering', 4, N'Failed', 13, 34)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (345, N'Ahmed Adel', 22, N'ahmed.adel@example.com', N'M', 6, N'Ismailia', N'Faculty of Law', 4, N'Failed', 10, 42)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (346, N'Salma Khaled', 25, N'salma.khaled@example.com', N'F', 6, N'Damanhur', N'Faculty of Education', 1, N'Passed', 11, 42)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (347, N'Mahmoud Ali', 23, N'mahmoud.ali@example.com', N'M', 6, N'Minya', N'Faculty of Computers and Information', 1, N'Passed', 12, 42)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (348, N'Laila Youssef', 24, N'laila.youssef@example.com', N'F', 6, N'Tanta', N'Faculty of Computers and Information Technology', 1, N'Passed', 13, 42)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (349, N'Youssef Samir', 22, N'youssef.samir@example.com', N'M', 6, N'Ismailia', N'Faculty of Medicine', 1, N'Passed', 14, 42)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (350, N'Nadine Khaled', 25, N'nadine.khaled@example.com', N'F', 6, N'Alexandria', N'Faculty of Agriculture', 1, N'Passed', 10, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (351, N'Karim Nabil', 23, N'karim.nabil@example.com', N'M', 6, N'Damietta', N'Faculty of Arts', 1, N'Passed', 11, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (352, N'Maha Samir', 24, N'maha.samir@example.com', N'F', 6, N'Banha', N'Faculty of Computers and Artificial Intelligence', 1, N'Passed', 12, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (353, N'Omar Adel', 22, N'omar.adel@example.com', N'M', 6, N'Giza', N'Faculty of Science', 1, N'Passed', 13, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (354, N'Salma Ali', 25, N'salma.ali@example.com', N'F', 6, N'Beni Suef', N'Faculty of Engineering', 1, N'Passed', 14, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (355, N'Tamer Youssef', 23, N'tamer.youssef@example.com', N'M', 7, N'Sohag', N'Faculty of Computers and Information', 2, N'Failed', 12, 11)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (356, N'Nourhan Khaled', 24, N'nourhan.khaled@example.com', N'F', 7, N'Luxor', N'Faculty of Dentistry', 2, N'Failed', 13, 11)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (357, N'Mona Nabil', 22, N'mona.nabil@example.com', N'F', 7, N'Giza', N'Faculty of Engineering', 2, N'Failed', 6, 16)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (358, N'Ali Samir', 25, N'ali.samir@example.com', N'M', 7, N'Zagazig', N'Faculty of Medicine', 2, N'Failed', 10, 16)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (359, N'Reem Adel', 23, N'reem.adel@example.com', N'F', 7, N'Mahalla El Kubra', N'Faculty of Computers and Artificial Intelligence', 3, N'Passed', 11, 16)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (360, N'Karim Youssef', 24, N'karim.youssef@example.com', N'M', 7, N'Mansoura', N'Faculty of Science', 3, N'Passed', 12, 16)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (361, N'Amr Ali', 22, N'amr.ali@example.com', N'M', 7, N'Shibin El Kom', N'Faculty of Engineering', 3, N'Passed', 14, 16)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (362, N'Lina Khaled', 25, N'lina.khaled@example.com', N'F', 7, N'Zagazig', N'Faculty of Commerce', 3, N'Passed', 8, 21)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (363, N'Mahmoud Nabil', 23, N'mahmoud.nabil@example.com', N'M', 7, N'Aswan', N'Faculty of Law', 3, N'Passed', 9, 21)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (364, N'Nada Samir', 24, N'nada.samir@example.com', N'F', 7, N'Qena', N'Faculty of Specific Education', 3, N'Passed', 12, 21)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (365, N'Youssef Adel', 22, N'youssef.adel@example.com', N'M', 7, N'Cairo', N'Faculty of Physical Education', 3, N'Passed', 13, 21)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (366, N'Layla Youssef', 25, N'layla.youssef@example.com', N'F', 7, N'Alexandria', N'Faculty of Engineering', 4, N'Failed', 14, 21)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (367, N'Ahmed Khaled', 23, N'ahmed.khaled@example.com', N'M', 7, N'Minya', N'Faculty of Archaeology', 4, N'Failed', 9, 26)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (368, N'Rania Ali', 24, N'rania.ali@example.com', N'F', 7, N'Sharm El Sheikh', N'Faculty of Education', 4, N'Failed', 12, 26)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (369, N'Tamer Samir', 22, N'tamer.samir@example.com', N'M', 7, N'Aswan', N'Faculty of Agriculture', 4, N'Failed', 13, 26)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (370, N'Mona Adel', 25, N'mona.adel@example.com', N'F', 7, N'Cairo', N'Faculty of Commerce', 4, N'Failed', 14, 26)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (371, N'Salma Nabil', 23, N'salma.nabil@example.com', N'F', 7, N'Tanta', N'Faculty of Dentistry', 4, N'Failed', 11, 31)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (372, N'Kareem Youssef', 24, N'kareem.youssef@example.com', N'M', 7, N'Aswan', N'Faculty of Science', 4, N'Failed', 12, 31)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (373, N'Omar Ali', 22, N'omar.ali@example.com', N'M', 7, N'Assiut', N'Faculty of Engineering', 4, N'Failed', 13, 31)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (374, N'Nadine Khaled', 25, N'nadine.khaled@example.com', N'F', 7, N'Mansoura', N'Faculty of Fine Arts', 4, N'Failed', 12, 35)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (375, N'Laila Samir', 23, N'laila.samir@example.com', N'F', 7, N'Zagazig', N'Faculty of Law', 1, N'Passed', 13, 35)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (376, N'Mahmoud Adel', 24, N'mahmoud.adel@example.com', N'M', 7, N'Giza', N'Faculty of Computers and Information', 1, N'Passed', 10, 42)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (377, N'Reem Youssef', 22, N'reem.youssef@example.com', N'F', 7, N'Alexandria', N'Faculty of Computers and Information Technology', 1, N'Passed', 11, 42)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (378, N'Ahmed Samir', 25, N'ahmed.samir@example.com', N'M', 7, N'Suez', N'Faculty of Engineering', 1, N'Passed', 12, 42)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (379, N'Mona Khaled', 23, N'mona.khaled@example.com', N'F', 7, N'Luxor', N'Faculty of Specific Education', 2, N'Failed', 13, 42)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (380, N'Karim Nabil', 24, N'karim.nabil@example.com', N'M', 7, N'Mahalla El Kubra', N'Faculty of Education', 2, N'Failed', 14, 42)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (381, N'Nada Adel', 22, N'nada.adel@example.com', N'F', 7, N'Giza', N'Faculty of Arts', 2, N'Failed', 10, 43)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (382, N'Youssef Samir', 25, N'youssef.samir@example.com', N'M', 7, N'Dahab', N'Faculty of Physical Education', 2, N'Passed', 11, 43)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (383, N'Layla Youssef', 23, N'layla.youssef@example.com', N'F', 7, N'Kafr El Sheikh', N'Faculty of Computers and Information Technology', 2, N'Failed', 12, 43)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (384, N'Omar Ali', 24, N'omar.ali@example.com', N'M', 7, N'Faiyum', N'Faculty of Law', 4, N'Failed', 13, 43)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (385, N'Salma Khaled', 22, N'salma.khaled@example.com', N'F', 7, N'Kafr El Sheikh', N'Faculty of Education', 3, N'Passed', 14, 43)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (386, N'Mahmoud Nabil', 25, N'mahmoud.nabil@example.com', N'M', 7, N'Mansoura', N'Faculty of Medicine', 4, N'Passed', 10, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (387, N'Tamer Adel', 23, N'tamer.adel@example.com', N'M', 7, N'Asyut', N'Faculty of Engineering', 1, N'Passed', 11, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (388, N'Mona Youssef', 24, N'mona.youssef@example.com', N'F', 7, N'Luxor', N'Faculty of Pharmacy', 1, N'Passed', 12, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (389, N'Karim Samir', 22, N'karim.samir@example.com', N'M', 7, N'Assiut', N'Faculty of Nursing', 4, N'Passed', 13, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (390, N'Laila Ali', 25, N'laila.ali@example.com', N'F', 7, N'Damanhur', N'Faculty of Science', 1, N'Passed', 14, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (391, N'Youssef Khaled', 23, N'youssef.khaled@example.com', N'M', 8, N'Aswan', N'Faculty of Archaeology', 3, N'Passed', 13, 12)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (392, N'Reem Nabil', 24, N'reem.nabil@example.com', N'F', 8, N'Cairo', N'Faculty of Fine Arts', 4, N'Failed', 6, 17)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (393, N'Omar Adel', 22, N'omar.adel@example.com', N'M', 8, N'Banha', N'Faculty of Physical Education', 1, N'Failed', 10, 17)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (394, N'Nada Youssef', 25, N'nada.youssef@example.com', N'F', 8, N'Sharm El Sheikh', N'Faculty of Commerce', 4, N'Passed', 11, 17)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (395, N'Ahmed Khaled', 23, N'ahmed.khaled@example.com', N'M', 8, N'Kafr El Sheikh', N'Faculty of Fine Arts', 1, N'Passed', 13, 17)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (396, N'Mona Samir', 24, N'mona.samir@example.com', N'F', 8, N'Giza', N'Faculty of Medicine', 4, N'Failed', 8, 22)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (397, N'Tamer Ali', 22, N'tamer.ali@example.com', N'M', 8, N'Alexandria', N'Faculty of Law', 2, N'Failed', 9, 22)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (398, N'Lina Khaled', 25, N'lina.khaled@example.com', N'F', 8, N'Ismailia', N'Faculty of Pharmacy', 2, N'Failed', 12, 22)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (399, N'Karim Adel', 23, N'karim.adel@example.com', N'M', 8, N'Suez', N'Faculty of Agriculture', 3, N'Failed', 13, 22)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (400, N'Salma Youssef', 24, N'salma.youssef@example.com', N'F', 8, N'Mansoura', N'Faculty of Arts', 3, N'Passed', 14, 22)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (401, N'Nadine Nabil', 22, N'nadine.nabil@example.com', N'F', 8, N'Giza', N'Faculty of Education', 2, N'Passed', 10, 27)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (402, N'Omar Samir', 25, N'omar.samir@example.com', N'M', 8, N'Luxor', N'Faculty of Computers and Artificial Intelligence', 3, N'Passed', 11, 27)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (403, N'Layla Ali', 23, N'layla.ali@example.com', N'F', 8, N'Dahab', N'Faculty of Arts', 4, N'Passed', 12, 27)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (404, N'Ahmed Khaled', 24, N'ahmed.khaled@example.com', N'M', 8, N'Luxor', N'Faculty of Medicine', 3, N'Passed', 13, 27)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (405, N'Mona Youssef', 22, N'mona.youssef@example.com', N'F', 8, N'Aswan', N'Faculty of Dentistry', 2, N'Passed', 11, 32)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (406, N'Reem Nabil', 25, N'reem.nabil@example.com', N'F', 8, N'Hurghada', N'Faculty of Specific Education', 2, N'Passed', 12, 32)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (407, N'Youssef Samir', 23, N'youssef.samir@example.com', N'M', 8, N'Helwan', N'Faculty of Computers and Artificial Intelligence', 4, N'Passed', 13, 32)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (408, N'Nada Adel', 24, N'nada.adel@example.com', N'F', 9, N'Cairo', N'Faculty of Computers and Artificial Intelligence', 3, N'Passed', 14, 13)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (409, N'Omar Ali', 22, N'omar.ali@example.com', N'M', 9, N'Benha', N'Faculty of Computers and Artificial Intelligence', 2, N'Passed', 6, 18)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (410, N'Karim Khaled', 25, N'karim.khaled@example.com', N'M', 9, N'Zagazig', N'Faculty of Computers and Artificial Intelligence', 4, N'Passed', 12, 18)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (411, N'Mahmoud Youssef', 23, N'mahmoud.youssef@example.com', N'M', 9, N'Cairo', N'Faculty of Engineering', 4, N'Failed', 14, 18)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (412, N'Tamer Samir', 24, N'tamer.samir@example.com', N'M', 9, N'Tanta', N'Faculty of Computers and Artificial Intelligence', 1, N'Failed', 8, 23)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (413, N'Mona Nabil', 22, N'mona.nabil@example.com', N'F', 9, N'Zagazig', N'Faculty of Engineering', 4, N'Passed', 9, 23)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (414, N'Laila Ali', 25, N'laila.ali@example.com', N'F', 9, N'Mansoura', N'Faculty of Computers and Information', 4, N'Passed', 10, 23)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (415, N'Salma Khaled', 23, N'salma.khaled@example.com', N'F', 9, N'Suez', N'Faculty of Computers and Information', 1, N'Failed', 11, 23)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (416, N'Youssef Samir', 24, N'youssef.samir@example.com', N'M', 9, N'Ismailia', N'Faculty of Specific Education', 1, N'Passed', 13, 23)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (417, N'Nadine Youssef', 22, N'nadine.youssef@example.com', N'F', 9, N'Zagazig', N'Faculty of Pharmacy', 2, N'Passed', 10, 28)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (418, N'Ahmed Khaled', 25, N'ahmed.khaled@example.com', N'M', 9, N'Shibin El Kom', N'Faculty of Dentistry', 2, N'Failed', 11, 28)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (419, N'Reem Samir', 23, N'reem.samir@example.com', N'F', 9, N'Cairo', N'Faculty of Law', 1, N'Passed', 12, 28)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (420, N'Omar Nabil', 24, N'omar.nabil@example.com', N'M', 9, N'Aswan', N'Faculty of Pharmacy', 4, N'Failed', 13, 28)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (421, N'Karim Ali', 22, N'karim.ali@example.com', N'M', 9, N'Faiyum', N'Faculty of Science', 2, N'Passed', 10, 33)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (422, N'Layla Khaled', 25, N'layla.khaled@example.com', N'F', 9, N'Giza', N'Faculty of Computers and Artificial Intelligence', 2, N'Failed', 11, 33)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (423, N'Salma Youssef', 23, N'salma.youssef@example.com', N'F', 9, N'Banha', N'Faculty of Law', 1, N'Failed', 12, 33)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (424, N'Mahmoud Samir', 24, N'mahmoud.samir@example.com', N'M', 9, N'Sohag', N'Faculty of Specific Education', 4, N'Failed', 13, 33)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (425, N'Tamer Ali', 22, N'tamer.ali@example.com', N'M', 9, N'Alexandria', N'Faculty of Medicine', 2, N'Passed', 10, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (426, N'Lina Khaled', 25, N'lina.khaled@example.com', N'F', 9, N'Giza', N'Faculty of Commerce', 4, N'Passed', 11, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (427, N'Youssef Nabil', 23, N'youssef.nabil@example.com', N'M', 9, N'Mahalla El Kubra', N'Faculty of Commerce', 1, N'Failed', 12, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (428, N'Reem Youssef', 24, N'reem.youssef@example.com', N'F', 9, N'Banha', N'Faculty of Archaeology', 1, N'Passed', 13, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (429, N'Omar Samir', 22, N'omar.samir@example.com', N'M', 9, N'Banha', N'Faculty of Arts', 1, N'Failed', 14, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (430, N'Mona Khaled', 25, N'mona.khaled@example.com', N'F', 10, N'Suez', N'Faculty of Education', 1, N'Passed', 5, 14)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (431, N'Karim Ali', 23, N'karim.ali@example.com', N'M', 10, N'Fayoum', N'Faculty of Archaeology', 1, N'Failed', 10, 14)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (432, N'Layla Nabil', 24, N'layla.nabil@example.com', N'F', 10, N'Alexandria', N'Faculty of Education', 3, N'Failed', 13, 14)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (433, N'Salma Adel', 22, N'salma.adel@example.com', N'F', 10, N'Luxor', N'Faculty of Physical Education', 1, N'Failed', 14, 14)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (434, N'Nadine Khaled', 25, N'nadine.khaled@example.com', N'F', 10, N'Sharm El Sheikh', N'Faculty of Agriculture', 1, N'Passed', 7, 19)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (435, N'Tamer Youssef', 23, N'tamer.youssef@example.com', N'M', 10, N'Kafr El Sheikh', N'Faculty of Dentistry', 3, N'Failed', 11, 19)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (436, N'Mahmoud Samir', 24, N'mahmoud.samir@example.com', N'M', 10, N'Luxor', N'Faculty of Education', 3, N'Failed', 12, 19)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (437, N'Mona Ali', 22, N'mona.ali@example.com', N'F', 10, N'Dahab', N'Faculty of Specific Education', 1, N'Failed', 14, 19)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (438, N'Omar Khaled', 25, N'omar.khaled@example.com', N'M', 10, N'Cairo', N'Faculty of Dentistry', 3, N'Passed', 8, 24)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (439, N'Reem Nabil', 23, N'reem.nabil@example.com', N'F', 10, N'Hurghada', N'Faculty of Arts', 1, N'Failed', 11, 24)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (440, N'Karim Samir', 24, N'karim.samir@example.com', N'M', 10, N'Ismailia', N'Faculty of Law', 3, N'Failed', 12, 24)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (441, N'Nada Youssef', 22, N'nada.youssef@example.com', N'F', 10, N'Banha', N'Faculty of Commerce', 2, N'Passed', 13, 24)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (442, N'Ahmed Ali', 25, N'ahmed.ali@example.com', N'M', 10, N'Tanta', N'Faculty of Arts', 2, N'Passed', 14, 24)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (443, N'Laila Khaled', 23, N'laila.khaled@example.com', N'F', 10, N'Shibin El Kom', N'Faculty of Agriculture', 2, N'Passed', 10, 29)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (444, N'Youssef Samir', 24, N'youssef.samir@example.com', N'M', 10, N'Hurghada', N'Faculty of Nursing', 2, N'Failed', 11, 29)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (445, N'Salma Nabil', 22, N'salma.nabil@example.com', N'F', 10, N'Hurghada', N'Faculty of Nursing', 2, N'Passed', 12, 29)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (446, N'Tamer Khaled', 25, N'tamer.khaled@example.com', N'M', 10, N'Mansoura', N'Faculty of Nursing', 2, N'Failed', 13, 29)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (447, N'Mahmoud Youssef', 23, N'mahmoud.youssef@example.com', N'M', 10, N'Tanta', N'Faculty of Arts', 2, N'Passed', 12, 34)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (448, N'Omar Samir', 24, N'omar.samir@example.com', N'M', 10, N'Qena', N'Faculty of Fine Arts', 2, N'Failed', 13, 34)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (449, N'Lina Ali', 22, N'lina.ali@example.com', N'F', 10, N'Damietta', N'Faculty of Fine Arts', 2, N'Passed', 10, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (450, N'Karim Nabil', 25, N'karim.nabil@example.com', N'M', 10, N'Giza', N'Faculty of Fine Arts', 2, N'Failed', 11, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (451, N'Reem Youssef', 23, N'reem.youssef@example.com', N'F', 10, N'Suez', N'Faculty of Education', 2, N'Failed', 12, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (452, N'Youssef Adel', 24, N'youssef.adel@example.com', N'M', 10, N'Luxor', N'Faculty of Agriculture', 2, N'Failed', 13, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (453, N'Mona Khaled', 22, N'mona.khaled@example.com', N'F', 10, N'Aswan', N'Faculty of Arts', 2, N'Passed', 14, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (454, N'Mahmoud Samir', 25, N'mahmoud.samir@example.com', N'M', 11, N'Zagazig', N'Faculty of Computers and Information Technology', 3, N'Passed', 13, 15)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (455, N'Nada Ali', 23, N'nada.ali@example.com', N'F', 11, N'Assiut', N'Faculty of Dentistry', 3, N'Passed', 7, 20)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (456, N'Salma Khaled', 24, N'salma.khaled@example.com', N'F', 11, N'Aswan', N'Faculty of Physical Education', 3, N'Passed', 11, 20)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (457, N'Tamer Youssef', 22, N'tamer.youssef@example.com', N'M', 11, N'Luxor', N'Faculty of Engineering', 3, N'Passed', 12, 20)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (458, N'Layla Nabil', 25, N'layla.nabil@example.com', N'F', 11, N'Alexandria', N'Faculty of Medicine', 3, N'Passed', 14, 20)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (459, N'Ahmed Samir', 23, N'ahmed.samir@example.com', N'M', 11, N'Fayoum', N'Faculty of Education', 3, N'Passed', 9, 25)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (460, N'Reem Adel', 24, N'reem.adel@example.com', N'F', 11, N'Dahab', N'Faculty of Pharmacy', 3, N'Passed', 11, 25)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (461, N'Karim Ali', 22, N'karim.ali@example.com', N'M', 11, N'Suez', N'Faculty of Dentistry', 3, N'Passed', 12, 25)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (462, N'Youssef Khaled', 25, N'youssef.khaled@example.com', N'M', 11, N'Ismailia', N'Faculty of Computers and Information Technology', 3, N'Passed', 13, 25)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (463, N'Mona Nabil', 23, N'mona.nabil@example.com', N'F', 11, N'Qena', N'Faculty of Nursing', 3, N'Passed', 10, 30)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (464, N'Nada Youssef', 24, N'nada.youssef@example.com', N'F', 11, N'Sohag', N'Faculty of Engineering', 4, N'Passed', 12, 30)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (465, N'Omar Samir', 22, N'omar.samir@example.com', N'M', 11, N'Giza', N'Faculty of Specific Education', 4, N'Passed', 13, 30)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (466, N'Mahmoud Ali', 25, N'mahmoud.ali@example.com', N'M', 11, N'Banha', N'Faculty of Agriculture', 4, N'Passed', 12, 36)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (467, N'Layla Khaled', 23, N'layla.khaled@example.com', N'F', 11, N'Fayoum', N'Faculty of Law', 4, N'Failed', 13, 36)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (468, N'Salma Nabil', 24, N'salma.nabil@example.com', N'F', 11, N'Hurghada', N'Faculty of Agriculture', 4, N'Failed', 10, 43)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (469, N'Reem Ali', 22, N'reem.ali@example.com', N'F', 11, N'Hurghada', N'Faculty of Computers and Information Technology', 4, N'Failed', 11, 43)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (470, N'Tamer Samir', 25, N'tamer.samir@example.com', N'M', 11, N'Suez', N'Faculty of Fine Arts', 4, N'Failed', 12, 43)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (471, N'Mona Youssef', 23, N'mona.youssef@example.com', N'F', 11, N'Sohag', N'Faculty of Commerce', 4, N'Failed', 13, 43)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (472, N'Omar Nabil', 24, N'omar.nabil@example.com', N'M', 11, N'Mansoura', N'Faculty of Physical Education', 4, N'Failed', 14, 43)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (473, N'Karim Ali', 22, N'karim.ali@example.com', N'M', 11, N'Asyut', N'Faculty of Science', 4, N'Failed', 10, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (474, N'Youssef Khaled', 25, N'youssef.khaled@example.com', N'M', 11, N'Beni Suef', N'Faculty of Nursing', 1, N'Failed', 11, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (475, N'Salma Samir', 23, N'salma.samir@example.com', N'F', 11, N'Aswan', N'Faculty of Commerce', 2, N'Failed', 12, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (476, N'Nadine Ali', 24, N'nadine.ali@example.com', N'F', 11, N'Faiyum', N'Faculty of Engineering', 3, N'Failed', 13, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (477, N'Ahmed Youssef', 22, N'ahmed.youssef@example.com', N'M', 11, N'Minya', N'Faculty of Computers and Artificial Intelligence', 4, N'Failed', 14, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (478, N'Omar Khaled', 25, N'omar.khaled@example.com', N'M', 12, N'Aswan', N'Faculty of Medicine', 2, N'Failed', 14, 16)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (479, N'Layla Samir', 23, N'layla.samir@example.com', N'F', 12, N'Sharm El Sheikh', N'Faculty of Pharmacy', 1, N'Failed', 8, 21)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (480, N'Reem Nabil', 24, N'reem.nabil@example.com', N'F', 12, N'Hurghada', N'Faculty of Science', 1, N'Passed', 9, 21)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (481, N'Karim Youssef', 22, N'karim.youssef@example.com', N'M', 12, N'Assiut', N'Faculty of Agriculture', 1, N'Passed', 12, 21)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (482, N'Tamer Khaled', 25, N'tamer.khaled@example.com', N'M', 12, N'Tanta', N'Faculty of Computers and Artificial Intelligence', 2, N'Passed', 13, 21)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (483, N'Mona Adel', 23, N'mona.adel@example.com', N'F', 12, N'Damietta', N'Faculty of Engineering', 1, N'Passed', 14, 21)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (484, N'Youssef Samir', 24, N'youssef.samir@example.com', N'M', 12, N'Beni Suef', N'Faculty of Fine Arts', 4, N'Passed', 9, 26)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (485, N'Karim Ali', 22, N'karim.ali@example.com', N'M', 12, N'Kafr El Sheikh', N'Faculty of Computers and Information', 1, N'Passed', 12, 26)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (486, N'Nada Khaled', 25, N'nada.khaled@example.com', N'F', 12, N'Giza', N'Faculty of Nursing', 1, N'Passed', 13, 26)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (487, N'Omar Nabil', 23, N'omar.nabil@example.com', N'M', 12, N'Sohag', N'Faculty of Physical Education', 1, N'Passed', 14, 26)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (488, N'Mona Youssef', 24, N'mona.youssef@example.com', N'F', 12, N'Hurghada', N'Faculty of Law', 1, N'Passed', 11, 31)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (489, N'Youssef Samir', 22, N'youssef.samir@example.com', N'M', 12, N'Hurghada', N'Faculty of Computers and Information', 2, N'Passed', 12, 31)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (490, N'Reem Khaled', 25, N'reem.khaled@example.com', N'F', 12, N'Fayoum', N'Faculty of Medicine', 1, N'Failed', 13, 31)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (491, N'Karim Adel', 23, N'karim.adel@example.com', N'M', 12, N'Banha', N'Faculty of Computers and Information', 1, N'Failed', 13, 37)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (492, N'Layla Nabil', 24, N'layla.nabil@example.com', N'F', 12, N'Dahab', N'Faculty of Archaeology', 2, N'Failed', 10, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (493, N'Ahmed Samir', 22, N'ahmed.samir@example.com', N'M', 12, N'Hurghada', N'Faculty of Specific Education', 4, N'Failed', 11, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (494, N'Salma Youssef', 25, N'salma.youssef@example.com', N'F', 12, N'Kafr El Sheikh', N'Faculty of Commerce', 2, N'Failed', 12, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (495, N'Tamer Ali', 23, N'tamer.ali@example.com', N'M', 12, N'Ismailia', N'Faculty of Engineering', 2, N'Failed', 13, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (496, N'Karim Nabil', 24, N'karim.nabil@example.com', N'M', 12, N'Dahab', N'Faculty of Dentistry', 2, N'Failed', 14, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (497, N'Mona Khaled', 22, N'mona.khaled@example.com', N'F', 13, N'Qena', N'Faculty of Computers and Artificial Intelligence', 2, N'Failed', 11, 17)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (498, N'Youssef Youssef', 25, N'youssef.youssef@example.com', N'M', 13, N'Giza', N'Faculty of Arts', 2, N'Failed', 13, 17)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (499, N'Nada Samir', 23, N'nada.samir@example.com', N'F', 13, N'Asyut', N'Faculty of Pharmacy', 2, N'Failed', 8, 22)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (500, N'Omar Adel', 24, N'omar.adel@example.com', N'M', 13, N'Zagazig', N'Faculty of Pharmacy', 4, N'Passed', 9, 22)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (501, N'Reem Khaled', 22, N'reem.khaled@example.com', N'F', 13, N'Mansoura', N'Faculty of Computers and Information', 1, N'Failed', 12, 22)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (502, N'Karim Ali', 25, N'karim.ali@example.com', N'M', 13, N'Aswan', N'Faculty of Specific Education', 2, N'Passed', 13, 22)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (503, N'Mona Nabil', 23, N'mona.nabil@example.com', N'F', 13, N'Giza', N'Faculty of Commerce', 1, N'Passed', 14, 22)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (504, N'Ahmed Youssef', 24, N'ahmed.youssef@example.com', N'M', 13, N'Mansoura', N'Faculty of Agriculture', 1, N'Failed', 10, 27)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (505, N'Salma Samir', 22, N'salma.samir@example.com', N'F', 13, N'Asyut', N'Faculty of Law', 2, N'Passed', 11, 27)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (506, N'Layla Khaled', 25, N'layla.khaled@example.com', N'F', 13, N'Damanhur', N'Faculty of Commerce', 4, N'Passed', 12, 27)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (507, N'Tamer Nabil', 23, N'tamer.nabil@example.com', N'M', 13, N'Suez', N'Faculty of Pharmacy', 3, N'Passed', 13, 27)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (508, N'Omar Samir', 24, N'omar.samir@example.com', N'M', 13, N'Mansoura', N'Faculty of Science', 3, N'Passed', 11, 32)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (509, N'Karim Youssef', 22, N'karim.youssef@example.com', N'M', 13, N'Mansoura', N'Faculty of Agriculture', 3, N'Passed', 12, 32)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (510, N'Nada Ali', 25, N'nada.ali@example.com', N'F', 13, N'Sohag', N'Faculty of Computers and Information Technology', 3, N'Failed', 13, 32)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (511, N'Ahmed Khaled', 23, N'ahmed.khaled@example.com', N'M', 13, N'Qena', N'Faculty of Medicine', 3, N'Passed', 10, 43)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (512, N'Reem Nabil', 24, N'reem.nabil@example.com', N'F', 13, N'Luxor', N'Faculty of Archaeology', 3, N'Passed', 11, 43)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (513, N'Salma Youssef', 22, N'salma.youssef@example.com', N'F', 13, N'Asyut', N'Faculty of Fine Arts', 3, N'Passed', 12, 43)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (514, N'Youssef Samir', 25, N'youssef.samir@example.com', N'M', 13, N'Aswan', N'Faculty of Engineering', 3, N'Passed', 13, 43)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (515, N'Karim Ali', 23, N'karim.ali@example.com', N'M', 13, N'Sharm El Sheikh', N'Faculty of Computers and Information', 3, N'Failed', 14, 43)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (516, N'Omar Adel', 24, N'omar.adel@example.com', N'M', 14, N'Beni Suef', N'Faculty of Computers and Artificial Intelligence', 4, N'Passed', 8, 23)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (517, N'Mona Khaled', 22, N'mona.khaled@example.com', N'F', 14, N'Aswan', N'Faculty of Physical Education', 4, N'Passed', 9, 23)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (518, N'Layla Youssef', 25, N'layla.youssef@example.com', N'F', 14, N'Sharm El Sheikh', N'Faculty of Engineering', 4, N'Failed', 10, 23)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (519, N'Reem Samir', 23, N'reem.samir@example.com', N'F', 14, N'Luxor', N'Faculty of Nursing', 4, N'Failed', 11, 23)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (520, N'Ahmed Ali', 24, N'ahmed.ali@example.com', N'M', 14, N'Sohag', N'Faculty of Engineering', 4, N'Failed', 13, 23)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (521, N'Omar Khaled', 22, N'omar.khaled@example.com', N'M', 14, N'Kafr El Sheikh', N'Faculty of Pharmacy', 4, N'Failed', 10, 28)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (522, N'Salma Youssef', 25, N'salma.youssef@example.com', N'F', 14, N'Zagazig', N'Faculty of Archaeology', 4, N'Failed', 11, 28)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (523, N'Karim Samir', 23, N'karim.samir@example.com', N'M', 14, N'Damanhur', N'Faculty of Computers and Artificial Intelligence', 4, N'Failed', 12, 28)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (524, N'Nada Nabil', 24, N'nada.nabil@example.com', N'F', 14, N'Cairo', N'Faculty of Computers and Information Technology', 4, N'Failed', 13, 28)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (525, N'Tamer Adel', 22, N'tamer.adel@example.com', N'M', 14, N'Damietta', N'Faculty of Specific Education', 1, N'Failed', 10, 33)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (526, N'Laila Khaled', 25, N'laila.khaled@example.com', N'F', 14, N'Faiyum', N'Faculty of Archaeology', 1, N'Failed', 11, 33)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (527, N'Mona Samir', 23, N'mona.samir@example.com', N'F', 14, N'Asyut', N'Faculty of Archaeology', 1, N'Passed', 12, 33)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (528, N'Youssef Nabil', 24, N'youssef.nabil@example.com', N'M', 14, N'Aswan', N'Faculty of Science', 1, N'Failed', 13, 33)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (529, N'Omar Khaled', 22, N'omar.khaled@example.com', N'M', 15, N'Mansoura', N'Faculty of Engineering', 1, N'Passed', 14, 19)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (530, N'Karim Youssef', 25, N'karim.youssef@example.com', N'M', 15, N'Suez', N'Faculty of Science', 1, N'Passed', 8, 24)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (531, N'Reem Ali', 23, N'reem.ali@example.com', N'F', 15, N'Shibin El Kom', N'Faculty of Nursing', 1, N'Failed', 11, 24)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (532, N'Layla Samir', 24, N'layla.samir@example.com', N'F', 15, N'Aswan', N'Faculty of Engineering', 1, N'Failed', 12, 24)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (533, N'Ahmed Khaled', 22, N'ahmed.khaled@example.com', N'M', 15, N'Ismailia', N'Faculty of Dentistry', 1, N'Failed', 13, 24)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (534, N'Nada Youssef', 25, N'nada.youssef@example.com', N'F', 15, N'Tanta', N'Faculty of Dentistry', 2, N'Passed', 14, 24)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (535, N'Salma Adel', 23, N'salma.adel@example.com', N'F', 15, N'Kafr El Sheikh', N'Faculty of Archaeology', 2, N'Passed', 10, 29)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (536, N'Youssef Nabil', 24, N'youssef.nabil@example.com', N'M', 15, N'Aswan', N'Faculty of Fine Arts', 2, N'Passed', 11, 29)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (537, N'Karim Samir', 22, N'karim.samir@example.com', N'M', 15, N'Qena', N'Faculty of Commerce', 2, N'Passed', 12, 29)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (538, N'Mona Ali', 25, N'mona.ali@example.com', N'F', 15, N'Mansoura', N'Faculty of Computers and Information Technology', 3, N'Passed', 13, 29)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (539, N'Omar Khaled', 23, N'omar.khaled@example.com', N'M', 15, N'Luxor', N'Faculty of Physical Education', 3, N'Passed', 12, 34)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (540, N'Lina Nabil', 24, N'lina.nabil@example.com', N'F', 15, N'Cairo', N'Faculty of Arts', 3, N'Passed', 13, 34)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (541, N'Salma Youssef', 22, N'salma.youssef@example.com', N'F', 15, N'Ismailia', N'Faculty of Nursing', 3, N'Passed', 14, 40)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (542, N'Karim Ali', 25, N'karim.ali@example.com', N'M', 15, N'Fayoum', N'Faculty of Physical Education', 3, N'Failed', 10, 41)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (543, N'Reem Samir', 23, N'reem.samir@example.com', N'F', 15, N'Alexandria', N'Faculty of Pharmacy', 3, N'Failed', 11, 41)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (544, N'Nada Khaled', 24, N'nada.khaled@example.com', N'F', 15, N'Qena', N'Faculty of Engineering', 3, N'Failed', 12, 41)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (545, N'Youssef Ali', 22, N'youssef.ali@example.com', N'M', 15, N'Sohag', N'Faculty of Medicine', 4, N'Failed', 13, 41)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (546, N'Omar Khaled', 25, N'omar.khaled@example.com', N'M', 15, N'Mahalla El Kubra', N'Faculty of Science', 4, N'Failed', 14, 41)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (547, N'Salma Samir', 23, N'salma.samir@example.com', N'F', 15, N'Minya', N'Faculty of Agriculture', 4, N'Failed', 10, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (548, N'Lina Ali', 24, N'lina.ali@example.com', N'F', 15, N'Tanta', N'Faculty of Computers and Information Technology', 4, N'Failed', 11, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (549, N'Ahmed Nabil', 22, N'ahmed.nabil@example.com', N'M', 15, N'Qena', N'Faculty of Engineering', 4, N'Failed', 12, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (550, N'Karim Khaled', 25, N'karim.khaled@example.com', N'M', 15, N'Ismailia', N'Faculty of Law', 4, N'Failed', 13, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (551, N'Reem Adel', 23, N'reem.adel@example.com', N'F', 15, N'Damanhur', N'Faculty of Education', 4, N'Passed', 14, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (552, N'Nada Youssef', 24, N'nada.youssef@example.com', N'F', 16, N'Minya', N'Faculty of Computers and Information', 4, N'Passed', 12, 20)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (553, N'Omar Samir', 22, N'omar.samir@example.com', N'M', 16, N'Tanta', N'Faculty of Computers and Information Technology', 4, N'Passed', 14, 20)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (554, N'Youssef Khaled', 25, N'youssef.khaled@example.com', N'M', 16, N'Ismailia', N'Faculty of Medicine', 1, N'Passed', 9, 25)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (555, N'Lina Samir', 23, N'lina.samir@example.com', N'F', 16, N'Alexandria', N'Faculty of Agriculture', 1, N'Passed', 11, 25)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (556, N'Karim Ali', 24, N'karim.ali@example.com', N'M', 16, N'Damietta', N'Faculty of Arts', 1, N'Passed', 12, 25)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (557, N'Salma Nabil', 22, N'salma.nabil@example.com', N'F', 16, N'Banha', N'Faculty of Computers and Artificial Intelligence', 1, N'Passed', 13, 25)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (558, N'Ahmed Khaled', 25, N'ahmed.khaled@example.com', N'M', 16, N'Giza', N'Faculty of Science', 2, N'Passed', 10, 30)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (559, N'Nada Adel', 23, N'nada.adel@example.com', N'F', 16, N'Beni Suef', N'Faculty of Engineering', 2, N'Passed', 12, 30)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (560, N'Tamer Samir', 24, N'tamer.samir@example.com', N'M', 16, N'Sohag', N'Faculty of Computers and Information', 2, N'Failed', 13, 30)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (561, N'Reem Khaled', 22, N'reem.khaled@example.com', N'F', 16, N'Luxor', N'Faculty of Dentistry', 2, N'Failed', 12, 35)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (562, N'Lina Ali', 25, N'lina.ali@example.com', N'F', 16, N'Giza', N'Faculty of Engineering', 2, N'Failed', 13, 35)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (563, N'Karim Nabil', 23, N'karim.nabil@example.com', N'M', 16, N'Zagazig', N'Faculty of Medicine', 4, N'Failed', 10, 41)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (564, N'Youssef Samir', 24, N'youssef.samir@example.com', N'M', 16, N'Mahalla El Kubra', N'Faculty of Computers and Artificial Intelligence', 1, N'Passed', 11, 41)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (565, N'Omar Khaled', 22, N'omar.khaled@example.com', N'M', 16, N'Mansoura', N'Faculty of Science', 3, N'Passed', 12, 41)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (566, N'Nada Nabil', 25, N'nada.nabil@example.com', N'F', 16, N'Shibin El Kom', N'Faculty of Engineering', 3, N'Passed', 13, 41)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (567, N'Salma Youssef', 23, N'salma.youssef@example.com', N'F', 16, N'Zagazig', N'Faculty of Commerce', 3, N'Passed', 14, 41)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (568, N'Layla Adel', 24, N'layla.adel@example.com', N'F', 16, N'Aswan', N'Faculty of Law', 3, N'Passed', 10, 42)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (569, N'Tamer Samir', 22, N'tamer.samir@example.com', N'M', 16, N'Qena', N'Faculty of Specific Education', 3, N'Passed', 11, 42)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (570, N'Reem Nabil', 25, N'reem.nabil@example.com', N'F', 16, N'Cairo', N'Faculty of Physical Education', 3, N'Passed', 12, 42)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (571, N'Karim Khaled', 23, N'karim.khaled@example.com', N'M', 16, N'Alexandria', N'Faculty of Engineering', 4, N'Failed', 13, 42)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (572, N'Omar Samir', 24, N'omar.samir@example.com', N'M', 16, N'Minya', N'Faculty of Archaeology', 4, N'Failed', 14, 42)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (573, N'Lina Ali', 22, N'lina.ali@example.com', N'F', 16, N'Sharm El Sheikh', N'Faculty of Education', 1, N'Failed', 10, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (574, N'Ahmed Youssef', 25, N'ahmed.youssef@example.com', N'M', 16, N'Aswan', N'Faculty of Agriculture', 1, N'Failed', 11, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (575, N'Nada Samir', 23, N'nada.samir@example.com', N'F', 16, N'Cairo', N'Faculty of Commerce', 2, N'Failed', 12, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (576, N'Karim Nabil', 24, N'karim.nabil@example.com', N'M', 16, N'Tanta', N'Faculty of Dentistry', 2, N'Failed', 13, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (577, N'Salma Khaled', 22, N'salma.khaled@example.com', N'F', 16, N'Aswan', N'Faculty of Science', 2, N'Failed', 14, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (578, N'Lina Youssef', 25, N'lina.youssef@example.com', N'F', 17, N'Assiut', N'Faculty of Engineering', 2, N'Failed', 11, 17)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (579, N'Youssef Ali', 23, N'youssef.ali@example.com', N'M', 17, N'Mansoura', N'Faculty of Fine Arts', 3, N'Failed', 13, 17)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (580, N'Nada Nabil', 24, N'nada.nabil@example.com', N'F', 17, N'Zagazig', N'Faculty of Law', 3, N'Passed', 8, 21)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (581, N'Ahmed Samir', 22, N'ahmed.samir@example.com', N'M', 17, N'Giza', N'Faculty of Computers and Information', 3, N'Passed', 9, 21)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (582, N'Lina Adel', 25, N'lina.adel@example.com', N'F', 17, N'Alexandria', N'Faculty of Computers and Information Technology', 3, N'Passed', 12, 21)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (583, N'Karim Khaled', 23, N'karim.khaled@example.com', N'M', 17, N'Suez', N'Faculty of Engineering', 3, N'Passed', 13, 21)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (584, N'Reem Samir', 24, N'reem.samir@example.com', N'F', 17, N'Luxor', N'Faculty of Specific Education', 3, N'Failed', 14, 21)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (585, N'Omar Ali', 22, N'omar.ali@example.com', N'M', 17, N'Mahalla El Kubra', N'Faculty of Education', 3, N'Failed', 9, 26)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (586, N'Nada Youssef', 25, N'nada.youssef@example.com', N'F', 17, N'Giza', N'Faculty of Arts', 4, N'Failed', 12, 26)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (587, N'Karim Nabil', 23, N'karim.nabil@example.com', N'M', 17, N'Dahab', N'Faculty of Physical Education', 4, N'Passed', 13, 26)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (588, N'Salma Khaled', 22, N'salma.khaled@example.com', N'F', 17, N'Kafr El Sheikh', N'Faculty of Computers and Information Technology', 4, N'Failed', 14, 26)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (589, N'Tamer Ali', 25, N'tamer.ali@example.com', N'M', 17, N'Faiyum', N'Faculty of Law', 3, N'Failed', 11, 31)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (590, N'Layla Samir', 23, N'layla.samir@example.com', N'F', 17, N'Kafr El Sheikh', N'Faculty of Education', 4, N'Passed', 12, 31)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (591, N'Omar Khaled', 24, N'omar.khaled@example.com', N'M', 17, N'Mansoura', N'Faculty of Medicine', 1, N'Passed', 13, 31)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (592, N'Reem Youssef', 22, N'reem.youssef@example.com', N'F', 17, N'Asyut', N'Faculty of Engineering', 1, N'Passed', 12, 36)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (593, N'Karim Samir', 25, N'karim.samir@example.com', N'M', 17, N'Luxor', N'Faculty of Pharmacy', 4, N'Passed', 11, 42)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (594, N'Nada Nabil', 23, N'nada.nabil@example.com', N'F', 17, N'Assiut', N'Faculty of Nursing', 1, N'Passed', 12, 42)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (595, N'Ahmed Khaled', 24, N'ahmed.khaled@example.com', N'M', 17, N'Damanhur', N'Faculty of Science', 3, N'Passed', 13, 42)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (596, N'Lina Youssef', 22, N'lina.youssef@example.com', N'F', 17, N'Aswan', N'Faculty of Archaeology', 4, N'Passed', 14, 42)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (597, N'Salma Samir', 25, N'salma.samir@example.com', N'F', 17, N'Cairo', N'Faculty of Fine Arts', 1, N'Failed', 10, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (598, N'Karim Ali', 23, N'karim.ali@example.com', N'M', 17, N'Banha', N'Faculty of Physical Education', 4, N'Failed', 11, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (599, N'Omar Nabil', 24, N'omar.nabil@example.com', N'M', 17, N'Sharm El Sheikh', N'Faculty of Commerce', 1, N'Passed', 12, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (600, N'Reem Khaled', 22, N'reem.khaled@example.com', N'F', 17, N'Kafr El Sheikh', N'Faculty of Fine Arts', 4, N'Passed', 13, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (601, N'Tamer Youssef', 22, N'tamer.youssef@example.com', N'M', 17, N'Cairo', N'Faculty of Engineering', 3, N'Failed', 14, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (602, N'Nada Adel', 23, N'nada.adel@example.com', N'F', 18, N'Tanta', N'Faculty of Computers and Artificial Intelligence', 4, N'Failed', 14, 22)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (603, N'Omar Nabil', 24, N'omar.nabil@example.com', N'M', 18, N'Zagazig', N'Faculty of Engineering', 1, N'Passed', 10, 27)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (604, N'Reem Khaled', 25, N'reem.khaled@example.com', N'F', 18, N'Mansoura', N'Faculty of Computers and Information', 1, N'Passed', 11, 27)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (605, N'Layla Samir', 22, N'layla.samir@example.com', N'F', 18, N'Suez', N'Faculty of Computers and Information', 4, N'Failed', 12, 27)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (606, N'Karim Youssef', 23, N'karim.youssef@example.com', N'M', 18, N'Ismailia', N'Faculty of Specific Education', 1, N'Passed', 13, 27)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (607, N'Ahmed Khaled', 24, N'ahmed.khaled@example.com', N'M', 18, N'Zagazig', N'Faculty of Pharmacy', 3, N'Passed', 11, 32)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (608, N'Mona Samir', 25, N'mona.samir@example.com', N'F', 18, N'Shibin El Kom', N'Faculty of Dentistry', 4, N'Failed', 12, 32)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (609, N'Salma Adel', 22, N'salma.adel@example.com', N'F', 18, N'Cairo', N'Faculty of Law', 1, N'Passed', 13, 32)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (610, N'Tamer Nabil', 23, N'tamer.nabil@example.com', N'M', 18, N'Aswan', N'Faculty of Pharmacy', 4, N'Failed', 13, 37)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (611, N'Lina Khaled', 24, N'lina.khaled@example.com', N'F', 18, N'Faiyum', N'Faculty of Science', 1, N'Passed', 10, 43)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (612, N'Omar Ali', 25, N'omar.ali@example.com', N'M', 18, N'Giza', N'Faculty of Computers and Artificial Intelligence', 4, N'Failed', 11, 43)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (613, N'Reem Youssef', 22, N'reem.youssef@example.com', N'F', 18, N'Banha', N'Faculty of Law', 2, N'Failed', 12, 43)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (614, N'Karim Nabil', 23, N'karim.nabil@example.com', N'M', 18, N'Sohag', N'Faculty of Specific Education', 2, N'Failed', 13, 43)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (615, N'Nada Samir', 24, N'nada.samir@example.com', N'F', 18, N'Alexandria', N'Faculty of Medicine', 3, N'Passed', 14, 43)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (616, N'Ahmed Youssef', 25, N'ahmed.youssef@example.com', N'M', 18, N'Giza', N'Faculty of Commerce', 3, N'Passed', 10, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (617, N'Lina Adel', 22, N'lina.adel@example.com', N'F', 18, N'Mahalla El Kubra', N'Faculty of Commerce', 2, N'Failed', 11, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (618, N'Salma Nabil', 23, N'salma.nabil@example.com', N'F', 18, N'Banha', N'Faculty of Archaeology', 3, N'Passed', 12, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (619, N'Tamer Samir', 24, N'tamer.samir@example.com', N'M', 18, N'Banha', N'Faculty of Arts', 4, N'Failed', 13, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (620, N'Omar Youssef', 25, N'omar.youssef@example.com', N'M', 18, N'Suez', N'Faculty of Education', 3, N'Passed', 14, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (621, N'Reem Khaled', 22, N'reem.khaled@example.com', N'F', 19, N'Fayoum', N'Faculty of Archaeology', 2, N'Failed', 11, 23)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (622, N'Layla Adel', 23, N'layla.adel@example.com', N'F', 19, N'Alexandria', N'Faculty of Education', 2, N'Failed', 13, 23)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (623, N'Karim Ali', 24, N'karim.ali@example.com', N'M', 19, N'Luxor', N'Faculty of Physical Education', 4, N'Failed', 10, 28)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (624, N'Nada Youssef', 25, N'nada.youssef@example.com', N'F', 19, N'Sharm El Sheikh', N'Faculty of Agriculture', 3, N'Passed', 11, 28)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (625, N'Ahmed Samir', 22, N'ahmed.samir@example.com', N'M', 19, N'Kafr El Sheikh', N'Faculty of Dentistry', 2, N'Failed', 12, 28)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (626, N'Lina Khaled', 23, N'lina.khaled@example.com', N'F', 19, N'Luxor', N'Faculty of Education', 4, N'Failed', 13, 28)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (627, N'Salma Samir', 24, N'salma.samir@example.com', N'F', 19, N'Dahab', N'Faculty of Specific Education', 4, N'Failed', 10, 33)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (628, N'Tamer Nabil', 25, N'tamer.nabil@example.com', N'M', 19, N'Cairo', N'Faculty of Dentistry', 1, N'Passed', 11, 33)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (629, N'Omar Adel', 22, N'omar.adel@example.com', N'M', 19, N'Hurghada', N'Faculty of Arts', 4, N'Failed', 12, 33)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (630, N'Reem Youssef', 23, N'reem.youssef@example.com', N'F', 19, N'Ismailia', N'Faculty of Law', 4, N'Failed', 13, 33)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (631, N'Karim Khaled', 24, N'karim.khaled@example.com', N'M', 19, N'Banha', N'Faculty of Commerce', 1, N'Passed', 13, 38)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (632, N'Nada Ali', 25, N'nada.ali@example.com', N'F', 19, N'Tanta', N'Faculty of Arts', 1, N'Passed', 10, 43)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (633, N'Ahmed Youssef', 22, N'ahmed.youssef@example.com', N'M', 19, N'Shibin El Kom', N'Faculty of Agriculture', 2, N'Passed', 11, 43)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (634, N'Layla Samir', 23, N'layla.samir@example.com', N'F', 19, N'Hurghada', N'Faculty of Nursing', 2, N'Failed', 12, 43)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (635, N'Salma Nabil', 24, N'salma.nabil@example.com', N'F', 19, N'Hurghada', N'Faculty of Nursing', 1, N'Passed', 13, 43)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (636, N'Tamer Khaled', 25, N'tamer.khaled@example.com', N'M', 19, N'Mansoura', N'Faculty of Nursing', 4, N'Failed', 14, 43)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (637, N'Omar Youssef', 22, N'omar.youssef@example.com', N'M', 20, N'Tanta', N'Faculty of Arts', 2, N'Passed', 11, 10)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (638, N'Reem Ali', 23, N'reem.ali@example.com', N'F', 20, N'Qena', N'Faculty of Fine Arts', 2, N'Failed', 14, 10)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (639, N'Karim Samir', 24, N'karim.samir@example.com', N'M', 20, N'Damietta', N'Faculty of Fine Arts', 1, N'Passed', 7, 20)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (640, N'Nada Adel', 25, N'nada.adel@example.com', N'F', 20, N'Giza', N'Faculty of Fine Arts', 4, N'Failed', 11, 20)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (641, N'Ahmed Nabil', 22, N'ahmed.nabil@example.com', N'M', 20, N'Suez', N'Faculty of Education', 2, N'Failed', 12, 20)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (642, N'Lina Youssef', 23, N'lina.youssef@example.com', N'F', 20, N'Luxor', N'Faculty of Agriculture', 4, N'Failed', 14, 20)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (643, N'Salma Khaled', 24, N'salma.khaled@example.com', N'F', 20, N'Aswan', N'Faculty of Arts', 1, N'Passed', 8, 24)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (644, N'Tamer Adel', 25, N'tamer.adel@example.com', N'M', 20, N'Zagazig', N'Faculty of Computers and Information Technology', 1, N'Passed', 11, 24)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (645, N'Omar Samir', 22, N'omar.samir@example.com', N'M', 20, N'Assiut', N'Faculty of Dentistry', 1, N'Passed', 12, 24)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (646, N'Reem Khaled', 23, N'reem.khaled@example.com', N'F', 20, N'Aswan', N'Faculty of Physical Education', 1, N'Passed', 13, 24)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (647, N'Karim Youssef', 24, N'karim.youssef@example.com', N'M', 20, N'Luxor', N'Faculty of Engineering', 1, N'Passed', 14, 24)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (648, N'Nada Samir', 25, N'nada.samir@example.com', N'F', 20, N'Alexandria', N'Faculty of Medicine', 3, N'Passed', 10, 29)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (649, N'Ahmed Ali', 22, N'ahmed.ali@example.com', N'M', 20, N'Fayoum', N'Faculty of Education', 1, N'Passed', 11, 29)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (650, N'Lina Adel', 23, N'lina.adel@example.com', N'F', 20, N'Dahab', N'Faculty of Pharmacy', 1, N'Passed', 12, 29)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (651, N'Salma Samir', 24, N'salma.samir@example.com', N'F', 20, N'Suez', N'Faculty of Dentistry', 3, N'Passed', 13, 29)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (652, N'Tamer Youssef', 25, N'tamer.youssef@example.com', N'M', 20, N'Ismailia', N'Faculty of Computers and Information Technology', 3, N'Passed', 12, 34)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (653, N'Omar Nabil', 22, N'omar.nabil@example.com', N'M', 20, N'Qena', N'Faculty of Nursing', 1, N'Passed', 13, 34)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (654, N'Reem Youssef', 23, N'reem.youssef@example.com', N'F', 20, N'Sohag', N'Faculty of Engineering', 3, N'Passed', 13, 39)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (655, N'Karim Khaled', 24, N'karim.khaled@example.com', N'M', 20, N'Giza', N'Faculty of Specific Education', 1, N'Passed', 10, 42)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (656, N'Nada Adel', 25, N'nada.adel@example.com', N'F', 20, N'Banha', N'Faculty of Agriculture', 3, N'Passed', 11, 42)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (657, N'Ahmed Youssef', 22, N'ahmed.youssef@example.com', N'M', 20, N'Fayoum', N'Faculty of Law', 2, N'Failed', 12, 42)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (658, N'Lina Samir', 23, N'lina.samir@example.com', N'F', 20, N'Hurghada', N'Faculty of Agriculture', 2, N'Failed', 13, 42)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (659, N'Salma Nabil', 24, N'salma.nabil@example.com', N'F', 20, N'Hurghada', N'Faculty of Computers and Information Technology', 2, N'Failed', 14, 42)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (660, N'Tamer Khaled', 25, N'tamer.khaled@example.com', N'M', 20, N'Suez', N'Faculty of Fine Arts', 2, N'Failed', 10, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (661, N'Omar Youssef', 22, N'omar.youssef@example.com', N'M', 20, N'Sohag', N'Faculty of Commerce', 2, N'Failed', 11, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (662, N'Reem Ali', 23, N'reem.ali@example.com', N'F', 20, N'Mansoura', N'Faculty of Physical Education', 2, N'Failed', 12, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (663, N'Karim Samir', 24, N'karim.samir@example.com', N'M', 20, N'Asyut', N'Faculty of Science', 2, N'Failed', 13, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (664, N'Nada Youssef', 25, N'nada.youssef@example.com', N'F', 20, N'Beni Suef', N'Faculty of Nursing', 2, N'Failed', 14, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (665, N'Ahmed Adel', 22, N'ahmed.adel@example.com', N'M', 20, N'Aswan', N'Faculty of Commerce', 2, N'Failed', 10, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (666, N'Layla Samir', 23, N'layla.samir@example.com', N'F', 20, N'Faiyum', N'Faculty of Engineering', 2, N'Failed', 11, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (667, N'Salma Khaled', 24, N'salma.khaled@example.com', N'F', 20, N'Minya', N'Faculty of Computers and Artificial Intelligence', 2, N'Failed', 12, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (668, N'Tamer Nabil', 25, N'tamer.nabil@example.com', N'M', 20, N'Aswan', N'Faculty of Medicine', 2, N'Failed', 13, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (669, N'Omar Adel', 22, N'omar.adel@example.com', N'M', 20, N'Sharm El Sheikh', N'Faculty of Pharmacy', 2, N'Failed', 14, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (670, N'Reem Youssef', 23, N'reem.youssef@example.com', N'F', 21, N'Hurghada', N'Faculty of Science', 3, N'Passed', 13, 25)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (671, N'Karim Khaled', 24, N'karim.khaled@example.com', N'M', 21, N'Assiut', N'Faculty of Agriculture', 3, N'Passed', 10, 30)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (672, N'Nada Ali', 25, N'nada.ali@example.com', N'F', 21, N'Tanta', N'Faculty of Computers and Artificial Intelligence', 3, N'Passed', 12, 30)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (673, N'Ahmed Samir', 22, N'ahmed.samir@example.com', N'M', 21, N'Damietta', N'Faculty of Engineering', 3, N'Passed', 13, 30)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (674, N'Lina Adel', 23, N'lina.adel@example.com', N'F', 21, N'Beni Suef', N'Faculty of Fine Arts', 3, N'Passed', 12, 35)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (675, N'Salma Samir', 24, N'salma.samir@example.com', N'F', 21, N'Kafr El Sheikh', N'Faculty of Computers and Information', 3, N'Passed', 13, 35)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (676, N'Tamer Youssef', 25, N'tamer.youssef@example.com', N'M', 21, N'Giza', N'Faculty of Nursing', 3, N'Passed', 14, 40)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (677, N'Omar Nabil', 22, N'omar.nabil@example.com', N'M', 22, N'Sohag', N'Faculty of Physical Education', 3, N'Passed', 13, 22)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (678, N'Reem Khaled', 23, N'reem.khaled@example.com', N'F', 22, N'Hurghada', N'Faculty of Law', 3, N'Passed', 14, 22)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (679, N'Karim Youssef', 24, N'karim.youssef@example.com', N'M', 22, N'Hurghada', N'Faculty of Computers and Information', 3, N'Passed', 9, 26)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (680, N'Nada Adel', 25, N'nada.adel@example.com', N'F', 22, N'Fayoum', N'Faculty of Medicine', 4, N'Failed', 12, 26)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (681, N'Ahmed Nabil', 22, N'ahmed.nabil@example.com', N'M', 22, N'Banha', N'Faculty of Computers and Information', 4, N'Failed', 13, 26)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (682, N'Lina Youssef', 23, N'lina.youssef@example.com', N'F', 22, N'Dahab', N'Faculty of Archaeology', 4, N'Failed', 14, 26)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (683, N'Salma Khaled', 24, N'salma.khaled@example.com', N'F', 22, N'Hurghada', N'Faculty of Specific Education', 4, N'Failed', 11, 41)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (684, N'Tamer Adel', 25, N'tamer.adel@example.com', N'M', 22, N'Kafr El Sheikh', N'Faculty of Commerce', 4, N'Failed', 12, 41)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (685, N'Omar Samir', 22, N'omar.samir@example.com', N'M', 22, N'Ismailia', N'Faculty of Engineering', 4, N'Failed', 13, 41)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (686, N'Reem Ali', 23, N'reem.ali@example.com', N'F', 22, N'Dahab', N'Faculty of Dentistry', 4, N'Failed', 14, 41)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (687, N'Karim Youssef', 24, N'karim.youssef@example.com', N'M', 22, N'Qena', N'Faculty of Computers and Artificial Intelligence', 4, N'Failed', 10, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (688, N'Nourhan Ali', 30, N'nourhan.ali@example.com', N'F', 22, N'Giza', N'Faculty of Arts', 4, N'Failed', 11, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (689, N'Fady Ibrahim', 22, N'fady.ibrahim@example.com', N'M', 22, N'Asyut', N'Faculty of Pharmacy', 4, N'Failed', 12, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (690, N'Mona Hassan', 23, N'mona.hassan@example.com', N'F', 22, N'Zagazig', N'Faculty of Pharmacy', 1, N'Passed', 13, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (691, N'Youssef Ahmed', 24, N'youssef.ahmed@example.com', N'M', 22, N'Mansoura', N'Faculty of Computers and Information', 2, N'Failed', 14, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (692, N'Dalia Ahmed', 25, N'dalia.ahmed@example.com', N'F', 23, N'Aswan', N'Faculty of Specific Education', 3, N'Passed', 11, 23)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (693, N'Omar Tamer', 27, N'omar.tamer@example.com', N'M', 23, N'Giza', N'Faculty of Commerce', 4, N'Passed', 13, 23)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (694, N'Fatima Youssef', 28, N'fatima.youssef@example.com', N'F', 23, N'Mansoura', N'Faculty of Agriculture', 2, N'Failed', 10, 27)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (695, N'Hassan Ali', 22, N'hassan.ali@example.com', N'M', 23, N'Asyut', N'Faculty of Law', 1, N'Passed', 11, 27)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (696, N'Sarah Samir', 23, N'sarah.samir@example.com', N'F', 23, N'Damanhur', N'Faculty of Commerce', 1, N'Passed', 12, 27)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (697, N'Ibrahim Nabil', 24, N'ibrahim.nabil@example.com', N'M', 23, N'Suez', N'Faculty of Pharmacy', 1, N'Passed', 13, 27)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (698, N'Amani Khaled', 25, N'amani.khaled@example.com', N'F', 23, N'Mansoura', N'Faculty of Science', 2, N'Passed', 11, 32)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (699, N'Mohamed Adel', 25, N'mohamed.adel@example.com', N'M', 23, N'Mansoura', N'Faculty of Agriculture', 1, N'Passed', 12, 32)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (700, N'Nadia Youssef', 28, N'nadia.youssef@example.com', N'F', 23, N'Sohag', N'Faculty of Computers and Information Technology', 4, N'Failed', 13, 32)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (701, N'Omar Adel', 22, N'omar.adel@example.com', N'M', 23, N'Qena', N'Faculty of Medicine', 1, N'Passed', 13, 37)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (702, N'Reem Khaled', 23, N'reem.khaled@example.com', N'F', 23, N'Luxor', N'Faculty of Archaeology', 1, N'Passed', 10, 43)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (703, N'Karim Samir', 24, N'karim.samir@example.com', N'M', 23, N'Asyut', N'Faculty of Fine Arts', 1, N'Passed', 11, 43)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (704, N'Nada Youssef', 25, N'nada.youssef@example.com', N'F', 23, N'Aswan', N'Faculty of Engineering', 1, N'Passed', 12, 43)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (705, N'Ahmed Ali', 22, N'ahmed.ali@example.com', N'M', 23, N'Sharm El Sheikh', N'Faculty of Computers and Information', 2, N'Failed', 13, 43)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (706, N'Lina Adel', 23, N'lina.adel@example.com', N'F', 23, N'Beni Suef', N'Faculty of Computers and Artificial Intelligence', 1, N'Passed', 14, 43)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (707, N'Salma Samir', 24, N'salma.samir@example.com', N'F', 23, N'Aswan', N'Faculty of Physical Education', 1, N'Passed', 10, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (708, N'Tamer Khaled', 25, N'tamer.khaled@example.com', N'M', 23, N'Sharm El Sheikh', N'Faculty of Engineering', 2, N'Failed', 11, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (709, N'Omar Youssef', 22, N'omar.youssef@example.com', N'M', 23, N'Luxor', N'Faculty of Nursing', 4, N'Failed', 12, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (710, N'Reem Ali', 23, N'reem.ali@example.com', N'F', 23, N'Sohag', N'Faculty of Engineering', 2, N'Failed', 13, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (711, N'Karim Adel', 24, N'karim.adel@example.com', N'M', 23, N'Kafr El Sheikh', N'Faculty of Pharmacy', 2, N'Failed', 14, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (712, N'Nada Samir', 25, N'nada.samir@example.com', N'F', 24, N'Zagazig', N'Faculty of Archaeology', 2, N'Failed', 13, 24)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (713, N'Ahmed Youssef', 22, N'ahmed.youssef@example.com', N'M', 24, N'Damanhur', N'Faculty of Computers and Artificial Intelligence', 2, N'Failed', 14, 24)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (714, N'Lina Samir', 23, N'lina.samir@example.com', N'F', 24, N'Cairo', N'Faculty of Computers and Information Technology', 2, N'Failed', 10, 28)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (715, N'Salma Khaled', 24, N'salma.khaled@example.com', N'F', 24, N'Damietta', N'Faculty of Specific Education', 2, N'Failed', 11, 28)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (716, N'Tamer Nabil', 25, N'tamer.nabil@example.com', N'M', 24, N'Faiyum', N'Faculty of Archaeology', 4, N'Failed', 12, 28)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (717, N'Omar Khaled', 22, N'omar.khaled@example.com', N'M', 24, N'Asyut', N'Faculty of Archaeology', 1, N'Passed', 13, 28)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (718, N'Reem Youssef', 23, N'reem.youssef@example.com', N'F', 24, N'Aswan', N'Faculty of Science', 2, N'Failed', 10, 33)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (719, N'Karim Samir', 24, N'karim.samir@example.com', N'M', 24, N'Mansoura', N'Faculty of Engineering', 1, N'Passed', 11, 33)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (720, N'Nada Ali', 25, N'nada.ali@example.com', N'F', 24, N'Suez', N'Faculty of Science', 1, N'Passed', 12, 33)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (721, N'Ahmed Samir', 22, N'ahmed.samir@example.com', N'M', 24, N'Shibin El Kom', N'Faculty of Nursing', 2, N'Failed', 13, 33)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (722, N'Lina Youssef', 23, N'lina.youssef@example.com', N'F', 24, N'Aswan', N'Faculty of Engineering', 4, N'Failed', 13, 38)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (723, N'Salma Nabil', 24, N'salma.nabil@example.com', N'F', 25, N'Ismailia', N'Faculty of Dentistry', 3, N'Failed', 9, 9)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (724, N'Tamer Adel', 25, N'tamer.adel@example.com', N'M', 25, N'Tanta', N'Faculty of Dentistry', 3, N'Passed', 12, 9)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (725, N'Omar Ali', 22, N'omar.ali@example.com', N'M', 25, N'Kafr El Sheikh', N'Faculty of Archaeology', 3, N'Passed', 13, 9)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (726, N'Reem Khaled', 23, N'reem.khaled@example.com', N'F', 25, N'Aswan', N'Faculty of Fine Arts', 3, N'Passed', 9, 25)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (727, N'Karim Nabil', 24, N'karim.nabil@example.com', N'M', 25, N'Qena', N'Faculty of Commerce', 3, N'Passed', 11, 25)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (728, N'Nada Youssef', 25, N'nada.youssef@example.com', N'F', 25, N'Mansoura', N'Faculty of Computers and Information Technology', 3, N'Passed', 12, 25)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (729, N'Ahmed Khaled', 22, N'ahmed.khaled@example.com', N'M', 25, N'Luxor', N'Faculty of Physical Education', 3, N'Passed', 10, 29)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (730, N'Lina Samir', 23, N'lina.samir@example.com', N'F', 25, N'Cairo', N'Faculty of Arts', 3, N'Passed', 11, 29)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (731, N'Salma Ali', 24, N'salma.ali@example.com', N'F', 25, N'Ismailia', N'Faculty of Nursing', 3, N'Passed', 12, 29)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (732, N'Tamer Youssef', 25, N'tamer.youssef@example.com', N'M', 25, N'Fayoum', N'Faculty of Physical Education', 4, N'Failed', 13, 29)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (733, N'Omar Adel', 22, N'omar.adel@example.com', N'M', 25, N'Alexandria', N'Faculty of Pharmacy', 4, N'Failed', 12, 34)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (734, N'Reem Youssef', 23, N'reem.youssef@example.com', N'F', 25, N'Qena', N'Faculty of Engineering', 4, N'Failed', 13, 34)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (735, N'Karim Khaled', 24, N'karim.khaled@example.com', N'M', 25, N'Sohag', N'Faculty of Medicine', 4, N'Failed', 13, 39)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (736, N'Nada Samir', 25, N'nada.samir@example.com', N'F', 25, N'Mahalla El Kubra', N'Faculty of Science', 4, N'Failed', 10, 41)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (737, N'Ahmed Youssef', 22, N'ahmed.youssef@example.com', N'M', 25, N'Minya', N'Faculty of Agriculture', 4, N'Failed', 11, 41)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (738, N'Lina Adel', 23, N'lina.adel@example.com', N'F', 25, N'Tanta', N'Faculty of Computers and Information Technology', 4, N'Failed', 12, 41)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (739, N'Salma Khaled', 24, N'salma.khaled@example.com', N'F', 25, N'Qena', N'Faculty of Engineering', 4, N'Failed', 13, 41)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (740, N'Tamer Nabil', 25, N'tamer.nabil@example.com', N'M', 25, N'Ismailia', N'Faculty of Law', 4, N'Failed', 14, 41)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (741, N'Omar Youssef', 22, N'omar.youssef@example.com', N'M', 25, N'Damanhur', N'Faculty of Education', 1, N'Passed', 10, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (742, N'Reem Ali', 23, N'reem.ali@example.com', N'F', 25, N'Minya', N'Faculty of Computers and Information', 1, N'Passed', 11, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (743, N'Karim Samir', 24, N'karim.samir@example.com', N'M', 25, N'Tanta', N'Faculty of Computers and Information Technology', 1, N'Passed', 12, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (744, N'Nada Youssef', 25, N'nada.youssef@example.com', N'F', 25, N'Ismailia', N'Faculty of Medicine', 1, N'Passed', 13, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (745, N'Ahmed Samir', 22, N'ahmed.samir@example.com', N'M', 25, N'Alexandria', N'Faculty of Agriculture', 1, N'Passed', 14, 44)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (746, N'Lina Khaled', 23, N'lina.khaled@example.com', N'F', 25, N'Damietta', N'Faculty of Arts', 1, N'Passed', 10, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (747, N'Salma Nabil', 24, N'salma.nabil@example.com', N'F', 25, N'Banha', N'Faculty of Computers and Artificial Intelligence', 1, N'Passed', 11, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (748, N'Tamer Youssef', 25, N'tamer.youssef@example.com', N'M', 25, N'Giza', N'Faculty of Science', 1, N'Passed', 12, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (749, N'Omar Ali', 22, N'omar.ali@example.com', N'M', 25, N'Beni Suef', N'Faculty of Engineering', 1, N'Passed', 13, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (750, N'Reem Khaled', 23, N'reem.khaled@example.com', N'F', 25, N'Sohag', N'Faculty of Computers and Information', 2, N'Failed', 14, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (751, N'Karim Youssef', 24, N'karim.youssef@example.com', N'M', 26, N'Luxor', N'Faculty of Dentistry', 2, N'Failed', 8, 11)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (752, N'Nada Samir', 25, N'nada.samir@example.com', N'F', 26, N'Giza', N'Faculty of Engineering', 2, N'Failed', 9, 11)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (753, N'Ahmed Ali', 22, N'ahmed.ali@example.com', N'M', 26, N'Zagazig', N'Faculty of Medicine', 2, N'Failed', 10, 11)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (754, N'Lina Adel', 23, N'lina.adel@example.com', N'F', 26, N'Mahalla El Kubra', N'Faculty of Computers and Artificial Intelligence', 3, N'Passed', 12, 11)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (755, N'Salma Khaled', 24, N'salma.khaled@example.com', N'F', 26, N'Mansoura', N'Faculty of Science', 3, N'Passed', 13, 11)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (756, N'Tamer Samir', 25, N'tamer.samir@example.com', N'M', 26, N'Shibin El Kom', N'Faculty of Engineering', 3, N'Passed', 7, 19)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (757, N'Omar Nabil', 22, N'omar.nabil@example.com', N'M', 26, N'Zagazig', N'Faculty of Commerce', 3, N'Passed', 11, 19)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (758, N'Reem Youssef', 23, N'reem.youssef@example.com', N'F', 26, N'Aswan', N'Faculty of Law', 3, N'Passed', 12, 19)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (759, N'Karim Ali', 24, N'karim.ali@example.com', N'M', 26, N'Qena', N'Faculty of Specific Education', 3, N'Passed', 14, 19)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (760, N'Nada Adel', 25, N'nada.adel@example.com', N'F', 26, N'Cairo', N'Faculty of Physical Education', 3, N'Passed', 14, 40)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (761, N'Ahmed Samir', 22, N'ahmed.samir@example.com', N'M', 26, N'Alexandria', N'Faculty of Engineering', 4, N'Failed', 10, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (762, N'Lina Youssef', 23, N'lina.youssef@example.com', N'F', 26, N'Minya', N'Faculty of Archaeology', 4, N'Failed', 11, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (763, N'Salma Ali', 24, N'salma.ali@example.com', N'F', 26, N'Sharm El Sheikh', N'Faculty of Education', 4, N'Failed', 12, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (764, N'Tamer Khaled', 25, N'tamer.khaled@example.com', N'M', 26, N'Aswan', N'Faculty of Agriculture', 4, N'Failed', 13, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (765, N'Omar Samir', 22, N'omar.samir@example.com', N'M', 26, N'Cairo', N'Faculty of Commerce', 4, N'Failed', 14, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (766, N'Reem Ali', 23, N'reem.ali@example.com', N'F', 27, N'Tanta', N'Faculty of Dentistry', 4, N'Failed', 9, 26)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (767, N'Karim Youssef', 24, N'karim.youssef@example.com', N'M', 27, N'Aswan', N'Faculty of Science', 4, N'Failed', 12, 26)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (768, N'Nada Khaled', 25, N'nada.khaled@example.com', N'F', 27, N'Assiut', N'Faculty of Engineering', 4, N'Failed', 13, 26)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (769, N'Ahmed Adel', 22, N'ahmed.adel@example.com', N'M', 27, N'Mansoura', N'Faculty of Fine Arts', 4, N'Failed', 14, 26)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (770, N'Lina Samir', 23, N'lina.samir@example.com', N'F', 27, N'Zagazig', N'Faculty of Law', 1, N'Passed', 10, 33)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (771, N'Salma Youssef', 24, N'salma.youssef@example.com', N'F', 27, N'Giza', N'Faculty of Computers and Information', 1, N'Passed', 11, 33)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (772, N'Tamer Ali', 25, N'tamer.ali@example.com', N'M', 27, N'Alexandria', N'Faculty of Computers and Information Technology', 1, N'Passed', 12, 33)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (773, N'Omar Khaled', 22, N'omar.khaled@example.com', N'M', 27, N'Suez', N'Faculty of Engineering', 1, N'Passed', 13, 33)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (774, N'Reem Samir', 23, N'reem.samir@example.com', N'F', 27, N'Luxor', N'Faculty of Specific Education', 2, N'Failed', 10, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (775, N'Karim Adel', 24, N'karim.adel@example.com', N'M', 27, N'Mahalla El Kubra', N'Faculty of Education', 2, N'Failed', 11, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (776, N'Nada Youssef', 25, N'nada.youssef@example.com', N'F', 27, N'Giza', N'Faculty of Arts', 2, N'Failed', 12, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (777, N'Ahmed Nabil', 22, N'ahmed.nabil@example.com', N'M', 27, N'Dahab', N'Faculty of Physical Education', 2, N'Passed', 13, 45)
GO
INSERT [dbo].[Student] ([St_ID], [St_name], [St_age], [St_email], [gender], [track_ID], [St_city], [St_Faculty], [Certification], [Freelance], [B_ID], [Intake_ID]) VALUES (778, N'Lina Khaled', 23, N'lina.khaled@example.com', N'F', 27, N'Kafr El Sheikh', N'Faculty of Computers and Information Technology', 2, N'Failed', 14, 45)
GO
INSERT [dbo].[student_exam] ([Std_ID], [ex_ID], [st_Grade], [exam_percentage], [St_status]) VALUES (1, 1, N'9', CAST(60.00 AS Decimal(5, 2)), N'Passed')
GO
INSERT [dbo].[student_exam] ([Std_ID], [ex_ID], [st_Grade], [exam_percentage], [St_status]) VALUES (1, 20, N'11', CAST(64.71 AS Decimal(5, 2)), N'Passed')
GO
INSERT [dbo].[student_exam] ([Std_ID], [ex_ID], [st_Grade], [exam_percentage], [St_status]) VALUES (2, 1, N'11', CAST(73.00 AS Decimal(5, 2)), N'Passed')
GO
INSERT [dbo].[student_exam] ([Std_ID], [ex_ID], [st_Grade], [exam_percentage], [St_status]) VALUES (5, 2, N'3', CAST(20.00 AS Decimal(5, 2)), N'Failed')
GO
INSERT [dbo].[student_exam] ([Std_ID], [ex_ID], [st_Grade], [exam_percentage], [St_status]) VALUES (6, 2, N'11', CAST(73.00 AS Decimal(5, 2)), N'Passed')
GO
INSERT [dbo].[student_exam] ([Std_ID], [ex_ID], [st_Grade], [exam_percentage], [St_status]) VALUES (13, 5, N'13', CAST(86.00 AS Decimal(5, 2)), N'Passed')
GO
INSERT [dbo].[student_exam] ([Std_ID], [ex_ID], [st_Grade], [exam_percentage], [St_status]) VALUES (15, 6, N'13', CAST(86.00 AS Decimal(5, 2)), N'Passed')
GO
INSERT [dbo].[student_exam] ([Std_ID], [ex_ID], [st_Grade], [exam_percentage], [St_status]) VALUES (21, 3, N'14', CAST(93.00 AS Decimal(5, 2)), N'Passed')
GO
INSERT [dbo].[student_exam] ([Std_ID], [ex_ID], [st_Grade], [exam_percentage], [St_status]) VALUES (33, 3, N'4', CAST(26.00 AS Decimal(5, 2)), N'Failed')
GO
INSERT [dbo].[student_exam] ([Std_ID], [ex_ID], [st_Grade], [exam_percentage], [St_status]) VALUES (35, 4, N'6', CAST(40.00 AS Decimal(5, 2)), N'Failed')
GO
INSERT [dbo].[student_exam] ([Std_ID], [ex_ID], [st_Grade], [exam_percentage], [St_status]) VALUES (52, 4, N'15', CAST(100.00 AS Decimal(5, 2)), N'Passed')
GO
INSERT [dbo].[student_exam] ([Std_ID], [ex_ID], [st_Grade], [exam_percentage], [St_status]) VALUES (55, 5, N'11', CAST(73.00 AS Decimal(5, 2)), N'Passed')
GO
INSERT [dbo].[student_exam] ([Std_ID], [ex_ID], [st_Grade], [exam_percentage], [St_status]) VALUES (60, 6, N'11', CAST(73.00 AS Decimal(5, 2)), N'Passed')
GO
INSERT [dbo].[student_exam] ([Std_ID], [ex_ID], [st_Grade], [exam_percentage], [St_status]) VALUES (200, 11, N'16', CAST(88.89 AS Decimal(5, 2)), N'Passed')
GO
INSERT [dbo].[student_exam] ([Std_ID], [ex_ID], [st_Grade], [exam_percentage], [St_status]) VALUES (201, 7, N'15', CAST(88.24 AS Decimal(5, 2)), N'Passed')
GO
INSERT [dbo].[student_exam] ([Std_ID], [ex_ID], [st_Grade], [exam_percentage], [St_status]) VALUES (202, 13, N'8', CAST(53.33 AS Decimal(5, 2)), N'Passed')
GO
INSERT [dbo].[student_exam] ([Std_ID], [ex_ID], [st_Grade], [exam_percentage], [St_status]) VALUES (203, 14, N'9', CAST(60.00 AS Decimal(5, 2)), N'Passed')
GO
INSERT [dbo].[student_exam] ([Std_ID], [ex_ID], [st_Grade], [exam_percentage], [St_status]) VALUES (250, 17, N'11', CAST(73.33 AS Decimal(5, 2)), N'Passed')
GO
INSERT [dbo].[student_exam] ([Std_ID], [ex_ID], [st_Grade], [exam_percentage], [St_status]) VALUES (250, 30, N'12', CAST(80.00 AS Decimal(5, 2)), N'Passed')
GO
INSERT [dbo].[student_exam] ([Std_ID], [ex_ID], [st_Grade], [exam_percentage], [St_status]) VALUES (255, 25, N'10', CAST(66.67 AS Decimal(5, 2)), N'Passed')
GO
INSERT [dbo].[student_exam] ([Std_ID], [ex_ID], [st_Grade], [exam_percentage], [St_status]) VALUES (333, 24, N'15', CAST(100.00 AS Decimal(5, 2)), N'Passed')
GO
INSERT [dbo].[student_exam] ([Std_ID], [ex_ID], [st_Grade], [exam_percentage], [St_status]) VALUES (400, 16, N'5', CAST(33.33 AS Decimal(5, 2)), N'Failed')
GO
INSERT [dbo].[student_exam] ([Std_ID], [ex_ID], [st_Grade], [exam_percentage], [St_status]) VALUES (444, 22, N'16', CAST(94.12 AS Decimal(5, 2)), N'Passed')
GO
INSERT [dbo].[student_exam] ([Std_ID], [ex_ID], [st_Grade], [exam_percentage], [St_status]) VALUES (450, 18, N'7', CAST(53.85 AS Decimal(5, 2)), N'Passed')
GO
INSERT [dbo].[student_exam] ([Std_ID], [ex_ID], [st_Grade], [exam_percentage], [St_status]) VALUES (500, 15, N'13', CAST(81.25 AS Decimal(5, 2)), N'Passed')
GO
INSERT [dbo].[student_exam] ([Std_ID], [ex_ID], [st_Grade], [exam_percentage], [St_status]) VALUES (522, 19, N'13', CAST(76.47 AS Decimal(5, 2)), N'Passed')
GO
INSERT [dbo].[student_exam] ([Std_ID], [ex_ID], [st_Grade], [exam_percentage], [St_status]) VALUES (555, 21, N'13', CAST(86.67 AS Decimal(5, 2)), N'Passed')
GO
INSERT [dbo].[student_exam] ([Std_ID], [ex_ID], [st_Grade], [exam_percentage], [St_status]) VALUES (588, 28, N'12', CAST(70.59 AS Decimal(5, 2)), N'Passed')
GO
INSERT [dbo].[student_exam] ([Std_ID], [ex_ID], [st_Grade], [exam_percentage], [St_status]) VALUES (600, 10, N'1', CAST(6.67 AS Decimal(5, 2)), N'Failed')
GO
INSERT [dbo].[student_exam] ([Std_ID], [ex_ID], [st_Grade], [exam_percentage], [St_status]) VALUES (641, 27, N'16', CAST(100.00 AS Decimal(5, 2)), N'Passed')
GO
INSERT [dbo].[student_exam] ([Std_ID], [ex_ID], [st_Grade], [exam_percentage], [St_status]) VALUES (666, 23, N'16', CAST(100.00 AS Decimal(5, 2)), N'Passed')
GO
INSERT [dbo].[student_exam] ([Std_ID], [ex_ID], [st_Grade], [exam_percentage], [St_status]) VALUES (700, 9, N'7', CAST(43.75 AS Decimal(5, 2)), N'Failed')
GO
INSERT [dbo].[student_exam] ([Std_ID], [ex_ID], [st_Grade], [exam_percentage], [St_status]) VALUES (701, 29, N'13', CAST(92.86 AS Decimal(5, 2)), N'Passed')
GO
INSERT [dbo].[student_exam] ([Std_ID], [ex_ID], [st_Grade], [exam_percentage], [St_status]) VALUES (711, 26, N'15', CAST(100.00 AS Decimal(5, 2)), N'Passed')
GO
INSERT [dbo].[student_exam] ([Std_ID], [ex_ID], [st_Grade], [exam_percentage], [St_status]) VALUES (778, 31, N'12', CAST(100.00 AS Decimal(5, 2)), N'Passed')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (1, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (2, N'01123456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (3, N'01234567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (4, N'01098765432')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (5, N'01187654321')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (6, N'01276543210')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (7, N'01123456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (8, N'01098765432')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (9, N'01234567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (10, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (11, N'01123456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (12, N'01234567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (13, N'01098765432')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (14, N'01123456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (15, N'01234567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (16, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (17, N'01123456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (18, N'01234567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (19, N'01098765432')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (20, N'01123456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (21, N'01234567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (22, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (23, N'01123456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (24, N'01234567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (25, N'01098765432')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (26, N'01123456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (27, N'01234567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (28, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (29, N'01123456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (30, N'01234567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (31, N'01098765432')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (32, N'01123456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (33, N'01234567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (34, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (35, N'01123456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (36, N'01234567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (37, N'01098765432')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (38, N'01123456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (39, N'01234567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (40, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (41, N'01123456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (42, N'01234567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (43, N'01098765432')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (44, N'01123456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (45, N'01234567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (46, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (47, N'01123456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (48, N'01234567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (49, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (50, N'01121259924')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (51, N'01234567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (52, N'01098765432')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (53, N'01187654321')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (54, N'01276543210')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (55, N'01123456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (56, N'01098765432')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (57, N'01234567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (58, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (59, N'01123456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (60, N'01234567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (61, N'01011112222')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (62, N'01122223333')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (63, N'01233334444')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (64, N'01044445555')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (65, N'01155556666')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (66, N'01266667777')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (67, N'01077778888')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (68, N'01188889999')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (69, N'01299990000')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (70, N'01000001111')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (71, N'01111112222')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (72, N'01222223333')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (73, N'01033334444')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (74, N'01144445555')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (75, N'01255556666')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (76, N'01066667777')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (77, N'01177778888')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (78, N'01288889999')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (79, N'01099990000')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (80, N'01100001111')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (81, N'01211112222')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (82, N'01022223333')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (83, N'01133334444')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (84, N'01244445555')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (85, N'01055556666')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (86, N'01166667777')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (87, N'01277778888')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (88, N'01088889999')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (89, N'01199990000')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (90, N'01200001111')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (91, N'01011112222')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (92, N'01122223333')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (93, N'01233334444')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (94, N'01044445555')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (95, N'01155556666')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (96, N'01266667777')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (97, N'01077778888')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (98, N'01188889999')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (99, N'01299990000')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (101, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (102, N'01023456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (103, N'01034567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (104, N'01045678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (105, N'01056789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (106, N'01067890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (107, N'01078901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (108, N'01089012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (109, N'01090123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (110, N'01001234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (111, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (112, N'01023456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (113, N'01034567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (114, N'01045678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (115, N'01056789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (116, N'01067890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (117, N'01078901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (118, N'01089012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (119, N'01090123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (120, N'01001234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (121, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (122, N'01023456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (123, N'01034567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (124, N'01045678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (125, N'01056789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (126, N'01067890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (127, N'01078901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (128, N'01089012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (129, N'01090123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (130, N'01001234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (131, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (132, N'01023456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (133, N'01034567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (134, N'01045678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (135, N'01056789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (136, N'01067890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (137, N'01078901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (138, N'01089012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (139, N'01090123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (140, N'01001234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (141, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (142, N'01023456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (143, N'01034567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (144, N'01045678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (145, N'01056789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (146, N'01067890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (147, N'01078901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (148, N'01089012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (149, N'01090123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (150, N'01001234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (151, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (152, N'01023456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (153, N'01034567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (154, N'01045678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (155, N'01056789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (156, N'01067890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (157, N'01078901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (158, N'01089012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (159, N'01090123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (160, N'01001234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (161, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (162, N'01023456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (163, N'01034567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (164, N'01045678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (165, N'01056789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (166, N'01067890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (167, N'01078901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (168, N'01089012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (169, N'01090123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (170, N'01001234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (171, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (172, N'01023456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (173, N'01034567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (174, N'01045678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (175, N'01056789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (176, N'01067890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (177, N'01078901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (178, N'01089012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (179, N'01090123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (180, N'01001234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (181, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (182, N'01023456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (183, N'01034567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (184, N'01045678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (185, N'01056789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (186, N'01067890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (187, N'01078901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (188, N'01089012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (189, N'01090123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (190, N'01001234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (191, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (192, N'01023456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (193, N'01034567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (194, N'01045678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (195, N'01056789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (196, N'01067890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (197, N'01078901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (198, N'01089012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (200, N'01006580522')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (200, N'01125844820')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (201, N'01116191866')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (202, N'01064475833')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (202, N'01126393971')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (203, N'01064161638')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (204, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (205, N'01123456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (206, N'01234567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (207, N'01034567891')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (208, N'01145678902')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (209, N'01256789013')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (210, N'01067890124')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (211, N'01178901235')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (212, N'01289012346')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (213, N'01090123457')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (214, N'01101234568')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (215, N'01212345679')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (216, N'01023456780')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (217, N'01134567891')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (218, N'01245678902')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (219, N'01056789013')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (220, N'01167890124')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (221, N'01278901235')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (222, N'01089012346')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (223, N'01190123457')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (224, N'01201234568')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (225, N'01012345679')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (226, N'01123456780')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (227, N'01234567891')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (228, N'01045678902')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (229, N'01156789013')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (230, N'01267890124')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (231, N'01278901235')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (232, N'01089012346')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (233, N'01190123457')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (234, N'01201234568')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (235, N'01012345679')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (236, N'01123456780')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (237, N'01234567891')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (238, N'01045678902')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (239, N'01156789013')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (240, N'01267890124')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (241, N'01078901235')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (242, N'01189012346')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (243, N'01290123457')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (244, N'01001234568')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (245, N'01112345679')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (246, N'01223456780')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (247, N'01034567891')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (248, N'01145678902')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (249, N'01256789013')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (250, N'01067890124')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (251, N'01178901235')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (252, N'01289012346')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (253, N'01090123457')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (254, N'01101234568')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (255, N'01212345679')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (256, N'01023456780')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (257, N'01134567891')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (258, N'01245678902')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (259, N'01056789013')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (260, N'01167890124')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (261, N'01278901235')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (262, N'01089012346')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (263, N'01190123457')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (264, N'01201234568')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (265, N'01012345679')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (266, N'01123456780')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (267, N'01234567891')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (268, N'01045678902')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (269, N'01156789013')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (270, N'01267890124')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (271, N'01078901235')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (272, N'01189012346')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (273, N'01290123457')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (274, N'01001234568')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (275, N'01112345679')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (276, N'01223456780')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (277, N'01034567891')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (278, N'01145678902')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (279, N'01256789013')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (280, N'01067890124')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (281, N'01178901235')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (282, N'01289012346')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (283, N'01090123457')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (284, N'01101234568')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (285, N'01212345679')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (286, N'01023456780')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (287, N'01134567891')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (288, N'01245678902')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (289, N'01056789013')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (290, N'01167890124')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (291, N'01278901235')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (292, N'01089012346')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (293, N'01190123457')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (294, N'01201234568')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (295, N'01012345679')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (296, N'01123456780')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (297, N'01234567891')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (298, N'01045678902')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (299, N'01156789013')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (300, N'01267890124')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (301, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (302, N'01123456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (303, N'01234567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (304, N'01045678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (305, N'01156789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (306, N'01267890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (307, N'01078901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (308, N'01189012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (309, N'01290123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (310, N'01001234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (311, N'01112345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (312, N'01223456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (313, N'01034567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (314, N'01145678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (315, N'01256789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (316, N'01067890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (317, N'01178901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (318, N'01289012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (319, N'01090123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (320, N'01101234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (321, N'01212345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (322, N'01023456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (323, N'01134567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (324, N'01245678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (325, N'01056789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (326, N'01167890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (327, N'01278901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (328, N'01089012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (329, N'01190123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (330, N'01201234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (331, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (332, N'01123456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (333, N'01234567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (334, N'01045678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (335, N'01156789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (336, N'01267890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (337, N'01078901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (338, N'01189012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (339, N'01290123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (340, N'01001234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (341, N'01112345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (342, N'01223456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (343, N'01034567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (344, N'01145678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (345, N'01256789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (346, N'01067890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (347, N'01178901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (348, N'01289012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (349, N'01090123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (350, N'01101234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (351, N'01212345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (352, N'01023456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (353, N'01134567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (354, N'01245678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (355, N'01056789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (356, N'01167890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (357, N'01278901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (358, N'01089012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (359, N'01190123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (360, N'01201234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (361, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (362, N'01123456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (363, N'01234567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (364, N'01045678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (365, N'01156789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (366, N'01267890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (367, N'01078901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (368, N'01189012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (369, N'01290123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (370, N'01001234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (371, N'01112345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (372, N'01223456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (373, N'01034567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (374, N'01145678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (375, N'01256789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (376, N'01067890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (377, N'01178901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (378, N'01289012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (379, N'01090123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (380, N'01101234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (381, N'01212345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (382, N'01023456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (383, N'01134567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (384, N'01245678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (385, N'01056789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (386, N'01167890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (387, N'01278901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (388, N'01089012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (389, N'01190123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (390, N'01201234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (391, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (392, N'01123456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (393, N'01234567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (394, N'01045678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (395, N'01156789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (396, N'01267890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (397, N'01078901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (398, N'01189012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (399, N'01290123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (400, N'01001234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (401, N'01112345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (402, N'01223456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (403, N'01034567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (404, N'01145678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (405, N'01256789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (406, N'01067890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (407, N'01178901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (408, N'01289012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (409, N'01090123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (410, N'01101234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (411, N'01212345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (412, N'01023456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (413, N'01134567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (414, N'01245678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (415, N'01056789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (416, N'01167890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (417, N'01278901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (418, N'01089012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (419, N'01190123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (420, N'01201234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (421, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (422, N'01123456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (423, N'01234567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (424, N'01045678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (425, N'01156789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (426, N'01267890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (427, N'01078901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (428, N'01189012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (429, N'01290123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (430, N'01001234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (431, N'01112345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (432, N'01223456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (433, N'01034567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (434, N'01145678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (435, N'01256789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (436, N'01067890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (437, N'01178901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (438, N'01289012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (439, N'01090123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (440, N'01101234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (441, N'01212345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (442, N'01023456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (443, N'01134567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (444, N'01245678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (445, N'01056789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (446, N'01167890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (447, N'01278901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (448, N'01089012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (449, N'01190123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (450, N'01201234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (451, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (452, N'01123456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (453, N'01234567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (454, N'01045678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (455, N'01156789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (456, N'01267890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (457, N'01078901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (458, N'01189012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (459, N'01290123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (460, N'01001234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (461, N'01112345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (462, N'01223456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (463, N'01034567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (464, N'01145678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (465, N'01256789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (466, N'01067890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (467, N'01178901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (468, N'01289012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (469, N'01090123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (470, N'01101234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (471, N'01212345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (472, N'01023456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (473, N'01134567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (474, N'01245678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (475, N'01056789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (476, N'01167890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (477, N'01278901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (478, N'01089012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (479, N'01190123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (480, N'01201234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (481, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (482, N'01123456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (483, N'01234567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (484, N'01045678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (485, N'01156789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (486, N'01267890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (487, N'01078901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (488, N'01189012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (489, N'01290123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (490, N'01001234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (491, N'01112345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (492, N'01223456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (493, N'01034567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (494, N'01145678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (495, N'01256789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (496, N'01067890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (497, N'01178901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (498, N'01289012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (499, N'01090123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (500, N'01101234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (501, N'01212345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (502, N'01023456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (503, N'01134567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (504, N'01245678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (505, N'01056789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (506, N'01167890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (507, N'01278901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (508, N'01089012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (509, N'01190123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (510, N'01201234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (511, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (512, N'01123456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (513, N'01234567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (514, N'01045678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (515, N'01156789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (516, N'01267890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (517, N'01078901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (518, N'01189012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (519, N'01290123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (520, N'01001234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (521, N'01112345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (522, N'01223456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (523, N'01034567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (524, N'01145678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (525, N'01256789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (526, N'01067890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (527, N'01178901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (528, N'01289012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (529, N'01090123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (530, N'01101234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (531, N'01212345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (532, N'01023456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (533, N'01134567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (534, N'01245678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (535, N'01056789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (536, N'01167890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (537, N'01278901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (538, N'01089012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (539, N'01190123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (540, N'01201234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (541, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (542, N'01123456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (543, N'01234567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (544, N'01045678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (545, N'01156789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (546, N'01267890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (547, N'01078901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (548, N'01189012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (549, N'01290123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (550, N'01001234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (551, N'01112345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (552, N'01223456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (553, N'01034567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (554, N'01145678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (555, N'01256789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (556, N'01067890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (557, N'01178901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (558, N'01289012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (559, N'01090123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (560, N'01101234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (561, N'01212345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (562, N'01023456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (563, N'01134567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (564, N'01245678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (565, N'01056789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (566, N'01167890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (567, N'01278901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (568, N'01089012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (569, N'01190123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (570, N'01201234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (571, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (572, N'01123456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (573, N'01234567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (574, N'01045678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (575, N'01156789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (576, N'01267890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (577, N'01078901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (578, N'01189012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (579, N'01290123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (580, N'01001234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (581, N'01112345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (582, N'01223456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (583, N'01034567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (584, N'01145678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (585, N'01256789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (586, N'01067890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (587, N'01178901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (588, N'01289012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (589, N'01090123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (590, N'01101234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (591, N'01212345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (592, N'01023456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (593, N'01134567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (594, N'01245678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (595, N'01056789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (596, N'01167890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (597, N'01278901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (598, N'01089012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (599, N'01190123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (600, N'01201234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (601, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (602, N'01123456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (603, N'01234567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (604, N'01045678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (605, N'01156789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (606, N'01267890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (607, N'01078901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (608, N'01189012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (609, N'01290123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (610, N'01001234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (611, N'01112345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (612, N'01223456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (613, N'01034567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (614, N'01145678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (615, N'01256789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (616, N'01067890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (617, N'01178901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (618, N'01289012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (619, N'01090123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (620, N'01101234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (621, N'01212345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (622, N'01023456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (623, N'01134567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (624, N'01245678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (625, N'01056789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (626, N'01167890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (627, N'01278901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (628, N'01089012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (629, N'01190123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (630, N'01201234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (631, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (632, N'01123456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (633, N'01234567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (634, N'01045678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (635, N'01156789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (636, N'01267890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (637, N'01078901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (638, N'01189012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (639, N'01290123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (640, N'01001234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (641, N'01112345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (642, N'01223456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (643, N'01034567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (644, N'01145678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (645, N'01256789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (646, N'01067890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (647, N'01178901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (648, N'01289012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (649, N'01090123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (650, N'01101234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (651, N'01212345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (652, N'01023456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (653, N'01134567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (654, N'01245678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (655, N'01056789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (656, N'01167890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (657, N'01278901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (658, N'01089012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (659, N'01190123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (660, N'01201234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (661, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (662, N'01123456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (663, N'01234567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (664, N'01045678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (665, N'01156789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (666, N'01267890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (667, N'01078901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (668, N'01189012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (669, N'01290123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (670, N'01001234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (671, N'01112345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (672, N'01223456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (673, N'01034567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (674, N'01145678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (675, N'01256789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (676, N'01067890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (677, N'01178901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (678, N'01289012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (679, N'01090123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (680, N'01101234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (681, N'01212345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (682, N'01023456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (683, N'01134567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (684, N'01245678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (685, N'01056789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (686, N'01167890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (687, N'01278901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (688, N'01089012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (689, N'01190123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (690, N'01201234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (691, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (692, N'01123456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (693, N'01234567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (694, N'01045678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (695, N'01156789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (696, N'01267890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (697, N'01078901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (698, N'01189012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (699, N'01290123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (700, N'01001234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (701, N'01112345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (702, N'01223456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (703, N'01034567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (704, N'01145678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (705, N'01256789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (706, N'01067890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (707, N'01178901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (708, N'01289012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (709, N'01090123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (710, N'01101234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (711, N'01212345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (712, N'01023456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (713, N'01134567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (714, N'01245678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (715, N'01056789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (716, N'01167890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (717, N'01278901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (718, N'01089012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (719, N'01190123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (720, N'01201234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (721, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (722, N'01123456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (723, N'01234567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (724, N'01045678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (725, N'01156789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (726, N'01267890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (727, N'01078901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (728, N'01189012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (729, N'01290123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (730, N'01001234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (731, N'01112345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (732, N'01223456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (733, N'01034567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (734, N'01145678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (735, N'01256789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (736, N'01067890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (737, N'01178901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (738, N'01289012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (739, N'01090123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (740, N'01101234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (741, N'01212345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (742, N'01023456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (743, N'01134567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (744, N'01245678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (745, N'01056789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (746, N'01167890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (747, N'01278901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (748, N'01089012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (749, N'01190123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (750, N'01201234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (751, N'01012345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (752, N'01123456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (753, N'01234567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (754, N'01045678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (755, N'01156789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (756, N'01267890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (757, N'01078901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (758, N'01189012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (759, N'01290123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (760, N'01001234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (761, N'01112345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (762, N'01223456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (763, N'01034567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (764, N'01145678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (765, N'01256789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (766, N'01067890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (767, N'01178901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (768, N'01289012345')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (769, N'01090123456')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (770, N'01101234567')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (771, N'01212345678')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (772, N'01023456789')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (773, N'01134567890')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (774, N'01245678901')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (775, N'01056789012')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (776, N'01167890123')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (777, N'01278901234')
GO
INSERT [dbo].[Student_Phone] ([St_ID], [St_Phone]) VALUES (778, N'01089012345')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (1, 10, N'Introduction to Object-Oriented Programming')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (2, 10, N'Classes and Objects')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (3, 10, N'Inheritance in OOP')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (4, 10, N'Polymorphism in OOP')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (5, 10, N'Encapsulation and Abstraction')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (6, 13, N'Introduction to Databases')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (7, 13, N'SQL and Querying')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (8, 13, N'Database Design and Normalization')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (9, 13, N'Transaction Management and Concurrency Control')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (10, 13, N'NoSQL Databases')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (11, 7, N'Introduction to Power BI')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (12, 7, N'Data Modeling in Power BI')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (13, 7, N'Power BI Desktop Features')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (14, 7, N'Power BI Service and Sharing')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (15, 7, N'Advanced Data Visualization in Power BI')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (16, 1, N'Introduction to Python')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (17, 1, N'Data Structures in Python')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (18, 1, N'Object-Oriented Programming in Python')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (19, 1, N'File Handling in Python')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (20, 1, N'Libraries and Frameworks in Python')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (21, 22, N'Introduction to CyberSecurity')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (22, 22, N'Network Security Fundamentals')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (23, 22, N'Cryptography Basics')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (24, 22, N'Ethical Hacking and Penetration Testing')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (25, 22, N'Incident Response and Management')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (26, 22, N'Cyber Threat Intelligence')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (27, 22, N'Security Operations and Monitoring')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (28, 22, N'Application Security')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (29, 26, N'Introduction to IoT')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (30, 26, N'IoT Architecture and Protocols')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (31, 26, N'Sensors and Actuators in IoT')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (32, 26, N'IoT Communication Technologies')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (33, 26, N'Data Analytics for IoT')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (34, 26, N'IoT Security and Privacy')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (35, 26, N'IoT Applications and Use Cases')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (36, 15, N'Introduction to Mobile App Development')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (37, 15, N'Mobile App Architecture')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (38, 15, N'User Interface Design for Mobile Apps')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (39, 15, N'Mobile App Development Frameworks')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (40, 15, N'Mobile App Testing and Debugging')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (41, 15, N'Publishing Mobile Apps')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (42, 15, N'Mobile App Security Best Practices')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (43, 25, N'Introduction to Networking')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (44, 25, N'Network Protocols and Models')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (45, 25, N'IP Addressing and Subnetting')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (46, 25, N'Network Devices and Hardware')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (47, 25, N'Network Security Fundamentals')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (48, 25, N'Routing and Switching')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (49, 25, N'Wireless Networking')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (50, 25, N'Network Troubleshooting and Tools')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (51, 5, N'Big Data Technologies Overview')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (52, 5, N'Hadoop Ecosystem')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (53, 5, N'MapReduce Programming Model')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (54, 5, N'Data Storage and Management')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (55, 5, N'Data Analytics with Spark')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (56, 5, N'Big Data Visualization Techniques')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (57, 28, N'Introduction to HTML')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (58, 28, N'HTML Elements and Attributes')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (59, 28, N'CSS Basics and Styling')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (60, 28, N'Responsive Design with CSS')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (61, 11, N'Introduction to Software Development')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (62, 11, N'Software Development Life Cycle (SDLC)')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (63, 11, N'Requirements Gathering and Analysis')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (64, 11, N'Design Patterns and Principles')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (65, 11, N'Coding Standards and Best Practices')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (66, 11, N'Version Control Systems')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (67, 11, N'Software Testing and Quality Assurance')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (68, 11, N'Deployment and Maintenance')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (69, 11, N'Project Management in Software Development')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (70, 11, N'Emerging Trends in Software Development')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (71, 9, N'Introduction to Data Mining')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (72, 9, N'Data Preprocessing Techniques')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (73, 9, N'Classification Algorithms')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (74, 9, N'Clustering Methods')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (75, 9, N'Association Rule Learning')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (76, 9, N'Evaluation Metrics for Data Mining')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (77, 8, N'Introduction to Statistics')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (78, 8, N'Descriptive Statistics with R')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (79, 8, N'Probability Distributions')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (80, 8, N'Inferential Statistics and Hypothesis Testing')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (81, 4, N'Introduction to Machine Learning')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (82, 4, N'Supervised Learning Techniques')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (83, 4, N'Unsupervised Learning Methods')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (84, 4, N'Neural Networks and Deep Learning')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (85, 4, N'Feature Engineering')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (86, 4, N'Model Evaluation and Selection')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (87, 4, N'Reinforcement Learning Basics')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (88, 4, N'Support Vector Machines')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (89, 4, N'Decision Trees and Random Forests')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (90, 4, N'Clustering Algorithms')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (91, 27, N'Introduction to Embedded Systems')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (92, 27, N'Microcontrollers and Microprocessors')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (93, 27, N'Real-Time Operating Systems')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (94, 27, N'Embedded System Design')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (95, 27, N'Hardware-Software Co-Design')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (96, 27, N'Embedded System Applications')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (97, 3, N'Introduction to Data Visualization')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (98, 3, N'Visualization Tools and Techniques')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (99, 3, N'Interactive Data Visualization')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (100, 3, N'Advanced Visualization Concepts')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (101, 20, N'Introduction to Computer Vision')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (102, 20, N'Image Processing Basics')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (103, 20, N'Feature Detection and Matching')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (104, 20, N'Object Detection and Recognition')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (105, 20, N'Image Segmentation Techniques')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (106, 20, N'Deep Learning for Computer Vision')
GO
INSERT [dbo].[Topic] ([Topic_ID], [Course_ID], [Topic_Name]) VALUES (107, 20, N'CCN With Computer Vision')
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (2, 1)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (2, 2)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (2, 3)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (3, 4)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (3, 5)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (3, 15)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (3, 16)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (4, 6)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (4, 7)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (4, 17)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (4, 18)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (4, 19)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (4, 20)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (4, 21)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (5, 8)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (5, 9)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (5, 22)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (5, 23)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (5, 24)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (6, 10)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (6, 11)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (6, 25)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (6, 26)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (6, 27)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (7, 12)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (7, 13)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (7, 28)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (7, 29)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (7, 30)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (8, 14)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (8, 15)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (8, 31)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (8, 32)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (8, 33)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (9, 16)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (9, 17)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (9, 34)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (9, 35)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (9, 36)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (10, 18)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (10, 19)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (10, 37)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (10, 38)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (10, 39)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (11, 20)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (11, 21)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (11, 40)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (11, 41)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (11, 42)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (12, 22)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (12, 23)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (12, 43)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (12, 44)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (12, 45)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (13, 24)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (13, 46)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (13, 47)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (13, 48)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (14, 13)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (14, 49)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (14, 50)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (15, 14)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (16, 15)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (17, 16)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (18, 17)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (19, 18)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (20, 19)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (21, 20)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (22, 21)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (23, 22)
GO
INSERT [dbo].[trackcourse] ([track_ID], [course_ID]) VALUES (24, 23)
GO
INSERT [dbo].[Tracks] ([track_ID], [Track_name], [ins_ID], [Dept_ID], [duration]) VALUES (1, N'Fullstack.Net', 1, 5, N'9 months')
GO
INSERT [dbo].[Tracks] ([track_ID], [Track_name], [ins_ID], [Dept_ID], [duration]) VALUES (2, N'Embedded Systems Design', 1, 1, N'3 months')
GO
INSERT [dbo].[Tracks] ([track_ID], [Track_name], [ins_ID], [Dept_ID], [duration]) VALUES (3, N'Digital IC Design', 2, 1, N'3 months')
GO
INSERT [dbo].[Tracks] ([track_ID], [Track_name], [ins_ID], [Dept_ID], [duration]) VALUES (4, N'Wireless Communications', 3, 1, N'3 months')
GO
INSERT [dbo].[Tracks] ([track_ID], [Track_name], [ins_ID], [Dept_ID], [duration]) VALUES (5, N'Industrial Automation', 4, 1, N'3 months')
GO
INSERT [dbo].[Tracks] ([track_ID], [Track_name], [ins_ID], [Dept_ID], [duration]) VALUES (6, N'3D Art', 5, 2, N'3 months')
GO
INSERT [dbo].[Tracks] ([track_ID], [Track_name], [ins_ID], [Dept_ID], [duration]) VALUES (7, N'Game Art', 6, 2, N'3 months')
GO
INSERT [dbo].[Tracks] ([track_ID], [Track_name], [ins_ID], [Dept_ID], [duration]) VALUES (8, N'2D Animation and Motion Graphics', 7, 2, N'9 months')
GO
INSERT [dbo].[Tracks] ([track_ID], [Track_name], [ins_ID], [Dept_ID], [duration]) VALUES (9, N'Game Programming', 8, 2, N'3 months')
GO
INSERT [dbo].[Tracks] ([track_ID], [Track_name], [ins_ID], [Dept_ID], [duration]) VALUES (10, N'VFX Compositing', 9, 2, N'3 months')
GO
INSERT [dbo].[Tracks] ([track_ID], [Track_name], [ins_ID], [Dept_ID], [duration]) VALUES (11, N'Systems Administration', 10, 3, N'3 months')
GO
INSERT [dbo].[Tracks] ([track_ID], [Track_name], [ins_ID], [Dept_ID], [duration]) VALUES (12, N'Telecom Applications Development', 11, 5, N'3 months')
GO
INSERT [dbo].[Tracks] ([track_ID], [Track_name], [ins_ID], [Dept_ID], [duration]) VALUES (13, N'Cyber Security', 12, 3, N'9 months')
GO
INSERT [dbo].[Tracks] ([track_ID], [Track_name], [ins_ID], [Dept_ID], [duration]) VALUES (14, N'CCNA & Routing Switching', 13, 1, N'3 months')
GO
INSERT [dbo].[Tracks] ([track_ID], [Track_name], [ins_ID], [Dept_ID], [duration]) VALUES (15, N'Geographic Information Systems', 14, 4, N'9 months')
GO
INSERT [dbo].[Tracks] ([track_ID], [Track_name], [ins_ID], [Dept_ID], [duration]) VALUES (16, N'Cloud Architecture', 15, 3, N'3 months')
GO
INSERT [dbo].[Tracks] ([track_ID], [Track_name], [ins_ID], [Dept_ID], [duration]) VALUES (17, N'IOT', 16, 5, N'3 months')
GO
INSERT [dbo].[Tracks] ([track_ID], [Track_name], [ins_ID], [Dept_ID], [duration]) VALUES (18, N'Data Science', 17, 4, N'9 months')
GO
INSERT [dbo].[Tracks] ([track_ID], [Track_name], [ins_ID], [Dept_ID], [duration]) VALUES (19, N'Enterprise Resource Planning', 18, 4, N'3 months')
GO
INSERT [dbo].[Tracks] ([track_ID], [Track_name], [ins_ID], [Dept_ID], [duration]) VALUES (20, N'Data Management', 19, 4, N'9 months')
GO
INSERT [dbo].[Tracks] ([track_ID], [Track_name], [ins_ID], [Dept_ID], [duration]) VALUES (21, N'Open Source Applications Development', 20, 5, N'9 months')
GO
INSERT [dbo].[Tracks] ([track_ID], [Track_name], [ins_ID], [Dept_ID], [duration]) VALUES (22, N'Native Mobile Applications Development', 21, 5, N'3 months')
GO
INSERT [dbo].[Tracks] ([track_ID], [Track_name], [ins_ID], [Dept_ID], [duration]) VALUES (23, N'Web & User Interface Development', 22, 5, N'3 months')
GO
INSERT [dbo].[Tracks] ([track_ID], [Track_name], [ins_ID], [Dept_ID], [duration]) VALUES (24, N'Computer Architecture', 23, 3, N'3 months')
GO
INSERT [dbo].[Tracks] ([track_ID], [Track_name], [ins_ID], [Dept_ID], [duration]) VALUES (25, N'PowerBi', 3, 4, N'3 months')
GO
INSERT [dbo].[Tracks] ([track_ID], [Track_name], [ins_ID], [Dept_ID], [duration]) VALUES (26, N'AI and Machine Learning', 33, 6, N'3 months')
GO
INSERT [dbo].[Tracks] ([track_ID], [Track_name], [ins_ID], [Dept_ID], [duration]) VALUES (27, N'Software Testing & Quality Assurance', 50, 7, N'3 months')
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD FOREIGN KEY([ex_ID])
REFERENCES [dbo].[Exam] ([ex_ID])
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD FOREIGN KEY([QS_ID])
REFERENCES [dbo].[Question] ([Qs_ID])
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD FOREIGN KEY([St_ID])
REFERENCES [dbo].[Student] ([St_ID])
GO
ALTER TABLE [dbo].[branch_Intake]  WITH CHECK ADD FOREIGN KEY([Intake_ID])
REFERENCES [dbo].[Intake] ([Intake_ID])
GO
ALTER TABLE [dbo].[branch_Intake]  WITH CHECK ADD FOREIGN KEY([B_ID])
REFERENCES [dbo].[Branch] ([B_ID])
GO
ALTER TABLE [dbo].[branch_intake_track]  WITH CHECK ADD  CONSTRAINT [branch_FK] FOREIGN KEY([B_ID])
REFERENCES [dbo].[Branch] ([B_ID])
GO
ALTER TABLE [dbo].[branch_intake_track] CHECK CONSTRAINT [branch_FK]
GO
ALTER TABLE [dbo].[branch_intake_track]  WITH CHECK ADD  CONSTRAINT [Intake_FK] FOREIGN KEY([Intake_ID])
REFERENCES [dbo].[Intake] ([Intake_ID])
GO
ALTER TABLE [dbo].[branch_intake_track] CHECK CONSTRAINT [Intake_FK]
GO
ALTER TABLE [dbo].[branch_intake_track]  WITH CHECK ADD  CONSTRAINT [Track_FK] FOREIGN KEY([track_ID])
REFERENCES [dbo].[Tracks] ([track_ID])
GO
ALTER TABLE [dbo].[branch_intake_track] CHECK CONSTRAINT [Track_FK]
GO
ALTER TABLE [dbo].[Choice]  WITH CHECK ADD FOREIGN KEY([QS_ID])
REFERENCES [dbo].[Question] ([Qs_ID])
GO
ALTER TABLE [dbo].[course_instructor]  WITH CHECK ADD FOREIGN KEY([course_ID])
REFERENCES [dbo].[Course] ([course_ID])
GO
ALTER TABLE [dbo].[course_instructor]  WITH CHECK ADD FOREIGN KEY([ins_ID])
REFERENCES [dbo].[Instructor] ([ins_ID])
GO
ALTER TABLE [dbo].[Department]  WITH CHECK ADD FOREIGN KEY([Manger_ID])
REFERENCES [dbo].[Instructor] ([ins_ID])
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD FOREIGN KEY([course_ID])
REFERENCES [dbo].[Course] ([course_ID])
GO
ALTER TABLE [dbo].[Graduates]  WITH CHECK ADD FOREIGN KEY([track_ID])
REFERENCES [dbo].[Tracks] ([track_ID])
GO
ALTER TABLE [dbo].[graduates_company]  WITH CHECK ADD FOREIGN KEY([company_ID])
REFERENCES [dbo].[company] ([company_ID])
GO
ALTER TABLE [dbo].[graduates_company]  WITH CHECK ADD FOREIGN KEY([graduates_ID])
REFERENCES [dbo].[Graduates] ([graduate_ID])
GO
ALTER TABLE [dbo].[Instructor]  WITH CHECK ADD FOREIGN KEY([Dept_ID])
REFERENCES [dbo].[Department] ([Dept_ID])
GO
ALTER TABLE [dbo].[InstructorPhone]  WITH CHECK ADD FOREIGN KEY([ins_ID])
REFERENCES [dbo].[Instructor] ([ins_ID])
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD FOREIGN KEY([Course_ID])
REFERENCES [dbo].[Course] ([course_ID])
GO
ALTER TABLE [dbo].[question_exam]  WITH CHECK ADD FOREIGN KEY([ex_ID])
REFERENCES [dbo].[Exam] ([ex_ID])
GO
ALTER TABLE [dbo].[question_exam]  WITH CHECK ADD FOREIGN KEY([Qs_ID])
REFERENCES [dbo].[Question] ([Qs_ID])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([track_ID])
REFERENCES [dbo].[Tracks] ([track_ID])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Branch] FOREIGN KEY([B_ID])
REFERENCES [dbo].[Branch] ([B_ID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Branch]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Intake] FOREIGN KEY([Intake_ID])
REFERENCES [dbo].[Intake] ([Intake_ID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Intake]
GO
ALTER TABLE [dbo].[student_exam]  WITH CHECK ADD FOREIGN KEY([ex_ID])
REFERENCES [dbo].[Exam] ([ex_ID])
GO
ALTER TABLE [dbo].[student_exam]  WITH CHECK ADD FOREIGN KEY([Std_ID])
REFERENCES [dbo].[Student] ([St_ID])
GO
ALTER TABLE [dbo].[Student_Phone]  WITH CHECK ADD FOREIGN KEY([St_ID])
REFERENCES [dbo].[Student] ([St_ID])
GO
ALTER TABLE [dbo].[Topic]  WITH CHECK ADD FOREIGN KEY([Course_ID])
REFERENCES [dbo].[Course] ([course_ID])
GO
ALTER TABLE [dbo].[trackcourse]  WITH CHECK ADD FOREIGN KEY([course_ID])
REFERENCES [dbo].[Course] ([course_ID])
GO
ALTER TABLE [dbo].[trackcourse]  WITH CHECK ADD FOREIGN KEY([track_ID])
REFERENCES [dbo].[Tracks] ([track_ID])
GO
ALTER TABLE [dbo].[Tracks]  WITH CHECK ADD FOREIGN KEY([Dept_ID])
REFERENCES [dbo].[Department] ([Dept_ID])
GO
ALTER TABLE [dbo].[Tracks]  WITH CHECK ADD FOREIGN KEY([ins_ID])
REFERENCES [dbo].[Instructor] ([ins_ID])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [chk_age] CHECK  (([St_age]>=(22) AND [St_age]<=(32)))
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [chk_age]
GO
