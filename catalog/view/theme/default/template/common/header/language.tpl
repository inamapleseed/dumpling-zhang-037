<?php if (count($languages) > 1) { ?>
  <div class="pull-left lang">
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-language">
      <?php foreach ($languages as $i => $language) { ?>
        <button class="btn btn-link btn-block language-select" type="button" name="<?php echo $language['code']; ?>">
        <?php echo $language['name']; ?></button>
      <?php } ?>
      <input type="hidden" name="code" value="" />
      <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
    </form>
  </div>
<?php } ?>
