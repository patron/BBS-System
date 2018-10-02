<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Bbs_model extends CI_Model {

	private $table = "usertable";
	private $_data = array();


    public function bbs_user_get(){
        $this->db->select('*');
        $this->db->where('username', $_SESSION['username']);
        $this->db->from('usertable');
        return $this->db->get()->result_array();
    }

    public function bbs_all_users_get(){
        $this->db->select('*');
        $this->db->from('usertable');
        return $this->db->get()->result_array();
    }


	public function get_data()
	{
		return $this->_data;
	}

}