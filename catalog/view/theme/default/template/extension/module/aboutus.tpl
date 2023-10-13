<div class="about-container">
	<?php foreach ($repeater as $i => $re): ?>
		<div class="about-inner <?php echo $i % 2 ? 'even' : ''; ?>">
			<div class="images" data-aos="fade-left">
				<img src="image/<?=$re['image'];?>" alt="image">
			</div>

			<div class="text-content" data-aos="fade-right">
				<?= html($re['text']);?>
			</div>
		</div>
	<?php endforeach ?>
</div>

<script type="text/javascript">
	$('.aboutus').removeClass('max-offset', 'section-space');
</script>