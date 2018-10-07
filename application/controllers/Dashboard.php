<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * This controller can be accessed 
 * for all logged in users
 */
class Dashboard extends MY_Controller {

    protected $access = array("Bbsadmin", "User");

	public function index()
	{
		$this->load->view("bbsheader");
        $this->load->view("app-header");

        $this->load->view("sidebar-default");

        $this->load->view("main-page-dashboard");

		//$this->load->view("dashboard");
		$this->load->view("bbsfooter");
        $this->load->view("jira-client");
	}

}