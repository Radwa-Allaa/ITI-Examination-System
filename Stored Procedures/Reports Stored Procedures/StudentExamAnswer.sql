USE [ExaminationSystem]
GO

/****** Object:  StoredProcedure [dbo].[StudentExamAnswer]    Script Date: 8/20/2024 11:10:42 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[StudentExamAnswer]
 @st_ID  int,
@exam_ID INT
as begin

 SELECT s.St_name,q.Qs_desc ,a.St_Answer, St_status = IIF(q.[correct_answer] like a.[St_Answer],1,0)
            FROM  Question q join Answer a on q.Qs_ID = a.QS_ID join Student s on s.St_ID = a.St_ID
			WHERE a.St_ID = @st_ID AND a.ex_ID = @Exam_ID
  
end
GO

