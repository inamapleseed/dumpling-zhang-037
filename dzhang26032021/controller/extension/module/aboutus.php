<?php 
class ControllerExtensionModuleAboutUs extends controller {
	public function index() {
		$array = array(
            'oc' => $this,
            'heading_title' => 'About Us',
            'modulename' => 'aboutus',
            'fields' => array(
                array('type' => 'repeater', 'label' => 'Content', 'name' => 'repeater', 'fields' => array(
                    // array('type' => 'text', 'label' => 'Title', 'name' => 'title'),
                    array('type' => 'image', 'label' => 'Image', 'name' => 'image'),
                    array('type' => 'textarea', 'label' => 'Text Content', 'name' => 'text', 'ckeditor' =>true),
                    )
                )
            ),
        );
        $this->modulehelper->init($array);
	}
}