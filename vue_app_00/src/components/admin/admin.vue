<template>
  <div>
    <!-- <el-radio-group v-model="tabPosition" style="margin-bottom: 30px;">
      <el-radio-button label="top">top</el-radio-button>
      <el-radio-button label="right">right</el-radio-button>
      <el-radio-button label="bottom">bottom</el-radio-button>
      <el-radio-button label="left">left</el-radio-button>
    </el-radio-group> -->
    <header class="header">
      <h2>花赞商城后台管理</h2>
      <div>
        <el-input placeholder="请输入内容" v-model="input3" class="input-with-select">
          <el-button slot="append" icon="el-icon-search"></el-button>
        </el-input>
      </div>
      <div>
        <el-avatar icon="el-icon-user-solid"></el-avatar>
        <a href="javascript:;">请登录</a>
        <a href="javascript:;">退出</a>
      </div>
    </header>
    <el-tabs :tab-position="tabPosition" style="height: 100vh;">
      <el-tab-pane label="商品列表">商品列表</el-tab-pane>
      <el-tab-pane label="添加商品">添加商品</el-tab-pane>
      <el-tab-pane label="用户列表">用户列表</el-tab-pane>
      <el-tab-pane label="订单列表">订单列表</el-tab-pane>
    </el-tabs>
    
  </div>
</template>
<script>

export default {
  data(){
    
      return {
        tabPosition: 'left',
        input3:"",
      }
  }
  
}
</script>
<style>
  *{margin:0;padding:0;box-sizing: border-box;}
  .header{
    width:100%;
    height: 70px;
    display: flex;
    justify-content: space-around;
    align-items: center;
    background-color: #ccc;
    border-bottom: 2px solid #333;
  }
</style>


