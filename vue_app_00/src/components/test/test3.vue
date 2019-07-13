<template>
    <div id="container">
        <div id="d1" v-for="(elem,i) of list" :key="i">
            <h1>{{elem.title}}</h1>
            <img :src="`http://127.0.0.1:3000/`+elem.pic">
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
        var url="love";
        this.axios.get(url).then(result=>{
            // console.log(result);
            this.list=result.data;
            console.log(this.list);
        })
    }
}
</script>
<style>
    
</style>