<template>
  <div>
    <h2>this test</h2>
    <div v-for="(elem,i) of list" :key="i">
      <img   :src="'http://127.0.0.1:3000/'+elem.pic" >
      <!-- {{elem.pic}} -->
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return{
      list:[]
    }
  },
  created(){
    var url="index"
    this.axios.get(url).then(result=>{
      console.log(result);
      this.list=result.data;
      console.log(this.list);
    })
  }
}
</script>
<style>

</style>


