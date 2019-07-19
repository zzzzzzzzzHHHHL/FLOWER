import Vue from 'vue'
import App from './App.vue'
import router from './router'
//引入Element-ui
import ElementUI from 'element-ui';
import './../public/js/jquery-1.11.3'
import 'element-ui/lib/theme-chalk/index.css';
import "./font/iconfont.css"
<<<<<<< HEAD

=======
//import "./../public/js/vue"
// 字体图标
import "./font/font1_9089ljplf/iconfont.css"
import "./font/font2_tygut9aw40b/iconfont.css"
import "./font/font3_20btlo3xkyh/iconfont.css"
import "./font/font_xrf7xomh4aj/iconfont.css"
>>>>>>> 7f345a584919c0022a3b8bada4c23929be107af1
//引入axios.js文件
import axios from "./axios"
Vue.use(ElementUI);

new Vue({
  router,
  render: h => h(App)
}).$mount('#app')


