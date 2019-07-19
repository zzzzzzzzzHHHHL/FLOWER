<template>
    <!-- 购物车组件 -->
    <div class="cartAll">
        <!-- 购物车有商品 -->
        <div class="cartAll1" :style="cart1">
            <!-- 顶部导航 -->
            <div class="nav">
                <ul>
                    <li>
                        <input type="checkbox" id="qx">
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
                <div>
                    <ul>
                        <!-- 商品图片 -->
                        <li>
                            <input type="checkbox" name="">
                            &nbsp;&nbsp;&nbsp;
                            <a href="#">
                            <img src="../../assets/Mig/1.png" alt="">
                            </a>
                        </li>
                        <!-- 商品信息 -->
                        <li><a href="#">布拉格之恋-9朵进口红玫瑰</a></li>
                        <!-- 单价 -->
                        <li>￥999.00</li>
                        <!-- 数量 -->
                        <li class="btn">
                            <button>-</button>
                            <input type="number" min="1" max="12" name="quantity" value="1">
                            <button>+</button>
                        </li>
                        <!-- 小计 -->
                        <li>￥999.00</li>
                        <!-- 删除按钮 -->
                        <li class="delete"><a href="#">删除</a></li>
                    </ul>
                </div>
                <div>
                    <ul>
                        <!-- 商品图片 -->
                        <li>
                            <input type="checkbox" name="">
                            &nbsp;&nbsp;&nbsp;
                            <a href="#">
                            <img src="../../assets/Mig/1.png" alt="">
                            </a>
                        </li>
                        <!-- 商品信息 -->
                        <li><a href="#">布拉格之恋-9朵进口红玫瑰</a></li>
                        <!-- 单价 -->
                        <li>￥999.00</li>
                        <!-- 数量 -->
                        <li class="btn">
                            <button>-</button>
                            <input type="number" min="1" max="12" name="quantity" value="1">
                            <button>+</button>
                        </li>
                        <!-- 小计 -->
                        <li>￥999.00</li>
                        <!-- 删除按钮 -->
                        <li class="delete"><a href="#">删除</a></li>
                    </ul>
                </div>
                <div>
                    <ul>
                        <!-- 商品图片 -->
                        <li>
                            <input type="checkbox" name="">
                            &nbsp;&nbsp;&nbsp;
                            <a href="#">
                            <img src="../../assets/Mig/1.png" alt="">
                            </a>
                        </li>
                        <!-- 商品信息 -->
                        <li><a href="#">布拉格之恋-9朵进口红玫瑰</a></li>
                        <!-- 单价 -->
                        <li>￥999.00</li>
                        <!-- 数量 -->
                        <li class="btn">
                            <button>-</button>
                            <input type="number" min="1" max="12" name="quantity" value="1">
                            <button>+</button>
                        </li>
                        <!-- 小计 -->
                        <li>￥999.00</li>
                        <!-- 删除按钮 -->
                        <li class="delete"><a href="#">删除</a></li>
                    </ul>
                </div>
            </div>
            <!-- 全选 结算 -->
            <div class="jiesuan">
                <!-- 全选 -->
                <div class="quanxuan">
                    <ul>
                    <li>
                        <input type="checkbox" id="qx">
                        &nbsp;
                        <label for="qx">全选</label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="#">删除选中商品</a>
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
                    <button>马上去逛逛</button>
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
        
    </div>
</template>

<script>
export default {
    data(){
        return{
            cart1:{display:"block"},
            cart2:{display:"none"},
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
               console.log(result);
            })
        },
        ljjs(){
            this.$router.push("/Settlement");
        }
    }
}
</script>

<style scoped>
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
</style>
