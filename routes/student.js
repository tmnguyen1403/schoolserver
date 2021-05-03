const router = require("express").Router();

router.get('/student', (req, res) => {
    queryString = "SELECT * FROM Student;";
    connection.query(queryString, (err, rows, fields) => {
        if (err) {
            console.log("Error happened");
            console.log(err);
            return;
        }
        console.log("Got result")
        console.log(rows);
        res.json(
            {data: rows}
        )
        //res.json(rows[0]);
    });
});

router.get('/student/:id/courses', (req, res) => {
    console.log("Params", req.params);
    const {id} = req.params;
    const queryString = `SELECT c.id, c.title, c.credits, co.status
    FROM Student s
    JOIN CourseEnrollment co ON s.ID = co.studentID
    JOIN Course c ON c.ID = co.courseID
    WHERE s.ID = ${id}`;

    connection.query(queryString, (err, rows, fields) => {
        if (err) {
            console.log("Error happened");
            console.log(err);
            return;
        }
        console.log("Got result")
        //console.log(rows);
        res.json(
            {data: rows}
        )
        //res.json(rows[0]);
    });
});

router.get('/student/:id/finance', (req, res) => {
    console.log("Params", req.params);
    const {id} = req.params;
   const queryString = ` 
   SELECT f.id, f.eligibility, f.balance
   FROM StudentCenter sc
   JOIN Financing f ON sc.id = f.centerID
    WHERE f.studentID = ${id}`;

    connection.query(queryString, (err, rows, fields) => {
        if (err) {
            console.log("Error happened");
            console.log(err);
            return;
        }
        console.log("Got result")
        //console.log(rows);
        res.json(
            {data: rows}
        )
        //res.json(rows[0]);
    });
});

module.exports = router;