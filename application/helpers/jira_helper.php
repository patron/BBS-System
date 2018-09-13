<?php
require_once('class.RestRequest.php');
class Jira {
	protected $project;
	protected $host;
	function __construct($config){
		$this->request = new RestRequest;
		$this->request->username = $config['username'];
		$this->request->password = $config['password'];
		$this->host = $config['host'];
        $this->port = $config['port'];
	}
//-----------------------------------------------------------------------------------------------------------	
	public function createIssue($json){
		$this->request->openConnect('http://'.$this->host .':' . $this->port .'/rest/api/latest/issue/', 'POST', ($json));
		$this->request->execute();  
        return $this->request;
	}
//-----------------------------------------------------------------------------------------------------------	
	public function updateIssue($json, $issueKey){
		$this->request->openConnect('http://'.$this->host . ':' . $this->port .'/rest/api/latest/issue/'.$issueKey, 'PUT', $json);
		$this->request->execute();  
        return $this->request;
	}
//----------------------------------------------------------------------------------------------------------- 
    public function getIssue($issueKey){
		$this->request->openConnect('http://'.$this->host . ':' . $this->port .'/rest/api/latest/issue/'.$issueKey);
		$this->request->execute();  
        return $this->request;
	}
//-----------------------------------------------------------------------------------------------------------
    public function deleteIssue($issueKey){
		$this->request->openConnect('http://'.$this->host . ':' . $this->port .'/rest/api/latest/issue/'.$issueKey ,"DELETE" );
		$this->request->execute();  
        return $this->request;
	}
//-----------------------------------------------------------------------------------------------------------
    public function findUser($userName){
        $this->request->openConnect('http://'.$this->host . ':' . $this->port .'/rest/api/latest/user?username=' . $userName, 'GET');
        $this->request->execute();
        return $this->request;
    }
//-----------------------------------------------------------------------------------------------------------
    public function getUserList(){
        $this->request->openConnect('http://'.$this->host . ':' . $this->port .'/rest/api/latest/user/search?username=.', 'GET');
        $this->request->execute();
        return $this->request;
    }
//-----------------------------------------------------------------------------------------------------------
    public function getProjectList(){
        $this->request->openConnect('http://'.$this->host . ':' . $this->port .'/rest/api/latest/project', 'GET');
        $this->request->execute();
        return $this->request;
    }
//-----------------------------------------------------------------------------------------------------------
    public function getProjectVersions( $projectKey ){
        $this->request->openConnect('http://'.$this->host . ':' . $this->port .'/rest/api/latest/project/' . $projectKey . '/versions', 'GET');
        $this->request->execute();
        return $this->request;
    }
}