<template>
    <div id="container" v-html="this.newlist[0].details">
     
    </div>
</template>
<script>
export default {
 data(){
    return{
      list:[],
      newlist:[]
    }
 },
//   },../../../../vue_server_00/public/img/
  created(){
    var url="details5"
    this.axios.get(url).then(result=>{
      this.list=result.data;
      console.log(this.list);
      this.newlist=this.list.slice(0,1);
      console.log(this.newlist)
      
    })
  }
}
</script>
<style>
    
</style>