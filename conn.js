var mysql=require('mysql');
//连接数据库
var client=mysql.createConnection({
	host:'localhost',
	port:'3306',
	user:'root',
	password:'123456',
	database:'library'
});
//判断数据库是否连接成功client.connect();
client.connect(function(err){
	if(err){
		console.log('[query]-:'+err);
		return;
	}
	console.log('[connection connect] Mysql数据库连接成功！');
});

module.exports = client;