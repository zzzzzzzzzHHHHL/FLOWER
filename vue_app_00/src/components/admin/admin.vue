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
            <h5>超级管理员</h5>
          </div>
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
  *{margin:0;padding:0;}
  .wrap{
    width:100%;
    height:100vh;
    display: flex;
    justify-content: space-between;
    box-sizing: border-box;
  }
  .left{
    width: 15%;
    height:100%;
    background-color: #2a3f54;
  }
  .right{
    width:85%;
    height:100%;
    background-color: #ddd;
  }
  .header{
    width: 100%;
    font-size:24px;
    color:#fff;
    margin-top:15px;
    text-align: center;
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
  .admin-msg>div:first-child{
    margin-left: 70px;
  }
  .admin-msg>div:last-child{
    margin-left: 10px;
  }
  .admin-msg>div:last-child p{
    font-size:14px;
    color:#BAB8B8;
  }
</style>


