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
        <router-link :to="`/Login`">{{loginMsg}}</router-link>
        <!-- <a href="javscript:;" v-show="logout">注销</a> -->
        <el-button type="text" @click="open" v-show="logout">注销</el-button>
        <router-link :to="`/Register`" class="register">注册</router-link>
        <router-link :to="`/Gocart`"><i class="el-icon-shopping-cart-2"></i>我的购物车<i class="el-icon-chat-square"></i></router-link>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return{
      input3:"",
      loginMsg:"登录",
      logout:false
    }
  },
  created(){
      var uname=sessionStorage.getItem("uname");
      if(uname.length>0){
        this.loginMsg=`欢迎回来:${uname}`;
        this.logout=true;
      }
  },
 methods:{
    open() {
        this.$confirm('确定要注销吗?', '提示', {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'warning'
        }).then(() => {
          sessionStorage.clear();
          this.loginMsg=`登录`;
          this.logout=false;
          this.$message({
            type: 'success',
            message: '注销成功!'
          });
        }).catch(() => {
          this.$message({
            type: 'info',
            message: '已取消'
          });          
        });
      }
    },
    searchMsg(e){
  //    if(e.keyCode==13){
  //      var msg=this.input3;
  //      console.log(msg);
  //    }
  },
  searchMsg2(){
    var msg=this.input3;
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
    else if(msg=="玫瑰"){
      this.$router.push("/Rose");
    }
    else if(msg=="白玫瑰"){
      this.$router.push("/Wrose");
    }
    else if(msg=="红玫瑰"){
      this.$router.push("/Rrose");
    }
    else if(msg=="粉玫瑰"){
      this.$router.push("/Prose");
    }
    else if(msg=="白百合"){
      this.$router.push("/Whitelily");
    }
    else if(msg=="向日葵"){
      this.$router.push("/Sunflor");
    }
    else if(msg=="康乃馨"){
      this.$router.push("/Kangnaixin");
    }
    else if(msg=="雏菊"){
      this.$router.push("/Daisy");
    }
    else if(msg=="红雪山"){
      this.$router.push("/PinkMt");
    }
    else if(msg=="抱抱桶"){
      this.$router.push("/Hugtong");
    }
    else if(msg=="巧克力"){
      this.$router.push("/Chocolate");
    }
    else if(msg=="满天星"){
      this.$router.push("/Babysbreath");
    }
    else if(msg=="香薰"){
      this.$router.push("/Aromatherapy");
    }
    else{
      this.$router.push("/Serr");
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
    outline: none !important;
  }
  .right a{
    color:#555;
    font-size: 16px;
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
  .register{
    margin-left:10px;
  }
</style>


