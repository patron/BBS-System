<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * This controller can be accessed 
 * for (all) non logged in users
 */
class Auth extends MY_Controller {	

	public function logged_in_check()
	{
		if ($this->session->userdata("logged_in")) {
			redirect("dashboard");
		}
	}

	public function index()
	{	
		$this->logged_in_check();
		
		$this->load->library('form_validation');
		$this->form_validation->set_rules("username", "Username", "trim|required");
		$this->form_validation->set_rules("password", "Password", "trim|required");
		if ($this->form_validation->run() == true) 
		{
			$this->load->model('auth_model', 'auth');	
			// check the username & password of user
			$status = $this->auth->validate();
            if ($status == JIRA_CURRENTLY_DOWN) {
                $this->session->set_flashdata("error", "Jira is currently down :(");
            }
			elseif ($status == ERR_INVALID_USERNAME) {
				$this->session->set_flashdata("error", "Username is invalid");
			}
			elseif ($status == ERR_INVALID_PASSWORD) {
				$this->session->set_flashdata("error", "Password is invalid");
			}
            elseif ($status == ADD_JIRA_USER_SUCCESS) {
                $this->session->set_flashdata("error", "User is registered. Now you can login!");
            }
            elseif ($status == INVALID_CREDEINTIALS) {
                $this->session->set_flashdata("error", "Invalid credentials or does'nt exist :(");
            }
			else
			{
				// success
				// store the user data to session
				$this->session->set_userdata($this->auth->get_data());
				$this->session->set_userdata("logged_in", true);
				// redirect to dashboard
				redirect("dashboard");
			}
		}

		$this->load->view("header");		
		$this->load->view("auth");
		$this->load->view("footer");
        $this->load->view("blockchain-js");
	}

	public function logout()
	{
		$this->session->unset_userdata("logged_in");
		$this->session->sess_destroy();
		redirect("auth");
	}

}