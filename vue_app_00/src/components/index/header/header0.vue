<template>
  <div class="header_div">
    <div class="wrap_div">
      <div class="left">
        <img src="./img/huazan_logo.png" alt="">
      </div>
      <div class="center">
        <el-input placeholder="请输入内容" v-model="input3" class="input-with-select" @keydown="searchMsg">
          <el-button slot="append" icon="el-icon-search" @click="searchMsg2"></el-button>
        </el-input>
      </div>
      <div class="right">
        <router-link :to="`/Login`">登录</router-link>
        <router-link :to="`/Register`">注册</router-link>
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
  },
 methods:{
    searchMsg(e){
  //    if(e.keyCode==13){
  //      var msg=this.input3;
  //      console.log(msg);
  //    }
  },
  searchMsg2(){
    var msg=this.input3;
    // var url="dim";
    if(msg=="进口鲜花"){
      this.$router.push("/Import");
    }
    else if(msg=="爱情鲜花"){
      this.$router.push("/Love");
    }
    else if(msg=="生日鲜花"){
      this.$router.push("/Birthday");
    }
    else if(msg=="问候长辈"){
      this.$router.push("/Extend");
    }
    else if(msg=="祝福祝贺"){
      this.$router.push("/Blessing");
    }
    else if(msg=="探病慰问"){
      this.$router.push("/Condole");
    }
    else if(msg=="道歉鲜花"){
      this.$router.push("/Apologize");
    }
    else if(msg=="生活鲜花"){
      this.$router.push("/Life");
    }
    else if(msg=="全部鲜花"){
      this.$router.push("/All ");
    }
    else if(msg=="开业花篮"){
      this.$router.push("/Opening");
    }
    else if(msg=="永生花"){
      this.$router.push("/Forever");
    }
    else if(msg=="礼品"){
      this.$router.push("/Gift");
    }
    else if(msg=="登录"){
      this.$router.push("/Login");
    }
    else if(msg=="注册"){
      this.$router.push("/Register");
    }
    
    // var obj={msg};
    // this.axios.get(url,{params:obj}).then(result=>{
    //   console.log(result);
    // })
  }
 }
}
</script>
<style>
  *{margin:0;padding:0;box-sizing: border-box;}
  .header_div{
    min-width:1200px;
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


