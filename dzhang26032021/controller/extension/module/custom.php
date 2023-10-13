<?php 
class ControllerExtensionModuleCustom extends controller {
	public function index() {
		$array = array(
            'oc' => $this,
            'heading_title' => 'How To Order',
            'modulename' => 'custom',
            'fields' => array(
                array('type' => 'text', 'label' => 'Page Title', 'name' => 'pagetitle'),
                array('type' => 'image', 'label' => 'Background Image', 'name' => 'bgimage'),

                array('type' => 'image', 'label' => 'Arrow', 'name' => 'arrow'),

                array('type' => 'text', 'label' => 'URL', 'name' => 'url'),
                array('type' => 'text', 'label' => 'Button Title', 'name' => 'btnname'),

                array('type' => 'repeater', 'label' => 'Content', 'name' => 'repeater', 'fields' => array(
                    array('type' => 'text', 'label' => 'Title', 'name' => 'title1'),
                    array('type' => 'image', 'label' => 'Icon', 'name' => 'image1'),
                    array('type' => 'text', 'label' => 'Short Text', 'name' => 'stext'),
                    )
                )
            ),
        );
        $this->modulehelper->init($array);
	}
}