<?php
class ControllerExtensionModuleCustom2 extends Controller {
	public function index() {
		// Handle custom2 fields
		$oc = $this;
		$language_id = $this->config->get('config_language_id');
		$modulename  = 'custom2';
	    $this->load->library('modulehelper');
	    $Modulehelper = Modulehelper::get_instance($this->registry);

		$data['image'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'image' );
		$data['title'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'title' );
		$data['stext'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'stext' );
		$data['url'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'url' );

		return $this->load->view('extension/module/custom2', $data);
	}
		public function migrate() {
		// Handle custom2 fields
		$oc = $this;
		$language_id = $this->config->get('config_language_id');
		$modulename  = 'custom2';
	    $this->load->library('modulehelper');
	    $Modulehelper = Modulehelper::get_instance($this->registry);

		$data['image'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'image' );
		$data['title'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'title' );
		$data['stext'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'stext' );
		$data['url'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'url' );

		return $data;
	}
}