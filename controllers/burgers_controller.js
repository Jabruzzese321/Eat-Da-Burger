var express = require("express");

var router = express.Router();

var burger = require("../models/burger.js");

router.get("/", function(req, res) {
  burger.selectAll(function(data) {
    var hbsObject = {
      burgers: data
    };
    console.log(hbsObject);
    res.render("index", hbsObject);
  });
});

router.post("/burgers/insertOne", function(req, res) {
  burger.insertOne([
    "burger_name"
  ], [
    req.body.name
  ], function(result) {
    res.redirect("/");
  });
});

router.put("/burgers/updateOne:id", function(req, res) {
  var condition = "id = " + req.params.id;

  console.log("condition", condition);

  burger.updateOne({
    devoured: req.body.devoured
  }, condition, function(result) {
    res.redirect("/");
  });
});

module.exports = router;
