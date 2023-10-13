<div class="custom-container" style="background: url(image/<?php echo $bgimage; ?>); background-size: cover; background-position: top left; background-repeat: no-repeat;">
	<?php if ($pagetitle): ?>
		<h2><?php echo $pagetitle; ?></h2>
	<?php endif ?>

	<?php if ($repeater): ?>
		<div class="content-con">
			<?php foreach ($repeater as $i => $re): ?>
				<div class="inner-con <?php echo $i % 2 ? 'even' : ''; ?>" data-aos="fade-up">
					<h3><?php echo $re['title1'] ?></h3>
					<img src="image/<?php echo $re['image1']; ?>" alt="image">
					<p><?php echo $re['stext']; ?></p>
				</div>
				<div class="arrow">
					<img src="image/<?php echo $arrow; ?>" alt="image">
				</div>
			<?php endforeach ?>
		</div>
	<?php endif ?>
	<div class="btn-con">
		<a href="<?php echo $url; ?>" class="fancy-orange btn btn-primary fancy-btn"><?php echo $btnname; ?><img src="image/catalog/slicing/general/button_bg-orange.png" alt="button" class="fancy"></a>
	</div>
</div>