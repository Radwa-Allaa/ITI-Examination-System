-------------select---------------------
create procedure select_from_Student_Course_Track_Intake
@selection int
as 
begin
	IF @selection = 1
		BEGIN
			SELECT * FROM Student;
		END
	ELSE IF @selection = 2
		BEGIN
			SELECT * FROM Course;
		END
	ELSE IF @selection = 3
		BEGIN
			SELECT * FROM Tracks;
		END
	ELSE IF @selection = 4
		BEGIN
			SELECT * FROM Branch;
		END
	ELSE
		BEGIN
			SELECT 'This number doesn''t exist, please select between 1 (Students), 2 (Courses), 3 (Tracks), 4 (Branches)'
		END
END

execute select_from_Student_Course_Track_Intake 1
-------------------------------------------------------------------

CREATE PROCEDURE SelectBranch
    @B_ID INT
AS
BEGIN
    select B_ID, B_name, B_location From Branch
    where B_ID = @B_ID;
END;

EXEC SelectBranch 20
   
-------------------------------------------------------------------
CREATE PROCEDURE SelectIntake
    @Intake_ID INT
AS
BEGIN
    SELECT Intake_ID, Intake_name
    FROM Intake
    WHERE Intake_ID = @Intake_ID;
END;

Exec  SelectIntake  46
----------------------------------------------------
CREATE PROCEDURE SelectCompany
    @company_ID INT
AS
BEGIN
    SELECT company_ID, company_name, company_location
    FROM company
    WHERE company_ID = @company_ID;
END;

Exec SelectCompany 120
----------------------------------------------------
CREATE PROCEDURE SelectInstructor
    @ins_ID INT
AS
BEGIN
    SELECT ins_ID, ins_name, Salary, ins_gender, ins_email,Dept_ID
    FROM Instructor
    WHERE ins_ID = @ins_ID;
END;
Exec SelectInstructor 201
--------------------------------------------------------------

CREATE PROCEDURE SelectInstructorPhone
    @ins_ID INT
AS
BEGIN
    SELECT ins_ID, ins_phone
    FROM InstructorPhone
    WHERE ins_ID = @ins_ID;
END;
Exec SelectInstructorPhone 60
---------------------------------------------------------------
CREATE PROCEDURE SelectCourse
    @course_ID INT
AS
BEGIN
    SELECT course_ID, cr_name, Num_hours, evaluation
    FROM Course
    WHERE course_ID = @course_ID;
END;

Exec  SelectCourse  61
------------------------------------------------------
CREATE PROCEDURE SelectTracks
    @track_ID INT
AS
BEGIN
    SELECT track_ID, Track_name, ins_ID
    FROM Tracks
    WHERE track_ID = @track_ID;
END;
Exec SelectTracks 80
-------------------------------------------------------
Create PROCEDURE SelectGraduate
    @graduate_ID INT
AS
BEGIN
    BEGIN TRY
        -- Select the graduate record by ID
        SELECT graduate_ID, graduate_name, job_title, track_ID
        FROM Graduates
        WHERE graduate_ID = @graduate_ID;

        -- Check if a record was found
        IF @@ROWCOUNT = 0
        BEGIN
            print 'No records found with the provided graduate_ID';
        END
    END TRY
    BEGIN CATCH
      
        print 'An error occurred while selecting the graduate record';
        PRINT ERROR_MESSAGE();
    END CATCH
END;
  Exec SelectGraduate 518
  select * from Graduates
--------------------------------------------------------------------------
CREATE PROCEDURE SelectStudent
    @St_ID INT
AS
BEGIN
    BEGIN TRY
        -- Select the student record by ID
        SELECT St_ID, St_name, St_age, St_email, gender, track_ID
        FROM Student
        WHERE St_ID = @St_ID;

        -- Check if a record was found
        IF @@ROWCOUNT = 0
        BEGIN
            PRINT 'No records found with the provided St_ID';
        END
    END TRY
    BEGIN CATCH
        -- Handle errors
        PRINT 'An error occurred while selecting the student record';
        PRINT ERROR_MESSAGE();
    END CATCH
END;
Exec SelectStudent 301
---------------------------------------------------------------------------
CREATE PROCEDURE SelectTopic
    @topic_ID INT
AS
BEGIN
    BEGIN TRY
        SELECT topic_ID, topic_name, course_ID
        FROM Topic
        WHERE topic_ID = @topic_ID;

        IF @@ROWCOUNT = 0
        BEGIN
            PRINT 'No records found with the provided topic_ID';
        END
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while selecting the topic';
        PRINT ERROR_MESSAGE();
    END CATCH
END;
Exec SelectTopic 201
---------------------------------------------------------------------------
CREATE PROCEDURE SelectStudentPhone
    @St_ID INT
AS
BEGIN
    SELECT @St_ID, St_Phone
    FROM Student_Phone
    WHERE St_ID = @St_ID;
END;
Exec SelectStudentPhone 60
--------------------------------------------------------------------
CREATE PROCEDURE SelectDepartment
    @Dept_ID INT
AS
BEGIN
    BEGIN TRY
        SELECT Dept_ID, Dept_Name, Manger_ID
        FROM Department
        WHERE Dept_ID = @Dept_ID;

        IF @@ROWCOUNT = 0
        BEGIN
            PRINT 'No records found with the provided Dept_ID';
        END
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while selecting the department';
        PRINT ERROR_MESSAGE();
    END CATCH
END;
Exec SelectDepartment 8
------------------------------------------------------
CREATE PROCEDURE SelectExam
    @ex_ID INT
AS
BEGIN
    BEGIN TRY
        SELECT ex_ID, duration, start_time, course_ID
        FROM Exam
        WHERE ex_ID = @ex_ID;

        IF @@ROWCOUNT = 0
        BEGIN
            PRINT 'No records found with the provided ex_ID';
        END
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while selecting the exam';
        PRINT ERROR_MESSAGE();
    END CATCH
END;
Exec SelectExam 1
-------------------------------------------------------------------
CREATE PROCEDURE SelectQuestion
    @Qs_ID INT = NULL
AS
BEGIN
    BEGIN TRY
        IF @Qs_ID IS NULL
        BEGIN
            SELECT * FROM Question;
        END
        ELSE
        BEGIN
            SELECT * FROM Question
            WHERE Qs_ID = @Qs_ID;
        END
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while selecting the question';
        PRINT ERROR_MESSAGE();
    END CATCH
END;
Exec SelectQuestion 300
-----------------------------------------------------------------------------------
