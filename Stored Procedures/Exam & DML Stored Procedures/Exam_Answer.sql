ALTER procedure [dbo].[exam_answer]
    @st_ID  int,
	@exam_ID INT,
	@q_ID int, 
	@answer varchar(300)
as
begin
    begin try
        IF (@exam_ID IS NULL OR @st_ID IS NULL OR @q_ID IS NULL )
            Select 'exam id, Student id, question id are required'
        ELSE
            -- Insert the answers into the answers table 
			--*********************if question exists in this exam and answer in its choices *************************************************
			if exists (select * from question_exam where ex_ID = @exam_ID and Qs_ID = @q_ID) and exists
			(select * from Choice where QS_ID = @q_ID and convert(varchar(300),choice_Desc) = @answer)
				begin
						begin
							INSERT INTO Answer(St_ID,ex_ID,QS_ID,St_Answer)
							VALUES (@st_ID,@exam_ID,@q_ID,@answer)
						end
				end
			else
				select 'question or answer doesnt exist in this exam'

    END TRY
    BEGIN CATCH
       		select ERROR_MESSAGE() as ErrorMessage
    END CATCH;
END;


-- Insert answers for Student 1 in Exam 1   7 correct, 3 incorrect vvvvvvvvvvvvvvvvvv
exec exam_answer 1, 1, 2, 'False'          -- Question 2, Answer False (Correct)
exec exam_answer 1, 1, 3, 'True'	       -- Question 3, Answer True (Correct)
exec exam_answer 1, 1, 4, 'False'          -- Question 4, Answer False (Correct)
exec exam_answer 1, 1, 5, 'True'	       -- Question 5, Answer True (Correct)
exec exam_answer 1, 1, 6, 'False'          -- Question 6, Answer False (Correct)
exec exam_answer 1, 1, 13, 'def function_name():'     -- Question 13, Answer function() (Correct)
exec exam_answer 1, 1, 14, '/*'						  -- Question 14, Answer /* (Wrong)
exec exam_answer 1, 1, 15, 'Creator'        -- Question 15, Answer Creator (Wrong)
exec exam_answer 1, 1, 19, 'use module_name' -- Question 19, Answer use module_name (Wrong)
exec exam_answer 1, 1, 20, 'True'         -- Question 20, Answer True (Correct)

select * from Answer

-- Insert answers for Student 2 in Exam 1 5 correct, 5 incorrect     vvvvvvvvvvvvvvvvv
exec exam_answer 2, 1, 2, 'False'          -- Question 2, Answer False (Correct)
exec exam_answer 2, 1, 3, 'True'           -- Question 3, Answer True (Correct)
exec exam_answer 2, 1, 4, 'False'           -- Question 4, Answer False (correct)
exec exam_answer 2, 1, 5, 'True'           -- Question 5, Answer True (Correct)
exec exam_answer 2, 1, 6, 'False'           -- Question 6, Answer False (correct)
exec exam_answer 2, 1, 13, 'function function_name()' -- Question 13, Answer function function_name() (Incorrect)
exec exam_answer 2, 1, 14, '#'            -- Question 14, Answer // (Correct)
exec exam_answer 2, 1, 15, 'Constructor'   -- Question 15, Answer Constructor (Correct)
exec exam_answer 2, 1, 19, 'include module_name' -- Question 19, Answer include module_name (Incorrect)
exec exam_answer 2, 1, 20, 'True'          -- Question 20, Answer True (correct)

-- Insert answers for Student 5 in Exam 2 4 correct, 6 incorrect    xxxxxxxxxxx
exec exam_answer 5, 2, 83, 'False'   -- Correct
exec exam_answer 5, 2, 84, 'True'    -- Correct
exec exam_answer 5, 2, 88, 'True'    -- Correct
exec exam_answer 5, 2, 89, 'False'   -- Incorrect
exec exam_answer 5, 2, 90, 'True'    -- Incorrect
exec exam_answer 5, 2, 93, '2 GB'    -- Incorrect
exec exam_answer 5, 2, 94, 'Graphs'  -- Incorrect
exec exam_answer 5, 2, 96, 'Visuals' -- Incorrect
exec exam_answer 5, 2, 98, 'Bar chart' -- Correct
exec exam_answer 5, 2, 99, 'Record-Level Security' -- Incorrect


-- Insert answers for Student 6 in Exam 2 8 correct, 2 incorrect  vvvvvvvvvvvvvvvvvvvvv
exec exam_answer 6, 2, 83, 'False'   -- Correct
exec exam_answer 6, 2, 84, 'True'    -- Correct
exec exam_answer 6, 2, 88, 'True'    -- Correct
exec exam_answer 6, 2, 89, 'True'    -- Correct
exec exam_answer 6, 2, 90, 'False'   -- Correct
exec exam_answer 6, 2, 93, '1 GB'    -- Correct
exec exam_answer 6, 2, 94, 'Tables'  -- InCorrect
exec exam_answer 6, 2, 96, 'Groups'  -- Correct
exec exam_answer 6, 2, 98, 'Line chart' -- Correct
exec exam_answer 6, 2, 99, 'Record-Level Security' -- Incorrect

-- Insert answers for Student 21 in Exam 3 8 correct, 2 incorrect  vvvvvvvvvvvvvvvvvvvvv
exec exam_answer 21, 3, 21, 'False'  -- Correct
exec exam_answer 21, 3, 24, 'True'    -- Correct
exec exam_answer 21, 3, 26, 'True'    -- Correct
exec exam_answer 21, 3, 29, 'False'   -- Correct
exec exam_answer 21, 3, 30, 'True')    -- Incorrect
exec exam_answer 21, 3, 34, 'Static Method'  -- Correct
exec exam_answer 21, 3, 36, 'extends' -- Correct
exec exam_answer 21, 3, 37, 'Polymorphism'  -- Correct
exec exam_answer 21, 3, 39, 'Abstract Class' -- Correct
exec exam_answer 21, 3, 40, 'Class Method'   -- Correct

-- Insert answers for Student 33 in Exam 3 3 correct, 7 incorrect  xxxxxxxxxxxx
exec exam_answer 33, 3, 21, 'True'   -- Incorrect (Correct answer: False)
exec exam_answer 33, 3, 24, 'True'   -- Correct
exec exam_answer 33, 3, 26, 'False'  -- Incorrect (Correct answer: True)
exec exam_answer 33, 3, 29, 'True'   -- Incorrect (Correct answer: False)
exec exam_answer 33, 3, 30, 'False'  -- Correct
exec exam_answer 33, 3, 34, 'Class Method'  -- Incorrect (Correct answer: Static Method)
exec exam_answer 33, 3, 36, 'Super'  -- Incorrect (Correct answer: extends)
exec exam_answer 33, 3, 37, 'Inheritance'  -- Incorrect (Correct answer: Polymorphism)
exec exam_answer 33, 3, 39, 'Class'  -- Incorrect (Correct answer: Abstract Class)
exec exam_answer 33, 3, 40, 'Class Method' -- Correct

-- Insert answers for Student 52 in Exam 4 all 10  vvvvvvvvvvvvvvvvvvvvv
exec exam_answer 52, 4, 43, 'True'   -- Correct
exec exam_answer 52, 4, 44, 'False'  -- Correct
exec exam_answer 52, 4, 45, 'True'   -- Correct
exec exam_answer 52, 4, 46, 'False'  -- Correct
exec exam_answer 52, 4, 49, 'True'   -- Correct
exec exam_answer 52, 4, 53, 'To combine rows from two or more tables based on a related column' -- Correct
exec exam_answer 52, 4, 54, 'ORDER BY'  -- Correct
exec exam_answer 52, 4, 55, 'UPDATE'  -- Correct
exec exam_answer 52, 4, 56, 'DROP TABLE'  -- Correct
exec exam_answer 52, 4, 59, 'COUNT()'  -- Correct

-- Insert answers for Student 35 in Exam 4 4 correct, 6 incorrect XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

exec exam_answer 35, 4, 43, 'True'   -- Correct
exec exam_answer 35, 4, 44, 'True'   -- Incorrect
exec exam_answer 35, 4, 45, 'True'   -- Correct
exec exam_answer 35, 4, 46, 'True'   -- Incorrect
exec exam_answer 35, 4, 49, 'False'  -- Incorrect
exec exam_answer 35, 4, 53, 'To aggregate data by grouping records' -- Incorrect
exec exam_answer 35, 4, 54, 'ORDER BY' -- Correct
exec exam_answer 35, 4, 55, 'ALTER'  -- Incorrect
exec exam_answer 35, 4, 56, 'TRUNCATE TABLE' -- Incorrect
exec exam_answer 35, 4, 59, 'COUNT()' -- Correct

-- Insert answers for Student 13 in Exam 5 9 correct, 1 incorrect VVVVVVVVVVVVVVVVVVVVVVVVV

exec exam_answer 13, 5, 47, 'True'  -- Correct
exec exam_answer 13, 5, 41, 'True'  -- Correct
exec exam_answer 13, 5, 43, 'True'  -- Correct
exec exam_answer 13, 5, 48, 'False' -- Correct
exec exam_answer 13, 5, 50, 'True'  -- Correct
exec exam_answer 13, 5, 51, 'SELECT' -- Correct
exec exam_answer 13, 5, 52, 'WHERE'  -- Correct
exec exam_answer 13, 5, 53, 'To combine rows from two or more tables based on a related column' -- Correct
exec exam_answer 13, 5, 54, 'ORDER BY' -- Correct
exec exam_answer 13, 5, 57, 'ADD TABLE' -- Incorrect

-- Insert answers for Student 55 in Exam 5 8 correct, 2 incorrect VVVVVVVVVVVVVVVVVVVVVVVVV

exec exam_answer 55, 5, 47, 'True'  -- Correct
exec exam_answer 55, 5, 41, 'True'  -- Correct
exec exam_answer 55, 5, 43, 'True'  -- Correct
exec exam_answer 55, 5, 48, 'False' -- Correct
exec exam_answer 55, 5, 50, 'True'  -- Correct
exec exam_answer 55, 5, 51, 'SELECT' -- Correct
exec exam_answer 55, 5, 52, 'WHERE'  -- Correct
exec exam_answer 55, 5, 53, 'To combine rows from two or more tables based on a related column' -- Incorrect
exec exam_answer 55, 5, 54, 'DISTINCT' -- Incorrect
exec exam_answer 55, 5, 57, 'MAKE TABLE' -- Incorrect

-- Insert answers for Student 60 in Exam 6 1 correct, 9 incorrect VVVVVVVVVVVVVVVVVV

exec exam_answer 60, 6, 41, 'False'  -- Incorrect
exec exam_answer 60, 6, 42, 'False'   -- correct
exec exam_answer 60, 6, 46, 'False'   -- correct
exec exam_answer 60, 6, 48, 'True'   -- Incorrect
exec exam_answer 60, 6, 49, 'True'  -- correct
exec exam_answer 60, 6, 51, 'SELECT' -- correct
exec exam_answer 60, 6, 54, 'ORDER BY' -- correct
exec exam_answer 60, 6, 55, 'UPDATE' -- correct
exec exam_answer 60, 6, 58, 'To sort rows into groups based on the column values' -- Incorrect
exec exam_answer 60, 6, 59, 'COUNT()'  -- Correct

-- Insert answers for Student 15 in Exam 6  all correct VVVVVVVVVVVVVVVVVVVVVV

exec exam_answer 15, 6, 41, 'True'   -- Correct
exec exam_answer 15, 6, 42, 'False'  -- Correct
exec exam_answer 15, 6, 46, 'False'  -- Correct
exec exam_answer 15, 6, 48, 'False'  -- Correct
exec exam_answer 15, 6, 49, 'True'   -- Correct
exec exam_answer 15, 6, 51, 'SELECT' -- Correct
exec exam_answer 15, 6, 54, 'ORDER BY' -- Correct
exec exam_answer 15, 6, 55, 'UPDATE' -- Correct
exec exam_answer 15, 6, 58, 'To group rows that have the same values into summary rows' -- Correct
exec exam_answer 15, 6, 59, 'COUNT()' -- Correct

select * from Answer
delete from Answer 