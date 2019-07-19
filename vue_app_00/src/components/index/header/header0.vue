<template>
  <div class="header_div">
    <div class="wrap_div">
      <div class="left">
        <img src="./img/huazan_logo.png" alt="">
      </div>
      <div class="center">
        <el-input placeholder="请输入内容" v-model="input3" class="input-with-select">
          <el-button slot="append" icon="el-icon-search"></el-button>
        </el-input>
      </div>
      <div class="right">
        <!-- <a href="javascript:;">登录</a> -->
        <router-link :to="`/Login`">登录</router-link>
        <!-- <a href="javascript:;">注册</a> -->
        <router-link :to="`/Register`">注册</router-link>
        <!-- <a href="javascript:;"><i class="el-icon-shopping-cart-2"></i>我的购物车<i class="el-icon-chat-square"></i></a> -->
        <router-link :to="`/Gocart`"><i class="el-icon-shopping-cart-2"></i>我的购物车<i class="el-icon-chat-square"></i></router-link>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return{
      input3:""
    }
  }
}
</script>
<style>
  *{margin:0;padding:0;box-sizing: border-box;}
  .header_div{
    width:100%;
    height:100px;
  }
  .wrap_div{
    width:1200px;
    height:100%;
    margin:0 auto;
    display: flex;
    justify-content: space-between;
    align-items: center;

  }
  .el-input__inner{
    width:400px !important;
  }
  .right a{
    color:#555;
    font-size: 20px;
    margin-right:20px;
  }
  .right a:hover{
    color:#333;
  }
  .right a i:first-child{
    margin-right:3px;
    color:red;
  }
  .right a i:last-child{
    position:relative;
    top:-14px;
    color:red;
  }
  
</style>


