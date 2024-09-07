ALTER procedure [dbo].[Exam_Generation]
	@Exam_ID int,
	@Course_ID int,
	@Exam_Duration int,
	@Num_TF_Questions int,
	@Num_MCQ_Questions int
as
begin

	begin try
		if not exists (select * from Course where Course_ID=@Course_ID AND @Course_ID IN (1,7,10,13,25,28))
			select 'Course doesnot exist' as 'error'
		else if @Num_TF_Questions + @Num_MCQ_Questions > 10
			select 'Generate only 10 questions' as 'error'
		else
			----insert the generated exam in exam table---
			declare @exam_date datetime 

			if (select top(1) start_time from Exam order by ex_ID desc) is not null
				begin
					select @exam_date = (select top(1) start_time from Exam order by ex_ID desc)
					insert into Exam(ex_ID,duration,start_time,Course_ID, Modification_Date)
					values(@Exam_ID,@Exam_Duration,DATEADD(HOUR, 2, @exam_date),@Course_ID, GETDATE())
				end
			else
				begin
					set @exam_date = CAST(FORMAT(GETDATE(),'yyyy-MM-dd hh:00:00')AS DATETIME)
					insert into Exam(ex_ID,duration,start_time,Course_ID)
					values(@Exam_ID,@Exam_Duration,@exam_date,@Course_ID)
				end

			
			
			--insert T or F questions---
			insert into question_exam(Qs_ID,ex_ID)
			select top (@Num_TF_Questions) Qs_ID, @Exam_ID
			from Question 
			where Question.Course_ID=@Course_ID and Question.Qs_type='True/False'
			order by NEWID()

			--insert MCQ questions---
			insert into question_exam(Qs_ID,ex_ID)
			select top (@Num_MCQ_Questions) Qs_ID, @Exam_ID
			from Question
			where Question.Course_ID=@Course_ID and Question.Qs_type='MCQ'
			order by NEWID()

			update Exam set ex_grade = (select sum(Question.Qs_degree)
			from question_exam,Question
			where question_exam.QS_ID = Question.Qs_ID
			and question_exam.ex_ID = @Exam_ID)
			where Exam.ex_ID = @Exam_ID

			-- Select exam model
            SELECT q.* 
            FROM question_exam qe, Question q, Exam e
			WHERE qe.ex_ID = e.ex_ID AND qe.Qs_ID = q.Qs_ID AND qe.ex_ID = @Exam_ID
			
		end try
		begin catch
			select ERROR_MESSAGE() as ErrorMessage
		end catch
end