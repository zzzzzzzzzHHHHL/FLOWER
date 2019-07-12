//1:引入第三方模块
const express = require("express");
const mysql = require("mysql");
const cors = require("cors");
const session = require("express-session");
const bodyParser=require("body-parser");
//2:配置第三方模块
 //2.1:配置连接池
 var pool = mysql.createPool({
   host:"127.0.0.1",
   user:"root",
   password:"",
   port:3306,
   database:"flower",
   connectionLimit:15
 })
 //2.2:跨域
 var server = express();
 server.use(cors({
   origin:["http://127.0.0.1:8080",
   "http://localhost:8080"],
   credentials:true
 }))
 //2.3:session
 server.use(session({
   secret:"128位字符串",
   resave:true,
   saveUninitialized:true
 }))
 //2.9:指定静态目录
 server.use(express.static("public"))
 server.use(bodyParser.urlencoded({
	extended:false
 }));
 server.listen(3000);
//登录
 server.get("/login",(req,res)=>{
  //1:参数
  var $uname = req.query.uname;
  var $upwd = req.query.upwd;
  if(!$uname){
		res.send("用户名不能为空");
		return;
	}
  if(!$upwd){
		res.send("密码不能为空");
		return;
	}
  //1.1:正则表达式验证用户名或密码
  //2:sql
var sql = "SELECT uname,upwd FROM flower_user WHERE uname=? AND upwd=?";
  //3:json
  pool.query(sql,[$uname,$upwd],(err,result)=>{
      if(err)throw err;
      if(result.length==0){
         res.send({code:-1,msg:"用户名或密码有误"});
      }else{
//??缺少一步
//将当前登录用户uid保存session
//result=[{id:1}]
         req.session.uid = 
         result[0].id;
         res.send({code:1,msg:"登录成功"});
      }
  })
});


/***********************************************************/


//注册
server.get("/register",function(req,res){
	var $uname=req.query.uname;
	var $upwd=req.query.upwd;
	var $uemail=req.query.email;
	var $uphone=req.query.phone;

	if(!$uname){
		res.send("用户名不能为空");
		return;
	}
	if(!$upwd){
		res.send("密码不能为空");
		return;
	}
	if(!$uemail){
		res.send("邮箱不能为空");
		return;
	}
	if(!$uphone){
		res.send("电话不能为空");
		return;
	}
	//var sql1 = "SELECT uname,upwd,email,phone FROM flower_user";
	var sql2 = "INSERT INTO flower_user(uname,upwd,email,phone) VALUES(?,?,?,?)";
	/*pool.query(sql1,[$uname,$upwd,$uemail,$uphone],function(err,result){
		if(err)throw err;
		if(result.length>0){
			res.send({code:-1,msg:"添加失败,该用户已存在，请重新输入"});
		}
		else{*/
			pool.query(sql2,[$uname,$upwd,$uemail,$uphone],function(err,result){
				if(err)throw err;
				if(result.affectedRows>0){
					res.send({code:1,msg:"添加成功"})
				}
				else{
					res.send({code:-1,msg:"添加失败，请检查输入的内容"})
				}
			})
		//}
	//})
});



//首页
server.get("/index",function(req,res){
	var sql="SELECT * FROM flower_index_product";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
});



//进口鲜花
server.get("/import",function(req,res){
	var sql="SELECT * FROM flower_import_product";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
});