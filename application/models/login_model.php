<?php

class login_model extends CI_Model {

    # VALIDA USUÁRIO
    function validar() {
        $this->db->where('email', $this->input->post('email')); 
        //To do: ativar o md5
        $this->db->where('senha', ($this->input->post('senha')));
        

        $query = $this->db->get('usuario'); 

        if ($query->num_rows == 1) { 
            return true; // RETORNA VERDADEIRO
        }
    }

    # VERIFICA SE O USUÁRIO ESTÁ LOGADO
    function logado() {
        $logado = $this->session->userdata('logado');

        if (!isset($logado) || $logado != true) {
            echo 'Voce nao tem permissao para entrar nessa pagina. <a href="http://127.0.0.1/sitApTecV2014/login">Efetuar Login</a>';
            die();
        }
    }
}