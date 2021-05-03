const router = require("express").Router();
const ADVISOR_TABLE = "AcademicAdvisor";
const APPOINTMENT_TABLE = "Appointment";
const TASK_TABLE = "Task";

router.get('/advisor', (req, res) => {
    queryString = `SELECT * FROM ${ADVISOR_TABLE};`;
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

router.get('/advisor/:id/appointments', (req, res) => {
    console.log("Params", req.params);
    const {id} = req.params;

    const queryString = `SELECT a.firstName, ap.studentID as studentid, ap.note
    FROM ${ADVISOR_TABLE} a, ${APPOINTMENT_TABLE} ap
     WHERE a.ID = ap.advisorID AND a.ID = ${id};`;

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
    });
   
});

router.get('/advisor/:id/tasks', (req, res) => {
    console.log("Params", req.params);
    const {id} = req.params;

    const queryString = 
    ` SELECT t.id, t.studentID, t.description, t.deadline
    FROM ${ADVISOR_TABLE} a, ${TASK_TABLE} t
    WHERE a.id = t.advisorID AND a.ID = ${id};`;

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
    });
});
module.exports = router;