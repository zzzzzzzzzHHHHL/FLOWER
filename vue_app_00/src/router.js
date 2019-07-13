//router.js 引入路由
import Vue from 'vue'
import Router from 'vue-router'
//自定义组件
import HelloContainer from "./components/HelloWorld.vue"
import Test from "./components/test/test.vue"
import Test1 from "./components/test/test1.vue"
import Test3 from "./components/test/test3.vue"
import Import from "./components/product/import.vue"
Vue.use(Router)
export default new Router({
  routes: [
    {path:'/',component:HelloContainer},
    {path:'/Test',component:Test},
    {path:'/Test1',component:Test1},
    {path:'/Test3',component:Test3},
    {path:'/Import',component:Import},
  ]
})
