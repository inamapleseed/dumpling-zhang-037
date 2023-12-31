<?php
class ControllerAccountAccount extends Controller {
	public function index() {
		if (!$this->customer->isLogged()) {
			$this->session->data['redirect'] = $this->url->link('account/account', '', true);

			$this->response->redirect($this->url->link('account/login', '', true));
		}
		$this->load->language('account/account');

		//Redirect if got any session set
		if (isset($this->session->data['redirect'])) {
			$redirect = $this->session->data['redirect'];
			unset($this->session->data['redirect']);
			$this->response->redirect($redirect);
		}
		$this->document->setTitle($this->language->get('heading_title'));

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_account'),
			'href' => $this->url->link('account/account', '', true)
		);

		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		} 

		$data['heading_title'] = $this->language->get('heading_title');
		$data['text_my_account'] = $this->language->get('text_my_account');
		$data['text_my_orders'] = $this->language->get('text_my_orders');
		$data['text_my_newsletter'] = $this->language->get('text_my_newsletter');
		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_password'] = $this->language->get('text_password');
		$data['text_address'] = $this->language->get('text_address');
		$data['text_credit_card'] = $this->language->get('text_credit_card');
		$data['text_wishlist'] = $this->language->get('text_wishlist');
		$data['text_order'] = $this->language->get('text_order');
		$data['text_download'] = $this->language->get('text_download');
		$data['text_reward'] = $this->language->get('text_reward');
		$data['text_return'] = $this->language->get('text_return');
		$data['text_transaction'] = $this->language->get('text_transaction');
		$data['text_newsletter'] = $this->language->get('text_newsletter');
		$data['text_recurring'] = $this->language->get('text_recurring');
		/* completecombo */
		if($this->config->get("offerpage_installed")) {
          	$this->load->language('offers/salescombopge');
          	$data['text_salescombopge_heading'] = $this->language->get('text_salescombopge_heading_accountpage');
          	$data['salescombopge_info'] = array();
          	$this->load->model('offers/salescombopge');
          	$salescombopge_info = $this->model_offers_salescombopge->getPages();
          	foreach ($salescombopge_info as $key => $value) {
            	if($value['top']) {
              		$data['salescombopge_info'][] = array(
	                	'name'=> $value['title'],
	                	'href' => $this->url->link('offers/salescombopge', 'page_id=' .  $value['salescombopge_id'])
	              	);
        		}  
          	}
        }

        // debug($salescombopge_info);exit;
		/* completecombo */

		$data['update_my_profile'                    ]	= $this->language->get('update_my_profile');
		$data['access_your_account_details'          ]	= $this->language->get('access_your_account_details');
		$data['update_my_password'                   ]	= $this->language->get('update_my_password');
		$data['keeps_your_security_accesses_in_check']	= $this->language->get('keeps_your_security_accesses_in_check');
		$data['my_order_history'                     ]	= $this->language->get('my_order_history');
		$data['keeps_track_of_your_orders'           ]	= $this->language->get('keeps_track_of_your_orders');

		$data['my_enquiry_history'                   ]	= $this->language->get('my_enquiry_history');
		$data['keeps_track_of_your_enqueries'        ]	= $this->language->get('keeps_track_of_your_enqueries');

		$data['my_address_book'                      ]	= $this->language->get('my_address_book');
		$data['keeps_track_of_your_addresses'        ]	= $this->language->get('keeps_track_of_your_addresses');

		$data['my_reward_points'                      ]	= $this->language->get('my_reward_points');
		$data['keeps_track_of_your_reward_points'        ]	= $this->language->get('keeps_track_of_your_reward_points');

		$data['my_membership_records'                      ]	= $this->language->get('my_membership_records');	
		$data['keeps_track_of_your_membership_records'        ]	= $this->language->get('keeps_track_of_your_membership_records');

		$data['edit'] = $this->url->link('account/edit', '', true);
		$data['password'] = $this->url->link('account/password', '', true);
		$data['address'] = $this->url->link('account/address', '', true);
		$data['enquiry'] = $this->url->link('account/enquiry', '', true);
		
		$data['credit_cards'] = array();
		
		$files = glob(DIR_APPLICATION . 'controller/extension/credit_card/*.php');
		
		foreach ($files as $file) {
			$code = basename($file, '.php');
			
			if ($this->config->get($code . '_status') && $this->config->get($code . '_card')) {
				$this->load->language('extension/credit_card/' . $code);

				$data['credit_cards'][] = array(
					'name' => $this->language->get('heading_title'),
					'href' => $this->url->link('extension/credit_card/' . $code, '', true)
				);
			}
		}
		
		$data['wishlist'] = $this->url->link('account/wishlist');
		$data['order'] = $this->url->link('account/order', '', true);
		$data['download'] = $this->url->link('account/download', '', true);
		
		if ($this->config->get('reward_status')) {
			$data['reward'] = $this->url->link('account/reward', '', true);
		} else {
			$data['reward'] = '';
		}		
		
		$data['return'] = $this->url->link('account/return', '', true);
		$data['transaction'] = $this->url->link('account/transaction', '', true);
		$data['newsletter'] = $this->url->link('account/newsletter', '', true);
		$data['recurring'] = $this->url->link('account/recurring', '', true);

		$loyalty_status = $this->config->get('loyalty_program_status');
		$data['membership'] = "";
		$data['cur_customer_group'] = "";
		if(isset($loyalty_status) && $loyalty_status == 1){
			$data['membership'] = $this->url->link('account/membership_records', '', true);	
			if($this->customer->getGroupId() > 1) {	
				$this->load->model('account/customer_group');	
				$cust_group = $this->model_account_customer_group->getCustomerGroup($this->customer->getGroupId());	
				$data['cur_customer_group'] = $cust_group['name'];	
			}	
			else {	
				$data['cur_customer_group'] = '-';	
			}
		}
		
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');
		
		$this->response->setOutput($this->load->view('account/account', $data));
	}

	public function country() {
		$json = array();

		$this->load->model('localisation/country');

		$country_info = $this->model_localisation_country->getCountry($this->request->get['country_id']);

		if ($country_info) {
			$this->load->model('localisation/zone');

			$json = array(
				'country_id'        => $country_info['country_id'],
				'name'              => $country_info['name'],
				'iso_code_2'        => $country_info['iso_code_2'],
				'iso_code_3'        => $country_info['iso_code_3'],
				'address_format'    => $country_info['address_format'],
				'postcode_required' => $country_info['postcode_required'],
				'zone'              => $this->model_localisation_zone->getZonesByCountryId($this->request->get['country_id']),
				'status'            => $country_info['status']
			);
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
}
