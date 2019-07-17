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
Vue.use(ElementUI);

new Vue({
  router,
  render: h => h(App)
}).$mount('#app')


