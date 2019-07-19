<template>
    <div class="details">
        <!-- 商品详情页 -->
        <div class="top">
            <!-- 放大镜 -->
            <div class="left all">
                <!-- 小图 竖形列表li -->
                <div class="my_li">
                    <span class="iconfont icon-down fanye1" :class="arrow" @click="up"></span>
                    <div class="ulheight" :style="uheight">
                    <ul class="smallimg" :style="move_ul">
                        <li><img :src="'http://127.0.0.1:3000/'+list.details" @mouseenter="select" alt=""></li>
                        <li><img src="../../assets/Mig/20.jpg" @mouseenter="select" alt=""></li>
                        <li><img src="../../assets/Mig/21.jpg" @mouseenter="select" alt=""></li>
                        <li><img src="../../assets/Mig/22.png" @mouseenter="select" alt=""></li>
                        <li><img src="../../assets/Mig/12.jpg" @mouseenter="select" alt=""></li>
                        <li><img src="../../assets/Mig/13.jpg" @mouseenter="select" alt=""></li>
                        <li><img src="../../assets/Mig/14.jpg" @mouseenter="select" alt=""></li>
                        <li><img src="../../assets/Mig/2.png" @mouseenter="select" alt=""></li>
                        <li><img src="../../assets/Mig/3.png" @mouseenter="select" alt=""></li>
                    </ul> 
                    </div>
                    <span class="iconfont icon-down fanye2" :class="arrow1" @click="down"></span>
                </div>
                <!-- 中图 -->
                <div class="m_img" >
                    <!-- 遮罩层 -->
                    <div class="mask" :style="mask"></div>
                    <div class="mask2" @mousemove="move" @mouseleave="leave"></div>
                    <img :src="mimg" alt="" >
                </div>
                <!-- <img src="../../assets/Mig/1.png"> -->
                <!-- 大图 -->
                <div class="l_img" :style="lgimg">
                </div>
            </div>
            <!-- 右边详情 -->
            <div class="right">
                <h3 v-text=list.title></h3>
                <p class="hzj">
                    花赞价 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="dj" v-text="`￥${list.price}`"></span>&nbsp;&nbsp;&nbsp;
                    <span class="iconfont icon-erweima" @mouseenter="ewmshow" @mouseleave="ewmhidden"></span>&nbsp;&nbsp;&nbsp;
                    <span class="app">APP折后价</span>
                    <span class="zhj">￥1399省150元</span>
                    <img src="../../assets/Mig/ewm.png" alt="" class="bigewm" :style="ewm">
                </p>
                <div class="bigewm"></div>
                <p>编&nbsp;&nbsp;&nbsp;&nbsp;号 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span v-text=list.serial_number></span>
                </p>
                <p>材&nbsp;&nbsp;&nbsp;&nbsp;料 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span v-text=list.material></span>
                </p>
                <p>包&nbsp;&nbsp;&nbsp;&nbsp;装 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span v-text=list.pack></span>
                </p> 
                <p>花&nbsp;&nbsp;&nbsp;&nbsp;语 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span v-text=list.blessing></span>
                </p>
                <p>附&nbsp;&nbsp;&nbsp;&nbsp;赠 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span v-text=list.annexation></span>
                </p>
                <p>配&nbsp;&nbsp;&nbsp;&nbsp;送 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span v-text=list.distribution>全国 （可配送至全国1000多个城市，市区免配送费）</span>
                </p>
                <p class="sm">说&nbsp;&nbsp;&nbsp;&nbsp;明 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span v-text=list.state class="shuoming"></span>
                </p>
                <p>数&nbsp;&nbsp;&nbsp;&nbsp;量 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="number" min="1" max="12" name="quantity" v-model="num1" id="">
                    <span class="btnspan">
                    <button class="iconfont icon-right fanye2" @click="one2"></button>
                    <button class="iconfont icon-down fanye2" @click="one1" :class="updown"></button>
                    </span>
                </p>
                <div class="btn">
                    <button @click="jrgwc">加入购物车</button>
                    <button @click="ljgm">立即购买</button>
                    <button class="iconfont icon-shoucang-copy"></button>
                    <button class="iconfont icon-fenxiang"></button>
                </div>
                
            </div>
        </div>
        <!-- 商品详情 售后保障 -->
        <div class="spxqnav">
            <a href="#">商品详情</a>
            <a href="#">售后保障</a>
        </div>
        <!-- 商品详情 吸顶div -->
        <div class="spxqnav spxqnavfixed" id="xd" :class="fixed">
            <a href="#">商品详情</a>
            <a href="#">售后保障</a>
            <button @click="jrgwc">加入购物车</button>
            <button @click="ljgm">立即购买</button>
        </div>
        <!-- 品牌故事 -->
        <div class="ppgs">
            <div class="d1">
                <div>
                <p>Brand Story</p>
                <p>品牌故事</p>
                </div>
            </div>
            <div class="d2">
                <span>Rosewin寓意花赞，鲜花礼赞爱情，专注于轻奢鲜花创意设计，10余年成就全国知名品牌。Rosewin精心打造的APP，订花更便捷：精准推荐设计师款，精心呈现每个细节，同时提供专业定制，致敬生活美学，将浪漫做到极致。</span>
                <img src="../../assets/Mig/zimu.png" alt="">
            </div>
        </div>
        <!-- 商品详情 -->
        <div class="spxq" >
            <div class="d1">
                <div>
                <p>Product Details</p>
                <p>商品详情</p>
                </div>
            </div>
            <div class="img">
                <img :src="'http://127.0.0.1:3000/'+list.details" alt="" class="xqtp">
                <img src="../../assets/Mig/11.jpg" alt="">
                <!-- <img src="../../assets/Mig/6.jpg" alt="">
                <img src="../../assets/Mig/7.jpg" alt="">
                <img src="../../assets/Mig/8.jpg" alt="">
                <img src="../../assets/Mig/9.jpg" alt="">
                <img src="../../assets/Mig/10.jpg" alt="">
                <img src="../../assets/Mig/5.jpg" alt="">
                <img src="../../assets/Mig/11.jpg" alt=""> -->
            </div>
        </div>
        <!-- 猜你喜欢 -->
        <div class="cnxh">
            <div class="d1">
                <div>
                <p>Guess Your Like</p>
                <p>猜你喜欢</p>
                </div>
            </div>
            <ul class="cnxhul">
                <li>
                    <a href="#"><img src="../../assets/Mig/12.jpg" alt=""></a>
                    <div>
                        <p>小幸运</p>
                        <p>小清新礼盒装</p>
                        <p>￥599</p>
                    </div>
                </li>
                <li>
                    <a href="#"><img src="../../assets/Mig/13.jpg" alt=""></a>
                    <div>
                        <p>陌上花开</p>
                        <p>99朵粉红雪山</p>
                        <p>￥1199</p>
                    </div>
                </li>
                <li>
                    <a href="#"><img src="../../assets/Mig/14.jpg" alt=""></a>
                    <div>
                        <p>闻香识爱</p>
                        <p>16朵戴安娜</p>
                        <p>￥699</p>
                    </div>
                </li>
                <li>
                    <a href="#"><img src="../../assets/Mig/15.jpg" alt=""></a>
                    <div>
                        <p>叶上胭脂</p>
                        <p>19朵厄瓜多尔红玫瑰</p>
                        <p>￥1499</p>
                    </div>
                </li>
                <li>
                    <a href="#"><img src="../../assets/Mig/16.jpg" alt=""></a>
                    <div>
                        <p>初遇</p>
                        <p>52朵戴安娜玫瑰</p>
                        <p>￥799</p>
                    </div>
                </li>
               
            </ul>
        </div>
        <!-- 消息提示框 最少一个 -->
        <!-- 遮罩 -->
        <div class="one" :style="one">
            <!-- 提示框 -->
            <div :class="guodu">
                <div>
                    <span>系统提示</span>
                    <a href="javascript:;" class="iconfont icon-tishikuangguanbi" @click="close"></a>
                </div>
                <div>
                    <span class="iconfont icon-ruotishikuang-jinggaotishitubiao"></span>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <span>最低购买数量为：1</span>
                </div>
                <div>
                    <button @click="close">确定</button>
                </div>
            </div>
        </div>
        <!-- 消息提示框 加入购物车 -->
        <!-- 遮罩 -->
        <div class="two" :style="two">
            <div :class="guodu2">
                <div>
                    <span>系统提示</span>
                    <a href="javascript:;" class="iconfont icon-tishikuangguanbi" @click="close"></a>
                </div>
                <div>
                    <p>宝贝已成功添加到购物车</p>
                    <p>
                        购物车共有 <span class="geshu">1</span> 件宝贝，总金额为：<span class="jine">￥599.00</span>
                    </p>
                </div>
                <div>
                    <button @click="ljgm">去结算</button>
                    <button @click="close">继续购物</button>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import { setTimeout, clearInterval } from 'timers';
// import { constants } from 'crypto';
export default {
    data(){
        return{
            list:{},
            bigimg:"",
            updown:{xdown:false},
            num1:1,
            guodu:{tsdonghua:false},
            guodu2:{tsdonghua2:false},
            one:{display:"none"},
            two:{display:"none"},
            fixed:{xiding:false},
            mimg:"",
            mask:{
                visibility: "hidden",
                top:"0px",
                left:"0px"
            },
            lgimg:{
                visibility: "hidden",
                backgroundImage:"",
                backgroundPosition: "",
            },
            move_ul:{
                top:"0px",
                height:"0px",
            },
            uheight:{
                height:"300px",
            },
            arrow:{
                arrowup:false,
            },
            arrow1:{
                arrowdown:false,
            },
            ewm:{
                visibility:"hidden",
            },
        }
    },
    created(){
        // console.log(this.$route.params.lid)
        this.load();
    },
    methods:{
        move(e){
            this.mask.visibility="visible"
            this.lgimg.visibility="visible"
            var MSIZE=200;//记录小mask的大小
            var SMSIZE=400;//记录super-mask的大小
            var top=e.offsetY-MSIZE/2;
            var left=e.offsetX-MSIZE/2;
            //如果top<0,就拉回0, 如果top>SMSIZE-MSIZE，就拉回SMSIZE-MSIZE
            if(top<0){
            top=0;
            }else if(top>SMSIZE-MSIZE){
            top=SMSIZE-MSIZE;
            }
            //如果left<0,就拉回0, 如果left>SMSIZE-MSIZE，就拉回SMSIZE-MSIZE
            if(left<0){
            left=0;
            }else if(left>SMSIZE-MSIZE){
            left=SMSIZE-MSIZE;
            }
            this.mask.top=top+"px";
            this.mask.left=left+"px";
            this.lgimg.backgroundPosition=`${-left*2}px ${-top*2}px`
        },
        leave(){
            this.mask.visibility="hidden"
            this.lgimg.visibility="hidden"
        },
        select(e){
            // console.log(e.target);
            var img=e.target;
            // console.log(img.src);
            this.mimg=`${img.src}`;//本地的地址转为了网络的地址
            this.lgimg.backgroundImage="url("+`${img.src}`+ ") ";
            // console.log(this.lgimg.backgroundImage);
        },
        up(){   
            var h=this.move_ul.height;
            h=Number(h.slice(0,-2));
            var top=this.move_ul.top;
            top= Number(top.slice(0,-2));
            var ul=document.getElementsByClassName("smallimg");
            // console.log(ul[0].children.length);
            var num=ul[0].children.length;
            // console.log(h);
            // console.log(top);
            if(top-62<0&&num>5){this.arrow1.arrowdown=true}
            if(h>300&&(h-Math.abs(top)>362)){
                if(h-Math.abs(top)<400){
                    this.arrow.arrowup=false;
                }
                top=(top-62)+"px";
                this.move_ul.top=top;
            }
           
        },
        down(){
            var h=this.move_ul.height;
            h=Number(h.slice(0,-2));
            var top=this.move_ul.top;
            top= Number(top.slice(0,-2));
            if(top==-62){
                this.arrow1.arrowdown=false;
            }
            if(h>300&&top<0){
                if(h-Math.abs(top)<400){
                    this.arrow.arrowup=true;
                }
                top=(top+62)+"px";
                this.move_ul.top=top;
            }
            
        },
        ewmshow(){
            this.ewm.visibility="visible"
        },
        ewmhidden(){
            this.ewm.visibility="hidden"
        },
        handleScroll(){
            let scrollTop=window.pageYOffset||document.documentElement.scrollTop||document.body.scrollTop;
            // console.log(scrollTop);
            // let offsetTop=document.querySelector("#xd").offsetTop;
            // console.log(offsetTop);
            scrollTop>600?this.fixed.xiding=true:this.fixed.xiding=false;
            // console.log(this.fixed.xiding)
        },
        one1(){
            // 判断数量是否为1
            // 点击显示提示框
            if(this.num1==2){this.updown.xdown=false;}
            if(this.num1==1){
                this.one.display="flex";
                this.guodu.tsdonghua=true;
            }else{this.num1-=1;}
            
        },
        one2(){
            this.num1+=1;
            this.updown.xdown=true;
        },
        close(){
            this.one.display="none";
            this.two.display="none";
            this.guodu.tsdonghua=false;
            this.guodu2.tsdonghua2=false;
        },
        jrgwc(){
            this.two.display="flex";
            this.guodu2.tsdonghua2=true;
            this.insert();
        },
        ljgm(){
            this.$router.push("/Gocart");
        },
        load(){
            var url = "details";
            var obj={lid:this.$route.params.lid};
            this.axios.get(url,{params:obj}).then(result=>{
                this.list=result.data[0][0];
                // console.log(result.data);
                this.mimg="http://127.0.0.1:3000/"+this.list.details;
                this.lgimg.backgroundImage="url("+"http://127.0.0.1:3000/"+this.list.details+ ") ";
            })
        },
        insert(){
            var url="InsertProduct";
            var obj={
                img_url:this.list.details,
                title:this.list.title,
                price:this.list.price,
                count:this.num1
            }
            this.axios.get(url,{params:obj}).then(result=>{
                console.log(result);
            })
        },
    },
    mounted(){
        var ul=document.getElementsByClassName("smallimg");
        // console.log(ul[0].children.length);
        var num=ul[0].children.length;
        // console.log(num);
        var h=num*62;
        // console.log(h);
        this.move_ul.height=h+"px";
        if(num<=5){
            this.uheight.height=num*62+"px";
            this.arrow.arrowup=false;
            this.arrow1.arrowdown=false;
        }else{
            this.arrow.arrowup=true;
        };
        window.addEventListener("scroll",this.handleScroll);
    },
    destroyed(){
        window.removeEventListener("scroll",this.handleScroll);
    },     
}
</script>
<style scoped>
/* 放大镜样式 */
.arrowup{
    color: #666 !important;
}
.arrowdown{
    color: #666 !important;
}
.all{
    display: flex;
    justify-content:flex-start;
    align-items: flex-start;
    width: 600px;
    position: relative;
}
.smallimg{
    list-style: none;
    position: relative;
}
.my_li{
    position: relative;
    text-align: center;
    width: 55px;
    /* background-color: #ccc; */
}
.my_li ul{
    /* background: yellow; */
   /* margin-left: -38px; */
   width: 52PX;
}
.ulheight{
    /* height:300px; */
    overflow: hidden;
    /* background-color: #ccc; */
}
.smallimg li img{
    display: block;
    width: 52PX;
    height: 52PX;
}
.smallimg li{
    margin-bottom: 10px;
    width: 52PX;
}
.my_li span{
    display: inline-block;
    color: #ddd;
    font-size: 30px !important;
}
.fanye2{
    transform: rotate(180deg);
}
.m_img img{
   width: 400px;
}
.m_img{
    width: 400px;
    height: 400px;
    margin-left: 20px;
    position: relative;
}
.l_img{
    width: 400px;
    height: 400px;
    overflow: hidden;
    position: absolute;
    left: 510px;
    z-index: 999;
    background-repeat: no-repeat;
}
/* .l_img img{
    width: 800px;
} */
.mask{
    width: 200px;
    height: 200px;
    background-color: rgba(255, 255, 255, 0.383);
    position: absolute;
}
.mask2{
    position: absolute;
    z-index: 20;
    width: 400px;
    height: 400px;
    background: transparent;
}
/* details整体布局 */
.details{
    background-color: #f5f5f5;
    /* position: relative; */
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}
.details .top{
    width: 1200px;
    height: 580.5px;
    margin: 0 auto;
    background-color: #fff;
    padding: 70px 0;
    display: flex;
    justify-content: flex-start;
    align-items: top;
}
.details .top .left{
    width: 510px;
    height: 400px;
    margin-left: 95px;
}
.details .top .right{
    width: 555px;
    height: 440.5px;
    padding-left:35px ;
    position: relative;
    /* background-color: #eeeeee; */
}
.details .right p{
    margin-bottom: 8px;
    font-size: 12px;
    color: #8c8c8c;
    height: 24px;
    line-height: 24px;
}
.details .right h3{
    font-size: 24px;
    color: #333333;
}
.details .right p span{
    color: #555555;
}
.details .right .hzj{
    height: 27.5px;
    line-height: 27.5px;
    margin-top: 25px;
    margin-bottom: 15px;
}
.details .right .hzj .dj{
    font-size: 18px;
    font-weight: bold;
    color: #333;
}
.details .right .hzj .app{
    font-size: 13px;
    color: #333;
}
.details .right .hzj .zhj{
    font-size: 13px;
    color: #333;
}
.details .right .hzj .bigewm{
    display: block;
    position: absolute;
    width: 200px;
    height: 202px;
    left: 195px;
    box-shadow: 0px 0px 5px #8c8c8c;
}
/* 去掉type=number的上下箭头 */
input::-webkit-outer-spin-button,input::-webkit-inner-spin-button { -webkit-appearance: none; }
input[type="number"]{ -moz-appearance: textfield; }

.details .right p input{
    width: 50px;
    height: 30px;
    text-align: center;
    border: 1px solid #d9d9d9;
    background-color: #fff;
    position: relative;
    z-index: 1;
}
.details .right p .btnspan{
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
    align-items: center;
}
.details .right p .btnspan button{
    width: 22px;
    height: 15px;
    font-size: 12px !important;
    line-height: 15px;
    color: #666666;
    text-align: center;
    font-weight: 200;
    padding: 0;
    margin: 0;
    border: 1px solid #d9d9d9;
    background-color: #fff;
    position: relative;
    top: -30px;
    left: -137px;
}
.details .right p .btnspan button:first-child{
    color: #333;
    font-weight: bold;
}
.details .right p .btnspan button:hover{
    color: #ff8f22;
}
.details .right .btn{
    margin-top: 35px;
}
.details .right .btn button:first-child,.details .spxqnavfixed button:nth-child(3){
    background: #333;
    width: 143px;
    height: 45px;
    font-size: 14px;
    overflow: hidden;
    color: #fff;
    border: 0;
    cursor: pointer;
    border-radius: 2px;
}
.details .right .btn button:first-child:hover,.details .spxqnavfixed button:nth-child(3):hover{
    background-color: #ff8000;
}
.details .right .btn button:nth-child(2),.details .spxqnavfixed button:nth-child(4){
    background: #c53f40;
    margin-left: 10px;
    width: 152px;
    height: 45px;
    font-size: 14px;
    overflow: hidden;
    color: #fff;
    border: 0;
    cursor: pointer;
    border-radius: 2px;
}
.details .right .btn button:nth-child(2):hover,.details .spxqnavfixed button:nth-child(4):hover{
    background-color: #c53f3fed;
}
.details .right .btn button:nth-child(3){
    width: 43px;
    height: 43px;
    color: #666;
    background-color: #fcfcfc;
    border: 1px solid #d9d9d9;
    margin-left: 20px;
    line-height: 43px;
    text-align: center;
    padding: 0;
    font-size: 24px !important;
    color: #999999;
}
.details .right .btn button:nth-child(4){
    width: 43px;
    height: 43px;
    color: #666;
    background-color: #fcfcfc;
    border: 1px solid #d9d9d9;
    margin-left: 10px;
    line-height: 43px;
    text-align: center;
    padding: 0;
    font-size: 24px !important;
    color: #999999;
}
.details .spxqnavfixed{
    display: none;
}
.details .spxqnavfixed button{
    position: relative;
    left: 650px;
    top: 1px;
}
.icon-erweima{
    font-size: 27px !important;
    color: #333 !important;
    line-height: 27.5px;
    position: relative;
    top:5px;
}
.details .spxqnav{
    width: 1200px;
    height: 61px;
    margin: 0 auto;
    margin-top: 20px;
    background-color: #fff;
}
.details .spxqnav a:first-child{
    display: inline-block;
    width: 110px;
    height: 60px;
    line-height: 60px;
    text-align: center;
    font-size: 14px;
    color: #fff;
    background: #505050;
    text-decoration: none;
}
.details .spxqnav a:nth-child(2){
    display: inline-block;
    width: 110px;
    height: 60px;
    line-height: 60px;
    text-align: center;
    font-size: 14px;
    color: #505050;
    text-decoration: none;
}
.details .ppgs,.details .spxq,.details .cnxh{
    width: 1200px;
    height: 222px;
    margin: 0 auto;
    margin-top: 20px;
    background-color: #fff;
    padding: 0 30px;
}
.details .spxq{
    height: auto;
}
.details .cnxh{
    height: auto;
}
.details .d1{
    border-bottom: solid 1px #e8e8e8; 
    width: 100%;
    height: 72px;
    padding-top: 15px;
}
.details .ppgs div div,.details .spxq div div,.details .cnxh div div{
    background: url("../../assets/Mig/R.png") no-repeat;
    width: 100%;
    padding-left: 75px;
}
.details .ppgs div:first-child p:first-child,.details .spxq div:first-child p:first-child,.details .cnxh div:first-child p:first-child{
    font-size: 14px;
    color: #999999;
    margin: 0;
}
.details .ppgs div:first-child p:last-child,.details .spxq div:first-child p:last-child,.details .cnxh div:first-child p:last-child{
    font-size: 12px;
    color: #666666;
    margin: 0;
}
.details .ppgs .d2{
    width: 100%;
    height: 143px;
    padding: 40px 0;
}
.details .ppgs .d2 span{
    display: inline-block;
    width: 690px;
    height: 63px;
    color: #909090;
    text-align: justify;
    font-size: 14px;
    padding: 0 75px 0 45px;
    border-right: solid 1px #e8e8e8; 
}
.details .ppgs .d2 img{
    position: relative;
    top: -25px;
    left: 40px;
}
.details .spxq{
    width: 1200px;
    margin: 0 auto;
    background-color: #fff;
    margin-top: 20px;
}
.details .spxq .img{
    width: 960px;
    margin: 0 auto;
    padding-top: 20px;
    padding-bottom: 30px;
}
.details .cnxh{
    margin-top:40px;
}
.details .cnxh .cnxhul{
    list-style: none;
    display: flex;
    justify-content:space-around;
    align-items: center;
    padding: 20px 0;
    margin: 0;
}
.details .cnxh .cnxhul li img{
    width: 200px;
}
.details .cnxh .cnxhul li div{
    width: 200px;
    height: 98px;
    padding: 10px 16px 16px;
}
.details .cnxh .cnxhul li div:hover{
    cursor: pointer;
}
.details .cnxh .cnxhul li div p{
    font-size: 12px;
    text-align: center;
    color: #999999;
    margin-bottom: 5px;
}
.details .cnxh .cnxhul li div p:first-child{
    color: #333333;
    font-weight: bold;
}
/* 去除按钮点击边框 */
button {
outline: none;
}
/* 吸顶样式 */
.xiding{
    display: block !important;
    position: fixed !important;
    z-index: 50;
    width: 1200px;
    margin: auto !important;
    top: 0px;
    margin-top: 0 !important;
}
/* 提示框one */
.details .one{
    position: fixed;
    top: 0;
    left: 0;
    margin: 0;
    width: 100%;
    height: 100%;
    background-color: #33333375;
    z-index: 900;
    display: flex;
    justify-content: center;
    align-items: center;
    /* display: none; */
}
.details .one>div{
    /* width: 276px;
    height: 195px; */
    width: 0;
    height: 0;
    background-color: #fff;
    position: fixed;
    box-shadow: 0px 0px 0px 10px rgba(0, 0, 0, 0.144);
    overflow: hidden;
    opacity: 1;
    transition: all 0.2s ease-out;
    /* display: none; */
}
.details .one>div div:first-child{
    width: 100%;
    height: 43px;
    padding-left: 20px;
    background-color: #f8f8f8;
}
.details .one>div div:first-child span{
    font-size: 14px;
    color: #333333;
    line-height: 43px;
}
.details .one>div div:first-child a{
    color: #333 !important;
    font-weight: bold;
    font-size: 12px !important;
    position: relative;
    left: 170px;
}
.details .one>div div:nth-child(2){
    width: 100%;
    height: 88px;
    padding: 20px;
    display: flex;
    justify-content: center;
    align-items: center;
}
.details .one>div div:nth-child(2) span:first-child{
    color: #ffaa15;
    font-size: 40px !important;
}
.details .one>div div:nth-child(3){
    height: 48px;
    padding: 0 10px 12px;
}
.details .one>div div:nth-child(3) button{
    width: 56px;
    height: 30px;
    border-color: #333;
    background-color: #333;
    color: #fff;
    float: right;
    margin-right: 10px;
    margin-top: 15px;
}
.tsdonghua{
    width: 276px !important;
    height: 195px !important;
    opacity: 0;
}
.tsdonghua2{
    width: 482px !important;
    height:229px !important;
    opacity: 0;
}
/* 提示框two */
.details .two{
    position: fixed;
    top: 0;
    left: 0;
    margin: 0;
    width: 100%;
    height: 100%;
    background-color: #33333375;
    z-index: 900;
    display: flex;
    justify-content: center;
    align-items: center;
    /* display: none; */
}
.details .two>div{
    /* width: 482px;
    height:229px; */
    width: 0px;
    height:0px;
    background-color: #fff;
    position: fixed;
    box-shadow: 0px 0px 0px 10px rgba(0, 0, 0, 0.144);
    overflow: hidden;
    opacity: 1;
    transition: all 0.2s ease-out;
    /* display: none; */
}
.details .two>div div:first-child{
    height: 31px;
    background-color: #f3f3f3;
    padding: 0 16px;
    line-height: 31px;
    font-size: 14px;
}
.details .two>div div:first-child a{
    color: #333 !important;
    font-weight: bold;
    font-size: 12px !important;
    position: relative;
    left: 380px;
}
.details .two>div div:nth-child(2){
    height: 136px;
    /* background-color: #33333350; */
    padding: 20px 0px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}
.details .two>div div:nth-child(2) p:first-child{
    font-size: 14px;
    color: #333;
    padding: 20px 0px 10px;
    font-weight: bold;
}
.details .two>div div:nth-child(2) p:nth-child(2){
    font-size: 12px;
    color: #777777;
}
.details .two>div div:nth-child(2) p:nth-child(2) .jine{
    color: #f42424;
    font-weight: bold;
    font-size: 16px;
}
.details .two>div div:nth-child(3){
    height: 30px;
    margin-bottom:30px;
    display: flex;
    justify-content: center;
    align-items: center;
}
.details .two>div div:nth-child(3) button:first-child{
    border-color: #333;
    background-color: #333;
    color: #fff;
    margin-right: 15px;
    height: 28px;
    border: 1px solid #dcdcdc;
    width: 88px;
    border-radius: 4px;
    font-size: 12px;
}
.details .two>div div:nth-child(3) button:last-child{
    height: 28px;
    line-height: 28px;
    border: 1px solid #dcdcdc;
    width: 88px;
    text-align: center;
    display: inline-block;
    border-radius: 4px;
    color: #333;
    background-color: #fff;
    font-size: 12px;
}
.xdown{
    color: #333 !important;
    font-weight: bold !important;
}
.details .right p:nth-child(4) span,.details .right p:nth-child(5) span,.details .right p:nth-child(6) span,.details .right p:nth-child(7) span,.details .right p:nth-child(8) span,.details .right p:nth-child(9) span,.details .right p:nth-child(10) span{
    display: inline-block;
    width:440px;
}
.details .right p:nth-child(4),.details .right p:nth-child(5),.details .right p:nth-child(6),.details .right p:nth-child(7),.details .right p:nth-child(8),.details .right p:nth-child(9),.details .right p:nth-child(10){
    display: flex;
    justify-content: flex-start;
    align-items: flex-start;
    height: auto;
}
.details .xqtp{
    width:960px;
}
</style>

