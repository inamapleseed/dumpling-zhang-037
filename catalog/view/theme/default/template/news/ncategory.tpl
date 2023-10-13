<?php if ($article) { ?>
	<div class="news-list-wrap flex flex-wrap">
		<?php foreach ($article as $articles) { ?>
			<div class="news-post b4-col b4-col-100p pd-t15 pd-b15" data-aos="fade-up">

				<div class="mg-b30 relative hover-overlay">
					<?php if ($articles['thumb']) { ?>
					<a href="<?php echo $articles['href']; ?>">
						<div class="cover-bg center-bg pd-b80p" style="background-image:url('<?php echo $articles['thumb']; ?>');"></div>
						<?php /* ?>
						<img class="article-image img-responsive" src="" title="<?php echo $articles['name']; ?>" alt="<?php echo $articles['name']; ?>" />
						<?php */ ?>
					</a>
					<?php } ?>
					<div class="to-overlay">
						<a href="<?php echo $articles['href']; ?>" class="block absolute position-all0">
							<div class="absolute position-center-center colorwhite"><i class="fa fa-search fa-2em"></i></div>
						</a>
					</div>
				</div>
				<div class="art-dets">
					<?php if ($articles['name']) { ?>
						<div class="article-name bold pd-b15"><a href="<?php echo $articles['href']; ?>"><?php echo $articles['name']; ?></a></div>
					<?php } ?>
			<!-- 		<?php if ($articles['date_added']) { ?>
						<div class="pd-b15"><?php echo $articles['date_added']; ?></div>
					<?php } ?> -->
					<?php if ($articles['description']) { ?>
						<div class="article-description pd-b15"><?php echo $articles['description']; ?></div>
					<?php } ?>
					<?php if ($articles['button']) { ?>
						<div class="article-button"><a href="<?php echo $articles['href']; ?>" class="btn fancy-btn btn-primary"><?php echo $button_read_more; ?><img src="image/catalog/slicing/general/button_bg-orange.png" alt="button" class="fancy"></a></div>
					<?php } ?>
				</div>
			</div>
		<?php } ?>
  </div>
  <div class="text-center pd-b60"><?php echo $pagination; ?></div>
<?php } ?>