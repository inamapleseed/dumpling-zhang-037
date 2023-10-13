<div class="" data-aos="fade-left">
	<div class="pd-30 pd-md-60 inner-con" style="padding-bottom: 0">
		<?php if ($thumb) { ?>
		<div class="pd-b30 text-center the-img">	
			<img class="w100" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
		</div>
		<?php } ?>

		<div class="flex flex-vcenter">
			<div class="pd-r15" style="color: #B33820; text-transform: uppercase; font-weight: bold;"><?= $text_share; ?>:</div>
			<div><?= $share_html ?></div>
		</div>

		<div style="color: darkgrey; padding: 10px 0 20px;"><i class="fa fa-calendar" style="margin-right: 10px"></i><?php echo $date_added; ?></div>

		<div class="title"><h3 class="bold"><?php echo $news_title; ?></h3></div>

		<div class="pd-b15"><?php echo $description; ?></div>


	</div>

	<div class="custom_arrows">
		<div>
			<a class="btn btn-primary fancy-btn" style="opacity: 1;" <?php if ($prev_news): ?>
				href="<?php echo $prev_news; ?>"
				<?php else: ?>
					disabled
			<?php endif ?>><?php echo $prev_button; ?>
				<?php if ($prev_news): ?>
					<img src="image/catalog/slicing/general/button_bg-orange.png" alt="button" class="fancy">
				<?php else: ?>
					<img src="image/catalog/slicing/general/button_bg-grey.png" alt="button" class="fancy">
				<?php endif ?>
			</a>
		</div>

		<div>
			<a class="btn btn-primary fancy-btn" style="opacity: 1;" <?php if ($next_news): ?>
				href="<?php echo $next_news; ?>"
				<?php else: ?>
					disabled
			<?php endif ?>><?php echo $next_button; ?>
				<?php if ($next_news): ?>
					<img src="image/catalog/slicing/general/button_bg-orange.png" alt="button" class="fancy">
				<?php else: ?>
					<img src="image/catalog/slicing/general/button_bg-grey.png" alt="button" class="fancy">
				<?php endif ?>
			</a>
		</div>
	</div>

	<?php if ($related_products_slider) { ?>
	<?= $related_products_slider ?>
	<?php } ?>
</div>