Select * from tblUserInfo

SELECT tblApplication.*,tblUserInfo.* FROM tblApplication INNER JOIN tblUserInfo ON tblApplication.Email = tblUserInfo.Email INNER JOIN tblJobs ON tblJobs.JobCreatedByUserId =  15 group by tblUserInfo.Email