<?php

class Invoice extends CI_Controller{
    public function index()
    {
        $data['invoice'] = $this->model_invoice->tampil_data();
        $this->load->view('template_admin/header');
        $this->load->view('template_admin/sidebar');
        $this->load->view('admin/invoice',$data);
        $this->load->view('template_admin/footer');
    }
}