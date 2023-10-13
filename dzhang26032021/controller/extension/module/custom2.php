<?php 
class ControllerExtensionModuleCustom2 extends controller {
    public function index() {
        $array = array(
            'oc' => $this,
            'heading_title' => 'Pop-up Notice',
            'modulename' => 'custom2',
            'fields' => array(
                array('type' => 'image', 'label' => 'Image', 'name' => 'image'),
                array('type' => 'text', 'label' => 'Title', 'name' => 'title'),
                array('type' => 'text', 'label' => 'Short Text', 'name' => 'stext'),
                array('type' => 'text', 'label' => 'URL', 'name' => 'url'),
            ),
        );

        $this->modulehelper->init($array);
    }
}
