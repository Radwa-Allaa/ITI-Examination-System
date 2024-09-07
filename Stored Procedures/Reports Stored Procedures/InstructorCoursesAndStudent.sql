USE [ExaminationSystem]
GO

/****** Object:  StoredProcedure [dbo].[GetInstructorCoursesAndStudents]    Script Date: 8/20/2024 11:16:23 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetInstructorCoursesAndStudents]
    @InstructorID INT
AS
BEGIN
    SELECT 
        c.cr_name AS CourseName,
        COUNT(DISTINCT s.St_ID) AS NumberOfStudents
    FROM 
        Instructor i
    INNER JOIN course_instructor ci ON i.ins_ID = ci.Ins_ID
    INNER JOIN Course c ON ci.course_ID = c.course_ID
    LEFT JOIN trackcourse tc ON c.course_ID = tc.course_ID
    LEFT JOIN Tracks t ON tc.track_ID = t.Track_ID
    LEFT JOIN Student s ON t.track_ID = s.track_ID
    WHERE 
        i.ins_ID = @InstructorID
    GROUP BY 
        c.cr_name
    ORDER BY 
        c.cr_name;
END
GO

