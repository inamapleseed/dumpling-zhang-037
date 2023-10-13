<button id="articles-filter-trigger-open" class="btn btn-primary" onclick="$('#articles-column-left').addClass('open');" ><?= $button_filter; ?></button>
<div id="articles-column-left">
	<button id="articles-filter-trigger-close" class="btn btn-danger fixed position-right-top" onclick="$('#articles-column-left').removeClass('open');"> <i class="fa fa-times"></i> </button>
	<h3><?= $text_categories ?></h3>
	<div class="pd-b15">
		<div class="list-group news-ctgr">
		<?php foreach ($categories as $c) { ?>
			<div class="list-group-item">
				<a href="<?= $c['url'] ?>" class="block <?= $ncategory_id == $c['ncategory_id'] ? 'active' : '' ?>"><?= $c['name'] ?></a>
			</div>
		<?php } ?>
		</div>
	</div>
</div>
<script type="text/javascript">
$(document).ready(function () {
	$('#articles-column-left .toggle').on('click', function(e){
	
		e.preventDefault();
		ele = $(this).parents('.list-group-item');
		
		if(ele.hasClass('active')){
			ele.removeClass('active');
		}
		else{ 
			if(ele.hasClass('.level-1')){
				$('.level-1.active').removeClass('active');
			}
			else if(ele.hasClass('.level-2')){
				$('.level-2.active').removeClass('active');
			}
			
			ele.addClass('active');
		}
	});

});
</script>