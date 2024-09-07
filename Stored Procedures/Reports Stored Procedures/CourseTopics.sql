USE [ExaminationSystem]
GO

/****** Object:  StoredProcedure [dbo].[CourseTopics]    Script Date: 8/20/2024 11:10:03 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[CourseTopics]
@Course_ID INT
as begin

 SELECT c.cr_name,t.Topic_Name
            FROM  Course c join Topic t on c.course_ID= t.Course_ID
			where c.course_ID=@Course_ID

  
end
GO

