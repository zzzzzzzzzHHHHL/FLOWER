<template>
  <div class="container-usercenter">
    <div class="user-content">
      <div class="user-left">
        <div class="user-left-top">
          <div class="user-top-left-head">
            
          </div>
        </div>
        <div class="user-left-buttom">
          <div class="user-top-buttom-footer"></div>
        </div>
      </div>
      <div class="user-right"></div>
    </div>
  </div>
</template>
<script>
export default {
  
}
</script>
<style scoped>
  *{margin:0;padding:0;box-sizing: border-box;}
  .container-usercenter{
    min-width: 1200px;
    border:1px solid red;
    background-color: #f8f8f8;
  }
  .user-content{
    display: flex;
    justify-content: space-between;
    width:1200px;
    height:926px;
    margin:20px auto;
  }
  .user-left{
    width:260px;
    height:680px;
  }
  .user-right{
    width:920px;
    height:896px;
    background-color:lightgreen;
  }
  .user-top-left-head{
    width:100%;
    height:222px;
    padding:30px;
    color:#8c8c8c;
    margin-bottom:10px;
    background-color: #fff;
  }
</style>

