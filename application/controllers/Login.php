<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

    function __construct() {
		parent::__construct();
		if ($this->session->userdata('dataCalon')) {
			redirect('home');
		}
	}

	public function index() {
		$this->load->view('login');
	}

    public function proses_login() {
        $email = $this->input->post('email');
        $password = md5($this->input->post('password'));
        $this->load->model('mhome');
        $cek_data = $this->mhome->cek_login($email, $password);
        if ($cek_data != null) {
            $this->session->set_userdata('dataCalon', $cek_data[0]);
            redirect('home');
        } else {
            $this->session->set_flashdata('msg', 'Username atau password salah');
            redirect('login');
        }
    }
}
