<div class="featured-module featured_<?= $uqid; ?>">
  <h2 class="text-center target-heading">
    <?= $heading_title; ?>
  </h2>
  <div class="featured section relative" style="opacity: 0;">
    <div id="featured_slider_<?= $uqid; ?>" >
      <?php foreach ($products as $product) { ?>
        <?= html($product); ?>
      <?php } ?>
    </div>
    <script type="text/javascript">
      if ($('body').hasClass('common-home')) {
        $(window).load(function(){
        setTimeout(function () {
          featured_product_slick<?= $uqid; ?>();
          AOS.init();
        }, 250);
      });

      function featured_product_slick<?= $uqid; ?>(){
        $("#featured_slider_<?= $uqid; ?>").on('init', function (event, slick) {
          $('#featured_slider_<?= $uqid; ?>').parent().removeAttr('style');
        });

        $("#featured_slider_<?= $uqid; ?>").slick({
          dots: false,
          infinite: false,
          speed: 300,
          slidesToShow: 5,
          slidesToScroll: 1,
          responsive: [
            {
              breakpoint: 1200,
              settings: {
                slidesToShow: 3,
              }
            },
            {
              breakpoint: 767,
              settings: {
                arrows: false,
                autoplay: true,
                slidesToShow: 2,
              }
            },
            {
              breakpoint: 539,
              settings: {
                slidesToShow: 1,
                arrows: false,
                autoplay: true,
                autoplaySpeed: 5000
              }
            }
          ],
          prevArrow: "<div class='pointer slick-nav left prev absolute'><div class='absolute position-center-center'><i class='fa fa-chevron-left fa-2em'></i></div></div>",
          nextArrow: "<div class='pointer slick-nav right next absolute'><div class='absolute position-center-center'><i class='fa fa-chevron-right fa-2em'></i></div></div>",
        });
      }

    } else {
      $(window).load(function(){
        setTimeout(function () {
          featured_product_slick<?= $uqid; ?>();
          AOS.init();
        }, 250);
      });

      function featured_product_slick<?= $uqid; ?>(){
        $("#featured_slider_<?= $uqid; ?>").on('init', function (event, slick) {
          $('#featured_slider_<?= $uqid; ?>').parent().removeAttr('style');
        });

        $("#featured_slider_<?= $uqid; ?>").slick({
          dots: false,
          infinite: false,
          speed: 300,
          slidesToShow: 4,
          slidesToScroll: 1,
          responsive: [
            {
              breakpoint: 1300,
              settings: {
                slidesToShow: 3,
              }
            },
            {
              breakpoint: 1024,
              settings: {
                slidesToShow: 2,
              }
            },
            {
              breakpoint: 541,
              settings: {
                slidesToShow: 1,
                arrows: false,
                autoplay: true,
                autoplaySpeed: 5000
              }
            }
          ],
          prevArrow: "<div class='pointer slick-nav left prev absolute'><div class='absolute position-center-center'><i class='fa fa-chevron-left fa-2em'></i></div></div>",
          nextArrow: "<div class='pointer slick-nav right next absolute'><div class='absolute position-center-center'><i class='fa fa-chevron-right fa-2em'></i></div></div>",
        });
      }
    }
    </script>
  </div>

  <div class="btn-con" style="display: none;">
    <a href="/products" class="btn btn-primary fancy-btn">
      <?php if ($btn_name): ?>
        <?php foreach ($btn_name as $i => $value) {
          if ($lan_id == 2) {
            if ($i == 2) {
              echo $value;
            }
            } else {
              if ($i == 1) {
                echo $value;
              }
            }
          
        }; ?>
      <?php endif ?>
      <img src="image/catalog/slicing/general/button_bg-orange.png" alt="button" class="fancy">
    </a>
  </div>

<script type="text/javascript">
  if ($('body').hasClass('common-home')) {
    $(".featured-module .btn-con").show();
  }
</script>
</div>

<script type="text/javascript">
  $('.featured_related_products_ h2').text('You Might Also Like');
  if ($('body').hasClass('common-home')) {
    $(".section-space.featured").css("background","url('image/catalog/slicing/home/home_bg1.jpg')");
  }
</script>