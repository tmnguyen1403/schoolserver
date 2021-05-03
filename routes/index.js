const router = require("express").Router();
const instructor = require("./instructor");
const student = require("./student");
const advisor = require("./advisor");

router.use("", [instructor, student, advisor]);

module.exports = router;