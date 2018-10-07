<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * This controller can be accessed 
 * for Manager group only
 */
class User extends MY_Controller {
protected $access = array("Bbsadmin", "User");

//	protected $access = "User";


//	public function index()
//	{
//		$this->load->view("bbsheader");
//        $this->load->view("app-header");
//
//        $this->load->view("sidebar-default");
//
//
//        $this->load->view("main-page-allprojects");
//
//		$this->load->view("bbsfooter");
//	}
    public function mytransactions() {
        $this->load->view("bbsheader");
        $this->load->view("app-header");

        $this->load->view("sidebar-default");

        $this->load->view("main-page-mytransactions");

        $this->load->view("bbsfooter");
        $this->load->view("datatablejs");
    }
    public function userwallet() {

	    $this->load->model('bbs_model');
        $data = array(
            'result'=>  $this->bbs_model->bbs_user_get()
        );

        $this->load->view("bbsheader");
        $this->load->view("app-header");

        $this->load->view("sidebar-default");

        $this->load->view("main-page-userwallet", $data);

        $this->load->view("bbsfooter");
        $this->load->view("datatablejs");
        $this->load->view("blockchain-js");

	}
    public function qandv() {

        $this->load->model('bbs_model');

        $this->load->view("bbsheader");
        $this->load->view("app-header");

        $this->load->view("sidebar-default");

        $this->load->view("main-page-qandv");

        $this->load->view("bbsfooter");
        $this->load->view("blockchain-js");
//        $this->load->view("datatablejs");
    }

    public $data = array();
    
    public function __construct() {
        parent::__construct();
        $this->load->model('user_model');
        $this->user_model->check_role();
    }
    
    public function join()
    {
        // event register button
        if ($this->input->post('btn-reg')) 
        {
            $this->user_model->register();
            if ($this->user_model->error_count != 0) {
                $this->data['error']    = $this->user_model->error;
            } else {
                $this->session->set_userdata('tmp_success', 1);
                redirect('user/join');
            }
        }
        
        $tmp_success = $this->session->userdata('tmp_success');
        if ($tmp_success != NULL) {
            // new user created
            $this->session->unset_userdata('tmp_success');
            $this->data['tmp_success'] = 1;
        }
        
        // event login button
        if ($this->input->post('btn-login'))
        {
            $this->load->model('user_model');
            $this->user_model->check_login();
            if ($this->user_model->error_count != 0) {
                $this->data['error_login']    = $this->user_model->error;
            } else {
                redirect('user');
            }
        }
        
        $this->data['title']   = 'User Join or Login :: '.CIBB_TITLE;
        $this->load->view('header', $this->data);
        $this->load->view('user/join');
        $this->load->view('footer');
    }
    
    public function logout()
    {
        $this->session->sess_destroy();
        redirect('user/join');
    }
    
    public function index()
    {
        $this->data['title']   = 'User Index :: '.CIBB_TITLE;
        $this->load->view('header', $this->data);
        $this->load->view('user/index');
        $this->load->view('footer');
    }
}

