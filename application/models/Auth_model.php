<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Auth_model extends CI_Model {

	private $table = "usertable";
	private $_data = array();

	public function validate()
	{
		$username = $this->input->post('username');
		$password = $this->input->post('password');

        $ethwallet = $this->input->post('newethwallet');
        $ethprivatekey = $this->input->post('ethprivatekey');

        $this->load->helper('jira_helper');

		$this->db->where("username", $username);
		$query = $this->db->get($this->table);

        error_reporting(E_ALL & ~E_NOTICE);


        function check_user_existence( $username, $password ) {

            $config = array();

            $config['host'] = JIRA_HOST;
            $config['port'] = JIRA_PORT;
            $config['username'] = $username;
            $config['password'] = $password;

            $newuser = new Jira($config);
            $result = (array) $newuser->findUser($username);


            $decodedJiraResponse = json_decode($result['responseBody']);

            $_SESSION['displayName'] = $decodedJiraResponse->displayName;
            $_SESSION['userAvatar48'] = $decodedJiraResponse->avatarUrls->{'48x48'};

            if ($decodedJiraResponse != null ) {

                $_SESSION['username'] = $username;
                $_SESSION['password'] = $password;

                return $decodedJiraResponse;
            }

            else {
                return false;
            }
        }

        function check_if_not_down ( $hostname ) {
            $header_check = get_headers("http://". $hostname );
            $response_code = $header_check[0];
            if ( $response_code == 'HTTP/1.1 200 OK' ) {
                return true;
            }
            else {
                return false;
            }

        }

        if ( check_if_not_down( JIRA_HOST )) {

        // CASE IF JIRA IS NOT DOWN

		if ( ( check_user_existence( $username, $password ) != null ) && $query->num_rows())
		{
			// found row by username
			$row = $query->row_array();

			// now check for the password

			if  ( password_verify($password, $row['password'] ) )
			{
				// we not need password to store in session
				unset($row['password']);
				$this->_data = $row;
				return ERR_NONE;
			}

			else {

			    // Password update block ( if password was changed in Jira )

                $jira_user_data = check_user_existence( $username, $password );

                $hash_options = [
                    'cost' => 12,
                ];

                $pasword_hash_new = password_hash( $password, PASSWORD_BCRYPT, $hash_options );

                $new_user_data = array(
                    'username' => $username,
                    'password' => $pasword_hash_new,
                    'role' => 'Bbsuser',
                    'fullname' => $jira_user_data->displayName,
                    'email' => $jira_user_data->emailAddress
                );

                $this->db->where('username', $username);
                $this->db->update('usertable', $new_user_data);

                return ADD_JIRA_USER_SUCCESS;

            }

		}
		else {

            $jira_user_data = check_user_existence( $username, $password );

            if ( $jira_user_data != false) { // Check if Bbsuser doesn't exist

                $hash_options = [
                    'cost' => 12,
                ];

                $pasword_hash_new = password_hash($password, PASSWORD_BCRYPT, $hash_options);

                $new_user_data = array(
                    'username' => $username,
                    'password' => $pasword_hash_new,
                    'role' => 'Bbsuser',
                    'fullname' => $jira_user_data->displayName,
                    'email' => $jira_user_data->emailAddress,
                    'ethaddr' => $ethwallet,
                    'ethpkey' => $ethprivatekey
                );

                $this->db->insert('usertable', $new_user_data);

                return ADD_JIRA_USER_SUCCESS;

            }
            else {

                return INVALID_CREDEINTIALS;

            }
            ini_set('error_reporting', E_ALL);
		}
	}

	else {
            return JIRA_CURRENTLY_DOWN;
    }

	} // end of validate function


	public function get_data()
	{
		return $this->_data;
	}

}