<template>
    <!-- 购物车组件 -->
    <div class="cartAll">
        <header00></header00>
        <navgitor></navgitor>
        <div class="fjx"></div>
        <!-- 购物车有商品 -->
        <div class="cartAll1" :style="cart1">
            <!-- 顶部导航 -->
            <div class="nav">
                <ul>
                    <li>
                        <input type="checkbox" id="qx" @click="selectAll" v-model="t">
                        &nbsp;
                        <label for="qx">全选</label>
                    </li>
                    <li>商品信息</li>
                    <li>单价</li>
                    <li>数量</li>
                    <li>小计</li>
                </ul>
            </div>
            <!-- 购物车商品详情 -->
            <div class="productAll">
                <div v-for="(elem,i) of list" :key="i" :data-lid="elem.lid">
                    <ul>
                        <!-- 商品图片 -->
                        <li>
                            <input type="checkbox" name="" v-model="elem.is_checked" @click="select" :data-lid="elem.lid">
                            &nbsp;&nbsp;&nbsp;
                            <router-link :to="'product_details/'+elem.lid">
                            <img :src="'http://127.0.0.1:3000/'+elem.img_url" alt="">
                            </router-link>
                        </li>
                        <!-- 商品信息 -->
                        <li>
                            <router-link :to="'product_details/'+elem.lid" v-text="elem.title">
                            </router-link>
                        </li>
                        <!-- 单价 -->
                        <li v-text="`￥${elem.price}`"></li>
                        <!-- 数量 -->
                        <li class="btn">
                            <button @click="jian" :data-lid="elem.lid" :data-count="elem.count">-</button>
                            <input type="number" min="1" max="12" name="quantity" v-model="elem.count">
                            <button @click="jia" :data-lid="elem.lid" :data-count="elem.count">+</button>
                        </li>
                        <!-- 小计 -->
                        <li v-text="`￥${Number(elem.price)*elem.count}`"></li>
                        <!-- 删除按钮 -->
                        <li class="delete"><a href="javascript:;" @click="one1" :data-lid="elem.lid">删除</a></li>
                    </ul>
                </div>
                <!-- <div>
                    <ul>
                        <li>
                            <input type="checkbox" name="">
                            &nbsp;&nbsp;&nbsp;
                            <a href="#">
                            <img src="../../assets/Mig/1.png" alt="">
                            </a>
                        </li>
                        <li><a href="#">布拉格之恋-9朵进口红玫瑰</a></li>
                        <li>￥999.00</li>
                        <li class="btn">
                            <button>-</button>
                            <input type="number" min="1" max="12" name="quantity" value="1">
                            <button>+</button>
                        </li>
                        <li>￥999.00</li>
                        <li class="delete"><a href="#">删除</a></li>
                    </ul>
                </div> -->
            </div>
            <!-- 全选 结算 -->
            <div class="jiesuan">
                <!-- 全选 -->
                <div class="quanxuan">
                    <ul>
                    <li>
                        <input type="checkbox" id="qx" @click="selectAll" v-model="t">
                        &nbsp;
                        <label for="qx">全选</label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="javascript:;" @click="two1">删除选中商品</a>
                        <!-- @click="delproduct" -->
                    </li>
                    <li>
                        已选商品 <span class="span1">3</span> 件
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        总价(不含运费)： <span class="span2">￥3000.00</span>
                    </li>
                    </ul>
                </div>
                <!-- 结算 -->
                <div class="total">
                    <button class="iconfont icon-fanhui1" @click="jxgw"> 继续购物</button>
                    <button @click="ljjs">立即结算</button>
                </div>
            </div>
            <!-- 猜你喜欢 -->
            <div class="cnxh">
                <div>猜你喜欢</div>
                <div></div>
            </div>
        </div>
        <!-- 购物车没有商品 -->
        <div class="cartAll2" :style="cart2">
            <!-- 购物车为空 -->
            <div>
                <img src="../../assets/Mig/hua.png" alt="">
                <div>
                    <p>您的购物车中没有商品！</p>
                    <button @click="msqgg">马上去逛逛</button>
                </div>
            </div>
            <!-- 猜你喜欢 -->
            <div>
                <p>猜你喜欢</p>
                <ul>
                    <li>
                        <img src="../../assets/Mig/17.jpg" alt="">
                        <p>￥599</p>
                        <a href="javascript:;">温柔清浅-33朵红玫瑰</a>
                        <p>已售 <span>13958</span> 件</p>
                    </li>
                    <li>
                        <img src="../../assets/Mig/18.jpg" alt="">
                        <p>￥999</p>
                        <a href="javascript:;">布拉格之恋-9朵进口红玫瑰  </a>
                        <p>已售 <span>9219</span> 件</p>
                    </li>
                    <li>
                        <img src="../../assets/Mig/19.jpg" alt="">
                        <p>￥599</p>
                        <a href="javascript:;">浓情-33朵混色玫瑰</a>
                        <p>已售 <span>13064</span> 件</p>
                    </li>
                    <li>
                        <img src="../../assets/Mig/20.jpg" alt="">
                        <p>￥599</p>
                        <a href="javascript:;">暖暖回忆-33朵混色玫瑰</a>
                        <p>已售 <span>12369</span> 件</p>
                    </li>
                    <li>
                        <img src="../../assets/Mig/21.jpg" alt="">
                        <p>￥599</p>
                        <a href="javascript:;">纯真年代-33朵戴安娜玫瑰</a>
                        <p>已售 <span>9937</span> 件</p>
                    </li>
                    <li>
                        <img src="../../assets/Mig/22.png" alt="">
                        <p>￥599</p>
                        <a href="javascript:;">三生三世-33朵红玫瑰</a>
                        <p>已售 <span>14111</span> 件</p>
                    </li>
                </ul>
            </div>
        </div>
        <!-- 确认删除商品提示框1 -->
        <div class="one" :style="one">
            <!-- 提示框 -->
            <div>
                <div>
                    <span>系统提示</span>
                    <a href="javascript:;" class="iconfont icon-tishikuangguanbi" @click="close"></a>
                </div>
                <div>
                    <span class="iconfont icon-ruotishikuang-jinggaotishitubiao"></span>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <span style="font-size:14px">您确定要把商品移除购物车吗？</span>
                </div>
                <div>
                    <button @click="close">取消</button>
                    <button  @click="deletelid">确定</button>   
                </div>
            </div>
        </div>
        <!-- 确认删除商品提示框2 -->
        <div class="two" :style="two">
            <!-- 提示框 -->
            <div>
                <div>
                    <span>系统提示</span>
                    <a href="javascript:;" class="iconfont icon-tishikuangguanbi" @click="close1"></a>
                </div>
                <div>
                    <span class="iconfont icon-ruotishikuang-jinggaotishitubiao"></span>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <span style="font-size:14px">您确定要把商品移除购物车吗？</span>
                </div>
                <div>
                    <button @click="close1">取消</button>
                    <button  @click="delproduct">确定</button>   
                </div>
            </div>
        </div>
        <footer00 class="footer"></footer00>
    </div>
</template>

<script>
import Header from "../index/header/header0.vue"
import Footer from "../index/footer/footer0.vue"
import Nav from "./Nav.vue"
export default {
    components:{
      "header00":Header,
      "navgitor":Nav,
      "footer00":Footer,
     },
    data(){
        return{
            list:[],
            cart1:{display:"none"},
            cart2:{display:"none"},
            one:{display:"none"},
            two:{display:"none"},
            t:false,
            delletelid:"",
            delobj:[],
            // plus:"",
            // reduce:"",
        }
    },
    created(){
        this.loadMore();
    },
    methods:{
        jxgw(){window.history.go(-1);},
        loadMore(){
            var url = "cart";
            this.axios.get(url).then(result=>{
               //console.log(result.data.data);
               this.list=result.data.data;
            //    console.log(this.list);
               for(var item of this.list){
                item.is_checked=false;
                }
            //    console.log(this.list);
               if(!this.list.length){
                   this.cart2.display="block";
                   this.cart1.display="none";
               }else{
                   this.cart1.display="block";
                   this.cart2.display="none";
               }
            })
            
        },
        ljjs(){
            this.$router.push("/Settlement");
        },
        msqgg(){this.$router.push("/Middle")},
        close(){this.one.display="none";},
        close1(){this.two.display="none";},
        deletelid(e){
            this.one.display="none";
            // console.log(e.currentTarget.dataset.lid)
            var url = "delItem";
            var obj = {
                lid:this.delletelid
            };
            // console.log(obj);
            this.axios.get(url,{params:obj}).then(result=>{
                //重新加载数据相当刷新
                this.loadMore();
            })
        },
        delproduct(e){
            this.two.display="none";
            for(var i=0;i<this.list.length;i++){
                console.log(this.list[i].is_checked);
                if(this.list[i].is_checked==true){
                    var n=0;
                    for(var k=0;k<this.delobj.length;k++){
                        if(this.delobj[k]!==this.list[i].lid){n+=1;}
                    }
                    if(n==this.delobj.length){this.delobj.push(this.list[i].lid);}
                    // this.delobj.push(e.target.dataset.lid); 
                }
            }
            console.log(this.delobj);
            if(this.delobj.length>=1){
                var url = "delAll";
                var obj = {
                    lids:this.delobj
                };
                // console.log(obj);
                this.axios.get(url,{params:obj}).then(result=>{
                    //重新加载数据相当刷新
                    this.loadMore();
                })
            }
        },
        one1(e){
            this.one.display="flex";
            // console.log(e.target.dataset.lid);
            this.delletelid=e.target.dataset.lid;
            // console.log(this.delletelid)
        },
        two1(){
            var n=0;
            for(var i=0;i<this.list.length;i++){
                if(this.list[i].is_checked==true){n+=1}
            }
            if(n>=1){this.two.display="flex";}
            
        },
        selectAll(e){
            var cb =  e.target.checked;
            this.t=cb;
            // console.log(cb);
            for(var item of this.list){
                item.is_checked=cb;
                // console.log(this.list.is_checked);
            }
        },
        select(e){
            // console.log(e.target.checked);
            if(e.target.checked==false){this.t=false;}
            // console.log(e.target.checked==true)
            else {
                var n=0;
                for(var i=0;i<this.list.length;i++){
                    if(this.list[i].is_checked==true){
                        n+=1;
                    }
                }
                if(n+1==this.list.length){this.t=true}
            }
        },
        jia(e){
            console.log(e.target.dataset.lid);
            var i=e.target.dataset.lid;
            var url = "plus";
            var obj = {
                lid:i
            };
            // console.log(obj);
            this.axios.get(url,{params:obj}).then(result=>{
                //重新加载数据相当刷新
                this.loadMore();
            })
        },
        jian(e){
            // console.log(e.target.dataset.lid);
            // console.log(e.target.dataset.count);
            if(e.target.dataset.count>1){
            var i=e.target.dataset.lid;
            var url = "reduce";
            var obj = {
                lid:i
            };
            // console.log(obj);
            this.axios.get(url,{params:obj}).then(result=>{
                //重新加载数据相当刷新
                this.loadMore();
            })
            }
        },
    }
}
</script>

<style scoped>
.footer{
    margin-top: -15px !important;
}
.cartAll>.fjx{
    width: 100%;
    border: 1px solid #d8d8d8;
    margin-top: -17px;
    margin-bottom: 25px;
}
.cartAll{
    background-color: #fff !important;
}
/* 去除按钮点击边框 */
button {
outline: none;
}
.nav{
    width: 1200px;
    height: 45px;
    background-color: #f5f5f5;
    margin: 0 auto;
    border: solid 1px #e8e8e8;
}
.cartAll .nav ul{
    list-style: none;
    display: flex;
    justify-content: flex-start;
    align-items: center;
    padding: 0;
    padding-left: 35px;
}
.cartAll .nav ul li{
    color: #333333;
    font-size: 12px;
     height: 43px;
    line-height: 43px;
}
.cartAll ul li:first-child{
    width: 193px;
    /* padding-left: 35px; */
}
.cartAll ul li:nth-child(2){
    width: 255px;
    
}
.cartAll ul li:nth-child(3){
    width: 175px;
    text-align: center;
}
.cartAll ul li:nth-child(4){
    width: 215px;
    text-align: center;
}
.cartAll ul li:nth-child(5){
    width: 185px;
    text-align: center;
}
.productAll{
    width: 1200px;
    border: solid 1px #e8e8e8;
    margin: 0 auto;
    margin-top: 10px;
    padding: 0 30px;
}
.productAll ul li:first-child{
    padding-left: 0;
}
.productAll ul{
    list-style: none;
    display: flex;
    justify-content: flex-start;
    align-items: center;
    margin: 0;
    padding: 0;
    width: 100%;
}
.productAll ul li img{
    width: 90px;
}
.productAll ul li{
    padding: 23px 0px;
    color: #333333;
    font-size: 14px;
}
.productAll ul li:nth-child(3){
    font-weight: bold;
}
.productAll ul li a{
    color: #333333;
    font-size: 14px;
}
.productAll div:not(:last-child){
    border-bottom:1px dashed #e8e8e8;
}
.productAll ul .delete{
    margin-left: 34px;
}
/* 去掉type=number的上下箭头 */
input::-webkit-outer-spin-button,input::-webkit-inner-spin-button { -webkit-appearance: none; }
input[type="number"]{ -moz-appearance: textfield; }
.right_side>.price>li:nth-child(1)>input{
    width: 30px;
    background-color: #f2f4f5;
    text-align: center;
    position: relative;
    top: -2px;
}
.productAll ul .btn button{
    background-color: #fff;
    border:1px solid #d9d9d9;
    width: 23px;
    height: 22px;
    line-height: 16px;
}
.productAll ul .btn input{
    width: 56px;
    height: 22px;
    border-left: 0;
    border-right: 0;
    border-top:1px solid #d9d9d9;
    border-bottom:1px solid #d9d9d9;
    text-align:center;
}
.cartAll .jiesuan{
    width: 1200px;
    height: 193px;
    margin: 0 auto;
    margin-top: 10px;
    background: #fcfcfc;
    border: solid 1px #e8e8e8;
}
.jiesuan .quanxuan{
    height: 61px;
    width: 100%;
    line-height: 61px;
}
.jiesuan ul{
    list-style: none;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding:0 30px;
    font-size: 12px;
    color: #666666;
    margin: 0;
}
.jiesuan ul li a {
    color: #666666;
}
.jiesuan .quanxuan ul li:nth-child(2){
    width: 700px;
    text-align: right;
}
.jiesuan .quanxuan ul .span1{
    color: #e8203b;
}
.jiesuan .quanxuan ul .span2{
    color: #e8203b;
    font-size: 16px;
    font-weight: bold;
}
.jiesuan .total{
    height: 130px;
    /* text-align: center; */
    display: flex;
    justify-content: space-between;
    /* align-items: center; */
    padding: 30px 30px 50px 30px;
}
.jiesuan .total button:nth-child(1){
    width: 140px;
    height: 48px;
    font-size: 16px;
    color: #666666;
    border: solid 1px #ccc;
    background-color: #fcfcfc;
}
.jiesuan .total button:nth-child(2){
    width: 165px;
    height: 50px;
    background: #c43f40;
    color: #fff;
    border: none;
    font-size: 16px;
    font-weight: bold;
    border-radius: 3px;
}
.cartAll .cnxh{
    width: 1200px;
    height: 403px;
    margin: 0 auto;
    margin-top: 20px;
    border: solid 1px #e8e8e8;
    padding: 0 30px;
    margin-bottom: 50px !important;
}
.cartAll .cnxh div:nth-child(1){
    width: 100%;
    height: 71px;
    line-height: 71px;
    font-size: 12px;
    color: #555555;
    border-bottom: solid 1px #e8e8e8;
}
.cartAll .cartAll2{
    background-color: #f8f8f8;
    margin-top: -25px;
}
.cartAll .cartAll2::before{
    content: "";
    display: table;
}
.cartAll .cartAll2>div:first-child{
    width: 1200px;
    height: 300px;
    padding: 63px 0;
    margin: 0 auto;
    margin-top: 25px;
    background-color: #fff;
    display: flex;
    justify-content: center;
    align-items: center;
}
.cartAll .cartAll2>div:first-child p{
    font-size: 24px;
    color: #8c8c8c;
    font-weight: bolder;
}
.cartAll .cartAll2>div:first-child button{
    width: 138px;
    height: 38px;
    padding: 0;
    margin: 0;
    text-align: center;
    display: block;
    float: left;
    color: #fff;
    font-size: 14px;
    border-color: #333 !important;
    background: #333;
}
.cartAll .cartAll2>div:first-child div{
    margin-left: 30px;
}
.cartAll .cartAll2>div:nth-child(2){
    width: 1200px;
    margin: 0 auto;
    /* background-color: #8c8c8c; */
    margin-top: 50px;
}
.cartAll .cartAll2>div:nth-child(2)>p{
    width: 184px;
    height: 27px;
    padding: 0 50px;
    margin: 0 auto;
    font-size: 21px;
    color: #555555;
    background-color: #f8f8f8;
    line-height: 27px;
    position: relative;
    top:15px;
}
.cartAll .cartAll2>div:nth-child(2) ul{
    list-style: none;
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 1200px;
    /* background-color: #ccc; */
    padding-top: 40px;
    border-top: 1px solid #ebebeb;
    padding-bottom: 30px;
}
.cartAll .cartAll2>div:nth-child(2) ul li{
    width: 190px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: flex-start;
}
.cartAll .cartAll2>div:nth-child(2) ul li img{
    width: 190px;
    opacity: 1;
}
.cartAll .cartAll2>div:nth-child(2) ul li img:hover{
    opacity: 0.7;
    transition: all 0.2s linear;
}
.cartAll .cartAll2>div:nth-child(2) ul li p:nth-child(2){
    font-size: 20px;
    color: #8c8c8c;
    margin: 6px 0 0;
}
.cartAll .cartAll2>div:nth-child(2) ul li a{
    font-size: 12px;
    color: #333333;
    text-decoration: none;
}
.cartAll .cartAll2>div:nth-child(2) ul li a:hover{
    color: #f42424;
}
.cartAll .cartAll2>div:nth-child(2) ul li p:nth-child(4){
    font-size: 12px;
    color: #8c8c8c;
    margin: 7px 0 0;
}
.cartAll .cartAll2>div:nth-child(2) ul li p:nth-child(4) span{
    font-weight: bolder;
}

/* 提示框 */
/* 提示框one */
.cartAll .one{
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
.cartAll .one>div{
    width: 276px;
    height: 195px;
    /* width: 0;
    height: 0; */
    background-color: #fff;
    position: fixed;
    box-shadow: 0px 0px 0px 10px rgba(0, 0, 0, 0.144);
    overflow: hidden;
    opacity: 1;
    transition: all 0.2s ease-out;
    /* display: none; */
}
.cartAll .one>div div:first-child{
    width: 100%;
    height: 43px;
    padding-left: 20px;
    background-color: #f8f8f8;
}
.cartAll .one>div div:first-child span{
    font-size: 14px !important;
    color: #333333;
    line-height: 43px;
}
.cartAll .one>div div:first-child a{
    color: #333 !important;
    font-weight: bold;
    font-size: 12px !important;
    position: relative;
    left: 170px;
}
.cartAll .one>div div:nth-child(2){
    width: 100%;
    height: 88px;
    padding: 20px;
    display: flex;
    justify-content: center;
    align-items: center;
}
.cartAll .one>div div:nth-child(2) span:first-child{
    color: #ffaa15;
    font-size: 40px !important;
}
.cartAll .one>div div:nth-child(3){
    height: 48px;
    padding: 0 10px 12px;
}
.cartAll .one>div div:nth-child(3) button{
    width: 56px;
    height: 30px;
    border-color: #333;
    background-color: #333;
    color: #fff;
    float: right;
    margin-right: 10px;
    margin-top: 15px;
    font-size: 12px;
    border-radius: 2px;
    font-weight: 400;
    cursor: pointer;
}
.cartAll .one>div div:nth-child(3) button:first-child{
    border: 1px solid #dedede;
    background-color: #f1f1f1;
    color: #333;
    border-radius: 2px;
}


/* 提示框two */
.cartAll .two{
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
.cartAll .two>div{
    width: 276px;
    height: 195px;
    /* width: 0;
    height: 0; */
    background-color: #fff;
    position: fixed;
    box-shadow: 0px 0px 0px 10px rgba(0, 0, 0, 0.144);
    overflow: hidden;
    opacity: 1;
    transition: all 0.2s ease-out;
    /* display: none; */
}
.cartAll .two>div div:first-child{
    width: 100%;
    height: 43px;
    padding-left: 20px;
    background-color: #f8f8f8;
}
.cartAll .two>div div:first-child span{
    font-size: 14px !important;
    color: #333333;
    line-height: 43px;
}
.cartAll .two>div div:first-child a{
    color: #333 !important;
    font-weight: bold;
    font-size: 12px !important;
    position: relative;
    left: 170px;
}
.cartAll .two>div div:nth-child(2){
    width: 100%;
    height: 88px;
    padding: 20px;
    display: flex;
    justify-content: center;
    align-items: center;
}
.cartAll .two>div div:nth-child(2) span:first-child{
    color: #ffaa15;
    font-size: 40px !important;
}
.cartAll .two>div div:nth-child(3){
    height: 48px;
    padding: 0 10px 12px;
}
.cartAll .two>div div:nth-child(3) button{
    width: 56px;
    height: 30px;
    border-color: #333;
    background-color: #333;
    color: #fff;
    float: right;
    margin-right: 10px;
    margin-top: 15px;
    font-size: 12px;
    border-radius: 2px;
    font-weight: 400;
    cursor: pointer;
}
.cartAll .two>div div:nth-child(3) button:first-child{
    border: 1px solid #dedede;
    background-color: #f1f1f1;
    color: #333;
    border-radius: 2px;
}
</style>
