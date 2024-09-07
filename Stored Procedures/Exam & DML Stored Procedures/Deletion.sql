---------------DELETE------------------------

-- Delete from graduates_company
CREATE PROCEDURE delete_from_Graduates_company
    @comp_ID INT
AS
BEGIN
    BEGIN TRY
        DELETE FROM graduates_company
        WHERE company_ID = @comp_ID;
        
        DELETE FROM company 
        WHERE company_ID = @comp_ID;
        
        PRINT 'Company and related records deleted successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while deleting the company and related records';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC delete_from_Graduates_company 1;
---------------------------------------------------------------------------

-- Delete from Branch
ALTER PROCEDURE DeleteBranch
    @B_ID INT
AS
BEGIN
    BEGIN TRY
        DELETE FROM Branch
        WHERE B_ID = @B_ID;
        
        PRINT 'Branch deleted successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while deleting the branch';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC DeleteBranch 20;
SELECT * FROM Branch;
---------------------------------------------------------------------------

-- Delete from Intake
ALTER PROCEDURE DeleteIntake
    @Intake_ID INT
AS
BEGIN
    BEGIN TRY
        DELETE FROM Intake
        WHERE Intake_ID = @Intake_ID;
        
        PRINT 'Intake deleted successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while deleting the intake';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC DeleteIntake 46;
---------------------------------------------------------------------------

-- Delete from company
ALTER PROCEDURE DeleteCompany
    @company_ID INT
AS
BEGIN
    BEGIN TRY
        DELETE FROM company
        WHERE company_ID = @company_ID;
        
        PRINT 'Company deleted successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while deleting the company';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC DeleteCompany 120;
---------------------------------------------------------------------------

-- Delete from Instructor
CREATE PROCEDURE DeleteInstructor
    @ins_ID INT
AS
BEGIN
    BEGIN TRY
        DELETE FROM Instructor
        WHERE ins_ID = @ins_ID;
        
        PRINT 'Instructor deleted successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while deleting the instructor';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC DeleteInstructor 201;
SELECT * FROM Instructor;
---------------------------------------------------------------------------

-- Delete from InstructorPhone
CREATE PROCEDURE DeleteInstructorPhone
    @ins_ID INT,
    @ins_phone VARCHAR(15)
AS
BEGIN
    BEGIN TRY
        DELETE FROM InstructorPhone
        WHERE ins_ID = @ins_ID AND ins_phone = @ins_phone;
        
        PRINT 'Instructor phone deleted successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while deleting the instructor phone';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC DeleteInstructorPhone 60, '01064161638';
---------------------------------------------------------------------------

-- Delete from Course
CREATE PROCEDURE DeleteCourse
    @course_ID INT
AS
BEGIN
    BEGIN TRY
        DELETE FROM Course
        WHERE course_ID = @course_ID;
        
        PRINT 'Course deleted successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while deleting the course';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC DeleteCourse 61;
---------------------------------------------------------------------------

-- Delete from Tracks
CREATE PROCEDURE DeleteTracks
    @track_ID INT
AS
BEGIN
    BEGIN TRY
        DELETE FROM Tracks
        WHERE track_ID = @track_ID;
        
        PRINT 'Track deleted successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while deleting the track';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC DeleteTracks 80;

---------------------------------------------------------------------------

-- Delete from Graduates
CREATE PROCEDURE DeleteGraduate
    @graduate_ID INT
AS
BEGIN
    BEGIN TRY
        DELETE FROM Graduates
        WHERE graduate_ID = @graduate_ID;

        IF @@ROWCOUNT = 0
        BEGIN
            PRINT 'No records found to delete with the provided graduate_ID';
        END
        ELSE
        BEGIN
            PRINT 'Graduate deleted successfully';
        END
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while deleting the graduate record';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC DeleteGraduate 519;
---------------------------------------------------------------------------

-- Delete from Student
CREATE PROCEDURE DeleteStudent
    @St_ID INT
AS
BEGIN
    BEGIN TRY
        DELETE FROM Student
        WHERE St_ID = @St_ID;

        IF @@ROWCOUNT = 0
        BEGIN
            PRINT 'No records found to delete with the provided St_ID';
        END
        ELSE
        BEGIN
            PRINT 'Student deleted successfully';
        END
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while deleting the student record';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC DeleteStudent 301;
---------------------------------------------------------------------------

-- Delete from Student_Phone
CREATE PROCEDURE DeleteStudentPhone
    @St_ID INT,
    @St_phone VARCHAR(15)
AS
BEGIN
    BEGIN TRY
        DELETE FROM Student_Phone
        WHERE St_ID = @St_ID AND St_phone = @St_phone;
        
        PRINT 'Student phone deleted successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while deleting the student phone';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC DeleteStudentPhone 60, '01064161638';
---------------------------------------------------------------------------

-- Delete from Topic
CREATE PROCEDURE DeleteTopic
    @topic_ID INT
AS
BEGIN
    BEGIN TRY
        DELETE FROM Topic
        WHERE topic_ID = @topic_ID;

        IF @@ROWCOUNT = 0
        BEGIN
            PRINT 'No records deleted with the provided topic_ID';
        END
        ELSE
        BEGIN
            PRINT 'Topic deleted successfully';
        END
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while deleting the topic';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC DeleteTopic 201;
---------------------------------------------------------------------------

-- Delete from Department
CREATE PROCEDURE DeleteDepartment
    @Dept_ID INT
AS
BEGIN
    BEGIN TRY
        DELETE FROM Department
        WHERE Dept_ID = @Dept_ID;

        IF @@ROWCOUNT = 0
        BEGIN
            PRINT 'No records deleted with the provided Dept_ID';
        END
        ELSE
        BEGIN
            PRINT 'Department deleted successfully';
        END
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while deleting the department';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC DeleteDepartment 8;
---------------------------------------------------------------------------

-- Delete from Exam
CREATE PROCEDURE DeleteExam
    @ex_ID INT
AS
BEGIN
    BEGIN TRY
        DELETE FROM Exam
        WHERE ex_ID = @ex_ID;

        IF @@ROWCOUNT = 0
        BEGIN
            PRINT 'No records deleted with the provided ex_ID';
        END
        ELSE
        BEGIN
            PRINT 'Exam deleted successfully';
        END
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while deleting the exam';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC DeleteExam 1;
---------------------------------------------------------------------------

-- Delete from Question
CREATE PROCEDURE DeleteQuestion
    @Qs_ID INT
AS
BEGIN
    BEGIN TRY
        DELETE FROM Question
        WHERE Qs_ID = @Qs_ID;

        PRINT 'Question deleted successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred while deleting the question';
        PRINT ERROR_MESSAGE();
    END CATCH
END;

EXEC DeleteQuestion 300;
---------------------------------------------------------------------------
