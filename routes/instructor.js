const router = require("express").Router();


router.get('/instructor', (req, res) => {
    queryString = "SELECT * FROM Instructor;";
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

router.get('/instructor/:id/courses', (req, res) => {
    console.log("Params", req.params);
    const {id} = req.params;
  
    const queryString = ` SELECT c.id, c.title, ct.semester
    FROM Instructor i
    JOIN CourseTeaching ct ON i.ID = ct.instructorID
    JOIN Course c ON c.ID = ct.courseID
    WHERE i.ID = ${id}`;;

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