<?php
defined('BASEPATH') OR exit('No direct script access allowed');


class Dashboard_controller extends CI_Controller{
   
    public function __construct() {
        parent::__construct();
        
        $this->load->model('Dashboard_model');
    }
    
    
    public function view_content(){
        $data = array();
        $data['view_content'] = $this->Dashboard_model->show_content_info();
        $this->load->view('map_components/dashboards/maincontent_nav',$data);
    }
    
    
   public function view_static_content(){
        $this->load->view('map_components/dashboards/staticcontent_nav');
   }
   
   public function view_clustered_content(){
       $this->load->view('map_components/dashboards/clusteredcontent_nav');
   }
    
   
}
