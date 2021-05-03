1. First, display the ER-diagram (10 pts); 
2. For each table, perform a query to show all data; (20 pts)
3. For each table, perform a query using at least one of the aggregate functions; (30 pts)
4. For each relationship, perform a joint query on the tables that are DIRECTLY related through that relationship. (40 pts)
Make a 10-minute in-class presentation. Must fully test your product and have everything ready. You will get a zero if fail to show up or make presentation when asked by instruction. You will lose points if your product has bug(s) or fails during presentation.
-- aggregate functions for all table
-- @block
SELECT COUNT(1) AS nbCenter FROM StudentCenter;

-- @block
SELECT SUM(salary) AS totalSalary FROM Instructor;

-- @block
SELECT COUNT(1) AS nbAdvisors FROM AcademicAdvisor;

-- @block
SELECT COUNT(sex) AS nbMale FROM Student
WHERE sex = "M";

-- @block
SELECT COUNT(1) AS nbActivities FROM ExtracuricularActivity;

-- @block
SELECT SUM(balance) AS totalGrant FROM Financing
WHERE eligibility = "Y";

-- @block
SELECT COUNT(1) AS nbTasks FROM Task;

-- @block
SELECT COUNT(1) AS nbAppointment FROM Appointment;

-- @block
SELECT COUNT(1) AS nbCourses FROM Course;

-- @block
SELECT COUNT(1) AS nbCourseTeaching FROM CourseTeaching;

-- @block
SELECT COUNT(1) AS nbCourseEnrollment FROM CourseEnrollment;