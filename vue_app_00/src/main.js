import Vue from 'vue'
import App from './App.vue'
import router from './router'
//引入Element-ui
import ElementUI from 'element-ui';
import './../public/js/jquery-1.11.3'
import 'element-ui/lib/theme-chalk/index.css';
import "./font/iconfont.css"
//引入axios.js文件
import axios from "./axios"
//6：引入vuex
import Vuex from "vuex"
Vue.use(ElementUI);
//7: 注册vuex组件
Vue.use(Vuex)

//8: 创建vuex实例 store 
var store = new Vuex.Store({
  //vuex中全局共享数据
  state:{
    cartCount:0,
    totalprice:0
  },
  //修改vuex中全局共享数据
  mutations:{
    //购物车数量,购物车总价增加
    set1(state,c){
      state.cartCount=c;
      // console.log(c,1);
      // console.log(state.cartCount,1);
    },
    set2(state,p){
      state.totalprice=p;
      // console.log(p,2);
      // console.log(state.totalprice,2);
    },
    plus1(state,c){
      state.cartCount+=Number(c);
      // console.log(c,3);
      // console.log(state.cartCount,3);
    },
    plus2(state,p){
      state.totalprice+=Number(p);
      // console.log(p,4);
      // console.log(state.totalprice,4);
    }

  },
  //获取vuex中全局共享数据 11:40
  getters:{
   get:function(state){
    return [state.cartCount,state.totalprice];
   }
  }
})
//9: 将store保存vue实例中
Vue.config.productionTip = false
new Vue({
  router,
  render: h => h(App),
  store
}).$mount('#app')


