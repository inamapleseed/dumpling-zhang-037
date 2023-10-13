<div id="footer-area" style="background: url('image/catalog/slicing/footer/footer_bg.jpg'); background-size: cover; background-repeat: no-repeat; background-position: bottom right;">

<footer>
	<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

	<link href="catalog/view/javascript/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" />

	<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
	<link href="catalog/view/theme/default/stylesheet/sass/mystylesheet.css" rel="stylesheet">

	<?php /* // combined to combined.min.css ?>
	<!-- <link href="catalog/view/javascript/smartmenus/sm-core-css.min.css" rel="stylesheet"> --> <!--Added in sidr_bare_sm_core_css_sass_icon.css -->
	<link href="catalog/view/javascript/smartmenus/sm-blue.min.css" rel="stylesheet">
	<!-- <link href="catalog/view/javascript/side-menu-sidr/stylesheets/sidr.bare.min.css" rel="stylesheet"> --> <!--Added in sidr_bare_sm_core_css_sass_icon.css -->
	<link href="catalog/view/javascript/jquery-multi-level-accordion-menu/css/style.min.css" rel="stylesheet">

	<link href="catalog/view/theme/default/stylesheet/normalize.min.css" rel="stylesheet">
	<!-- <link href="catalog/view/theme/default/stylesheet/sass/icon.min.css" rel="stylesheet"> --> <!--Added in sidr_bare_sm_core_css_sass_icon.css -->
	<link href="catalog/view/theme/default/stylesheet/sidr_bare_sm_core_css_sass_icon.css" rel="stylesheet">

	<link href="catalog/view/javascript/aos/aos.css" rel="stylesheet">

	<link href="catalog/view/javascript/sweetalert2.min.css" rel="stylesheet">
	<?php */ // combined to combined.min.css ?>

	<?php /* seldom use */ /* ?>
	<link href="catalog/view/theme/default/stylesheet/animate.min.css" rel="stylesheet">
	<?php */ ?>

	<link href="catalog/view/theme/default/stylesheet/combined.min.css" rel="stylesheet">

	<link href="catalog/view/theme/default/stylesheet/sass/helper.min.css" rel="stylesheet">
	<link href="catalog/view/theme/default/stylesheet/sass/custom.min.css" rel="stylesheet">
	<link href="catalog/view/theme/default/stylesheet/pagination-breadcrumb.css" rel="stylesheet">

	<?php if($class != 'common-home') { ?>
	<link href="catalog/view/theme/default/stylesheet/slsoffr.min.css" rel="stylesheet">
	<?php } ?>

	<?php foreach ($styles as $style) { ?>
		<link href="<?=$style['href']; ?>" type="text/css" rel="<?=$style['rel']; ?>" media="<?=$style['media']; ?>" />
	<?php } ?>

	<script defer="defer" src="https://cdn.jsdelivr.net/npm/vanilla-lazyload@17.3.0/dist/lazyload.min.js"></script>
	<script>
	$(window).load(function() {
		var lazyLoadInstance = new LazyLoad({
		// Your custom settings go here
		});
	});
	</script>

	<div class="container">
		<div class="footer-upper-contet">

			<div class="footer-contact-info">
				<img src="image/<?php echo $icon; ?>">
				<h5><?= $store; ?></h5>
				<p><?php echo $comment; ?></p>
			</div>

			<?php if ($menu) { ?>
				<?php foreach($menu as $menu_count => $links){ ?>
				<div class="footer-contact-links" id="id_<?=$menu_count;?>">
					<h5>
						<?php if($links['href'] != '#'){ ?>
						<?= $links['name']; ?>
						<?php }else{ ?>
						<a href="<?= $links['href']; ?>" 
							<?php if($links['new_tab']){ ?>
								target="_blank"
							<?php } ?>
							>
							<?= $links['name']; ?></a>
						<?php } ?>
					</h5>
					<?php if($links['child']){ ?>
					<ul class="list-unstyled">
						<?php foreach ($links['child'] as $each) { ?>
						<li><a href="<?= $each['href']; ?>"
							<?php if($each['new_tab']){ ?>
								target="_blank"
							<?php } ?>
							
							>
								<?= $each['name']; ?></a></li>
						<?php } ?>
					</ul>
					<?php } ?>
				
				</div>
				<?php } ?>
			<?php } ?>

			<div class="newsletter-section">
				<?= $mailchimp; ?>

				<?php if($social_icons){ ?>
					<div class="soc-med">
						<h5 class="orange"><?php echo $follow_us; ?></h5>
						<div class="footer-social-icons">
							<?php foreach($social_icons as $icon){ ?>
							<a href="<?= $icon['link']; ?>" title="<?= $icon['title']; ?>" alt="
										<?= $icon['title']; ?>" target="_blank">
								<img data-src="<?= $icon['icon']; ?>" title="<?= $icon['title']; ?>" class="img-responsive lazy" alt="<?= $icon['title']; ?>" />
							</a>
							<?php } ?>
						</div>
					</div>
				<?php } ?>
			</div>
		</div>
		
		<hr/>
	</div>
	<div class="footer-bottom ">
		<div class="">
			<p><?= $powered; ?></p>
		</div>
		<div class="">
			<p><?= $text_fcs; ?></p>
		</div>
	</div>
</footer>
</div>
<div id="ToTopHover" ></div>

<?php if(isset($update_price_status) && $update_price_status) { ?>
	<script type="text/javascript">
    $(".product-inputs input[type='checkbox']").click(function() {
      var product_id = $(this).data('product-id');
      changePrice(product_id);
    });
    $(".product-inputs input[type='radio']").click(function() {
      var product_id = $(this).data('product-id');
      changePrice(product_id);
    });
    $(".product-inputs select").change(function() {
      var product_id = $(this).data('product-id');
      changePrice(product_id);
    });
    $(".product-inputs .input-number").blur(function() {
      var product_id = $(this).data('product-id');
      changePrice(product_id);
    });
    $(".product-inputs .input-number").parent(".input-group").find(".btn-number").click(function() {
      var product_id = $(this).data('product-id');
      changePrice(product_id);
    });
    function changePrice(product_id) {
      $.ajax({
        url: 'index.php?route=product/product/updatePrice&product_id=' + product_id,
        type: 'post',
        dataType: 'json',
        data: $('#product-'+ product_id + ' input[name=\'quantity\'], #product-'+ product_id + ' select, #product-'+ product_id + ' input[type=\'checkbox\']:checked, #product-'+ product_id + ' input[type=\'radio\']:checked'),
        success: function(json) {
          $('.alert-success, .alert-danger').remove();
          if(json['new_price_found']) {
            $('.product-price-'+product_id+' .price .price-new').html(json['total_price']);
            $('.product-price-'+product_id+' .price .price-tax').html(json['tax_price']);
          } else {
            $('.product-price-'+product_id+' .price .price-new').html(json['total_price']);
            $('.product-price-'+product_id+' .price .price-tax').html(json['tax_price']);
          }
        }
      });
    }
	</script>
<?php } ?>
<script>
	$(window).load(function(){
		AOS.init({
			once: true
		});
	});
</script>

<script type="text/javascript">
	let bread = $(".breadcrumb").html();
	$(".breadcrumb").hide();
	$(".page-banner-title").append("<ul class='breadcrumb breading'>" + bread + "</ul>");
</script>
<script type="text/javascript">
	$('.cart-dorpdown-footer .btn').addClass('btn-primary').removeClass('btn-default');
	$('.checkout-cart .buttons .pull-left a').addClass('btn-primary');
	$('.glyphicon-plus').removeClass('glyphicon');
	$('.checkout-cart .buttons .pull-left a').addClass('btn-primary');
	$('.account-edit .buttons .pull-left a').addClass('btn-primary');
	$('.account-address .buttons .pull-left a').addClass('btn-primary');
	$('.cart-dorpdown-footer .btn-default').addClass('btn-primary');
	$('.glyphicon-plus').removeClass('glyphicon');
</script>   
<?php 
/* extension bganycombi - Buy Any Get Any Product Combination Pack */
echo $bganycombi_module; 
?>
</body></html>