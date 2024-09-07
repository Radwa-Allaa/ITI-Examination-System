---------------INSERT------------------------

-- Insert into Branch
ALTER PROCEDURE InsertBranch
    @B_ID INT,
    @B_name VARCHAR(100),
    @B_location VARCHAR(100)
AS
BEGIN
    BEGIN TRY
        INSERT INTO Branch (B_ID, B_name, B_location)
        VALUES (@B_ID, @B_name, @B_location);
        PRINT 'Branch inserted successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while inserting the branch';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC InsertBranch 20, 'Zagazig ITI', 'Shariqa, Egypt';
SELECT * FROM Branch;

-- Insert into Intake
ALTER PROCEDURE InsertIntake
    @Intake_ID INT,
    @Intake_name VARCHAR(100)
AS
BEGIN
    BEGIN TRY
        INSERT INTO Intake (Intake_ID, Intake_name)
        VALUES (@Intake_ID, @Intake_name);
        PRINT 'Intake inserted successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while inserting the intake';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC InsertIntake 46, 'Intake46';

-- Insert into Company
ALTER PROCEDURE InsertCompany
    @company_ID INT,
    @company_name VARCHAR(100),
    @company_location VARCHAR(100)
AS
BEGIN
    BEGIN TRY
        INSERT INTO Company (company_ID, company_name, company_location)
        VALUES (@company_ID, @company_name, @company_location);
        PRINT 'Company inserted successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while inserting the company';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC InsertCompany 120, 'Vois', 'SmartVillage';

-- Insert into Instructor
ALTER PROCEDURE InsertInstructor
    @ins_ID INT,
    @ins_name VARCHAR(100),
    @Salary DECIMAL(10, 2),
    @ins_gender VARCHAR(10),
    @ins_email VARCHAR(100),
    @Dept_ID INT
AS
BEGIN
    BEGIN TRY
        INSERT INTO Instructor (ins_ID, ins_name, Salary, ins_gender, ins_email, Dept_ID)
        VALUES (@ins_ID, @ins_name, @Salary, @ins_gender, @ins_email, @Dept_ID);
        PRINT 'Instructor inserted successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while inserting the instructor';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC InsertInstructor 201, 'Alaa', 20000, 'F', 'alaa.salah.22001@gmail.com', 2;

-- Insert into InstructorPhone
ALTER PROCEDURE InsertInstructorPhone
    @ins_ID INT,
    @ins_phone VARCHAR(15)
AS
BEGIN
    BEGIN TRY
        INSERT INTO InstructorPhone (ins_ID, ins_phone)
        VALUES (@ins_ID, @ins_phone);
        PRINT 'Instructor phone inserted successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while inserting the instructor phone';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC InsertInstructorPhone 60, '01064161638';

-- Insert into Course
ALTER PROCEDURE InsertCourse
    @course_ID INT,
    @cr_name VARCHAR(100),
    @Num_hours INT,
    @evaluation VARCHAR(100)
AS
BEGIN
    BEGIN TRY
        INSERT INTO Course (course_ID, cr_name, Num_hours, evaluation)
        VALUES (@course_ID, @cr_name, @Num_hours, @evaluation);
        PRINT 'Course inserted successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while inserting the course';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC InsertCourse 61, 'Testing', 12, 'Final Exam';

-- Insert into Tracks
ALTER PROCEDURE InsertTracks
    @track_ID INT,
    @Track_name VARCHAR(100),
    @ins_ID INT
AS
BEGIN
    BEGIN TRY
        INSERT INTO Tracks (track_ID, Track_name, ins_ID)
        VALUES (@track_ID, @Track_name, @ins_ID);
        PRINT 'Track inserted successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while inserting the track';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC InsertTracks 80, 'Full Stack .NET', 12;

-- Insert into Graduate
ALTER PROCEDURE InsertGraduate
    @graduate_ID INT,
    @graduate_name VARCHAR(100),
    @job_title VARCHAR(100),
    @track_ID INT
AS
BEGIN
    BEGIN TRY
        INSERT INTO Graduates (graduate_ID, graduate_name, job_title, track_ID)
        VALUES (@graduate_ID, @graduate_name, @job_title, @track_ID);
        PRINT 'Graduate inserted successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while inserting the graduate';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC InsertGraduate 519, 'Alaa Salah', 'Software Engineering', 20;
SELECT * FROM Graduates;

-- Insert into Student
ALTER PROCEDURE InsertStudent
    @St_ID INT,
    @St_name VARCHAR(100),
    @St_age INT,
    @St_email VARCHAR(100),
    @gender CHAR(1),
    @track_ID INT
AS
BEGIN
    BEGIN TRY
        INSERT INTO Student (St_ID, St_name, St_age, St_email, gender, track_ID)
        VALUES (@St_ID, @St_name, @St_age, @St_email, @gender, @track_ID);
        PRINT 'Student inserted successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while inserting the student';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC InsertStudent 301, 'Yasmeen', 23, 'Yasmeen@gmail.com', 'F', 25;

-- Insert into StudentPhone
ALTER PROCEDURE InsertStudentPhone
    @St_ID INT,
    @St_phone VARCHAR(15)
AS
BEGIN
    BEGIN TRY
        INSERT INTO Student_Phone (St_ID, St_phone)
        VALUES (@St_ID, @St_phone);
        PRINT 'Student phone inserted successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while inserting the student phone';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC InsertStudentPhone 60, '01064161638';

-- Insert into Topic
ALTER PROCEDURE InsertTopic
    @topic_ID INT,
    @topic_name VARCHAR(100),
    @course_ID INT
AS
BEGIN
    BEGIN TRY
        INSERT INTO Topic (topic_ID, topic_name, course_ID)
        VALUES (@topic_ID, @topic_name, @course_ID);
        PRINT 'Topic inserted successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while inserting the topic';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC InsertTopic 201, 'Intro to JavaScript', 4;

-- Insert into Department
ALTER PROCEDURE InsertDepartment
    @Dept_ID INT,
    @Dept_Name VARCHAR(100),
    @Manager_ID INT
AS
BEGIN
    BEGIN TRY
        INSERT INTO Department (Dept_ID, Dept_Name, Manger_ID)
        VALUES (@Dept_ID, @Dept_Name, @Manager_ID);
        PRINT 'Department inserted successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while inserting the department';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC InsertDepartment 8, 'IT', 7;

-- Insert into Exam
ALTER PROCEDURE InsertExam
    @ex_ID INT,
    @duration INT,
    @start_time TIME,
    @course_ID INT
AS
BEGIN
    BEGIN TRY
        INSERT INTO Exam (ex_ID, duration, start_time, course_ID)
        VALUES (@ex_ID, @duration, @start_time, @course_ID);
        PRINT 'Exam inserted successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while inserting the exam';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC InsertExam 7, 120, '09:00:00', 1;

-- Insert into Question
ALTER PROCEDURE InsertQuestion
    @Qs_ID INT,
    @Qs_degree INT,
    @Qs_desc TEXT,
    @Qs_type VARCHAR(100),
    @correct_answer TEXT,
    @Course_ID INT
AS
BEGIN
    BEGIN TRY
        INSERT INTO Question (Qs_ID, Qs_degree, Qs_desc, Qs_type, correct_answer, Course_ID)
        VALUES (@Qs_ID, @Qs_degree, @Qs_desc, @Qs_type, @correct_answer, @Course_ID);
        PRINT 'Question inserted successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while inserting the question';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC InsertQuestion 300, 1, 'In Python, the "print" function can take multiple arguments.', 'True/False', 'True', 1;
