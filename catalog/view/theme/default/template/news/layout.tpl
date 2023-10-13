<?php echo $header; ?>
<div class="container">
  <?php echo $content_top; ?>
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <h2><?php echo $heading_title; ?></h2>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
      <?php echo $description; ?></div>
    <?php echo $column_right; ?></div>
    <?php echo $content_bottom; ?>
</div>
<?php echo $footer; ?>

<script type="text/javascript">
  let len = $(window).width();
  let html = $(".news-ncategory #news_latest").html();
  let h3 = $('.nl-h3').text();
  if (len < 991) {
    $(".news-ncategory #news_latest.bnews-list").hide();
    $(".nl-h3").hide();
    $("#articles-column-left").prepend("<h3>" + h3 + "</h3><div id='news_latest'>" + html + "</div>");
  }
</script>