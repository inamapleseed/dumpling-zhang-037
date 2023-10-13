<?php
class ControllerExtensionModuleCustom extends Controller {
	public function index() {
		// Handle custom fields
		$oc = $this;
		$language_id = $this->config->get('config_language_id');
		$modulename  = 'custom';
	    $this->load->library('modulehelper');
	    $Modulehelper = Modulehelper::get_instance($this->registry);

		$data['pagetitle'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'pagetitle' );
		$data['bgimage'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'bgimage' );
		$data['arrow'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'arrow' );
		$data['url'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'url' );
		$data['btnname'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'btnname' );
		$data['repeater'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'repeater' );

		return $this->load->view('extension/module/custom', $data);
	}
	public function migrate() {
		// Handle custom fields
		$oc = $this;
		$language_id = $this->config->get('config_language_id');
		$modulename  = 'custom';
	    $this->load->library('modulehelper');
	    $Modulehelper = Modulehelper::get_instance($this->registry);

		$data['title'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'title' );
		$data['text'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'text' );

		return $data;
	}

}