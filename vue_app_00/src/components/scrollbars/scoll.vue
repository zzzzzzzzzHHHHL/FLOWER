<template>
  <div id="scoll">
    <ul>
          <li><img src="./img/scrollbars/h1.jpg"></li>
          <li><img src="./img/scrollbars/h2.jpg"></li>
          <li><img src="./img/scrollbars/h3.jpg"></li>
          <li><img src="./img/scrollbars/h4.jpg"></li>
          <li><img src="./img/scrollbars/h5.jpg"></li>
          <li><img src="./img/scrollbars/h6.jpg"></li>
          <li><img src="./img/scrollbars/h7.jpg"></li>
          <li><img src="./img/scrollbars/h8.jpg"></li>
          <li><img src="./img/scrollbars/h9.jpg"></li>
          <li><img src="./img/scrollbars/h10.jpg"></li>
          <li><img src="./img/scrollbars/h11.jpg"></li>
          <li><img src="./img/scrollbars/h12.jpg"></li>
    </ul>
  </div>
</template>
<script>
export default {
  data(){
    return{}
  },
  mounted(){
		window.onload = function(){
				var oDiv = document.getElementById('scoll');
				var oUl = oDiv.getElementsByTagName('ul')[0];
				var aLi = oUl.getElementsByTagName('li');
				var iSpeed = 1;//正左负右
				var timer = null;
				oUl.innerHTML += oUl.innerHTML+oUl.innerHTML;
				oUl.style.width = aLi[0].offsetWidth*aLi.length+'px';
				function Slider(){
					if (oUl.offsetLeft<-oUl.offsetWidth/2) {
						oUl.style.left = 0;
					}else if(oUl.offsetLeft>0){
						oUl.style.left =-oUl.offsetWidth/2+'px';
					}
					oUl.style.left = oUl.offsetLeft-iSpeed+'px';//正负为方向
				}
				timer =setInterval(Slider,30);

				oDiv.onmouseover = function(){
					clearInterval(timer);
				}
				oDiv.onmouseout = function(){
					timer =setInterval(Slider,30);
				}
			};
	}
}
</script>
<style scoped>
  *{margin:0;padding:0;box-sizing:border-box;}
		#scoll{
			position: relative;
			width: 1200px;
			margin: 20px auto;
			height: 250px;
			overflow: hidden;
		}
		#scoll ul{
			position: absolute;
			width:2880px;
			height:100%;
		}

		#scoll ul li{
			padding: 5px;
			list-style: none;
			width: 240px;
			height: 250px;
			float: left;
		}
		#scoll ul li img{
			width: 210px;
			height: 210px;
		}
</style>


