<template>
  <div class="footer">
    <div class="content">
      <div class="top">
        <div class="nav">
          <div>
            <p>高档花材</p>
            <p>100%品质保障</p>
          </div>
          <div>
            <p>同城配送</p>
            <p>1-3小时送达</p>
          </div>
          <div>
            <p>特色服务</p>
            <p>高端私人订制</p>
          </div>
          <div>
            <p>时尚原创花艺</p>
            <p>资深花艺师独家设计</p>
          </div>
        </div>
      </div>
      <div class="bottom">
        <div class="bottom-left">
          <div class="bottom-left-top">
            <ul>
              <li><router-link :to="`/ServiceNotOpen`">购物说明</router-link></li>
              <li><router-link :to="`/ServiceNotOpen`">aPP专享介绍</router-link></li>
              <li><router-link :to="`/ServiceNotOpen`">购物流程</router-link></li>
              <li><router-link :to="`/ServiceNotOpen`">支付说明</router-link></li>
            </ul>
            <ul>
              <li><router-link :to="`/ServiceNotOpen`">配送说明</router-link></li>
              <li><router-link :to="`/ServiceNotOpen`">配送范围</router-link></li>
              <li><router-link :to="`/ServiceNotOpen`">配送费用</router-link></li>
              <li><router-link :to="`/ServiceNotOpen`">配送时间</router-link></li>
            </ul>
            <ul>
              <li><router-link :to="`/ServiceNotOpen`">售后保障</router-link></li>
              <li><router-link :to="`/ServiceNotOpen`">取消/修改订单</router-link></li>
              <li><router-link :to="`/ServiceNotOpen`">关于签收</router-link></li>
              <li><router-link :to="`/ServiceNotOpen`">关于投诉</router-link></li>
            </ul>
            <ul>
              <li><router-link :to="`/ServiceNotOpen`">关于我们</router-link></li>
              <li><router-link :to="`/ServiceNotOpen`">品牌介绍</router-link></li>
              <li><router-link :to="`/ServiceNotOpen`">实力证明</router-link></li>
              <li><router-link :to="`/ServiceNotOpen`">花语大全</router-link></li>
              <li><router-link :to="`/ServiceNotOpen`">鲜花百科</router-link></li>
            </ul>
            <ul>
              <li><router-link :to="`/ServiceNotOpen`">同城配送</router-link></li>
              <li><router-link :to="`/ServiceNotOpen`">北京鲜花</router-link></li>
              <li><router-link :to="`/ServiceNotOpen`">上海鲜花</router-link></li>
              <li><router-link :to="`/ServiceNotOpen`">广州鲜花</router-link></li>
              <li><router-link :to="`/ServiceNotOpen`">更多城市</router-link></li>
            </ul>
          </div>
          <div class="bottom-left-bottom">
            友情链接：赢咖娱乐 seo培训 奥义探索网 订花 鲜花预订 花店订花 宅男福利吧 司天监 订制工作服 爱情短信 新文学网 W7系统之家 有机食品 聚划算今日特价
          </div>
        </div>
        <div class="bottom-center">
          <p>客服电话</p>
          <h2>4000-192-520</h2>
          <p>工作日 08:30-21:30</p>
          <p>节假日 06:00-24:00</p>
        </div>
        <div class="bottom-right">
          <div class="bottom-right-div">
            <div><p>Iphone下载</p><img src="./img/ios.jpg" alt=""></div>
            <div><p>android下载</p><img src="./img/and.jpg" alt=""></div>
          </div>
          <p>手机扫码即可下载Rosewin鲜花aPP</p>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  
  data(){
    return{}
  }
}
</script>
<style>
  *{margin:0;padding:0;box-sizing: border-box;}
  .footer{
    min-width:1200px;
    height:350px;
    margin-top:50px;
  }
  .content{
    width:100%;
    height:100%;
    margin:0 auto;
  }
  .top{
    width:100%;
    height:80px;
    background-color: #000;
  }
  .nav{
    width:1200px;
    height:100%;
    margin:0 auto;
    color:#fff;
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
  .nav>div{
    width:295px;
    height:70px;
    padding-left:50px;
    background-image: url(img/g1.png);
    background-repeat: no-repeat;
    background-position: 0px 18px;
  }
  .nav>div:nth-child(2){
    background-image: url(img/g2.png);
  }
  .nav>div:nth-child(3){
    background-image: url(img/g3.png);
  }
  .nav>div:nth-child(4){
    background-image: url(img/g4.png);
  }
  .nav>div>p:first-child{
    margin-bottom:0;
    margin-top:15px;
  }
  .nav>div>p:last-child{
    font-size: 12px;
  }

  .bottom{
    width:1200px;
    height:282px;
    padding-top:40px;
    display: flex;
    justify-content: space-between;
    margin:0 auto;
  }
  .bottom-left{
    width:621px;
    height:278px;
  }
  .bottom-center{
    width:279px;
    height:278px;
    text-align: center;
    border-right:1px solid #e8e8e8;
    border-left:1px solid #e8e8e8;
    
  }
  .bottom-right{
    width:300px;
    height:278px;
    padding-left:30px;
  }
  .bottom-right>p{
    text-align: center;
    font-size:12px;
    color:#999;
    margin-top:42px;
  }
  .bottom-right-div{
    width:100%;
    height:146px;
    display: flex;
    justify-content: space-around;
    text-align: center; 
  }
  .bottom-right-div img{
    width:100px;
    height:100px;
  }

  .bottom-left-top{
    width:100%;
    height:110px;
    display: flex;
    justify-content: space-between;
    margin-bottom:70px;
  }
  .bottom-left-top>ul{
    list-style: none !important;
    width:124px !important;
    height:108px !important;
  }
   .bottom-left-top>ul li{
     margin-top:5px !important;
   }
   .bottom-left-top>ul li a:first-child{
     color:#333 !important;
     font-size: 14px !important;
   }
   .bottom-left-bottom{
     width:550px;
     height:36px;
     color:#666;
     font-size: 12px;
   }
   .copyright{
     width:1200px;
     height:50px;
     margin:0 auto;
     font-size:12px;
     color:#555;
     text-align: center;
   }
</style>

