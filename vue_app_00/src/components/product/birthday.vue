<template>
<div>
    <div class="productFilter my_flex">
        <div class="left_pro">
            <ul class="my_flex">
                <li><a>排序:</a></li>
                <li><a>新品</a></li>  
                <li><a>人气</a></li>  
                <li><a>价格</a> </li>
                <li>
                    <a><i class="el-icon-caret-top" @click="add"></i></a>
                    <a><i class="el-icon-caret-bottom"  @click="cut"></i></a>   
                </li>      
            </ul>
        </div>
        <div class="right_pro">
            <span>190个结果</span>
            <el-pagination  background  layout="prev, pager, next" :total="120" @prev-click="last" @next-click="next" ></el-pagination>
        </div>         
    </div>
    <div class="my_flex main">
        <div  v-for="(elem,i) of list" :key="i" class="main_pro" >
             <router-link :to="elem.href"><img :src="`http://127.0.0.1:3000/`+elem.pic" ></router-link>
             <div class="msg_pro">
                  <p>
                <router-link v-text="elem.title" :to="elem.href"></router-link>
                  </p>
            <p v-text="`￥${elem.price}`"></p>
             </div>
        </div>   
    </div>
</div>
    
</template>
<script>
  export default{
        data(){
            return{
                list:[],
               pno:1,ps:16,
            }
        },
        mounted() {
            var ulStyle=document.querySelector(".el-pager")
            var firstLi=ulStyle.children[0];
            var secondLi=ulStyle.children[1];
            var lastLi=ulStyle.children[2];
            var url="birthday_product";
            firstLi.onclick=()=>{
                this.pno=1;
                var obj={pno:this.pno,ps:this.ps}
                this.axios.get(url,{params:obj}).then(result=>{
                  this.list=result.data.data
                })
            },
            secondLi.onclick=()=>{
                this.pno=2;
                var obj={pno:this.pno,ps:this.ps}
                this.axios.get(url,{params:obj}).then(result=>{
                  this.list=result.data.data
                })
                
            } ,
            lastLi.onclick=()=>{
                this.pno=3;
                var obj={pno:this.pno,ps:this.ps}
                this.axios.get(url,{params:obj}).then(result=>{
                  this.list=result.data.data
                })    
            }       
        },
        created() {
              var url="birthday";
                this.axios.get(url).then(result=>{
                    console.log(result);
                     this.list=result.data.slice(0,16)
                    // setTimeout(function(){
                      //  var divMain=document.querySelectorAll(".main_pro");
                       // console.log(divMain)
                     //},10)
                })
        },
    
        methods: {
            last(){
                var url="birthday_product";
                this.pno--;
                var obj={pno:this.pno,ps:this.ps}
                this.axios.get(url,{params:obj}).then(result=>{
               // var rows=this.list.concat(result.data.data)
                //console.log(rows)
                  // this.list=rows
                  this.list=result.data.data
                })
            },
            next(){
                var url="birthday_product";
                this.pno++;
                var obj={pno:this.pno,ps:this.ps}
                this.axios.get(url,{params:obj}).then(result=>{
               // var rows=this.list.concat(result.data.data)
                //console.log(rows)
                  // this.list=rows
                  this.list=result.data.data
                })
            },
              add(){
                var url="apologize-priceUp";
                this.axios.get(url).then(result=>{
                    this.list=result.data;  
                })
                var firsti=document.querySelector(".el-icon-caret-top");
                var lasti=document.querySelector(".el-icon-caret-bottom");
                firsti.style.color="red";
                lasti.style.color="#d2d2d2";
            },
            cut(){
                var url="apologize-priceDown";
                this.axios.get(url).then(result=>{
                    this.list=result.data
                })
                var firsti=document.querySelector(".el-icon-caret-top");
                var lasti=document.querySelector(".el-icon-caret-bottom");
                firsti.style.color="#d2d2d2";
                lasti.style.color="red";                
            },
        },  
    }
</script>
<style scoped>
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
    ul{
        line-height:57px;
    }
    ul li{
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
    .el-icon-caret-top{
        position:absolute;
        left:-37px;top:22px;
        color:#d2d2d2;
    }
     .el-icon-caret-bottom{
        position:absolute;
        left:-37px;top:28px;
        color:#d2d2d2;
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
     
     }
     .el-pagination{
        height:53px;
        padding: 14px 0px;
     }

  .main{
      width:1200px;
      margin:0 auto;
      margin-top:20px
  }  
  .main img{
      width:280px;
      height:280px;
  }
 .main a{
     color: #666;
    text-decoration: none;
    font-size:12px;
 }
 .main p{
     color: #999;
    
    font-size:12px;
 }
 .main_pro{
     margin:10px 0;
 }
 .msg_pro{
     width:280px;
     height:60px;
     box-sizing:border-box;
 }
 .main_pro{
     box-shadow: 0 0 5px #d9d9d9;
     border-radius:5px;
 }
 .main_pro:hover{
    transform: translatex(-4px);
    transition:all 0.2s linear;
 }
 .msg_pro>p:last-child{
     color:#b2904c;
     font-size:14px;
 }

 .msg_pro>p{
     text-align:center;
     margin:10px 0px;
 }
 
</style>