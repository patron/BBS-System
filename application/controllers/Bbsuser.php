<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * This controller can be accessed 
 * for Manager group only
 */
class Bbsuser extends MY_Controller {
protected $access = array("Bbsadmin", "Bbsuser");

//	protected $access = "Bbsuser";

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
    }
}

