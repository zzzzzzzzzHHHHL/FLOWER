<template>
    <div>
       <div id="carousel">
          <div class="bd-example">
            <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                  <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                  <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                  <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                  <li data-target="#carouselExampleCaptions" data-slide-to="3"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                      <img src="../../../../../vue_server_00/public/img/banner/b1.jpg" class="d-block w-100" alt="...">
                      <div class="carousel-caption d-none d-md-block">
                      </div>
                    </div>
                    <div class="carousel-item">
                      <img src="../../../../../vue_server_00/public/img/banner/b2.jpg" class="d-block w-100" alt="...">
                      <div class="carousel-caption d-none d-md-block"></div>
                    </div>
                    <div class="carousel-item">
                      <img src="../../../../../vue_server_00/public/img/banner/b3.jpg" class="d-block w-100" alt="...">
                      <div class="carousel-caption d-none d-md-block"></div>
                    </div>
                    <div class="carousel-item">
                      <img src="../../../../../vue_server_00/public/img/banner/b4.jpg" class="d-block w-100" alt="...">
                      <div class="carousel-caption d-none d-md-block"></div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                  <div class="span-bg">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                  </div>
                </a>
                <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                  <div class="span-bg">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                  </div>
                </a>
            </div>
          </div>
       </div>
    </div>
</template>
<script>
export default {
    data() {
        return {
            
        }
    },
}
</script>
<style>
      #carousel{
        width: 1200px;
        margin: 0 auto;
      }
      #carousel ol{
        bottom: -52px !important;
      }
      #carousel ol li{
        background-color: black !important;
      }
      .span-bg{
        width: 27px;
        height: 61px;
        background: #000;
        line-height: 4; 
      }
     
</style>