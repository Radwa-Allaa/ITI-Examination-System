ALTER procedure [dbo].[Exam_Correction] 
@St_ID int,
@Exam_ID int
as
begin
	begin try
		if not exists (select * from Answer where ex_ID=@Exam_ID and St_ID=@St_ID)
			select 'student didnt take this exam' as 'error'
		else
			begin

				declare @student_Grade float = 0
				declare @examTotal float = 0
				--********************************************************update Answer
				select @student_Grade = sum(case when CAST(Answer.St_Answer AS VARCHAR(MAX)) = CAST(Question.correct_answer AS VARCHAR(MAX))
							then Question.Qs_degree
							else 0
							end)
				from Answer,Question
				where Answer.QS_ID = Question.Qs_ID
				and Answer.ex_ID = @Exam_ID
				and Answer.St_ID = @St_ID 

				select @examTotal = ex_Grade from Exam where ex_ID = @Exam_ID
				
				declare @exam_percentage DECIMAL(5,2);
				SET @exam_percentage = CAST(ROUND(((@student_Grade * 100.0) / @examTotal), 2) AS DECIMAL(5,2));

				declare @St_Status varchar(20)
					if @exam_percentage<50
					set @St_Status='Failed'
					if @exam_percentage>=50
					set @St_Status='Passed'

				INSERT INTO student_exam(Std_ID,ex_ID,st_Grade,exam_percentage,St_status) 
				VALUES(@St_ID,@Exam_ID,@student_Grade,@exam_percentage, @St_Status)

			end

	end try

	begin catch 
		select ERROR_MESSAGE() as errorMessage
	end catch
end

exec Exam_Correction 1,1
GO
exec Exam_Correction 2,1
GO
exec Exam_Correction 5,2
GO
exec Exam_Correction 6,2
GO
exec Exam_Correction 21,3
GO
exec Exam_Correction 33,3
GO
exec Exam_Correction 52,4
GO
exec Exam_Correction 35,4
GO
exec Exam_Correction 13,5
GO
exec Exam_Correction 55,5
GO
exec Exam_Correction 60,6
GO
exec Exam_Correction 15,6
GO

select * from student_exam
delete from student_exam