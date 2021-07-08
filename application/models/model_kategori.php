<?php 

class Model_kategori extends CI_Model{

    public function data_elektronik(){
        return $this->db->get_where("tb_barang",array('
        kategori' =>'elektronik'));
    }

    public function data_pakaian_pria(){
        return $this->db->get_where("tb_barang",array('
        kategori' =>'pakaian pria'));
    }

    public function data_pakaian_wanita(){
        return $this->db->get_where("tb_barang",array('
        kategori' =>'pakaian wanita'));
    }

    public function data_sepatu_motor_pria(){
        return $this->db->get_where("tb_barang",array('
        kategori' =>'sepatu_motor pria'));
    }

    public function data_sepatu_motor_wanita(){
        return $this->db->get_where("tb_barang",array('
        kategori' =>'sepatu_motor wanita'));
    }
}