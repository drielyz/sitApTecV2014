<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Login extends CI_Controller {

 function __construct()
 {
   parent::__construct();
 }

 function index()
 {
   $this->load->helper(array('form'));
   
   $this->load->view('home_header');
     $this->load->view('home_content_login');
       $this->load->view('home_sidebar');
 }

}

?>