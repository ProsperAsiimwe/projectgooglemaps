<?php

class Dashboard_model extends CI_Model{
    
   
    
    public function show_content_info(){
        
        $this->db->select('*');
        $this->db->from('tbl');
        $query_result = $this->db->get();
        $result = $query_result->result();
        return $result;        
    }
    
    
     
}
