//router.js 引入路由
import Vue from 'vue'
import Router from 'vue-router'
//自定义组件
import HelloContainer from "./components/HelloWorld.vue"
import Test from "./components/test/test.vue"
import Test1 from "./components/test/test1.vue"
import Test3 from "./components/test/test3.vue"
import Test4 from "./components/test/test4.vue"
import Import from "./components/product/import.vue"
import Love from "./components/product/love.vue"
import Birthady from "./components/product/birthday.vue"
import Extend from "./components/product/extend.vue"
import Blessing from "./components/product/blessing.vue"
import Condole from "./components/product/condole.vue"
import Apologize from "./components/product/apologize.vue"
import Life from "./components/product/life.vue"
import Opening from "./components/product/opening.vue"
import Forever from "./components/product/forever.vue"
import Gift from "./components/product/gift.vue"
import Login from "./components/product/login.vue"
import Register from "./components/product/register.vue"
import Admin from "./components/admin/admin.vue"
import Scrollbars from "./components/scrollbars/scrollbars.vue"
// 主页面路径
import Ceiling from "./components/index/header/Ceiling.vue"
import Header from "./components/index/header/Header.vue"
import Input from "./components/index/header/Input.vue"
import Nav from "./components/index/header/Nav.vue"
import Navbar from "./components/index/header/Navbar.vue"
import Middle from "./components/index/middle/Middle.vue"
import Footer from "./components/index/footer/Footer.vue"
Vue.use(Router)
export default new Router({
  routes: [
    {path:'/',component:HelloContainer},
    {path:'/Admin',component:Admin},
    {path:'/Test',component:Test},
    {path:'/Test4',component:Test4},
    {path:'/Test1',component:Test1},
    {path:'/Test3',component:Test3},
    {path:'/Import',component:Import},
    {path:'/Love',component:Love},
    {path:'/Birthday',component:Birthady},
    {path:'/Extend',component:Extend},
    {path:'/Blessing',component:Blessing},
    {path:'/Condole',component:Condole},
    {path:'/Apologize',component:Apologize},
    {path:'/Life',component:Life},
    {path:'/Opening',component:Opening},
    {path:'/Forever',component:Forever},
    {path:'/Gift',component:Gift},
    {path:'/Login',component:Login},
    {path:'/Register',component:Register},
    {path:'/Scrollbars',component:Scrollbars},
    // 注册主页面路径
    {path:'/Ceiling',component:Ceiling},
    {path:'/Header',component:Header},
    {path:'/Input',component:Input},
    {path:'/Nav',component:Nav},
    {path:'/Navbar',component:Navbar},
    {path:'/Middle',component:Middle},
    {path:'/Footer',component:Footer},
  ]
})
