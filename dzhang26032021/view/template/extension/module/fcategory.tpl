<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="button" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary" onclick="$('#form-featured').submit();"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-featured" class="form-horizontal">
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
            <div class="col-sm-10">
              <input type="text" name="name" value="<?php echo $name; ?>" placeholder="<?php echo $entry_name; ?>" id="input-name" class="form-control" />
              <?php if ($error_name) { ?>
              <div class="text-danger"><?php echo $error_name; ?></div>
              <?php } ?>
            </div>
          </div>  
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-name">中文 <?php echo $entry_name; ?></label>
            <div class="col-sm-10">
              <input type="text" name="cn_name" value="<?php echo $cn_name; ?>" placeholder="中文 <?php echo $entry_name; ?>" id="input-cn_name" class="form-control" />
              <?php if ($error_name) { ?>
              <div class="text-danger"><?php echo $error_name; ?></div>
              <?php } ?>
            </div>
          </div>  

          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-custom_description">中文 Description</label>
            <div class="col-sm-10">
              <input type="text" name="cn_custom_description" value="<?php echo $cn_custom_description; ?>" placeholder="中文 Description" id="input-cn_custom_description" class="form-control" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-custom_description">Description</label>
            <div class="col-sm-10">
              <input type="text" name="custom_description" value="<?php echo $custom_description; ?>" placeholder="Description" id="input-custom_description" class="form-control" />
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-cn_button_name">中文 Button Name</label>
            <div class="col-sm-10">
              <input type="text" name="cn_button_name" value="<?php echo $cn_button_name; ?>" placeholder="中文 Button Name" id="input-cn_button_name" class="form-control" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-button_name">Button Name</label>
            <div class="col-sm-10">
              <input type="text" name="button_name" value="<?php echo $button_name; ?>" placeholder="Button Name" id="input-button_name" class="form-control" />
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-button_link">Button Link</label>
            <div class="col-sm-10">
              <input type="text" name="button_link" value="<?php echo $button_link; ?>" placeholder="URL" id="input-button_link" class="form-control" />
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-product"><?php echo $entry_category; ?></label>
            <div class="col-sm-10">
              <input type="text" name="category" value="" placeholder="<?php echo $entry_category; ?>" id="input-product" class="form-control" />
              <div id="featured-category" class="well well-sm sortable-div" style="height: 150px; overflow: auto; margin-bottom: 4px;">
                <?php foreach ($categories as $category) { ?>
                <div id="featured-category<?php echo $category['category_id']; ?>" style="cursor: move;"><i class="fa fa-minus-circle"></i> <?php echo $category['name']; ?>
                  <input type="hidden" name="category[]" value="<?php echo $category['category_id']; ?>" />
                </div>
                <?php } ?>
              </div>
              <span class="help" style="color:green;">Click and drag the item to reorder</span>
            </div>
          </div>
          <div class="form-group hidden">
            <label class="col-sm-2 control-label" for="input-limit"><?php echo $entry_limit; ?></label>
            <div class="col-sm-10">
              <input type="text" name="limit" value="<?php echo $limit; ?>" placeholder="<?php echo $entry_limit; ?>" id="input-limit" class="form-control" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-width"><?php echo $entry_width; ?></label>
            <div class="col-sm-10">
              <input type="text" name="width" value="<?php echo $width; ?>" placeholder="<?php echo $entry_width; ?>" id="input-width" class="form-control" />
              <?php if ($error_width) { ?>
              <div class="text-danger"><?php echo $error_width; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-height"><?php echo $entry_height; ?></label>
            <div class="col-sm-10">
              <input type="text" name="height" value="<?php echo $height; ?>" placeholder="<?php echo $entry_height; ?>" id="input-height" class="form-control" />
              <?php if ($error_height) { ?>
              <div class="text-danger"><?php echo $error_height; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="status" id="input-status" class="form-control">
                <?php if ($status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
  <script type="text/javascript"><!--
$('input[name=\'category\']').autocomplete({
	source: function(request, response) {
		$.ajax({
			url: 'index.php?route=catalog/category/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
			dataType: 'json',
			success: function(json) {
				response($.map(json, function(item) {
					return {
						label: item['name'],
						value: item['category_id']
					}
				}));
			}
		});
	},
	select: function(item) {
		$('input[name=\'category\']').val('');
		
		$('#featured-category' + item['value']).remove();
		
		$('#featured-category').append('<div id="featured-category' + item['value'] + '" style="cursor: move;"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="category[]" value="' + item['value'] + '" /></div>');	
	}
});
	
$('#featured-category').delegate('.fa-minus-circle', 'click', function() {
	$(this).parent().remove();
});

// for drag and drop items
$(function() {
  $('.sortable-div').sortable();
});
// for drag and drop items
//--></script></div>
<?php echo $footer; ?>