
<div id="the-modal" class="modal fade">
    <div class="modal-dialog" style="margin-top: 200px">
        <div class="modal-content">
            <div class="modal-body">
                <button data-dismiss="modal">x</button>
                <?php if ($image): ?>
                    <div class="inner-cont">
                        <img style="width: 100%" src="image/<?php echo $image; ?>" alt="image">

                        <div class="text-con">
                            <h2><?php echo $title; ?></h2>
                            <p><?php echo $stext; ?></p>

                            <div class="btn-con">
                                <a href="<?php echo $url ?>" class="btn btn-primary fancy-btn">Shop Now
                                    <img src="image/catalog/slicing/general/button_bg-orange.png" alt="button" class="fancy">
                                </a>
                            </div>
                        </div>
                    </div>
                <?php endif ?>
            </div>

        </div>
    </div>
</div>

<?php if ($image || $title || $stext || $url): ?>
    <script>
        setTimeout(function(){
            $(document).ready(function(){
                $("#the-modal").modal('show');
            });
        }, 5000);
        
    </script>
<?php endif ?>