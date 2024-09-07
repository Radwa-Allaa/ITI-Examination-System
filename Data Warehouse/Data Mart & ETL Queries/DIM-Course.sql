---------------------Instructor lookup--------------------

select course_ID, Ins_name from Instructor i left join course_instructor ci
on i.ins_ID = ci.ins_ID
order by course_ID


---------------------Topic lookup--------------------
select Topic_name , Course_ID
from Topic
order by course_ID

-------------------------------------------------------

/*select c.cr_name, i.ins_ID, t.Topic_Name
from Course c left join Topic t 
on c.course_ID = t.Course_ID 
left join course_instructor ci
on c.course_ID = ci.course_ID 
join Instructor i 
on ci.ins_ID = i.ins_ID*/





