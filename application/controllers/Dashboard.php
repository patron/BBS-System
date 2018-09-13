<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * This controller can be accessed 
 * for all logged in users
 */
class Dashboard extends MY_Controller {

    protected $access = array("Admin", "User");

	public function index()
	{
		$this->load->view("header");
        $this->load->view("app-header");

        $this->load->view("sidebar-default");

        $this->load->view("main-page-dashboard");

		//$this->load->view("dashboard");
		$this->load->view("footer");
        $this->load->view("jira-client");
	}

}