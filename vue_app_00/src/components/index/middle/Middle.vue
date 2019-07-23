<template>
    <div>
        <header00></header00>
        <navgitor></navgitor>
        <banner></banner>
       <div id="floor">
           <!-- 1F -->
           <div class="floor_1">
               <div class="image_1">
                   <router-link :to="`${this.list[0].href}`"><img :src="'http://127.0.0.1:3000/'+this.list[0].pic"></router-link>
               </div>
               <div class="image_2">
                   <div class="image_2-div">
                       <router-link :to="`${this.list[1].href}`"><img :src="'http://127.0.0.1:3000/'+this.list[1].pic"></router-link>
                   </div>
                   <div class="image_2-text">
                       <p>她总说不要送她礼物</p>
                       <p>但是你心里自有打算</p>
                       <router-link :to="`${this.list[1].href}`">立即购买>></router-link>
                   </div>
               </div>
           </div>
           <!-- 2F -->
           <h3 class="my_h3">热卖单品推荐</h3>
           <div class="floor_2">
               <div class="floor_2-div" v-for="(elem,i) of list_1F" :key="i">
                   <div class="floor_2-div-img">
                       <router-link :to="`${elem.href}`"><img :src="'http://127.0.0.1:3000/'+elem.pic"></router-link>
                   </div>
                   <p><router-link :to="`${elem.href}`">{{elem.title}}</router-link></p>
                   <p><router-link :to="`${elem.href}`">¥ {{elem.price}}</router-link></p>
               </div>
           </div>
           <!-- 3F -->
           <h3 class="my_h3">抖音网红款推荐</h3>
           <div class="floor_2">
               <div class="floor_2-div" v-for="(elem,i) of list_2F" :key="i">
                   <div class="floor_2-div-img">
                       <router-link :to="`${elem.href}`"><img :src="'http://127.0.0.1:3000/'+elem.pic"></router-link>
                   </div>
                   <p><router-link :to="`${elem.href}`">{{elem.title}}</router-link></p>
                   <p><router-link :to="`${elem.href}`">¥ {{elem.price}}</router-link></p>
               </div>
           </div>
           <!-- 4F -->
           <h3 class="my_h3">特惠鲜花推荐</h3>
           <div class="floor_2">
               <div class="floor_2-div" v-for="(elem,i) of list_3F" :key="i">
                   <div class="floor_2-div-img">
                       <router-link :to="`${elem.href}`"><img :src="'http://127.0.0.1:3000/'+elem.pic"></router-link>
                   </div>
                   <p><router-link :to="`${elem.href}`">{{elem.title}}</router-link></p>
                   <p><router-link :to="`${elem.href}`">¥ {{elem.price}}</router-link></p>
               </div>
           </div>
           <!-- 5F -->
           <h3 class="my_h3">永生花推荐</h3>
           <div class="floor_2">
               <div class="floor_2-div" v-for="(elem,i) of list_4F" :key="i">
                   <div class="floor_2-div-img">
                       <router-link :to="`${elem.href}`"><img :src="'http://127.0.0.1:3000/'+elem.pic"></router-link>
                   </div>
                   <p><router-link :to="`${elem.href}`">{{elem.title}}</router-link></p>
                   <p><router-link :to="`${elem.href}`">¥ {{elem.price}}</router-link></p>
               </div>
           </div>   
           <!-- 6F -->
           <h3 class="my_h3">开业花篮</h3>
           <div class="floor_2">
               <div class="floor_2-div" v-for="(elem,i) of list_5F" :key="i">
                   <div class="floor_2-div-img">
                       <router-link :to="`${elem.href}`"><img :src="'http://127.0.0.1:3000/'+elem.pic"></router-link>
                   </div>
                   <p><router-link :to="`${elem.href}`">{{elem.title}}</router-link></p>
                   <p><router-link :to="`${elem.href}`">¥ {{elem.price}}</router-link></p>
               </div>
           </div>   
           <!-- 7F -->
           <div class="floor_3trd">
               <div class="image_2">
                   <div class="image_2-div">
                       <router-link :to="`${this.list[42].href}`"><img :src="'http://127.0.0.1:3000/'+this.list[42].pic"></router-link>
                   </div>
                   <div class="image_2-text">
                       <p>时尚活力抱抱桶</p>
                       <router-link :to="`${this.list[42].href}`">前往了解  >></router-link>
                   </div>
               </div>
               <div class="image_1">
                   <router-link :to="`${this.list[43].href}`"><img :src="'http://127.0.0.1:3000/'+this.list[43].pic"></router-link>
               </div>
           </div>
           <!-- 新品推荐 -->
           <div class="floor_4thrd">
               <div class="caption">
                   <div class="caption_line"></div>
                   <p>
                       <span>新品推荐</span>
                       <br>
                       <span>New Recommend</span>
                   </p>
               </div>
            </div>
           <!-- 8F -->
            <div class="floor_5thrd">
                <div class="floor_5thrd-div" v-for="(elem,i) of list_6F" :key="i">
                    <div class="floor_5thrd-img">
                        <router-link :to="`${elem.href}`"><img :src="'http://127.0.0.1:3000/'+elem.pic"></router-link>
                    </div>
                    <p class="p1">{{elem.title}}</p>
                    <router-link class="a1" :to="`${elem.href}`">加入购物车</router-link>
                </div>       
            </div>
            
            <div class="floor_4thrd">
               <div class="caption">
                   <div class="caption_line"></div>
                   <p>
                       <span>花品展示</span>
                       <br>
                       <span>Flower product display</span>
                   </p>
               </div>
            </div>
            <!-- 9F滚动图 -->
            <div id="scoll">
                <ul>
                    <li><img src="../../scrollbars/img/scrollbars/h1.jpg"></li>
                    <li><img src="../../scrollbars/img/scrollbars/h2.jpg"></li>
                    <li><img src="../../scrollbars/img/scrollbars/h3.jpg"></li>
                    <li><img src="../../scrollbars/img/scrollbars/h4.jpg"></li>
                    <li><img src="../../scrollbars/img/scrollbars/h5.jpg"></li>
                    <li><img src="../../scrollbars/img/scrollbars/h6.jpg"></li>
                    <li><img src="../../scrollbars/img/scrollbars/h7.jpg"></li>
                    <li><img src="../../scrollbars/img/scrollbars/h8.jpg"></li>
                    <li><img src="../../scrollbars/img/scrollbars/h9.jpg"></li>
                    <li><img src="../../scrollbars/img/scrollbars/h10.jpg"></li>
                    <li><img src="../../scrollbars/img/scrollbars/h11.jpg"></li>
                    <li><img src="../../scrollbars/img/scrollbars/h12.jpg"></li>
                </ul>
            </div>
       </div> 
       <footer00></footer00>
    </div>
</template>
<script>
import Header from "../header/header0.vue"
import Footer from "../footer/footer0.vue"
import Nav from "../../project/Nav.vue"
import Banner from "../header/banner.vue"
export default {
    
    data() {
        return {
           list:[],
        list_1F:[], 
        list_2F:[],
        list_3F:[],
        list_4F:[],
        list_5F:[],
        list_6F:[],
        }
    },
    created(){
        var url="index"
        this.axios.get(url).then(result=>{
        // console.log(result);
        this.list=result.data;
        // console.log(this.list);
        this.list_1F=this.list.slice(2,10);
        this.list_2F=this.list.slice(10,18);
        this.list_3F=this.list.slice(18,26);
        this.list_4F=this.list.slice(26,34);
        this.list_5F=this.list.slice(34,42);
        this.list_6F=this.list.slice(44,49);
        })	
  },
  components:{
      "header00":Header,
      "navgitor":Nav,
      "footer00":Footer,
      "banner":Banner
     },
     mounted(){
		window.onload = function(){
				var oDiv = document.getElementById('scoll');
				var oUl = oDiv.getElementsByTagName('ul')[0];
				var aLi = oUl.getElementsByTagName('li');
				var iSpeed = 1;//正左负右
				var timer = null;
				oUl.innerHTML += oUl.innerHTML+oUl.innerHTML;
				oUl.style.width = aLi[0].offsetWidth*aLi.length+'px';
				function Slider(){
					if (oUl.offsetLeft<-oUl.offsetWidth/2) {
						oUl.style.left = 0;
					}else if(oUl.offsetLeft>0){
						oUl.style.left =-oUl.offsetWidth/2+'px';
					}
					oUl.style.left = oUl.offsetLeft-iSpeed+'px';//正负为方向
				}
				timer =setInterval(Slider,30);

				oDiv.onmouseover = function(){
					clearInterval(timer);
				}
				oDiv.onmouseout = function(){
					timer =setInterval(Slider,30);
				}
		};
	
    }
  
}
</script>
<style>
    *{margin:0;padding:0;box-sizing: border-box;}
     /* body{
        /* background-color: #f1f7f1; */
    /* }   */
    /* 1F */
    #floor{
        width: 1200px;
        margin: 0 auto;
        margin-top:100px;
    }
    .floor_1{
        width:100%;
        height:700px;
        display: flex;
        justify-content: space-between;
    }
    .floor_1 .image_1{
        width:715px;
        height:100%;
    }
    .floor_1 .image_2{
        width:460px;
        height:100%;
    }
    .floor_1 .image_1 img{
        width: 100%;
        height:100%;
    }
    .floor_1 .image_2-div{
        width:460px;
        height:412px;
        margin-top:50px;
    }
    .floor_1 .image_2-div img{
        width:100%;
        height:100%;
    }
    .floor_1 .image_2-text{
        width:460px;
        height:180px;
        text-align:center;
        margin-top:50px;
    }
    .floor_1 .image_2-text p{
        font-size: 22px;
        color:#666;
        margin:0;
    }
    .floor_1 .image_2-text a{
         font-size: 36px;
         color:#666;
         text-decoration: underline;
         display: inline-block;
         margin-top:20px;
    }
    .floor_1 .image_2-text a:hover{
        color:#333;
    }

    .my_h3{
        font-size: 40px;
        color:#555;
        text-align: center;
        margin:60px 0;
        letter-spacing: 1px;

    }

    .floor_2{
        width:1200px;
        height:828px;
        display: flex;
        justify-content: space-between;
        flex-wrap: wrap;
    }
    .floor_2-div{
        width:298px;
        height:394px;
        padding:29px;
        text-align: center;
    }
    .floor_2-div a{
        font-size: 14px;
        color:#000;
    }
    .floor_2-div p:last-child a{
        font-weight: bold;
    }
    .floor_2-div-img{
        width:240px;
        height:240px;
        margin-bottom:15px;
    }
    .floor_2-div-img img{
        width:100%;
        height:100%;
    }



    .floor_3trd{
        width:100%;
        height:800px;
        padding-top: 30px;
        display: flex;
        justify-content: space-between;
    }
    .floor_3trd .image_1{
        width:600px;
        height:720px;
    }
    .floor_3trd .image_2{
        width:500px;
        height:720px;
    }
    .floor_3trd .image_1 img{
        width: 100%;
        height:100%;
    }
    .floor_3trd .image_2-div{
        width:500px;
        height:500px;
        margin-top:50px;
    }
    .floor_3trd .image_2-div img{
        width:100%;
        height:100%;
    }
    .floor_3trd .image_2-text{
        width:500px;
        height:113px;
        text-align:center;
        margin-top:50px;
    }
    .floor_3trd .image_2-text p{
        font-size: 22px;
        color:#666;
        margin:0;
    }
    .floor_3trd .image_2-text a{
         font-size: 36px;
         color:#666;
         text-decoration: underline;
         display: inline-block;
         margin-top:20px;
    }
    .floor_3trd .image_2-text a:hover{
        color:#333;
    }


    /* 新品推荐 */
    .floor_4thrd{
        width: 100%;
        height: 54px;
        margin-bottom: 50px;
    }
    .floor_4thrd .caption{
        margin-top:70px;
        height: 54px;
        width: 100%;
        position: relative;
    }
    .floor_4thrd .caption_line{
        border-bottom: 1px solid rgb(158, 155, 155);
        z-index: 1;
        padding:13px 0;
        width: 100%;
        position:absolute;
    }
    .floor_4thrd div p{
        width: 260px;
        background: #fff;
        text-align: center;
        font-size: 20px;
        font-family: "微软雅黑";
        color: rgb(158, 155, 155);
        z-index: 2;
        position: absolute;
        left: 50%;
        margin-left:-130px;
    }

    .floor_5thrd{
        width:100%;
        height:290px;
        display: flex;
        justify-content: space-between;
    }
    .floor_5thrd-div{
        width:200px;
        height:100%;
        text-align: center;
    }
    .floor_5thrd-img{
        width:200px;
        height:200px;
        margin-bottom:10px;
    }
    .floor_5thrd-img img{
        width:100%;
        height:100%;
    }
    .floor_5thrd-div .p1{
        font-size: 12px;
        color: #555;
        margin-bottom:5px;
        overflow: hidden;
        white-space: nowrap;
        text-overflow: ellipsis;
    }
    .floor_5thrd-div .a1{
        display: inline-block;
        color:#666;
        font-size: 12px;
        padding:5px 30px;
        border:1px solid #ccc;
    }
    .floor_5thrd-div .a1:hover{
        background-color: #333;
        color:#fff;
        text-decoration: none;
    }

     #scoll{
			position: relative;
			width: 1200px;
			margin: 20px auto;
			height: 250px;
			overflow: hidden;
		}
		#scoll ul{
			position: absolute;
			width:2880px;
			height:100%;
		}

		#scoll ul li{
			padding: 5px;
			list-style: none;
			width: 240px;
			height: 250px;
			float: left;
		}
		#scoll ul li img{
			width: 210px;
			height: 210px;
		}
</style>