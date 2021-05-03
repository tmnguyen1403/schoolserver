const router = require("express").Router();
const instructor = require("./instructor");
const student = require("./student");
const advisor = require("./advisor");
const studentcenter = require("./studentcenter");

router.use("", [instructor, student, advisor, studentcenter]);

module.exports = router;