<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * This controller can be accessed
 * for (all) logged in users
 */
class JiraRest extends MY_Controller {

    protected $access = array("Bbsadmin", "User");

    public function index()
    {
        $this->load->helper('jira_helper');


        function get_info_from_jira( $user, $pass, $infotype, $inputdata ) {
            $config = array();

            $config['host'] = JIRA_HOST;
            $config['port'] = JIRA_PORT;
            $config['username'] = $user;
            $config['password'] = $pass;


            $newuser = new Jira($config);

            if ($infotype == 'getUserList') {
                $result = (array)$newuser->getUserList();
                 print_r($result['responseBody']);
                exit();
            }
            if ($infotype == 'getProjectList') {
                $result = (array)$newuser->getProjectList();
                print_r($result['responseBody']);
                exit();
            }
            if ($infotype == 'getProjectReleaseLog' && $inputdata != null) {
                $result = (array)$newuser->getProjectVersions( $inputdata );
                print_r($result['responseBody']);
                exit();
            }

        }


        $key = $this->input->post('key');
        $pkey = $this->input->post('projectKey');

        $username = $_SESSION['username'];
        $password = $_SESSION['password'];

        if ( isset($key) == 'getUserList' ){
            get_info_from_jira( $username, $password, $key, $inputdata = null);
        }
        if ( isset($key) == 'getProjectList' ){
            get_info_from_jira( $username, $password, $key, $inputdata = null);
        }
        if ( isset($key) == 'getProjectReleaseLog' && isset($pkey)){
            get_info_from_jira( $username, $password, $key, $pkey);
        }




    }

}