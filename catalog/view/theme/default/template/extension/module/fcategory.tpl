<div class="feat-con">
	<div class="feat-cats-text">
		<h2><?php echo $lan_id == '2' ? $cn_name : $heading_title; ?></h2>
		<p><?php echo $lan_id == '2' ? $cn_custom_description : $custom_description; ?></p>

		<div class="btn-con">
			<a href="<?php echo $button_link; ?>" class="fancy-btn btn btn-primary"><?php echo $lan_id == '2' ? $cn_button_name : $button_name; ?>
			<img src="image/catalog/slicing/general/button_bg-red.png" alt="button" class="fancy"></a>
		</div>

		<div class="nav-con">
			<div class="left"><i class="fa fa-chevron-left"></i></div>
			<div class="right"><i class="fa fa-chevron-right"></i></div>
		</div>
	</div>

	<div class="feat-cats-con">
		<?php foreach ($categories as $category) { ?>
			<div class="">
				<a href="<?php echo $category['href']; ?>"></a>
				<div class="img-con">
					<img data-src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>" title="<?php echo $category['name']; ?>" class="lazy" />
				</div>
				<div class="title-overlay">
					<h4><?php echo $category['name']; ?></h4>
				</div>
				<img src="image/catalog/slicing/home/featured-decor.png" alt="image" class="decor bottom">
				<img src="image/catalog/slicing/home/featured-decor.png" alt="image" class="decor top">
	      </div>
	  <?php } ?>
	</div>
</div>

<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<script type="text/javascript">
	$('.nav-con .right').on("click", function(){
		$('.fcategory .slick-nav.right').click();
	})
	$('.nav-con .left').on("click", function(){
		$('.fcategory .slick-nav.left').click();
	})
</script>

<script type="text/javascript">
  function initSlick33() {
    $('.feat-cats-con').slick({
      dots: false,
      infinite: true,
      speed: 500,
      arrows: true,
      pauseOnHover: false,
      autoplay: false,
      slidesToShow: 5,
      responsive: [
      {
        breakpoint: 1200,
        settings: {
	      arrows: true,
	      autoplay: false,
          slidesToShow: 3
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
	      arrows: true,
	      autoplay: false,
          slidesToShow: 1
        }
      },
      ],
		prevArrow: "<div class='pointer slick-nav left prev absolute'><div class='absolute position-center-center'><i class='fa fa-chevron-left'></i></div></div>",
		nextArrow: "<div class='pointer slick-nav right next absolute'><div class='absolute position-center-center'><i class='fa fa-chevron-right'></i></div></div>",

    });
  }
  initSlick33();
</script>
