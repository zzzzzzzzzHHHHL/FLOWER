<template>
    <div>
        <ceiling></ceiling>
        <nput></nput>
        <navbar></navbar> 
        <navv></navv>
        <middle></middle>
        <ooter></ooter>
    </div>
</template>
<script>
import Input from './Input'
import Nav from './Nav'
import Navbar from './Navbar'
import Ceiling from './Ceiling'
import Middle from '../middle/Middle'
import Footer from '../footer/Footer'
export default {
    data() {
        return {
        list:[],
        list_one:[],
        }
    },
    created(){
    var url="index"
    this.axios.get(url).then(result=>{
      console.log(result);
      this.list=result.data;
      console.log(this.list);
      this.list_one=this.list.slice(2,10);
      console.log(this.list_one);
    })
  },

    components:{
     "nput":Input,
     "navv":Nav1,
     "navbar":Navbar,
     "ceiling":Ceiling,
     "middle":Middle,
     "ooter":Footer,
   }
    
    
}
</script>
<style>
    
</style>