<template>
    <div class="settlement"><!-- 购物车结算组件 -->
    <br><br><br>
        <!-- Nav -->
        <div class="topnav">
            <div></div>
        </div>
        <!-- 信息 -->
        <div class="information">
            <!-- 收货人信息 -->
            <div class="Consignee">
                <p>收货人信息</p>
                <!-- 添加新地址 -->
                <div class="address">
                    <img src="../../assets/Mig/location.png" alt="">
                    <p>添加新地址</p>
                </div>
            </div>
            <!-- 配送费用 -->
            <div class="cost">
                <p>配送费用</p>
                <p>
                    <span @click="feiyong" data-num="s1">市区(免费)</span>
                    <span @click="feiyong" data-num="s2">郊区(+30元)</span>
                    <span @click="feiyong" data-num="s3">元郊(+50元)</span>    
                </p>
                <p>
                    <span class="iconfont icon-xuanzhongkuang" :style="s1"></span>
                    <span class="iconfont icon-xuanzhongkuang" :style="s2"></span>
                    <span class="iconfont icon-xuanzhongkuang" :style="s3"></span>
                </p>
            </div>
            <!-- 配送时间 -->
            <div class="delivery_time">
                <p>配送时间</p>
                <div>
                    <input type="date">
                </div>
            </div>
            <br><br><br>
        </div>
    </div>
</template>

<script>
export default {
    data(){
        return{
            s:"",
            s1:{visibility:"hidden"},
            s2:{visibility:"hidden"},
            s3:{visibility:"visible"},
        }
    },
    methods:{
        feiyong(e){
            // console.log(e.currentTarget.dataset.num);
            this.s=e.currentTarget.dataset.num;
            // console.log(this.s);
            if(this.s=="s1"){
                this.s1.visibility="visible";
                this.s2.visibility="hidden";
                this.s3.visibility="hidden";
            }else if(this.s=="s2"){
                this.s1.visibility="hidden";
                this.s2.visibility="visible";
                this.s3.visibility="hidden";
            }else{
                this.s1.visibility="hidden";
                this.s2.visibility="hidden";
                this.s3.visibility="visible";
            }
        },
    },

}
</script>

<style scoped>
/* 顶部Nav */
.settlement .topnav{
    width: 100%;
    height:59px;
    background: #f4f4f4;
    border-top: 1px solid #d2d2d2;
    border-bottom: 1px solid #d2d2d2;
}
.settlement .topnav>div{
    width: 1200px;
    height: 57px;
    margin: 0 auto;
    background: url("../../assets/Mig/nav.png") no-repeat;
    background-position:center center;
    border-left: 1px solid #d2d2d2;
}
/* 信息 */
.settlement .information{
    width: 1200px;
    margin: 0 auto;
    border: 1px solid #d2d2d2;
    margin-top:30px;
    padding: 0 30px;
}
.settlement .information .Consignee>p{
    font-size: 18px;
    color: #555555;
    width: 1140px;
    height: 51px;
    padding: 20px 0px 10px;
    margin: 0;
    margin-top: 15px;
    border-bottom: 1px solid #d2d2d2;
    line-height: 20px;
}
.settlement .information .Consignee .address{
    width: 330px;
    height: 146px;
    margin-top: 30px;
    border: 1px dashed #d2d2d2;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}
.settlement .information .Consignee .address p{
    margin-top: 5px;
   font-size: 14px;
   color: #8c8c8c;
}
.settlement .information .cost{
    margin-top: 30px;
    position: relative;
}
.settlement .information .cost p:first-child{
    height: 66px;
    padding: 35px 0px 10px;
    font-size: 18px;
    color: #555555;
    margin-top: 15px;
    border-bottom: 1px solid #d2d2d2;
    border-top: 1px solid #d2d2d2;
    line-height: 20px;
}
.settlement .information .cost p:nth-child(2){
    position: relative;
}
.settlement .information .cost p:nth-child(2) span{
    display: inline-block;
    width: 100.16px;
    height: 30px;
    padding: 0 10px;
    font-size: 14px;
    color: #555555;
    text-align: center;
    line-height: 30px;
    margin-right: 20px;
    position: relative;
    z-index: 5;
}
.settlement .information .cost p:nth-child(2) span:hover{
    cursor: default;
}
.settlement .information .cost p:nth-child(3) span{
    display: inline-block;
    position: absolute;
    width: 100.16px;
    height: 30px;
    font-size: 38px !important;
    background: transparent;
    top: 69px;
}
.settlement .information .cost p:nth-child(3) span:nth-child(2){
    left: 120px;
}
.settlement .information .cost p:nth-child(3) span:nth-child(3){
    left: 240px;
}
.settlement .delivery_time{
    margin-top: 15px;
}
.settlement .delivery_time p{
    height: 51px;
    padding: 20px 0px 10px;
    font-size: 18px;
    color: #555555;
    line-height:20px;
    border-bottom: 1px solid #d2d2d2;
}
.settlement .delivery_time>div{
    margin-top: 20px;
    height: 31px;
    background-color: #8c8c8c;
}
/* 日期选择器样式修改 */

/* 用来移除向下箭头 */
input[type="date"]{
    border: 1px solid #d2d2d2;
    font-size: 14px;
    padding:3px 0px 3px 10px;
    color: #555555;
}
input[type="date"]:focus{
    outline: none;
}
input[type="date"]::-webkit-calendar-picker-indicator {
   color: #d2d2d2;
   background: transparent;
}
input[type="date"]::-webkit-calendar-picker-indicator:hover{
    background:transparent;
}
/*用来移除上下箭头*/
input[type="date"]::-webkit-inner-spin-button {
	display: none;
}
/*用来移除叉叉按钮*/
input[type="date"]::-webkit-clear-button{
   display:none;
}
</style>
