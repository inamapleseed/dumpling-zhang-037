<div id="payment" class="text-left" style="display:none;"></div>
<div class="terms">
	<div class="terms-inner">
		<label><input checked="checked"  style="margin-top: 0" type="checkbox"> <?php echo $text_agree_faq;?></label>
		<label><?php if ($text_agree) { ?>
			<input type="checkbox" checked="checked" name="agree" value="1" />
			<?php echo $text_agree; ?>
		<?php } ?></label>
	</div>
	<button type="button" id="button-payment-method" class="btn btn-primary" data-loading-text="<?php echo $text_loading; ?>"><?php echo $button_continue; ?></button>
</div>
<style type="text/css">
	.terms-inner {
	    text-align: left;
	    margin-left: auto;
		flex-direction: column;
		display: flex;
	}
	@media (min-width: 992px) {
		.terms-inner {
			width: 32%;
		}
	}

	@media (min-width: 768px) and (max-width: 991px) {
		.terms-inner {
			width: 50%;
		}
	}

	@media (max-width: 768px) {
		.terms #button-payment-method {
			margin-left: 0 !important;
		}
		.terms {
			justify-content: flex-end;
			align-items: center;
		}
		.terms-inner {
			align-items: center !important;
			flex-direction: column;
			display: flex;
			align-items: flex-start;
		}
		.terms-inner label {
			text-align: center !important;
		}
	}
</style>