<?php echo $header; ?>
<div class="container">
	<?php echo $content_top; ?>
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
      <h2><?php echo $heading_title; ?></h2>
      
		<?php if($faq_manager_status && $faq_managers) { ?>
			<?php foreach($faq_managers as $section) { ?>
				<div data-aos="fade-up" class="panel-group" id="accordion-<?php echo $section['counter']; ?>" role="tablist" aria-multiselectable="true">
					<h3><?php echo $section['section_title']; ?></h3>
					
					<?php foreach($section['sub_sections'] as $key => $value)  { ?>						
						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="heading<?php echo $value['inner_counter']; ?>">
								<h4 class="panel-title">
									<a role="button" data-toggle="collapse" data-parent="#accordion-<?php echo $section['counter']; ?>" href="#collapse<?php echo $value['inner_counter']; ?>" aria-expanded="true" aria-controls="collapse<?php echo $value['inner_counter']; ?>"><?php echo $value['question']; ?></a>
								</h4>
								<a role="button" data-toggle="collapse" data-parent="#accordion-<?php echo $section['counter']; ?>" href="#collapse<?php echo $value['inner_counter']; ?>" aria-expanded="true" aria-controls="collapse<?php echo $value['inner_counter']; ?>">
									<div class="caret"></div>
								</a>
							</div>
							
							<div id="collapse<?php echo $value['inner_counter']; ?>" class="panel-collapse collapse <?php if($value['inner_counter'] == 1) { echo "in"; } ?>" role="tabpanel" aria-labelledby="heading<?php echo $value['inner_counter']; ?>">
								<div class="panel-body"><?php echo $value['answer']; ?></div>
							</div>							
						</div>						
					<?php } ?>				
				</div>
			<?php } ?>
		<?php } else { ?>
			<div class="row">
				<div class="col-sm-12">
					<div class="well well-sm text-center"><?php echo $text_no_faq_found; ?></div>
				</div>
			</div>
		<?php } ?>
      </div>
    <?php echo $column_right; ?></div>
		<?php echo $content_bottom; ?>
</div>
<?php echo $footer; ?>
