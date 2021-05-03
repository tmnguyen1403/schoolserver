-- @block 
INSERT INTO StudentCenter (ID, name, location) VALUES 
    (4581653,"North-UhdCenter","123 North Houston "),
    (1234567,"South-UhdCenter","124 South Houston "),
    (7654321,"East-UhdCenter","125 East Houston "),
    (0123486,"West-UhdCenter","126 West Houston "),
    (6537851,"Northeast-UhdCenter","127 Northeast Houston "),
    (6543521,"Northwest-UhdCenter","128 Northwest Houston "),
    (3265842,"Southeast-UhdCenter","129 Southeast Houston "),
    (1399254,"Southwest-UhdCenter","130 Southwest Houston  "),
    (3562125,"LeftCenter-UhdCenter","131 Houston Downtown"),
    (9587361,"RightCenter-UhdCenter","132 Houston Downtown");
-- @block 
INSERT INTO Instructor(ID, firstName, lastName, department, title, email, salary) VALUES
(333,"Robin","Willliams","criminal justice","Underling", "robin@justicleague.com", 9999999),
       (111, "Jake", "Ferm", "Biostructural Science", "Head honco", "jake@stateferm.com", 1111111),
       (121, "Liz", "Carmen", "Nursing", "Top nurse", "Liz@nursing.com", 1212121),
       (131, "Alice", "Sherm", "Biology", "Head Biologist", "Alice@wonderland.com", 1313131),
       (141, "Jose", "Escuadra", "Linguistics", "underling", "Jose@lingui.com", 1414141),
       (151, "Alex", "Jones", "Conspiracy Theory", "Snake Guy", "Alex@guyfrogs.com", 1515151),
       (161, "Monty", "Python", "Philosophy", "Head Night Instructor", "Monthy@holygrail.com", 1616161),
       (171, "Felix", "Kejberg", "Psychology", "Vice Department Head", "Pew@pie.com", 1717171),
       (181, "Marzia", "Kejberg", "Cosmetology", "Head Cosmetologist", "Marzia@beauty.com", 1818181),
       (152, "Russel", "Gomez", "Hospital", "Head of Psychiatrist", "russel@beauty.com", 150000),
       (191, "Izzy", "Maxwell", "Computer Science", "Department Head", "Izzy@CSisFun.com", 1919191);

-- @block       
INSERT INTO AcademicAdvisor(ID, firstName,lastName,department,email) VALUES 
    (156324, "Ronaldo","martinez", "CST","Ronaldomartinez123@gmail.com"),
    (653621, "Minh","Ngyuen", "CST","minhNgyuen213@gmail.com"),
    (785985, "israel","Padilla", "CST","israelPadilla321@gmail.com"),
    (653659, "russell","gomez", "CST","russellgomez231@gmail.com"),
    (789653, "caillou","paul", "CST","cailloupaul312@gmail.com"),
    (356253, "fernando","Lopez", "CST","fernandoLopez111@gmail.com"),
    (023369, "Keilin","Urbina", "CST","KeilinUrbina222@gmail.com"),
    (741258, "joana","calderon", "CST","joanacalderon333@gmail.com"),
    (989765, "zachary","zeus", "CST","zacharyzeus456@gmail.com"),
    (666666, "Jesus","Christ", "CST","babyjesus654@gmail.com");
    
    
-- @block    
INSERT INTO ExtracuricularActivity (ID, name, type, description, time, centerID) VALUES 
    (123654, "Help Batman", "workout", "find and help Batman", date("2021-05-25"), 4581653),
    (654987, "Help Robin", "workout", "find and help Robin", date("2021-05-24"), 1234567),
    (456963, "Help Minh", "exercise", " help Minh with running", date("2021-05-23"), 7654321),
    (321654, "Help Israel", "esports", "help Israel with valorant", date("2021-05-22"), 0123486),
    (032145, "Help Russell", "esports", " help Russell with csgo", date("2021-05-21"), 6537851),
    (753951, "coach paul", "esports", "Coach Paul with rocket league", date("2021-05-20"), 6543521),
    (951365, "teach albert", "cook", "find and help albert", date("2021-05-19"), 3265842),
    (684297, "practice with Irving", "meditation", "find and help Irving", date("2021-05-18"), 1399254),
    (842631, "Cook with epicninjatacos", "cook", "find and cook with epicninjatacos", date("2021-05-17"), 3562125),
    (954620, "Meditate with lucas", "meditation", "Find a decent place with lucas to meditate", date("2021-05-16"), 9587361);

-- @block 
INSERT INTO Student(ID, firstName,lastName,sex,dateOfBirth,address,email,username,centerID,advisorID)
VALUES 
    (212, "Edgar-Alen", "Poe", "M", date('1998-1-1'), "346 Lincoln st", "edgy@gmail.com", "XD", 4581653, 
    156324),
    (222, "Trisha", "Peitez", "F", date('1988-12-19'), "347 Lincoln ave.", "heppy@gmail.com", "XC", 
    1234567, 653621),
    (232, "Alexis", "liez", "F", date('1999-4-8'), "348 Washington st.", "alexiei@gmail.com", "XV", 
    7654321, 785985),
    (242, "Alen", "Pied", "M", date('1998-8-28'), "349 Trumpudo ave.", "alen@gmail.com", "XB", 0123486, 
    653659),
    (252, "Josue", "Munes", "M", date('2000-9-8'), "340 XD st.", "josue@gmail.com", "XM", 6537851, 
    789653),
    (262, "Juli", "Alexi", "F", date('2003-11-28'), "341 Texting is bad ave.", "july@gmail.com", "XA", 
    6543521, 356253),
    (272, "Alex", "Max", "F", date('2005-01-03'), "342 sunyside ave.", "al@gmail.com", "XS", 3265842, 
   023369),
    (282, "Mei", "Raiden", "F", date('1978-6-5'), "343 doggie st.", "raiden@gmail.com", "XF", 1399254, 
    741258),
    (292, "Olaf", "Steel", "M", date('1990-7-9'), "344 happyD st", "olf@gmail.com", "XD", 3562125, 
   989765),
    (312, "Eliv", "Steeal", "M", date('1993-7-10'), "344 happyDio st", "stl@gmail.com", "XJ", 9587361, 
    666666);

-- @block 
INSERT INTO Financing (ID, eligibility, balance, documentation, studentID, centerID) VALUES 
    (212,'Y',100.0, "Updated", 212, 4581653),
    (222,'N',1001.0, "In-process", 222, 1234567),
    (232,'Y',1002.0, "Updated", 232, 7654321),
    (242,'N',1003.0, "Updated", 242, 0123486),
    (252,'Y',1004.0, "Updated", 252, 6537851),
    (262,'N',1005.0, "In-process", 262, 6543521),
    (272,'Y',1006.0, "Updated", 282, 3265842),
    (282,'N',1007.0, "In-process", 292, 1399254),
    (292,'Y',1080.0, "Updated", 272, 3562125),
    (312,'N',1090.0, "In-process", 312, 9587361);

-- @block 
INSERT INTO Appointment (ID, date, note, advisorID, studentID) VALUES 
    (123,date('2021-10-11'),"Hello",666666,312),
    (313, date('2021-11-13'), "Hello", 156324, 212),
    (323, date('2021-12-14'), "Hello", 653621, 222),
    (333, date('2021-1-10'), "Hello there", 785985, 232), 
    (343, date('2021-2-2'), "Hello", 653659, 242),
    (353, date('2021-3-3'), "Hello", 789653, 252),
    (363, date('2021-4-4'), "Hello", 356253, 262), 
    (373, date('2021-5-5'), "Hello", 023369, 272), 
    (383, date('2021-6-6'), "Hello", 741258, 282),
    (393, date('2021-7-7'), "Hello", 989765, 292);

-- @block 
INSERT INTO Task (ID, type, description, deadline, advisorID, studentID) VALUES 
    (142365,"Academic", "Submit Senior Seminar approval form", date("2021-10-11"), 156324, 212),
    (963254,"Cashiers", "Submit term payment", date("2021-10-11"), 653621, 222),
    (653693,"Financial", "Submit fasfa form", date("2021-10-12"), 785985, 232),
    (121565,"Activities", "Apply for uhd card", date("2021-10-13"), 653659, 242),
    (454565,"E-sports", "Submit e-sports tournament contract", date("2021-10-14"), 789653, 252),
    (363252,"Financing", "Submit loan form", date("2021-10-15"), 356253, 262),
    (787989,"Application-hold", "Advisor reviewing your application", date("2021-10-16"), 023369, 272),
    (032659,"Financing", "Missing fasfsa document", date("2021-10-17"), 741258, 282),
    (784956,"Academic", "Submit senior project approval form", date("2021-10-18"), 989765, 292),
    (032652,"Academic", "Come to check your course enlisted for next semester", date("2021-10-19"), 666666, 312);
    
-- @block 
INSERT INTO Course (ID, syllabus, title, credits, prerequisite) VALUES 
    (999,"You will learn about database", "database", 3, "CS3300: C"),
    (919, "You will learn about game design", "game design", 3,  "CS3303: C"),
    (929, "You will learn about internet of things", "internet of things", 3,  "CS4318: C"),
    (939, "You will learn about computer organization", "comp organization", 3,  "CS3304: C"),
    (949, "You will learn about ReactJS", "Web Development", 3, "CS4404: C"),
    (959, "You will learn about Skynet", "AI", 3, "CS3309: C"),
    (969, "You will learn about hacking into the government", "Cyber Security",3, "CS3318: C"),
    (979, "You will learn about programming with Python", "Python", 3, "CS1401: C"),
    (989, "You will learn about advance python", "Python II", 3, "CS1402: C"),
    (1000, "You will learn about Skynet", "TerminatorI", 6, "CS5555: C");

-- @block 
INSERT INTO CourseTeaching (courseID, instructorID, semester, startDate, endDate, roomID) VALUES
    (999, 111, "Fall 2021", date("2021-08-24"), date("2021-12-24"), 1234),
    (919, 121, "Fall 2021", date("2021-08-24"), date("2021-12-24"), 4563),
    (929, 131, "Fall 2021", date("2021-08-24"), date("2021-12-24"), 9856),
    (939, 141, "Fall 2021", date("2021-08-24"), date("2021-12-24"), 6325),
    (949, 151, "Fall 2021", date("2021-08-24"), date("2021-12-24"), 7845),
    (959, 161, "Fall 2021", date("2021-08-24"), date("2021-12-24"), 1425),
    (969, 171, "Fall 2021", date("2021-08-24"), date("2021-12-24"), 5623),
    (979, 181, "Fall 2021", date("2021-08-24"), date("2021-12-24"), 4512),
    (989, 191, "Fall 2021", date("2021-08-24"), date("2021-12-24"), 9865),
    (1000, 152, "Fall 2021", date("2021-08-24"), date("2021-12-24"), 8454);

-- @block   
INSERT INTO CourseEnrollment (studentID, courseID, grade, status) VALUES
    (212, 999, null, "enrolled"),
    (222, 919, null, "enrolled"),
    (232, 929, null, "enrolled"),
    (242, 939, null, "enrolled"),
    (252, 949, null, "enrolled"),
    (262, 959, null, "enrolled"),
    (272, 969, null, "enrolled"),
    (282, 979, null, "enrolled"),
    (292, 989, null, "enrolled"),
    (312, 1000, null, "enrolled");
    
-- @block   
INSERT INTO CourseEnrollment (studentID, courseID, grade, status) VALUES
    (242, 999, null, "enrolled"),
    (242, 919, null, "enrolled"),
    (242, 929, null, "enrolled"),
    (242, 949, null, "enrolled"),
    (242, 959, null, "enrolled"),
    (242, 969, null, "enrolled"),
    (242, 979, null, "enrolled"),
    (242, 989, null, "enrolled"),
    (242, 1000, null, "enrolled");
