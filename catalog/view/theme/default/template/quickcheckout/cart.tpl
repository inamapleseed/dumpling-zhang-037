<div class="table-responsive">
	<table class="quickcheckout-cart">
		<thead>
			<tr>
				<td class="image"><?php echo $column_image; ?></td>
				<td class="name"><?php echo $column_name; ?></td>
				<td class="quantity"><?php echo $column_quantity; ?></td>
				<td class="price1"><?php echo $column_price; ?></td>
				<td class="total"><?php echo $column_total; ?></td>
			</tr>
		</thead>
		<?php if ($products || $vouchers) { ?>
			<tbody>
				<?php foreach ($products as $product) { ?>
					<tr class="main-tr">
							<td class="image"><?php if ($product['thumb']) { ?>
								<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
								<?php } ?>
							</td>

							<td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?><br/> [<?= $button_view; ?>]</a>
								<div>
									<?php foreach ($product['option'] as $option) { ?>
										<?php if ($option['type'] != 'file') { ?>
											<small><?php echo $option['name']; ?>: <?= $option['value'] . $option['price']; ?></small><br />
										<?php } else { ?>
											<small>
												<?= $option['name']; ?>:
												<a href="<?= $option['href']; ?>"><?= $option['value']; ?></a>
											</small><br />
										<?php } ?>
									<?php } ?>
									<?php if ($product['reward']) { ?>
									<br />
									<small><?php echo $product['reward']; ?></small>
									<?php } ?>
									<?php if ($product['recurring']) { ?>
									<br />
									<span class="label label-info"><?php echo $text_recurring_item; ?></span> <small><?php echo $product['recurring']; ?></small>
									<?php } ?>
								</div>
							</td>

							<td class="quantity"><?php if ($edit_cart) { ?>
								<div class="input-group btn-block">
									<input type="text" name="quantity[<?php echo $product['key']; ?>]" size="1" value="<?php echo $product['quantity']; ?>" class="form-control" />

									<div class="input-group-btn" style="display: flex; flex-direction: row !important;">
				    					<button data-toggle="tooltip" title="<?php echo $button_update; ?>" class="btn button-update"><i class="fa fa-refresh"></i></button>
				    					<button data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger button-remove" data-remove="<?php echo $product['key']; ?>"><i class="fa fa-times-circle"></i></button>
									</div>
								</div>
								<?php } else { ?>
								x&nbsp;<?php echo $product['quantity']; ?>
								<?php } ?>
							</td>

						<td class="price1 p1"><span class="visible-xs visible-sm">Price: </span><?php echo $product['price']; ?></td>
						<td class="total t1"><span class="visible-xs visible-sm">Total: </span><div><?php echo $product['total']; ?></div></td>
					</tr>
				<?php } ?>
				<?php foreach ($vouchers as $voucher) { ?>
					<tr>
						<td class="image"><a href="<?= $voucher['href'] ?>"><?= '<img src="'.$voucher['image'].'" class="img-responsive" />' ?></a></td>
						<td class="name"><a href="<?= $voucher['href'] ?>"><?php echo $voucher['description']; ?> <br/> [<?= $button_view; ?>]</a></td>
						<td class="quantity">x&nbsp;1</td>
						<td class="price1"><?php echo $voucher['amount']; ?></td>
						<td class="total"><?php echo $voucher['amount']; ?></td>
					</tr>
				<?php } ?>
				<?php foreach ($totals as $i => $total) { ?>
					<tr class="totality<?php echo $i;?> totality">
						<td class="text-right" colspan="4"><b><?php echo $total['title']; ?>:</b></td>
						<td class="text-right"><?php echo $total['text']; ?></td>
					</tr>
				<?php } ?>
			</tbody>
		<?php } ?>
	</table>
</div>

<script type="text/javascript">
	let bwidth = $(".quickcheckout-cart tbody").width();
	let wwidth = $(window).width();
	if ($(wwidth < 768)) {
		$('.main-tr').css("width", bwidth);
	}
</script>

<style type="text/css">
	@media (max-width: 767px) {
		.quickcheckout-checkout thead {
			display: none;
		}
		.quickcheckout-checkout .quickcheckout-content .quickcheckout-cart {
			width: 100%;
		}
		.quickcheckout-cart tbody tr {
			width: 100% !important;
			display: flex;
			flex-direction: row;
			flex-wrap: wrap;

		}
		.main-tr .image {
			width: 10% !important;
		}
		.main-tr .name {
			text-align: center !important;
			width: 60% !important;
		}
		.main-tr .quantity {
			width: 30% !important;
			min-width: 1px !important;
		}
		.main-tr .quantity .input-group {
			flex-wrap: wrap;
		}
		.main-tr .quantity .input-group .input-group-btn {
			width: 100%;
		}
		.main-tr .quantity .input-group button {
			width: 50% !important;
		}
		.main-tr .button-update {
			min-width: 1px !important;
		}
		.main-tr .quantity .input-group input {
			border: 1px solid #ccc;
			width: 80px !important;
		}
		.p1, .t1 {
			display: flex;
			width: 100% !important;
			justify-content: space-between;
		}
		.totality0 {
			border-top: 2px solid #000;
		}
		.totality {
			display: flex;
			justify-content: space-between;
		}
	}
</style>