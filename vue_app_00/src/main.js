import Vue from 'vue'
import App from './App.vue'
import router from './router'
//引入Element-ui
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
//引入axios.js文件
import axios from "./axios"
Vue.use(ElementUI);

new Vue({
  router,
  render: h => h(App)
}).$mount('#app')


