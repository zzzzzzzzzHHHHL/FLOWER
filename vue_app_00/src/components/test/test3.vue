<template>
    <div id="container" >
       
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
  created(){
    var url="details5"
    this.axios.get(url).then(result=>{
      this.list=result.data;
      console.log(this.list);
      this.newlist=this.list.slice(0,1);
      console.log(this.newlist)
      console.log(this.newlist[0].details[0].pic1)
    })
  }
}
</script>
<style>
    
</style>