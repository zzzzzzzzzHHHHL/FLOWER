<template>
<div>
    <div class="my_nav">
        <ul class="list-unstyled ul1">
            <li class="m-0">
                <div class="hove">
                <div class="one">
                    <a href="javascirpt:;">首页</a>
                </div>
                <div class="tow">
                    <router-link :to="`/Middle`">首页</router-link>
                </div>
                </div>
                <span>/</span> 
            </li>
            <li class="m-0">
                <div class="hove">
                <div class="one">
                    <a href="javascirpt:;">进口鲜花</a>
                </div>
                <div class="tow">
                    <router-link :to="`/Import`">进口鲜花</router-link>
                </div>
                </div>
                <span>/</span> 
            </li>
             <li class="m-0">
                <div class="hove">
                <div class="one">
                    <a href="javascirpt:;">爱情鲜花</a>
                </div>
                <div class="tow">
                    
                    <router-link :to="`/Love`">爱情鲜花</router-link>
                </div>
                </div>
                <span>/</span> 
            </li>
             <li class="m-0">
                <div class="hove">
                <div class="one">
                    <a href="javascirpt:;">生日鲜花</a>
                </div>
                <div class="tow">
                    <router-link :to="`/Birthday`">生日鲜花</router-link>
                </div>
                </div>
                <span>/</span> 
            </li>
             <li class="m-0">
                <div class="hove">
                <div class="one">
                    <a href="javascirpt:;">问候长辈</a>
                </div>
                <div class="tow">
                    <router-link :to="`/Extend`">问候长辈</router-link>
                </div>
                </div>
                <span>/</span> 
            </li>
             <li class="m-0">
                <div class="hove">
                <div class="one">
                    <a href="javascirpt:;">祝福庆贺</a>
                </div>
                <div class="tow">
                    <router-link :to="`/Blessing`">祝福庆贺</router-link>
                </div>
                </div>
                <span>/</span> 
            </li>
             <li class="m-0">
                <div class="hove">
                <div class="one">
                    <a href="javascirpt:;">探病慰问</a>
                </div>
                <div class="tow">
                    <router-link :to="`/Condole`">探病慰问</router-link>
                </div>
                </div>
                <span>/</span> 
            </li>
             <li class="m-0">
                <div class="hove">
                <div class="one">
                    <a href="javascirpt:;">道歉鲜花</a>
                </div>
                <div class="tow">
                    <router-link :to="`/Apologize`">道歉鲜花</router-link>
                </div>
                </div>
                <span>/</span> 
            </li>
             <li class="m-0">
                <div class="hove">
                <div class="one">
                    <a href="javascirpt:;">生活鲜花</a>
                </div>
                <div class="tow">
                    <router-link :to="`/Life`">生活鲜花</router-link>
                </div>
                </div>
                <span>/</span> 
            </li>
             <li class="m-0">
                <div class="hove">
                <div class="one">
                    <a href="javascirpt:;">全部鲜花</a>
                </div>
                <div class="tow">
                    <router-link :to="`/All`">全部鲜花</router-link>
                </div>
                </div>
                <span>/</span> 
            </li>
             <li class="m-0">
                <div class="hove">
                <div class="one">
                    <a href="javascirpt:;">开业花篮</a>
                </div>
                <div class="tow">
                    <router-link :to="`/Opening`">开业花篮</router-link>
                </div>
                </div>
                <span>/</span> 
            </li>
             <li class="m-0">
                <div class="hove">
                <div class="one">
                    <a href="javascirpt:;">永生花</a>
                </div>
                <div class="tow">
                    <router-link :to="`/Forever`">永生花</router-link>
                </div>
                </div>
                <span>/</span> 
            </li>
             <li class="m-0">
                <div class="hove">
                <div class="one">
                    <a href="javascirpt:;">礼品</a>
                </div>
                <div class="tow">
                    <router-link :to="`/Gift`">礼品</router-link>
                </div>
                </div>
            </li>
        </ul>
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
<style scoped>
li+li{
    margin-left: 8px !important;
}
li{
    display: flex;
    justify-content: space-between;
    align-items: center;
}
span{
    margin-top: -66px;
    margin-left: 6px;
}
a:hover{
    text-decoration: none;
}
.my_nav .one a{
    color: #666;
    font-size: 12px;
    
}
.my_nav .tow a{
    color: #c3a56e;
    font-size: 16px;
   
}
.my_nav .tow{
    box-shadow: 0px 0px 6px #aaa;
}
.one,.tow{
    text-align:center;
    width: 72px;
    height: 51px;
    line-height: 51px;
}
.tow{
    margin-top: 15px;
}
.ul1{
    width: 100%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    height: 200px;
    position: relative;
    top: -60px;
}
li{
    margin-top: 40px !important;
}
.hove:hover{
    margin-top: -130px !important;
    transition: all 0.2s linear;
}
.my_nav{
    height: 60px;
    overflow: hidden; 
    text-align: center;
    width: 1200px;
    padding: 0 5px;
    margin:30px auto;
}
</style>
