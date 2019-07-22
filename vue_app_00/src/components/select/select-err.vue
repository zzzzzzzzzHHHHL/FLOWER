<template>
    <div>
        <header00></header00>
        <div class="productFilter my_flex">
                <div class="left_pro">
                    <ul class="my_flex">
                        <li><a>排序:</a></li>
                        <li><a>新品</a></li>  
                        <li><a>人气</a></li>  
                        <li><a>价格</a> </li>   
                    </ul>
                </div>
                <div class="right_pro">
                    <span>0个结果</span>
                </div>         
        </div>
        <div class="serr">
          <div class="serr-div">
            <img src="./img/e1.png" alt="">
            <div>
              <p>抱歉，没有找到符合条件的数据</p>
              <router-link :to="`/Middle`">随便逛逛</router-link>
            </div>
          </div>
        </div>
        <footer00></footer00>
    </div>
</template>
<script>
import Header from "../index/header/header0.vue"
import Footer from "../index/footer/footer0.vue" 
export default {
  components:{
      "header00":Header,
      "footer00":Footer
     },
  data(){
    return{}
  }
}
</script>

<style>
  *{margin:0;padding:0;box-sizing: border-box;}
  a{
        cursor: pointer;
    }
    .productFilter{
        width:1200px;
        margin:0 auto;
        border-bottom: 1px solid #d2d2d2;
        border-top: 1px solid #d2d2d2;
        height:57px;
        margin-top:40px;
       
    }
    .productFilter ul{
        line-height:57px;
    }
    .productFilter ul li{
        list-style:none
    }
    .my_flex{
        display:flex;
        flex-wrap:wrap;
        justify-content:space-between;
    }
    .right_pro{
        display:flex;
        flex-wrap:wrap;
        justify-content:right
    }
    .my_flex>li:last-child{
        position:relative;
    }
    .left_pro>ul>li{
        margin:0 20px;
    }
     .left_pro>ul>li>a{
         font: 12px "微软雅黑",Helvetica,sans-serif
     }
     .right_pro>span{
         font: 12px "微软雅黑",Helvetica,sans-serif;
         color: #b3b3b3;
         display:inline-block;
         height:53px;
         line-height:63px;
        margin-right:20px;
     }
     .serr{
       width:1200px;
       height:250px;
       padding:70px 165px;
       margin:30px auto;
     }
     .serr-div{
       width:870px;
       height:116px;
       color:#8c8c8c;
       font-size:16px;
       font-weight: bold;
     }
     
      .serr-div>div{
        display:inline-block;
      }
      .serr-div>div>a{
        display: inline-block;
        padding:5px 10px;
        letter-spacing: 1px;
        color:#fff;
        font-size:12px;
        text-decoration: none;
        background-color:#333;
      }
</style>

