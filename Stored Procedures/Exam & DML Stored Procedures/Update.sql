---------------UPDATE------------------------

-- Update Branch
CREATE PROCEDURE UpdateBranch
    @B_ID INT,
    @B_name VARCHAR(100),
    @B_location VARCHAR(100)
AS
BEGIN
    BEGIN TRY
        UPDATE Branch
        SET B_name = @B_name,
            B_location = @B_location
        WHERE B_ID = @B_ID;

        PRINT 'Branch updated successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while updating the branch';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

SELECT * FROM Branch;
EXEC UpdateBranch 20, 'Zagazig TITI', 'Shariqa, Egypt';

-- Update Intake
CREATE PROCEDURE UpdateIntake
    @Intake_ID INT,
    @Intake_name VARCHAR(100)
AS
BEGIN
    BEGIN TRY
        UPDATE Intake
        SET Intake_name = @Intake_name
        WHERE Intake_ID = @Intake_ID;

        PRINT 'Intake updated successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while updating the intake';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC UpdateIntake 46, 'Intake 46';

-- Update Company
CREATE PROCEDURE UpdateCompany
    @company_ID INT,
    @company_name VARCHAR(100),
    @company_location VARCHAR(100)
AS
BEGIN
    BEGIN TRY
        UPDATE company
        SET company_name = @company_name,
            company_location = @company_location
        WHERE company_ID = @company_ID;

        PRINT 'Company updated successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while updating the company';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC UpdateCompany 120, 'Xceeds', 'Cairo';

-- Update Instructor
CREATE PROCEDURE UpdateInstructor
    @ins_ID INT,
    @ins_name VARCHAR(100),
    @Salary DECIMAL(10, 2),
    @ins_gender VARCHAR(10),
    @ins_email VARCHAR(100),
    @Dept_ID INT
AS
BEGIN
    BEGIN TRY
        UPDATE Instructor
        SET ins_name = @ins_name,
            Salary = @Salary,
            ins_gender = @ins_gender,
            ins_email = @ins_email,
            Dept_ID = @Dept_ID
        WHERE ins_ID = @ins_ID;

        PRINT 'Instructor updated successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while updating the instructor';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC UpdateInstructor 201, 'Radwa', 12000, 'F', 'Radaalaa@gmail.com', 2;

-- Update Instructor Phone
CREATE PROCEDURE UpdateInstructorPhone
    @ins_ID INT,
    @ins_phone VARCHAR(15)
AS
BEGIN
    BEGIN TRY
        UPDATE InstructorPhone
        SET ins_phone = @ins_phone
        WHERE ins_ID = @ins_ID;

        PRINT 'Instructor phone updated successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while updating the instructor phone';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC UpdateInstructorPhone 50, '01121259924';

-- Update Course
CREATE PROCEDURE UpdateCourse
    @course_ID INT,
    @cr_name VARCHAR(100),
    @Num_hours INT,
    @evaluation VARCHAR(100)
AS
BEGIN
    BEGIN TRY
        UPDATE Course
        SET cr_name = @cr_name,
            Num_hours = @Num_hours,
            evaluation = @evaluation
        WHERE course_ID = @course_ID;

        PRINT 'Course updated successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while updating the course';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC UpdateCourse 61, 'OS', 15, 'Assignment';

-- Update Tracks
CREATE PROCEDURE UpdateTracks
    @track_ID INT,
    @Track_name VARCHAR(100),
    @ins_ID INT
AS
BEGIN
    BEGIN TRY
        UPDATE Tracks
        SET Track_name = @Track_name,
            ins_ID = @ins_ID
        WHERE track_ID = @track_ID;

        PRINT 'Track updated successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while updating the track';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC UpdateTracks 80, 'Full Stack .NET', 15;

-- Update Graduate
CREATE PROCEDURE UpdateGraduate
    @graduate_ID INT,
    @graduate_name VARCHAR(100),
    @job_title VARCHAR(100),
    @track_ID INT
AS
BEGIN
    BEGIN TRY
        UPDATE Graduates
        SET graduate_name = @graduate_name,
            job_title = @job_title,
            track_ID = @track_ID
        WHERE graduate_ID = @graduate_ID;

        IF @@ROWCOUNT = 0
        BEGIN
            PRINT 'No records found to update with the provided graduate_ID';
        END
        ELSE
        BEGIN
            PRINT 'Graduate updated successfully';
        END
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while updating the graduate';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

SELECT * FROM Graduates;
EXEC UpdateGraduate 518, 'Alaa Salah', 'Software Engineering', 20;

-- Update Student
CREATE PROCEDURE UpdateStudent
    @St_ID INT,
    @St_name VARCHAR(100),
    @St_age INT,
    @St_email VARCHAR(100),
    @gender CHAR(1),
    @track_ID INT
AS
BEGIN
    BEGIN TRY
        UPDATE Student
        SET St_name = @St_name,
            St_age = @St_age,
            St_email = @St_email,
            gender = @gender,
            track_ID = @track_ID
        WHERE St_ID = @St_ID;

        IF @@ROWCOUNT = 0
        BEGIN
            PRINT 'No records updated with the provided St_ID';
        END
        ELSE
        BEGIN
            PRINT 'Student updated successfully';
        END
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while updating the student';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC UpdateStudent 301, 'Yasmenn', 24, 'Yasmeen@gmail.com', 'F', 25;

-- Update Student Phone
CREATE PROCEDURE UpdateStudentPhone
    @St_ID INT,
    @St_phone VARCHAR(15)
AS
BEGIN
    BEGIN TRY
        UPDATE Student_Phone
        SET St_phone = @St_phone
        WHERE St_ID = @St_ID;

        PRINT 'Student phone updated successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while updating the student phone';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC UpdateStudentPhone 50, '01121259924';

-- Update Topic
CREATE PROCEDURE UpdateTopic
    @topic_ID INT,
    @topic_name VARCHAR(100),
    @course_ID INT
AS
BEGIN
    BEGIN TRY
        UPDATE Topic
        SET topic_name = @topic_name,
            course_ID = @course_ID
        WHERE topic_ID = @topic_ID;

        IF @@ROWCOUNT = 0
        BEGIN
            PRINT 'No records updated with the provided topic_ID';
        END
        ELSE
        BEGIN
            PRINT 'Topic updated successfully';
        END
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while updating the topic';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC UpdateTopic 201, 'Intro to JavaScript', 4;

-- Update Department
CREATE PROCEDURE UpdateDepartment
    @Dept_ID INT,
    @Dept_Name VARCHAR(100),
    @Manager_ID INT
AS
BEGIN
    BEGIN TRY
        UPDATE Department
        SET Dept_Name = @Dept_Name,
            Manger_ID = @Manager_ID
        WHERE Dept_ID = @Dept_ID;

        IF @@ROWCOUNT = 0
        BEGIN
            PRINT 'No records updated with the provided Dept_ID';
        END
        ELSE
        BEGIN
            PRINT 'Department updated successfully';
        END
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while updating the department';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC UpdateDepartment 8, 'IT', 7;

-- Update Exam
CREATE PROCEDURE UpdateExam
    @ex_ID INT,
    @duration INT,
    @start_time TIME,
    @course_ID INT
AS
BEGIN
    BEGIN TRY
        UPDATE Exam
        SET duration = @duration,
            start_time = @start_time,
            course_ID = @course_ID
        WHERE ex_ID = @ex_ID;

        IF @@ROWCOUNT = 0
        BEGIN
            PRINT 'No records updated with the provided ex_ID';
        END
        ELSE
        BEGIN
            PRINT 'Exam updated successfully';
        END
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while updating the exam';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC UpdateExam 1, 120, '09:00:00', 1;

-- Update Question
CREATE PROCEDURE UpdateQuestion
    @Qs_ID INT,
    @Qs_degree INT,
    @Qs_desc TEXT,
    @Qs_type VARCHAR(100),
    @correct_answer TEXT,
    @Course_ID INT
AS
BEGIN
    BEGIN TRY
        UPDATE Question
        SET Qs_degree = @Qs_degree,
            Qs_desc = @Qs_desc,
            Qs_type = @Qs_type,
            correct_answer = @correct_answer,
            Course_ID = @Course_ID
        WHERE Qs_ID = @Qs_ID;

        IF @@ROWCOUNT = 0
        BEGIN
            PRINT 'No records updated with the provided Qs_ID';
        END
        ELSE
        BEGIN
            PRINT 'Question updated successfully';
        END
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while updating the question';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC UpdateQuestion 300, 1, 'In Python, the "print" function can take multiple arguments.', 'True/False', 'True', 1;
