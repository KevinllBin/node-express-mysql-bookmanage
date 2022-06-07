var express = require('express');
var path = require('path');
var mysql = require('mysql')
var connection=require('../conn.js');
var router = express.Router();

/* GET reg listing. */
router.get('/',function(req,res,next){
	res.render('reg');
});
router.get('/reg',function(req,res){
    var username = req.query.username
    var password = req.query.password
    var user = [username,password];
    var query1 = 'insert into users(username,password) values(?,?)';
    connection.query(query1,user,function(err,result){
    if(err) throw err;
    console.log("***")
    res.sendfile(path.join(__dirname,"../views/login.html"))
    })
});
module.exports = router;