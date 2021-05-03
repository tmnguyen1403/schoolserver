const router = require("express").Router();
const STUDENTCENTER_TABLE = "StudentCenter";
const EXTRACURICULAR_ACTIVITY = "ExtracuricularActivity";
const TASK_TABLE = "Task";

router.get('/studentcenter', (req, res) => {
    queryString = `SELECT * FROM ${STUDENTCENTER_TABLE};`;
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

router.get('/studentcenter/:id/activities', (req, res) => {
    console.log("Params", req.params);
    const {id} = req.params;

    const queryString = `SELECT sc.location, e.name as activityname, e.type, e.time
    FROM ${STUDENTCENTER_TABLE} sc
    JOIN ${EXTRACURICULAR_ACTIVITY} e ON sc.id = e.centerID
    WHERE sc.id = ${id}`;

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