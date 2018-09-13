<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * This controller can be accessed 
 * for Admin group only
 */
class Admin extends MY_Controller {

	//protected $access = array("Admin", "Manager", "Performer");
    protected $access = "Admin";

	public function index()
	{
		$this->load->view("header");
        $this->load->view("app-header");

        $this->load->view("sidebar-default");


        $this->load->view("main-page-pfeedback");

		$this->load->view("footer");
        $this->load->view("jira-client");
	}

    public function userlist() {
        $this->load->view("header");
        $this->load->view("app-header");

      $this->load->view("sidebar-default");


        $this->load->view("main-page-userlist");


        $this->load->view("footer");
        $this->load->view("jira-client");
        $this->load->view("datatablejs");
    }

    public function projecthistory() {
        $this->load->view("header");
        $this->load->view("app-header");

        $this->load->view("sidebar-default");
        $this->load->view("main-page-projecthistory");


        $this->load->view("footer");
        $this->load->view("jira-client");
        $this->load->view("datatablejs");
    }

    public function allprojects() {
        $this->load->view("header");
        $this->load->view("app-header");

        $this->load->view("sidebar-default");

        $this->load->view("main-page-allprojects");

        $this->load->view("footer");
        $this->load->view("jira-client");
        $this->load->view("datatablejs");
    }
    public function bonussettings() {
        $this->load->view("header");
        $this->load->view("app-header");

        $this->load->view("sidebar-default");

        $this->load->view("main-page-bonussettings");

        $this->load->view("footer");
        $this->load->view("jira-client");
        $this->load->view("datatablejs");
    }

}