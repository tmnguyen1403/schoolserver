1. First, display the ER-diagram (10 pts); 
2. For each table, perform a query to show all data; (20 pts)
3. For each table, perform a query using at least one of the aggregate functions; (30 pts)
4. For each relationship, perform a joint query on the tables that are DIRECTLY related through that relationship. (40 pts)
Make a 10-minute in-class presentation. Must fully test your product and have everything ready. You will get a zero if fail to show up or make presentation when asked by instruction. You will lose points if your product has bug(s) or fails during presentation.
-- show data for all table
-- @block
SELECT * FROM StudentCenter;

-- @block
SELECT * FROM Instructor;

-- @block
SELECT * FROM AcademicAdvisor;

-- @block
SELECT * FROM Student;

-- @block
SELECT * FROM ExtracuricularActivity;

-- @block
SELECT * FROM Financing;

-- @block
SELECT * FROM Task;

-- @block
SELECT * FROM Appointment;

-- @block
SELECT * FROM Course;

-- @block
SELECT * FROM CourseTeaching;

-- @block
SELECT * FROM CourseEnrollment;