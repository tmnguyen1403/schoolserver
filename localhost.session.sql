
-- Course - Instructor 
-- @block

SELECT i.ID, i.email, c.title, ct.semester
   FROM Instructor i
   JOIN CourseTeaching ct ON i.ID = ct.instructorID
   JOIN Course c ON c.ID = ct.courseID;






