var express = require('express');
var path = require('path');
var mysql = require('mysql')
var connection=require('../conn.js');
var router = express.Router();


/* GET users listing. */
router.get('/', function(req, res, next) {
  res.render('login');
});
router.get('/login',function(req,res){
    var username = req.query.username
    var password = req.query.password
    var query1 = "select * from users where username='"+username+"' and password='"+password+"'"
    connection.query(query1,function(err,result){
        if (err) throw err;
        console.log(result)
        if(result.length==0){
            res.send("用户名或密码错误")
        }else{
			req.session.user=username//将用户信息存储到session中
			req.session.islogin=true//将用户的登录状态存储到session中
			
			res.redirect("/")
			}
    })
});
// router.post("/login", function (req, res) {
//   const { username, password } = { ...req.body };
//   const sql = `select * from userinfo where username='${username}' and password='${password}'`;
//   sqlQuery(sql, (data) => {
//     if (data.length > 0)
//       return res.send({
//         code: "200",
//         result: { token: "4291d7da9005377ec9aec4a71ea837f" },
//         message: "登录成功",
//       });
//     res.send({
//       code: "500",
//       message: "用户不存在",
//     });
//   });
// });
module.exports = router;
