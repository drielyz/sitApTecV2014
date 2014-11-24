<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Login extends CI_Controller {

    function __construct() {
        parent::__construct();
    }

    function index() {

        // VALIDATION RULES
        $this->load->library('form_validation');
        $this->form_validation->set_rules('email', 'Email', 'required');
        $this->form_validation->set_rules('senha', 'Senha', 'required');
        $this->form_validation->set_error_delimiters('<span>', '</span>');


        // MODELO LOGIN
        $this->load->model('login_model', 'login');
        $query = $this->login->validar();

        if ($this->form_validation->run() == FALSE) {

            //$this->load->view('login/login_view');
            $this->load->view('home_header');
            $this->load->view('home_content_login');
            $this->load->view('home_sidebar');
        } else {

            if ($query) { // VERIFICA LOGIN E SENHA
                $data = array(
                    'email' => $this->input->post('email'),
                    'logado' => true
                );
                $this->session->set_userdata($data);
                echo "[DEBUG] LOGOU LOGOU!"; 
                echo "<a href='".base_url('login/sair')."'>Sair</a>";
                die();
               // redirect('login/area_restrita');
            } else {
                //Loopin
//                  echo "[DEBUG] Nao LOGOU!<br>";
                 //causando loopin infinito
               redirect(base_url('login'));
                
             //  header("Location: http://127.0.0.1/sitApTecV2014/login");
            }
        }
    }

    function sair(){
        $this->session->unset_userdata('logado');
        $this->session->unset_userdata('email');
        $this->session->sess_destroy();
         redirect(base_url('login'));
        
    }
}
