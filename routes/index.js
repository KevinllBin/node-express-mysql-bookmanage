var express = require('express');
var fs = require('fs');
var mysql = require('mysql');
var client = require('../conn.js');
var ejs = require('ejs');
var session = require('express-session');
const {
	request
} = require('http');
const {
	route
} = require('express/lib/application');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res) {
	if (!req.session.islogin) {
		return res.send("<script>alert('请登录');location.href = '/users/';</script>");

	}
	res.render('../views/book1.html', {
		username: req.session.user
	});
});
router.get('/book2', function(req, res) {
	if (!req.session.islogin) {
		return res.send("<script>alert('请登录');location.href = '/users/';</script>");

	}
	client.query('select * from book', function(err, results) {
		console.log(results);
		res.render('../views/book2.html', {
			data: results,
			username: req.session.user
		});
	});
});
router.get('/insert', function(req, res) {
	if (!req.session.islogin) {
		return res.send("<script>alert('请登录');location.href = '/users/';</script>");

	}
	res.render('../views/book3.html');
});
router.post('/insert', function(req, res) {
	var body = req.body;
	client.query('insert into book (book_name,book_author,book_pub) values (?,?,?)', [body.book_name, body
		.book_author, body.book_pub
	], function() {
		res.redirect('/insert');
	});
});
router.get('/delete/:book_id', function(req, res) {
	client.query('delete from book where book_id=?', [req.params.book_id], function() {
		res.redirect('/book2');
	});
});
router.get('/edit/:book_id', function(req, res) {

	client.query('select * from book where book_id=?', [req.params.book_id], function(err, result) {
		res.render('../views/book-edit.html', {
			data: result[0]
		});
	});
});
router.get('/modify', function(req, res) {
	res.render('../views/modify', {
		username: req.session.user
	})
})

router.post('/modify', function(req, res) {
	if (!req.session.islogin) {
		return res.send("<script>alert('请登录');location.href = '/users/';</script>");
	}
	client.query("select * from users where password='" + req.body.password + "'", function(err, data) {
		console.log(data)
		if (data.length == 0) {
			res.send("<script>alert('用户名或密码错误');location.href = '/modify';</script>");
		} else {
			client.query("update users set password='" + req.body.new_password + "'", function(err,
				data) {
				req.session.islogin = false;
				req.session.user = null;
				res.send("<script>alert('修改成功');location.href = '/users/';</script>")
			})
		}
	})
})

router.post('/edit/:book_id', function(req, res) {
	var body = req.body;
	client.query('update book set book_name=?,book_author=?,book_pub=? where book_id=?', [body.book_name, body
		.book_author, body.book_pub, req.params.book_id
	], function() {
		res.redirect('/book2');
	});
});
router.get("/logout", function(req, res) {
	req.session.islogin = false;
	req.session.user = null;
	res.redirect('/users/');
	res.send("<script>alert('退出成功');loaction.reload([bForceGet]);</script>")
})
module.exports = router;
