USE [ExaminationSystem]
GO

/****** Object:  StoredProcedure [dbo].[ExamQuestions]    Script Date: 8/20/2024 11:16:43 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[ExamQuestions]
@exam_ID INT
as begin

 SELECT q.Qs_desc ,c.choice_Desc
            FROM  Question q join question_exam qe on q.Qs_ID = qe.QS_ID 
			join Choice c on q.Qs_ID = c.QS_ID
			where qe.ex_ID = @Exam_ID

  
end
GO

