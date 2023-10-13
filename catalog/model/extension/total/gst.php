<?php
class ModelExtensionTotalGst extends Model {
	public function getTotal($total) {
		$this->load->language('extension/total/gst');
		$total['totals'][] = array(
			'code'       => 'gst',
			'title'      => sprintf($this->language->get('text_total'),'8'),
			'value'      => ($total['total']/108) * 8,
			'sort_order' => $this->config->get('gst_sort_order')
		);
//                debug($total);
	}
}