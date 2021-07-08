<?php

class kategori extends CI_Controller{
    public function elektronik()
    {
        $data['elektronik'] = $this->model_kategori->
            data_elektronik()->result();
        $this->load->view('template_admin/header');
        $this->load->view('template_admin/sidebar');
        $this->load->view('elektronik',$data);
        $this->load->view('template_admin/footer');
    }

    public function pakaian_pria()
    {
        $data['pakaian_pria'] = $this->model_kategori->
            data_pakaian_pria()->result();
        $this->load->view('template_admin/header');
        $this->load->view('template_admin/sidebar');
        $this->load->view('pakaian_pria',$data);
        $this->load->view('template_admin/footer');
    }
    
    public function pakaian_wanita()
    {
        $data['pakaian_wanita'] = $this->model_kategori->
            data_pakaian_wanita()->result();
        $this->load->view('template_admin/header');
        $this->load->view('template_admin/sidebar');
        $this->load->view('pakaian_wanita',$data);
        $this->load->view('template_admin/footer');
    }

    public function sepatu_motor_pria()
    {
        $data['sepatu_motor_pria'] = $this->model_kategori->
            data_sepatu_motor_pria()->result();
        $this->load->view('template_admin/header');
        $this->load->view('template_admin/sidebar');
        $this->load->view('sepatu_motor_pria',$data);
        $this->load->view('template_admin/footer');
    }

    public function sepatu_motor_wanita()
    {
        $data['sepatu_motor_wanita'] = $this->model_kategori->
            data_sepatu_motor_wanita()->result();
        $this->load->view('template_admin/header');
        $this->load->view('template_admin/sidebar');
        $this->load->view('sepatu_motor_wanita',$data);
        $this->load->view('template_admin/footer');
    }
}