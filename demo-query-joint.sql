1. First, display the ER-diagram (10 pts); 
2. For each table, perform a query to show all data; (20 pts)
3. For each table, perform a query using at least one of the aggregate functions; (30 pts)
4. For each relationship, perform a joint query on the tables that are DIRECTLY related through that relationship. (40 pts)
Make a 10-minute in-class presentation. Must fully test your product and have everything ready. You will get a zero if fail to show up or make presentation when asked by instruction. You will lose points if your product has bug(s) or fails during presentation.
-- joint query

-- @block
SELECT s.id, s.firstname, s.centerID, c.name, c.location
   FROM Student s, StudentCenter c WHERE s.centerID = c.id AND s.id = 212;


-- @block
SELECT sc.name AS centername, sc.location, e.name as activityname, e.time
   FROM StudentCenter sc
   JOIN ExtracuricularActivity e ON sc.id = e.centerID;


-- @block
SELECT sc.id, sc.name, f.studentID, f.balance
   FROM StudentCenter sc
   JOIN Financing f ON sc.id = f.centerID
 WHERE f.studentID = 212;


-- @block
SELECT s.id, s.firstname, s.advisorID, a.email
   FROM Student s, AcademicAdvisor a 
   WHERE s.advisorID = a.id AND s.id = 212;

-- @block
SELECT a.firstName, ap.studentID as studentid, ap.note
   FROM AcademicAdvisor a, Appointment ap
   WHERE a.ID = ap.advisorID;


-- @block
SELECT a.id, a.firstName, t.description, t.deadline
   FROM AcademicAdvisor a, Task t
   WHERE a.id = t.advisorID;


-- @block
SELECT s.firstName, c.id, c.title, c.credits, co.status
   FROM Student s
   JOIN CourseEnrollment co ON s.ID = co.studentID
   JOIN Course c ON c.ID = co.courseID;


-- @block
SELECT i.ID, i.email, c.title, ct.semester
   FROM Instructor i
   JOIN CourseTeaching ct ON i.ID = ct.instructorID
   JOIN Course c ON c.ID = ct.courseID;