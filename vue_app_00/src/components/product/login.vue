<template>
    <div>
        <header00></header00>
        <navgitor></navgitor>
        <div class="container">
        <div class="main">
            <div class="login_box">
                <div class="swich_type" >
                    <a href="#" data-toggle="tab" data-id="content1" class="active">账号登录</a>
                    <a href="#" data-toggle="tab" data-id="content2">用户注册</a>
                </div>
                <div class="login_in" id="content1">
                    <div class="mobile_yzm">
                        <a href="#">使用手机验证码登录</a>
                    </div>
                    <div class="item_info">
                        <i class="iconfont icon-44"></i>
                        <input type="text" placeholder="请输入用户名"  id="uname" v-model="uname" @blur="unameBlur" @focus="unameFocus">
                    </div>
                    <div class="item">
                            <i class="iconfont icon-suo"></i>
                            <input type="password" placeholder="请输入密码" v-model="upwd" @blur="upwdBlur" @focus="upwdFocus">
                    </div>
                    <div class="login_button">
                        <el-button @click="login">登录</el-button>
                    </div>
                   <div class="forget_pwd">
                       <a href="#">忘记密码?</a>
                   </div>
                </div>
              <div class="reg" id="content2">
                    <div class="item_info">
                        <i class="iconfont icon-44"></i>
                        <input type="text" placeholder="请输入注册手机号" v-model="phone" @focus="phoneFocus" @blur="phoneblur">
                    </div>
                     <div class="item">
                            <i class="iconfont icon-anquan"></i>
                             <input type="text" placeholder="请输入用户名" v-model="uname" @focus="uFocus" @blur="uBlur">
                        </div>
                   
                    <div class="item_info">
                            <i class="iconfont  icon-suo"></i>
                            <input type="password" placeholder="请输入密码" v-model="upwd" @focus="pFocus" @blur="pBlur">
                        </div>
                        <div class="item">
                                <i class="iconfont icon-anquan"></i>
                                <input type="password" placeholder="确认密码" v-model="spwd" @focus="sFocus">
                        </div>
                    <div class="login_button">
                        <button @click="reg">注册</button>
                    </div>
                   <div class="forget_pwd">
                       <a href="#">忘记密码?</a>
                   </div>
                </div>
            </div>
        </div>
    </div>
    <footer00></footer00>
    </div>
</template>
<script>
import Header from '../index/header/header0.vue'
import Nav from '../project/Nav.vue'
import Footer from '../index/footer/footer0.vue'
export default {
    components:{
      //"scoll":Scrollbars,
      "header00":Header,
      "navgitor":Nav,
      "footer00":Footer,
     },
    data(){
        return{
            uname:"",upwd:"",
            phone:"",spwd:"",
        }
    },
    mounted() {
         $("[data-toggle=tab]").click(function(){
    $(this) .addClass("active").siblings().removeClass("active")
  })
    var as=document.querySelectorAll(
    "[data-toggle=tab]"
  );
    for(var a of as){
      as[0].onclick=function(){
      var firstCon=document.getElementById("content1");
      var nextCon=document.getElementById("content2");
      var lastCon=document.querySelector(".login_box")
      firstCon.style.display="block";
      nextCon.style.display="none"
      lastCon.style.height="317px"
      }
      as[1].onclick=function(){
      var firstCon=document.getElementById("content1");
      var nextCon=document.getElementById("content2");
      var lastCon=document.querySelector(".login_box")
      firstCon.style.display="none";
      nextCon.style.display="block";
      lastCon.style.height="370px"
      }
  }
    },
    methods: { 
        login(){
            var uname=this.uname;
            sessionStorage.setItem("uname",uname);
            var upwd=this.upwd;
            var reg=/^[a-z0-9_]{3,12}$/i;
            var url="login";
            var obj={uname,upwd};
           
            this.axios.get(url,{params:obj}).then(result=>{
               var code=result.data.code;
               if(code>0){
                   this.$router.push({path:'Middle'})
               }else{
                    this.$message.error('账户名密码不符');
               }
            })
        },
        reg(){
            var uname=this.uname;
            var upwd=this.upwd;
            var spwd=this.spwd;
            var phone=this.phone;
            var url2="register";
            var obj2={uname,upwd,spwd,phone};
            this.axios.get(url2,{params:obj2}).then(result=>{
                if(this.upwd!=this.spwd){
                    this.$message.error ("注册失败,密码输入不一致")
                }else{
                     this.$message({
                     message: '注册成功',
                         type: 'success'
                })
                }
            })
        },
        unameFocus(){
            this.$message('请输入3~12位');
        },
        unameBlur(){
            if(this.uname==""){
                this.$message.error('用户名不能为空');
            }else if(this.uname.length<3&&this.uname.length>0){
                 this.$message.error('用户名不能小于3位');
            }else if(this.uname.length>12){
                this.$message.error('用户名不能大于12位')
            }else{
                this.$message({
                message: '输入正确',
                type: 'success'
                })
            }
        },
        upwdFocus(){
            this.$message('请输入密码');
        },
        upwdBlur(){
            if(this.upwd==""){
                this.$message.error('密码不能为空');
            }else if(this.upwd.length<3&&this.upwd.length>0){
                 this.$message.error('密码不能小于3位');
            }else if(this.upwd.length>12){
                this.$message.error('密码不能大于12位')
            }
        },
        phoneFocus(){
             this.$message('请输入号码');
        },
        phoneblur(){
            var reg=/^1[3-9]\d{9}$/;
            if(reg.test(this.phone)==true){
                this.$message({
                message: '输入正确',
                type: 'success'
                })
            }else if(this.phone==""){
                 this.$message.error('号码不能为空');
            }else{
                this.$message.error('号码输入格式不正确');
            }
        },
        uFocus(){
             this.$message('请输入用户名');
        },
        uBlur(){
            var ureg=/^[a-zA-Z0-9_-]{4,16}$/;
            if(ureg.test(this.uname)==true){
                this.$message({
                message: '输入正确',
                type: 'success'
                })
            }else if(this.uname==""){
                 this.$message.error('用户名不能为空');
            }else{
                 this.$message.error('用户名格式不正确');
            }
        },
        pFocus(){
            this.$message('请输入密码');
        },
        pBlur(){
            var preg=/^[a-zA-Z0-9_-]{4,16}$/;
            if(preg.test(this.upwd)==true){
                this.$message({
                message: '密码格式输入正确',
                type: 'success'
                })
            }else if(this.upwd==""){
                 this.$message.error('密码不能为空');
            }else{
                 this.$message.error('密码格式不正确');
            }
        },
        sFocus(){
            this.$message('请保持两次密码输入一致');
        },
        sBlur(){
            if(this.upwd!=this.spwd){
                this.$message.error.error('密码输入不一致');
            }else{
                 this.$message('输入正确')
            }
        }
    },
}
</script>
<style scoped>
   *{margin:0;padding: 0}
body{
    font: 12px "微软雅黑",Helvetica,sans-serif;
}
.main{
    background-image: url(../../img/login_bg3.jpg) ;
    background-repeat:no-repeat;
    min-width:1903px;height: 530px;
    position:relative;
    margin-bottom:50px;
}
.login_box{
    width:307px;height: 317px;
    padding: 20px 40px 30px;
    background-color:#fff;
    position: absolute;
    left: 1244px;
    top: 54px;     
}
a{
    text-decoration: none
}
.swich_type{
    display: flex;
    justify-content: space-between;
    width:223px;height:50px
}
.swich_type>a{
    font-size:18px;
    color: #888;
    border-bottom: 1px solid #d1d1d1;
    padding:10px 0px;
    width:134px;height: 50px;
    text-align: center;
    font-weight: bolder;
    box-sizing:border-box;
   
}
.active{
    border-bottom: 2px solid #333 !important;
    color: #333 !important;
}
.mobile_yzm{ 
    height:16px ;
}
.mobile_yzm>a{
    color:#333;
    float: right;
    height:16px ;
     margin-top:15px;
    
}
.item_info{
    margin-top: 30px;
}
.icon-44::before{
    position: absolute;
    left: 8px;
    top: 50px;
    font-size:23px;
    color:#e8e8e8
}
input{
    width:226px;height: 38px;
    padding: 5px 10px 5px 35px;
    border: 1px solid #d2d2d2;
    font: 12px/1.5 Microsoft ;
    color: #555
}
.item{
    position: relative;
    margin-top: 15px;
}
.icon-suo::before{
    position: absolute;
    left: 9px;top:2px;
    font-size:23px;
    color:#e8e8e8
}
.login_button>button{
    width: 100%;height: 40px;
    background-color: #333;
    margin-top: 20px;
    border: 0;
    font-size: 16px;
    font-weight: bold;
    border-radius: 3px;
    color:#fff
}
.forget_pwd{
    margin-top: 10px;
}
.forget_pwd>a{
    color:#8c8c8c;
}
.forget_pwd>a:hover{
    text-decoration: underline;
    color:#555
}
.reg>.item_info{
    margin-top: 20px;
}
.reg .icon-44::before{
    position: absolute;
    left: 4px;
    top: 14px;
}
.pic_reg{
    display: flex;
    flex-wrap: nowrap;
    justify-content: space-between;
    margin-top: 10px
}
.pic_reg>input{
    width: 80px;height: 28px !important;
    padding: 4px 5px 5px 4px !important;
   
}
.pic_reg>a:last-child{
    color: #ff6a00;
    height: 20px;
    line-height: 62px
}
.reg_msg{
    margin-top: 6px;
}
.reg_msg>input{
    width:110px;height: 28px !important;
}
.icon-xin{
    position: absolute;
    left: 9px;
    top: 122px;
    color:#e8e8e8
}
.reg_msg>button{
    width: 100px;
    height: 38px;
    font-size: 12px;
    color: #808080;
    background: #F3F3F3;
    border: 1px solid #E5E5E5;
    cursor: pointer;
    font-weight: 600;
    margin-left: 9px;
}
.reg>.item_info{
    margin-top: 10px;
}
.icon-anquan{
    position: absolute;
    left: 10px;
    top: 8px;
    color:#e8e8e8
}
.reg>.item{
    margin-top: 10px;
}
.reg>.login_button>button{
    margin-top: 10px;       
}
.reg .icon-suo{
    position: absolute;
    left: -2px;
    top: 104px;
}
#content2{
	position: absolute;
    top: 84px;
    left: 40px;
    display: none
}
#content1{
	position: absolute;
    top: 69px;
    left: 40px;
}
.mobile_yzm>a[data-v-4b62167c]{
    font-size:12px;
}
.forget_pwd>a[data-v-4b62167c]{
    font-size:12px;
}
</style>    