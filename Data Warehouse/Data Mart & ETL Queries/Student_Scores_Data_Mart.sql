-- Create Student Dimension with Surrogate Key and SCD Columns
CREATE TABLE Dim_Student (
    Student_Key INT PRIMARY KEY IDENTITY(1,1),
    St_ID INT NOT NULL,  -- Business Key
    St_name VARCHAR(255),
    St_age INT,
    St_email VARCHAR(255),
    St_Gender VARCHAR(50),
	St_city varchar(50), 
	St_Faculty varchar(50),
	St_FreelanceTaskStatus varchar(100),
	St_NumCertificates int,
	St_Phone varchar(15),
	St_Branch varchar(100),
	St_Track varchar(100),
	St_intake varchar(100),
    Start_Date DATETIME NOT NULL DEFAULT(GETDATE()),  -- SCD Start Date
    End_Date DATETIME,  -- SCD End Date
    Is_Current BIT NOT NULL DEFAULT(1),  -- SCD Current Flag
	Source_System_code INT NOT NULL DEFAULT(1)
);

-- Create Exam Dimension with Surrogate Key and SCD Columns
CREATE TABLE Dim_Exam (
    Exam_Key INT PRIMARY KEY IDENTITY(1,1),
    ex_ID INT NOT NULL,  -- Business Key
    Exam_Start_time DATETIME,
    Duration INT,
	course_ID int,
	Source_System_code INT NOT NULL DEFAULT(1)
);
-- Create Course Dimension with Surrogate Key and SCD Columns
CREATE TABLE Dim_Course (
    Course_Key INT PRIMARY KEY IDENTITY(1,1),
    Course_ID INT NOT NULL,  -- Business Key
    c_name VARCHAR(100),
    Num_hours INT,
    Evaluation VARCHAR(100),
	Ins_name varchar(100), 
	Topic_name varchar(100),
    Start_Date DATETIME NOT NULL DEFAULT(GETDATE()),  -- SCD Start Date
    End_Date DATETIME,  -- SCD End Date
    Is_Current BIT NOT NULL DEFAULT(1),  -- SCD Current Flag
	Source_System_code INT NOT NULL DEFAULT(1)
);

-- Create Track Dimension with Surrogate Key and SCD Columns
CREATE TABLE Dim_Track (
    Track_Key INT PRIMARY KEY IDENTITY(1,1),
    Track_ID INT NOT NULL,  -- Business Key
    Track_name NVARCHAR(255),
	Intake_name varchar(100),
	Manager_name VARCHAR(100),
	Branch_name VARCHAR(100),
    Start_Date DATETIME NOT NULL DEFAULT(GETDATE()),  -- SCD Start Date
    End_Date DATETIME,  -- SCD End Date
    Is_Current BIT NOT NULL DEFAULT(1),  -- SCD Current Flag
	Source_System_code INT NOT NULL DEFAULT(1)
);

-- Create Date Dimension (unchanged, as it's usually static)
CREATE TABLE Dim_Date (
    Full_Date DATETIME PRIMARY KEY,
    Year INT,
    Month INT,
    Day INT,
    HOUR INT,
	MINUTE INT
);

----------------------------------------------------------------------------------------------------------------------------------------

-- Create Fact Table for Student Exam Performance with Surrogate Keys
CREATE TABLE Fact_StudentExamPerformance (
    Student_Key INT,  -- Surrogate Foreign Key to Dim_Student
    Exam_Key INT,  -- Surrogate Foreign Key to Dim_Exam
    Track_Key INT,  -- Surrogate Foreign Key to Dim_Track
	Course_Key INT, -- Surrogate Foreign Key to Dim_Course
    Full_Date DATETIME,  -- Surrogate Foreign Key to Dim_Date
    Student_Score DECIMAL(5, 2)
    
    -- Foreign Key Constraints
    FOREIGN KEY (Student_Key) REFERENCES Dim_Student(Student_Key),
    FOREIGN KEY (Exam_Key) REFERENCES Dim_Exam(Exam_Key),
    FOREIGN KEY (Track_Key) REFERENCES Dim_Track(Track_Key),
    FOREIGN KEY (Full_Date) REFERENCES Dim_Date(Full_Date),
	FOREIGN KEY (Course_Key) REFERENCES Dim_Course(Course_Key)
);
