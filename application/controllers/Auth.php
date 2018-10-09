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
                $this->session->set_flashdata("error", "Bbsuser is registered. Now you can login!");
            }
            elseif ($status == INVALID_CREDEINTIALS) {
                $this->session->set_flashdata("error", "Invalid credentials or does'nt exist :(");
            }
			else
			{
                $username = $this->input->post('username');

                $data = array('username' => $username);

                $query = $this->db->get_where(TBL_USERS, $data);

//                if ( ($query->num_rows() == 1) ) {
//                    $user = $query->row();
//
//                }

                // if user found
                $row = $query->row();
                $this->session->set_userdata('cibb_logged_in', 1);
                $this->session->set_userdata('cibb_user_id'  , $row->id);
                $this->session->set_userdata('cibb_username' , $row->username);
                $this->session->set_userdata('cibb_user_roleid' , $row->role_id);

                // get roles
                $roles = $this->db->get_where(TBL_ROLES, array('id' => $row->role_id))->row_array();
                foreach ((array)$roles as $key => $value) {
                    $this->session->set_userdata($key, $value);
                }


				// success
				// store the user data to session
				$this->session->set_userdata($this->auth->get_data());
				$this->session->set_userdata("logged_in", true);
				// redirect to dashboard
				redirect("dashboard");
			}
		}

		$this->load->view("bbsheader");
		$this->load->view("auth");
		$this->load->view("bbsfooter");
        $this->load->view("blockchain-js");
	}

	public function logout()
	{
		$this->session->unset_userdata("logged_in");
		$this->session->sess_destroy();
		redirect("auth");
	}

}