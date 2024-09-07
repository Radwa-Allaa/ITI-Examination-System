-----------------------------------Track_lookup------------------------------------
SELECT track_ID, Track_name, ins_ID
FROM Tracks
order by ins_ID

-----------------------------------Mgr_lookup------------------------------------

SELECT ins_ID, ins_name
FROM Instructor
order by ins_ID

-----------------------------------Intake_Branch_lookup------------------------------------

SELECT tib.track_ID, i.Intake_name, b.B_name
FROM branch_intake_track tib, Intake i , Branch b
WHERE tib.Intake_ID = i.Intake_ID and tib.B_ID = b.B_ID
order by tib.track_ID 

--------------------------------------------------------------------------------------

/*select t.track_ID,t.Track_name,t.ins_ID, i.Intake_name, b.B_name
from Tracks t, branch_intake_track bitrk, Branch b, Intake i
where t.track_ID = bitrk.track_ID and bitrk.Intake_ID = i.Intake_ID and bitrk.B_ID = b.B_ID


update Intake set Intake_name = 'intake 1'
FROM track_Intake ti, Intake i , Tracks t
WHERE ti.Intake_ID = i.Intake_ID and t.track_ID = ti.track_ID and t.track_ID = 4


update Instructor set ins_name = 'yasmen'
from Instructor i , Tracks t
where i.ins_ID = t.ins_ID and i.ins_name = 'yasmin'*/