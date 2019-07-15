<template>
  <div class="wrap">
      <div class="left">
        <header class="header">
          <i class="el-icon-notebook-1"></i><span>花赞商城后台</span>
        </header>
        <div class="admin-msg">
          <div>
            <el-avatar icon="el-icon-user-solid"></el-avatar>
          </div>
          <div>
            <p>欢迎回来</p>
            <a href="javascript:;">超级管理员</a>
          </div>
        </div>
        <div class="indexPage">
            <i class="el-icon-s-home"></i>
            <a href="javascript:;">后台首页</a>
        </div>
        <div class="manage-msg">
          <ul>
            <li><a href="javascript:;">商品列表</a></li>
            <li><a href="javascript:;">添加商品</a></li>
            <li><a href="javascript:;">添加商品</a></li>
            <li><a href="javascript:;">添加商品</a></li>
            <li><a href="javascript:;">添加商品</a></li>
          </ul>
        </div>
      </div>
      <div class="right"></div>
  </div>
</template>
<script>
export default {
  data(){
    
      return {
        
      }
  }
}
</script>
<style>
  *{margin:0;padding:0;box-sizing: border-box;}
  a{
    text-decoration: none;
    color:#fff;
  }
  .wrap{
    width:100%;
    height:100vh;
    display: flex;
    justify-content: space-between;
  }
  .left{
    width: 13%;
    height:100%;
    background-color: #2a3f54;
    padding:20px;
  }
  .right{
    width:87%;
    height:100%;
    background-color: #ddd;
  }
  .header{
    width: 100%;
    font-size:24px;
    color:#fff;
    margin-top:15px;
    text-align: left;
  }
  .header>span{
    margin-left:5px;
  }
  .admin-msg{
    width: 100%;
    margin-top: 30px;
    font-size: 16px;
    color: #fff;
  }
  .admin-msg>div{
    float: left;
  }
  .admin-msg::after{
    content:"";
    display: block;
    clear: both;
  }
  .admin-msg>div:first-child{
    cursor: pointer;
  }
  .admin-msg>div:last-child{
    margin-left: 10px;
  }
  .admin-msg>div:last-child p{
    font-size:14px;
    color:#BAB8B8;
    font-style: italic;
  }
  .admin-msg>div:last-child a:hover{
    color:red;
  }
  .indexPage{
    width:100%;
    text-align: left;
    margin-top: 20px;
    color:#fff;
    font-size: 22px;
    
  }
  .indexPage a{
    margin-left:7px;
  }

  .manage-msg{
    width:100%;
    margin-top:30px;
  }
  .manage-msg ul{
    list-style: none;
    width:100%;
    margin-left:0px;
  }
  .manage-msg ul li{
    width:100%;
    text-align: center;
    margin-top:5px;
    letter-spacing: 2px;
    cursor: pointer;
    background-color: #ccc;
  }
  .manage-msg ul li:hover{
    background-color:#0ff;
  }
  .manage-msg ul li a{
    color:#333;
    font-weight: bold;
  }
</style>


