<?php
class ControllerExtensionModuleFcategory extends Controller {
	public function index($setting) {
		$this->load->language('extension/module/fcategory');

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_tax'] = $this->language->get('text_tax');

		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');

		$this->load->model('catalog/category');

		$this->load->model('tool/image');

		$language_id = $this->config->get('config_language_id');
		$data['lan_id'] = $language_id;

		// if ($language_id === 2) {
			$data['cn_name'] = '';

			if (isset($this->request->post['cn_name'])) {
				$data['cn_name'] = $this->request->post['cn_name'];
			} elseif (!empty($setting)) {
				$data['cn_name'] = $setting['cn_name'];
			} else {
				$data['cn_name'] = '';
			}

			$data['cn_custom_description'] = '';

			if (isset($this->request->post['cn_custom_description'])) {
				$data['cn_custom_description'] = $this->request->post['cn_custom_description'];
			} elseif (!empty($setting)) {
				$data['cn_custom_description'] = $setting['cn_custom_description'];
			} else {
				$data['cn_custom_description'] = '';
			}

			$data['cn_button_name'] = '';

			if (isset($this->request->post['cn_button_name'])) {
				$data['cn_button_name'] = $this->request->post['cn_button_name'];
			} elseif (!empty($setting)) {
				$data['cn_button_name'] = $setting['cn_button_name'];
			} else {
				$data['cn_button_name'] = '';
			}
		// } elseif ($language_id === 1) {

			$data['button_name'] = '';

			if (isset($this->request->post['button_name'])) {
				$data['button_name'] = $this->request->post['button_name'];
			} elseif (!empty($setting)) {
				$data['button_name'] = $setting['button_name'];
			} else {
				$data['button_name'] = '';
			}
			$data['button_link'] = '';

			if (isset($this->request->post['button_link'])) {
				$data['button_link'] = $this->request->post['button_link'];
			} elseif (!empty($setting)) {
				$data['button_link'] = $setting['button_link'];
			} else {
				$data['button_link'] = '';
			}

			$data['custom_description'] = '';

			if (isset($this->request->post['custom_description'])) {
				$data['custom_description'] = $this->request->post['custom_description'];
			} elseif (!empty($setting)) {
				$data['custom_description'] = $setting['custom_description'];
			} else {
				$data['custom_description'] = '';
			}
		// }

		$data['categories'] = array();
		$data['heading_title'] = $setting['name'];

		if (!$setting['limit']) {
			$setting['limit'] = 10;
		}
			$setting['limit'] = 10;

		if (!empty($setting['category'])) {
			$categories = array_slice($setting['category'], 0, (int)$setting['limit']);

			foreach ($categories as $category_id) {
				$category_info = $this->model_catalog_category->getCategory($category_id);

				if ($category_info) {
					if ($category_info['image']) {
						$image = 'image/'.$category_info['image'];
					} else {
						$image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
					}

					$data['categories'][] = array(
						'category_id'  => $category_info['category_id'],
						'thumb'       => $image,
						'name'        => $category_info['name'],
						'description' => utf8_substr(strip_tags(html_entity_decode($category_info['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
						'href'        => $this->url->link('product/category', 'path=' . $category_info['category_id'])
					);
				}
			}
		}

		if ($data['categories']) {
			if(isset($setting['return_json']) && $setting['return_json'] === true){
				return $data;
			}

			return $this->load->view('extension/module/fcategory', $data);
		}
	}
}