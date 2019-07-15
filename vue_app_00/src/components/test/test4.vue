<template>
   <div class="product_app">
     <!--Product.vue-->
     <div class="goods-item" v-for="(item,i) of list" :key="i">
        <img :src="'http://127.0.0.1:3000/'+item.pic" />
        <h4>{{item.title}}</h4>
        <div class="info">
          <span class="now">{{item.price}}</span>
        </div>
     </div>
     <!--按钮-->
     <button size="large" type="primary" @click="loadMore">加载更多</button>
   </div>  
</template>
<script>
  export default {
    data(){
      return {
        list:[],
        pno:0,//页码
        ps:16  //页大小
      }
    },
    methods:{
      loadMore(){//加载更多的数据
        var url = "import_product";
        //将当前页码加1 10:28
        this.pno++;
        //创建参数对象
        var obj = {pno:this.pno,pageSize:this.ps};
        this.axios.get(url,{params:obj}).then(result=>{
          //数据覆盖
          //this.list = //result.data.data
          //数据追加
          var rows = this.list.concat(result.data.data);
          this.list = rows;

        })
      }
    },
    created() {
       this.loadMore();
    },
  }  
</script>
<style scoped>
  /*最外层父元素*/
  .product_app{
   display:flex;
   flex-wrap:wrap;/*子元素换行*/
   justify-content:space-between;
   padding:4px;
  }
  .product_app .goods-item{
    width:49%;/*元素宽度*/
    border:1px solid #ccc;
    box-sizing:border-box;
    margin:2px 0;
    padding:2px;
    display:flex; /*弹性布局*/
    flex-direction:column;
    min-height:247px;/*高度*/
    border-radius:5px;/*圆角*/
  }
  /*商品图片,充满父元素*/
  .product_app .goods-item img{
    width:100%;
  }
</style>