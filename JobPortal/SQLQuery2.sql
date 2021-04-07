SELECT tblApplication.*,tblUserInfo.* FROM tblApplication 
INNER JOIN tblUserInfo ON tblApplication.Email=tblUserInfo.Email 
INNER JOIN tblJobs ON tblJobs.JobCreatedByUserId = tblUserInfo.loginId;