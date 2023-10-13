<h3><?= $product_name; ?></h3>
<h3 class="cn-name"><?php echo $mpn; ?></h3>

<?php if ($price && !$enquiry) { ?>
  <ul class="list-unstyled price-con">
    <?php if (!$special) { ?>
    <li>
      <div class="product-price old-prices" ><?= $price; ?></div>
    </li>
    <?php } else { ?>
    <li>
      <div class="product-special-price new-prices"><?= $special; ?></div>
    </li>
    <li><span style="text-decoration: line-through;" class="old-prices"><?= $price; ?></span></li>
    <?php } ?>
    <?php if ($tax) { ?>
    <li class="product-tax-price product-tax" ><?= $text_tax; ?> <?= $tax; ?></li>
    <?php } ?>
    <?php if ($points) { ?>
    <li><?= $text_points; ?> <?= $points; ?></li>
    <?php } ?>
    <?php if ($discounts) { ?>
    <li>
      <hr>
    </li>
    <?php foreach ($discounts as $discount) { ?>
    <li><?= $discount['quantity']; ?><?= $text_discount; ?><?= $discount['price']; ?></li>
    <?php } ?>
    <?php } ?>
  </ul>
<?php } ?>

<?php if($enquiry){ ?>
<div class="enquiry-block" style="margin: 15px 0 20px;">
  <div class="label label-danger">
    Price Unavailable
  </div>
</div>
<?php } ?>

<div class="product-description">
  <?php if ($attribute_groups || $description || $review_status || isset($available_offers['tab']) && $available_offers['tab'] ) { ?>
    <ul id="product-tabs" class="nav nav-tabs">
      <?php if(isset($available_offers['tab']) && $available_offers['tab']) { ?>
        <li><a href="#tab-available-offers" data-toggle="tab"><?php echo $tab_available_offers; ?></a></li>
      <?php } ?>

      <?php if ($description) { ?>
        <li class="active"><a href="#tab-prod-desc" data-toggle="tab">Product Description</a></li>
      <?php } ?>

      <?php if ($attribute_groups) { ?>

        <?php foreach ($attribute_groups as $index_1 => $attribute_group) { ?>
          <?php foreach ($attribute_group['attribute'] as $index_2 => $attribute) { ?>
            <li class="" >
              <a href="#tab-attribute-<?= $index_1; ?>-<?= $index_2; ?>" data-toggle="tab"><?= $attribute['name']; ?></a>
            </li>
          <?php } ?>
        <?php } ?>
      <?php } ?>

      <?php if ($review_status) { ?>
        <li><a href="#tab-review" data-toggle="tab"><?= $tab_review; ?></a></li>
      <?php } ?>
    </ul>

    <div class="tab-content">
      <?php if(isset($available_offers['tab']) && $available_offers['tab']) { ?>
        <div class="tab-pane" id="tab-available-offers"><?php echo $available_offers['tab']; ?></div>
      <?php } ?>

      <?php if ($description): ?>
        <div class="tab-pane active" id="tab-prod-desc">
          <?= $description; ?>
        </div>
      <?php endif ?>

      <?php if ($attribute_groups) { ?>
        <?php foreach ($attribute_groups as $index_1 => $attribute_group) { ?>
          <?php foreach ($attribute_group['attribute'] as $index_2 => $attribute) { ?>
            <div class="tab-pane <?= !$index_2?'active':''; ?>" id="tab-attribute-<?= $index_1; ?>-<?= $index_2; ?>">
              <?= html($attribute['text']); ?>
            </div>
          <?php } ?> 
        <?php } ?>
      <?php } ?>

      <?php if ($review_status) { ?>
        <div class="tab-pane" id="tab-review">
          <form class="form-horizontal" id="form-review">
            <div id="review"></div>
            <h3><?= $text_write; ?></h3>
            <?php if ($review_guest) { ?>
              <?php if ( $purchased ) { ?>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-name"><?= $entry_name; ?></label>
                    <input type="text" name="name" value="<?= $customer_name; ?>" id="input-name" class="form-control" />
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-review"><?= $entry_review; ?></label>
                    <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                    <div class="help-block"><?= $text_note; ?></div>
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label"><?= $entry_rating; ?></label>
                    &nbsp;&nbsp;&nbsp; <?= $entry_bad; ?>&nbsp;
                    <input type="radio" name="rating" value="1" />
                    &nbsp;
                    <input type="radio" name="rating" value="2" />
                    &nbsp;
                    <input type="radio" name="rating" value="3" />
                    &nbsp;
                    <input type="radio" name="rating" value="4" />
                    &nbsp;
                    <input type="radio" name="rating" value="5" />
                    &nbsp;<?= $entry_good; ?></div>
                </div>
                <?php // below "col-sm-12" is fix for offset negative margin left right in the recaptcha markup ?>
                <div class="col-sm-12"><?= $captcha; ?></div>
                <div class="buttons clearfix">
                  <div class="pull-right">
                    <button type="button" id="button-review" data-loading-text="<?= $text_loading; ?>" class="btn btn-primary"><?= $button_continue; ?></button>
                  </div>
                </div>
              <?php } else { ?>
                <?= $text_purchase ?>
              <?php } ?>
            <?php } else { ?>
                <?= $text_login; ?>
            <?php } ?>
          </form>
        </div>
      <?php } ?>
    </div>
  <?php } ?>
</div>

<?php include_once('product_options.tpl'); ?>

<?= $waiting_module; ?>

<?php if ($review_status) { ?>
  <div class="rating">
    <p>
      <?php for ($i = 1; $i <= 5; $i++) { ?>
      <?php if ($rating < $i) { ?>
      <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
      <?php } else { ?>
      <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
      <?php } ?>
      <?php } ?>
      <a href="javascript:;" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?= $reviews; ?></a> / <a href="javascript:;" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?= $text_write; ?></a></p>
  </div>
<?php } ?>