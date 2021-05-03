const { json } = require('express');
const express = require('express')
const app = express();

var connection = require('./server');  

app.use(function(req, res, next) {
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE');
    res.setHeader('Access-Control-Allow-Headers', 'Content-Type');
    res.setHeader('Access-Control-Allow-Credentials', true);
    next();
});

app.use( express.urlencoded({extended: true}) )
app.use( express.json() )

//server receive your request, if it needs the database, it will open a connection,
// send the query to the database
// db sent the result back to the server

app.get('/', (req, res) => {
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
    });
});

app.get('/student', (req, res) => {
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

app.get('/student/:id/courses', (req, res) => {
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

app.get('/student/:id/finance', (req, res) => {
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


app.get('/instructor', (req, res) => {
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

app.get('/instructor/:id/courses', (req, res) => {
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

app.listen(3003, () => {
    console.log("server listening at 3003");
    
});
