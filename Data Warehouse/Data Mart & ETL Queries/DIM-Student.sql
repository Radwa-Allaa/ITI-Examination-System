-----------------------------------Student_lookup------------------------------------

SELECT St_ID, St_name, St_age ,St_email, gender, St_city, St_Faculty, Certification, Freelance, track_ID, Intake_ID, B_ID
FROM Student
order by track_ID

-----------------------------------Track_lookup------------------------------------

SELECT track_ID, Track_name
FROM Tracks
order by track_ID

-----------------------------------Intake_lookup------------------------------------

SELECT Intake_ID, Intake_name
FROM Intake
order by Intake_ID

-----------------------------------Branch_lookup------------------------------------

SELECT B_ID, B_name
FROM Branch
order by B_ID

-----------------------------------Phone_lookup------------------------------------

SELECT St_Phone, St_ID
FROM Student_Phone
order by St_ID

-----------------------------------------------------------------------------------

/*SELECT s.St_ID, s.St_name, s.St_age ,s.St_email, s.gender, s.St_city, s.St_Faculty, sph.St_Phone, Certification, Freelance, t.Track_name, i.Intake_name, b.B_name
FROM Student s left join Student_Phone sph
on s.St_ID = sph.St_ID 
left join Tracks t
ON s.track_ID = t.track_ID
left join Intake i
ON s.Intake_ID = i.Intake_ID
left join Branch b
ON s.B_ID = b.B_ID



update Student_Phone set St_Phone = '01125844820'
where St_ID = 200 and St_Phone = '01125844821'


update Student set St_name = 'Yasmen Samir'
where St_ID = 200


update Student set St_city = 'Helwan'
where St_ID = 200


select * from Dim_Student*/
