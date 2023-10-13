<div id="slideshow<?= $module; ?>" class="relative owl-carousel"  style="opacity: 1; width: 100%;">
  <?php foreach ($banners as $banner) { ?>
    <div class="relative h100">
      <img data-src="<?= $banner['image']; ?>" alt="<?= $banner['title']; ?>" class="img-responsive hidden-xs owl-lazy" />
      <img data-src="<?= $banner['mobile_image']; ?>" alt="<?= $banner['title']; ?>" class="img-responsive visible-xs owl-lazy" />
      <?php if($banner['description']){ ?>
        <div class="slider-slideshow-description w100 absolute position-center-center background-type-<?= $banner['theme']; ?>">
          <div class="container">
            <div class="slider-slideshow-description-texts">
              <?= $banner['description']; ?>

              <?php if ( $banner['link'] && $banner['link_text'] ) { ?>
              <div class="slider-slideshow-description-link">
                <a href="<?= $banner['link']; ?>" class="btn btn-primary fancy-btn">
                  <?= $banner['link_text']; ?>
                  <img src="image/catalog/slicing/general/button_bg-orange.png" alt="button" class="fancy">
                </a>
              </div>
              <!--class:slider-slideshow-description-link-->
              <?php } ?>
            </div>
            <!--class:slider-slideshow-description-texts-->
          </div>
          <!--class:container-->
        </div>
        <!--class:slider-slideshow-description-->
      <?php } ?>
      
<!--       <?php if($banner['link']){ ?>
        <a href="<?= $banner['link']; ?>" class="block absolute position-left-top w100 h100"></a>
      <?php } ?>-->

    </div>
  <?php } ?>

</div>
<?php //include('slideshow_script_slick.tpl'); ?>
<?php include('slideshow_script_owl.tpl'); ?>

<div class="arrow-con">
  <div class="left"><i class="fa fa-chevron-up" style="transform: translateY(-2px);"></i></div>
  <div class="right"><i class="fa fa-chevron-down"></i></div>
</div>

<script type="text/javascript">
  $('.arrow-con .right').on("click", function(){
    $('.slideshow .owl-prev').click();
  })
  $('.arrow-con .left').on("click", function(){
    $('.slideshow .owl-next').click();
  })
</script>