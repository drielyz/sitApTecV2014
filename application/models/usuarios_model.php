<?php

if (!defined('BASEPATH'))exit('Acesso direto ao script não é permitido');

class Usuarios_model extends CI_Model {

    function __construct() {
        parent::__construct();
    }

    function inserir($data) {
        return $this->db->insert('usuario', $data);
    }

    function listar() {
        $query = $this->db->order_by('nome','asc')->get('usuario');
        return $query->result();
    }
function editar($idusuario) {
    $this->db->where('idusuario', $idusuario);
    $query = $this->db->get('usuario');
    return $query->result();
}
 
function atualizar($data) {
    $this->db->where('idusuario', $data['idusuario']);
    $this->db->set($data);
    return $this->db->update('usuario');
}
 
function deletar($id) {
    $this->db->where('idusuario', $idusuario);
    return $this->db->delete('usuario');
}
}
