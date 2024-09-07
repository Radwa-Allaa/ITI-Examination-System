------------------------------------------Student_Lookup-------------------------------------------------

SELECT Student_Key, St_ID 
FROM Dim_Student
WHERE Is_Current = 1

------------------------------------------Track_Lookup------------------------------------------------

SELECT Track_Key, Track_ID
FROM Dim_Track
WHERE Is_Current = 1

-----------------------------------------Course_Lookup-----------------------------------------------

SELECT Course_Key, Course_ID
FROM Dim_Course
WHERE Is_Current = 1

-----------------------------------------Exam_Lookup-------------------------------------------------

SELECT Exam_Key, ex_ID, Exam_Start_time
FROM Dim_Exam

SELECT Std_ID, st_Grade
FROM student_exam

-----------------------------------------Date_Lookup-------------------------------------------------

SELECT Full_Date
FROM Dim_Date

--------------------------------------------------------------------------------------------------------

/*SELECT S.St_ID, T.track_ID, e.course_ID,e.ex_ID, e.start_time, se.st_Grade
FROM Student s join Tracks t
on s.track_ID = t.track_ID join student_exam se
on s.St_ID = se.Std_ID join Exam e
on se.ex_ID = e.ex_ID*/
