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
var sql = "SELECT uid FROM flower_user WHERE uname=? AND upwd=?";
  //3:json
  pool.query(sql,[$uname,$upwd],(err,result)=>{
      if(err)throw err;
      if(result.length==0){
         res.send({code:-1,msg:"用户名或密码有误"});
      }else{
//??缺少一步
//将当前登录用户uid保存session
//result=[{id:1}]
        //  console.log(result);
         req.session.uid = result[0].uid;
         res.send({code:1,msg:"登录成功"});
      }
  })
});


/***********************************************************/


//注册
server.get("/register",function(req,res){
	var $uname=req.query.uname;
	var $upwd=req.query.upwd;
	var $spwd=req.query.spwd;
	var $uphone=req.query.phone;

	if(!$uname){
		res.send("用户名不能为空");
		return;
	}
	if(!$upwd){
		res.send("密码不能为空");
		return;
	}
	if(!$spwd){
		res.send("确认密码不能为空");
		return;
	}
	if(!$uphone){
		res.send("电话不能为空");
		return;
	}
	//var sql1 = "SELECT uname,upwd,email,phone FROM flower_user";
	var sql2 = "INSERT INTO flower_user(uname,upwd,spwd,phone) VALUES(?,?,?,?)";
	/*pool.query(sql1,[$uname,$upwd,$uemail,$uphone],function(err,result){
		if(err)throw err;
		if(result.length>0){
			res.send({code:-1,msg:"添加失败,该用户已存在，请重新输入"});
		}
		else{*/
			pool.query(sql2,[$uname,$upwd,$spwd,$uphone],function(err,result){
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

/***************************************************************************************************/ 

//首页
server.get("/index",function(req,res){
	var sql="SELECT * FROM flower_index_product";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
});

/***************************************************************************************************/ 

//进口鲜花
server.get("/import",function(req,res){
	var sql="SELECT * FROM flower_import_product";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
});

//进口鲜花价格升序
server.get("/import-priceUp",function(req,res){
	var sql="SELECT * FROM `flower_import_product` ORDER BY `flower_import_product`.`price` ASC";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
});

//进口鲜花价格降序
server.get("/import-priceDown",function(req,res){
	var sql="SELECT * FROM `flower_import_product` ORDER BY `flower_import_product`.`price` DESC";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
});


//进口鲜花分页查询
server.get("/import_product",(req,res)=>{
	//-参数
	var pno = req.query.pno;
	var ps = req.query.pageSize;
	// -设置默认值
	if(!pno){pno=1}
	if(!ps){ps=16}
	//-创建第一条 sql语句 当前页
	var obj = {code:1,msg:"查询成功"};
	var sql = "SELECT * FROM flower_import_product LIMIT ?,?";
	
	var off = (pno-1)*ps;
	ps = parseInt(ps);
	pool.query(sql,[off,ps],(err,result)=>{
			if(err)throw err;
			obj.data = result;
			var sql = "SELECT count(*) AS c FROM flower_import_product";
			pool.query(sql,(err,result)=>{
				if(err)throw err;
				//result[{c:43}]
				var pc = Math.ceil(result[0].c/ps);
				obj.pc = pc;
				res.send(obj);
			})
	});
});  

/***************************************************************************************************/ 

//爱情鲜花
server.get("/love",function(req,res){
	var sql="SELECT * FROM flower_love_product";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
})


//爱情鲜花价格升序
server.get("/love-priceUp",function(req,res){
	var sql="SELECT * FROM `flower_love_product` ORDER BY `flower_love_product`.`price` ASC";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
});

//爱情鲜花价格降序
server.get("/love-priceDown",function(req,res){
	var sql="SELECT * FROM `flower_love_product` ORDER BY `flower_love_product`.`price` DESC";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
});

//爱情鲜花分页查询
server.get("/love_product",(req,res)=>{
	//-参数
	var pno = req.query.pno;
	var ps = req.query.pageSize;
	// -设置默认值
	if(!pno){pno=1}
	if(!ps){ps=16}
	//-创建第一条 sql语句 当前页
	var obj = {code:1,msg:"查询成功"};
	var sql = "SELECT * FROM flower_love_product LIMIT ?,?";
	
	var off = (pno-1)*ps;
	ps = parseInt(ps);
	pool.query(sql,[off,ps],(err,result)=>{
			if(err)throw err;
			obj.data = result;
			var sql = "SELECT count(*) AS c FROM flower_love_product";
			pool.query(sql,(err,result)=>{
				if(err)throw err;
				//result[{c:43}]
				var pc = Math.ceil(result[0].c/ps);
				obj.pc = pc;
				res.send(obj);
			})
	});
});  

/***************************************************************************************************/ 

//生日鲜花
server.get("/birthday",function(req,res){
	var sql="SELECT * FROM flower_birthday_product";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
})

//生日鲜花价格升序
server.get("/birthday-priceUp",function(req,res){
	var sql="SELECT * FROM `flower_birthday_product` ORDER BY `flower_birthday_product`.`price` ASC";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
});

//生日鲜花价格降序
server.get("/birthday-priceDown",function(req,res){
	var sql="SELECT * FROM `flower_birthday_product` ORDER BY `flower_birthday_product`.`price` DESC";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
});

//生日鲜花分页查询
server.get("/birthday_product",(req,res)=>{
	//-参数
	var pno = req.query.pno;
	var ps = req.query.pageSize;
	// -设置默认值
	if(!pno){pno=1}
	if(!ps){ps=16}
	//-创建第一条 sql语句 当前页
	var obj = {code:1,msg:"查询成功"};
	var sql = "SELECT * FROM flower_birthday_product LIMIT ?,?";
	
	var off = (pno-1)*ps;
	ps = parseInt(ps);
	pool.query(sql,[off,ps],(err,result)=>{
			if(err)throw err;
			obj.data = result;
			var sql = "SELECT count(*) AS c FROM flower_birthday_product";
			pool.query(sql,(err,result)=>{
				if(err)throw err;
				//result[{c:43}]
				var pc = Math.ceil(result[0].c/ps);
				obj.pc = pc;
				res.send(obj);
			})
	});
});  

/***************************************************************************************************/ 

//问候商品鲜花
server.get("/extend",function(req,res){
	var sql="SELECT * FROM flower_extend_product";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
})

//问候鲜花价格升序
server.get("/extend-priceUp",function(req,res){
	var sql="SELECT * FROM `flower_extend_product` ORDER BY `flower_extend_product`.`price` ASC";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
});

//问候鲜花价格降序
server.get("/extend-priceDown",function(req,res){
	var sql="SELECT * FROM `flower_extend_product` ORDER BY `flower_extend_product`.`price` DESC";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
});

//问候鲜花分页查询
server.get("/extend_product",(req,res)=>{
	//-参数
	var pno = req.query.pno;
	var ps = req.query.pageSize;
	// -设置默认值
	if(!pno){pno=1}
	if(!ps){ps=16}
	//-创建第一条 sql语句 当前页
	var obj = {code:1,msg:"查询成功"};
	var sql = "SELECT * FROM flower_extend_product LIMIT ?,?";
	
	var off = (pno-1)*ps;
	ps = parseInt(ps);
	pool.query(sql,[off,ps],(err,result)=>{
			if(err)throw err;
			obj.data = result;
			var sql = "SELECT count(*) AS c FROM flower_extend_product";
			pool.query(sql,(err,result)=>{
				if(err)throw err;
				//result[{c:43}]
				var pc = Math.ceil(result[0].c/ps);
				obj.pc = pc;
				res.send(obj);
			})
	});
});  

/***************************************************************************************************/ 

//祝福商品鲜花
server.get("/blessing",function(req,res){
	var sql="SELECT * FROM flower_blessing_product";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
})

//祝福鲜花价格升序
server.get("/blessing-priceUp",function(req,res){
	var sql="SELECT * FROM `flower_blessing_product` ORDER BY `flower_blessing_product`.`price` ASC";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
});

//祝福鲜花价格降序
server.get("/blessing-priceDown",function(req,res){
	var sql="SELECT * FROM `flower_blessing_product` ORDER BY `flower_blessing_product`.`price` DESC";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
});

//祝福鲜花分页查询
server.get("/blessing_product",(req,res)=>{
	//-参数
	var pno = req.query.pno;
	var ps = req.query.pageSize;
	// -设置默认值
	if(!pno){pno=1}
	if(!ps){ps=16}
	//-创建第一条 sql语句 当前页
	var obj = {code:1,msg:"查询成功"};
	var sql = "SELECT * FROM flower_blessing_product LIMIT ?,?";
	
	var off = (pno-1)*ps;
	ps = parseInt(ps);
	pool.query(sql,[off,ps],(err,result)=>{
			if(err)throw err;
			obj.data = result;
			var sql = "SELECT count(*) AS c FROM flower_blessing_product";
			pool.query(sql,(err,result)=>{
				if(err)throw err;
				//result[{c:43}]
				var pc = Math.ceil(result[0].c/ps);
				obj.pc = pc;
				res.send(obj);
			})
	});
});  

/***************************************************************************************************/ 

//慰问商品鲜花
server.get("/condole",function(req,res){
	var sql="SELECT * FROM flower_condole_product";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
})

//慰问鲜花价格升序
server.get("/condole-priceUp",function(req,res){
	var sql="SELECT * FROM `flower_condole_product` ORDER BY `flower_condole_product`.`price` ASC";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
});

//慰问鲜花价格降序
server.get("/condole-priceDown",function(req,res){
	var sql="SELECT * FROM `flower_condole_product` ORDER BY `flower_condole_product`.`price` DESC";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
});

//慰问鲜花分页查询
server.get("/condole_product",(req,res)=>{
	//-参数
	var pno = req.query.pno;
	var ps = req.query.pageSize;
	// -设置默认值
	if(!pno){pno=1}
	if(!ps){ps=16}
	//-创建第一条 sql语句 当前页
	var obj = {code:1,msg:"查询成功"};
	var sql = "SELECT * FROM flower_condole_product LIMIT ?,?";
	
	var off = (pno-1)*ps;
	ps = parseInt(ps);
	pool.query(sql,[off,ps],(err,result)=>{
			if(err)throw err;
			obj.data = result;
			var sql = "SELECT count(*) AS c FROM flower_condole_product";
			pool.query(sql,(err,result)=>{
				if(err)throw err;
				//result[{c:43}]
				var pc = Math.ceil(result[0].c/ps);
				obj.pc = pc;
				res.send(obj);
			})
	});
});  

/***************************************************************************************************/ 

//道歉商品鲜花
server.get("/apologize",function(req,res){
	var sql="SELECT * FROM flower_apologize_product";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
})

//道歉鲜花价格升序
server.get("/apologize-priceUp",function(req,res){
	var sql="SELECT * FROM `flower_apologize_product` ORDER BY `flower_apologize_product`.`price` ASC";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
});

//道歉鲜花价格降序
server.get("/apologize-priceDown",function(req,res){
	var sql="SELECT * FROM `flower_apologize_product` ORDER BY `flower_apologize_product`.`price` DESC";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
});

//道歉鲜花分页查询
server.get("/apologize_product",(req,res)=>{
	//-参数
	var pno = req.query.pno;
	var ps = req.query.pageSize;
	// -设置默认值
	if(!pno){pno=1}
	if(!ps){ps=16}
	//-创建第一条 sql语句 当前页
	var obj = {code:1,msg:"查询成功"};
	var sql = "SELECT * FROM flower_apologize_product LIMIT ?,?";
	
	var off = (pno-1)*ps;
	ps = parseInt(ps);
	pool.query(sql,[off,ps],(err,result)=>{
			if(err)throw err;
			obj.data = result;
			var sql = "SELECT count(*) AS c FROM flower_apologize_product";
			pool.query(sql,(err,result)=>{
				if(err)throw err;
				//result[{c:43}]
				var pc = Math.ceil(result[0].c/ps);
				obj.pc = pc;
				res.send(obj);
			})
	});
});  

/***************************************************************************************************/ 

//生活商品鲜花
server.get("/life",function(req,res){
	var sql="SELECT * FROM flower_life_product";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
})

//生活鲜花价格升序
server.get("/life-priceUp",function(req,res){
	var sql="SELECT * FROM `flower_life_product` ORDER BY `flower_life_product`.`price` ASC";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
});

//生活鲜花价格降序
server.get("/life-priceDown",function(req,res){
	var sql="SELECT * FROM `flower_life_product` ORDER BY `flower_life_product`.`price` DESC";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
});

//生活鲜花分页查询
server.get("/life_product",(req,res)=>{
	//-参数
	var pno = req.query.pno;
	var ps = req.query.pageSize;
	// -设置默认值
	if(!pno){pno=1}
	if(!ps){ps=16}
	//-创建第一条 sql语句 当前页
	var obj = {code:1,msg:"查询成功"};
	var sql = "SELECT * FROM flower_life_product LIMIT ?,?";
	
	var off = (pno-1)*ps;
	ps = parseInt(ps);
	pool.query(sql,[off,ps],(err,result)=>{
			if(err)throw err;
			obj.data = result;
			var sql = "SELECT count(*) AS c FROM flower_life_product";
			pool.query(sql,(err,result)=>{
				if(err)throw err;
				//result[{c:43}]
				var pc = Math.ceil(result[0].c/ps);
				obj.pc = pc;
				res.send(obj);
			})
	});
});  

/***************************************************************************************************/ 

//开业花篮
server.get("/opening",function(req,res){
	var sql="SELECT * FROM flower_opening_product";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
})

//开业鲜花价格升序
server.get("/opening-priceUp",function(req,res){
	var sql="SELECT * FROM `flower_opening_product` ORDER BY `flower_opening_product`.`price` ASC";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
});

//开业鲜花价格降序
server.get("/opening-priceDown",function(req,res){
	var sql="SELECT * FROM `flower_opening_product` ORDER BY `flower_opening_product`.`price` DESC";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
});

//开业鲜花分页查询
server.get("/opening_product",(req,res)=>{
	//-参数
	var pno = req.query.pno;
	var ps = req.query.pageSize;
	// -设置默认值
	if(!pno){pno=1}
	if(!ps){ps=16}
	//-创建第一条 sql语句 当前页
	var obj = {code:1,msg:"查询成功"};
	var sql = "SELECT * FROM flower_opening_product LIMIT ?,?";
	
	var off = (pno-1)*ps;
	ps = parseInt(ps);
	pool.query(sql,[off,ps],(err,result)=>{
			if(err)throw err;
			obj.data = result;
			var sql = "SELECT count(*) AS c FROM flower_opening_product";
			pool.query(sql,(err,result)=>{
				if(err)throw err;
				//result[{c:43}]
				var pc = Math.ceil(result[0].c/ps);
				obj.pc = pc;
				res.send(obj);
			})
	});
});  

/***************************************************************************************************/ 

//永生花
server.get("/forever",function(req,res){
	var sql="SELECT * FROM flower_forever_product";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
})

//永生花价格升序
server.get("/forever-priceUp",function(req,res){
	var sql="SELECT * FROM `flower_forever_product` ORDER BY `flower_forever_product`.`price` ASC";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
});

//永生花价格降序
server.get("/forever-priceDown",function(req,res){
	var sql="SELECT * FROM `flower_forever_product` ORDER BY `flower_forever_product`.`price` DESC";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
});

//永生花分页查询
server.get("/forever_product",(req,res)=>{
	//-参数
	var pno = req.query.pno;
	var ps = req.query.pageSize;
	// -设置默认值
	if(!pno){pno=1}
	if(!ps){ps=16}
	//-创建第一条 sql语句 当前页
	var obj = {code:1,msg:"查询成功"};
	var sql = "SELECT * FROM flower_forever_product LIMIT ?,?";
	
	var off = (pno-1)*ps;
	ps = parseInt(ps);
	pool.query(sql,[off,ps],(err,result)=>{
			if(err)throw err;
			obj.data = result;
			var sql = "SELECT count(*) AS c FROM flower_forever_product";
			pool.query(sql,(err,result)=>{
				if(err)throw err;
				//result[{c:43}]
				var pc = Math.ceil(result[0].c/ps);
				obj.pc = pc;
				res.send(obj);
			})
	});
});  

/***************************************************************************************************/ 

//礼品
server.get("/gift",function(req,res){
	var sql="SELECT * FROM flower_gift_product";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
})

//礼品价格升序
server.get("/gift-priceUp",function(req,res){
	var sql="SELECT * FROM `flower_gift_product` ORDER BY `flower_gift_product`.`price` ASC";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
});

//礼品价格降序
server.get("/gift-priceDown",function(req,res){
	var sql="SELECT * FROM `flower_gift_product` ORDER BY `flower_gift_product`.`price` DESC";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
});

//礼品分页查询
server.get("/gift_product",(req,res)=>{
	//-参数
	var pno = req.query.pno;
	var ps = req.query.pageSize;
	// -设置默认值
	if(!pno){pno=1}
	if(!ps){ps=16}
	//-创建第一条 sql语句 当前页
	var obj = {code:1,msg:"查询成功"};
	var sql = "SELECT * FROM flower_gift_product LIMIT ?,?";
	
	var off = (pno-1)*ps;
	ps = parseInt(ps);
	pool.query(sql,[off,ps],(err,result)=>{
			if(err)throw err;
			obj.data = result;
			var sql = "SELECT count(*) AS c FROM flower_gift_product";
			pool.query(sql,(err,result)=>{
				if(err)throw err;
				//result[{c:43}]
				var pc = Math.ceil(result[0].c/ps);
				obj.pc = pc;
				res.send(obj);
			})
	});
});  

/***************************************************************************************************/ 

//全部鲜花
server.get("/all",function(req,res){
	var sql="SELECT * FROM flower_all_product";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
})


//全部价格升序
server.get("/all-priceUp",function(req,res){
	var sql="SELECT * FROM `flower_all_product` ORDER BY `flower_all_product`.`price` ASC";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
});

//全部价格降序
server.get("/all-priceDown",function(req,res){
	var sql="SELECT * FROM `flower_all_product` ORDER BY `flower_all_product`.`price` DESC";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
});

//全部分页查询
server.get("/all_product",(req,res)=>{
	//-参数
	var pno = req.query.pno;
	var ps = req.query.pageSize;
	// -设置默认值
	if(!pno){pno=1}
	if(!ps){ps=16}
	//-创建第一条 sql语句 当前页
	var obj = {code:1,msg:"查询成功"};
	var sql = "SELECT * FROM flower_all_product LIMIT ?,?";
	
	var off = (pno-1)*ps;
	ps = parseInt(ps);
	pool.query(sql,[off,ps],(err,result)=>{
			if(err)throw err;
			obj.data = result;
			var sql = "SELECT count(*) AS c FROM flower_all_product";
			pool.query(sql,(err,result)=>{
				if(err)throw err;
				//result[{c:43}]
				var pc = Math.ceil(result[0].c/ps);
				obj.pc = pc;
				res.send(obj);
			})
	});
});  

/***************************************************************************************************/ 

server.get("/details5",function(req,res){
	var sql="SELECT * FROM flower_details";
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
})
//鲜花详情查询
server.get("/details",function(req,res){
	var lid=req.query.lid;
	var list=[];
	if(!lid){res.send("请输入查询的编号");return}
	var sql1="SELECT * FROM flower_pic WHERE pid=?";
	var sql="SELECT * FROM flower_details WHERE lid=?";
	pool.query(sql,[lid],function(err,result){
		if(err)throw err;
		if(result.length>0){
			list.push(result);
			pool.query(sql1,[lid],function(err,result){
				if(err)throw err;
				list.push(result);
				res.send(list);
			})
		}
	})
})

// //鲜花大中小图片
// server.get("/pic",function(req,res){
// 	var sql="SELECT * FROM flower_pic";
// 	pool.query(sql,function(err,result){
// 		if(err)throw err;
// 		res.send(result);
// 	})
// })

/***************************************************************************************************/ 
//添加购物车
server.get("/InsertProduct",(req,res)=>{
	var uid = req.session.uid;
  if(!uid){
    res.send({code:-1,msg:"请登录"});
    return;
	} 
	// console.log(req.query);
	var lid=Number(req.query.lid);
	var img_url=req.query.img_url;
	var title=req.query.title;
	var price=Number(req.query.price);
	var count=Number(req.query.count);
	// console.log(req.query);
	// console.log(req.session.uid);
	var sql1="SELECT * FROM flower_shoppingcart_item WHERE uid=? AND lid=?"
	pool.query(sql1,[uid,lid],(err,result)=>{
		if(err)throw err;
		// console.log(result.length);
		if(!result.length){
			var sql = "INSERT INTO flower_shoppingcart_item(uid,lid,img_url,title,price,count) VALUES(?,?,?,?,?,?)";
			pool.query(sql,[uid,lid,img_url,title,price,count],(err,result)=>{
				if(err)throw err;
				res.send({code:1,data:result})
			})
		}else{
			// console.log(result);
			// console.log(result[0].count);
			var num=Number(result[0].count)+count;
			var sql2="UPDATE flower_shoppingcart_item SET count=? WHERE uid=? AND lid=?";
			pool.query(sql2,[num,uid,lid],(err,result)=>{
				if(err)throw err;
				res.send({code:1,data:result})
			})
		}
	})
})


//购物车查询
server.get("/cart",(req,res)=>{
  //1:参数(无参数)app.jsd
  console.log(req.session.uid);
  var uid = req.session.uid;
  if(!uid){
    res.send({code:-1,msg:"请登录"});
    return;
  }
  //2:sql
  var sql = "SELECT * FROM flower_shoppingcart_item WHERE uid = ?";
  pool.query(sql,[uid],(err,result)=>{
    if(err)throw err;
    res.send({code:1,data:result})
  })
  //3:json
})


//删除购物车的商品
server.get("/delItem",(req,res)=>{
  // //1:参数购物车id
	// var id = req.query.id;
	var uid = req.session.uid;
	var lid = Number(req.query.lid);
	// console.log(uid,lid);
  //2:sql 删除指定数据
  var sql = "DELETE FROM flower_shoppingcart_item WHERE uid=? AND lid = ?";
  //3:json
  pool.query(sql,[uid,lid],(err,result)=>{
   if(err)throw err;
   //affectedRows 操作影响行数
   if(result.affectedRows>0){
    res.send({code:1,msg:"删除成功"});
   }else{
    res.send({code:-1,msg:"删除失败"}) 
   }
  })
});


//删除多个选中商品
server.get("/delAll",(req,res)=>{
	var uid = req.session.uid;
  var lids = req.query.lids;
  var sql = `DELETE FROM flower_shoppingcart_item WHERE lid IN (${lids}) AND uid=?` ;
  //3:json
  pool.query(sql,[uid],(err,result)=>{
    if(err)throw err;
    if(result.affectedRows>0){
      res.send({code:1,msg:"删除成功"});
    }else{
      res.send({code:-1,msg:"删除失败"});
    }
  })
});

/***************************************************************************************************/ 

//  
server.get("/dim",function(req,res){
	var msg=req.query.msg;
	if(!msg){res.send("请输入查找值");return}
	var sql=`select * from flower_all_product where title like '%${msg}%'`;
	pool.query(sql,function(err,result){
		if(err)throw err;
		res.send(result);
	})
})


// 购物车商品数量加
server.get("/plus",(req,res)=>{
	var uid = req.session.uid;
	var is_checked=Number(req.query.is_checked);
	if(!uid){
		res.send({code:-1,msg:"请登录"});
		return;
	} 
	// console.log(req.query);
	var lid=Number(req.query.lid);
	// console.log(req.query);
	// console.log(uid,is_checked);
	// console.log(req.session.uid);
	var sql1="SELECT * FROM flower_shoppingcart_item WHERE uid=? AND lid=?"
	pool.query(sql1,[uid,lid],(err,result)=>{
		if(err)throw err;
		// console.log(result);
		var num=Number(result[0].count)+1;
		// console.log(num);
		var sql2="UPDATE flower_shoppingcart_item SET count=?,is_checked=? WHERE uid=? AND lid=?";
		pool.query(sql2,[num,is_checked,uid,lid],(err,result)=>{
			if(err)throw err;
			res.send({code:1,data:result})
		})
	})
})

// 购物车商品数量减
server.get("/reduce",(req,res)=>{
	var uid = req.session.uid;
	var is_checked=Number(req.query.is_checked);
	if(!uid){
		res.send({code:-1,msg:"请登录"});
		return;
		} 
	// console.log(req.query);
	var lid=Number(req.query.lid);
	// console.log(req.query);
	// console.log(req.session.uid);
	var sql1="SELECT * FROM flower_shoppingcart_item WHERE uid=? AND lid=?"
	pool.query(sql1,[uid,lid],(err,result)=>{
		if(err)throw err;
		// console.log(result);
		var num=Number(result[0].count)-1;
		// console.log(num);
		var sql2="UPDATE flower_shoppingcart_item SET count=?,is_checked=? WHERE uid=? AND lid=?";
		pool.query(sql2,[num,is_checked,uid,lid],(err,result)=>{
			if(err)throw err;
			res.send({code:1,data:result})
		})
	})
})

// 修改购物车所有商品选中状态
server.get("/checkAll",(req,res)=>{
	var uid = req.session.uid;
	var is_checked=Number(req.query.is_checked);
	if(!uid){
		res.send({code:-1,msg:"请登录"});
		return;
	} 
	var sql="UPDATE flower_shoppingcart_item SET is_checked=? WHERE uid=?"
	pool.query(sql,[is_checked,uid],(err,result)=>{
		if(err)throw err;
		res.send({code:1,data:result})
	})
})

// 更改购物车单个选中状态
server.get("/checkone",(req,res)=>{
	var uid = req.session.uid;
	var lid = req.query.lid;
	var is_checked=Number(req.query.is_checked);
	if(!uid){
		res.send({code:-1,msg:"请登录"});
		return;
	} 
	var sql="UPDATE flower_shoppingcart_item SET is_checked=? WHERE uid=? AND lid=?"
	pool.query(sql,[is_checked,uid,lid],(err,result)=>{
		if(err)throw err;
		res.send({code:1,data:result})
	})
})

// 更改购物车某商品个数
server.get("/changeone",(req,res)=>{
	var uid = req.session.uid;
	var is_checked=Number(req.query.is_checked);
	var count=Number(req.query.count);
	var lid=Number(req.query.lid);
	if(!uid){
		res.send({code:-1,msg:"请登录"});
		return;
	} 
	var sql="UPDATE flower_shoppingcart_item SET count=?,is_checked=? WHERE uid=? AND lid=?"
	pool.query(sql,[count,is_checked,uid,lid],(err,result)=>{
		if(err)throw err;
		res.send({code:1,data:result})
	})
})
