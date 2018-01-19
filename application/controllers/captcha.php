<?php
class Captcha extends CI_Controller{
	function create_captcha(){
		$options = array(
			'img_path' => './captcha' , 
			'img_url' => base_url('captcha'),
			'img_width' => '150',
			'img_height' => '30',
			'expiration ' => 7200
		);
		$cap = create_captcha($options);
		$image = $cap['image'];
		$this->session->set_userdata('captchaword', $cap['word']);
		return $image;
	}

	function check_captcha(){
		if ($this->input->post('captcha') == $this->session->userdata('captchaword')){
			return true;
		} else{
			$this->form_validation->set_message('check_captcha', 'captcha is wrong');
			return false;
		}
	}
	function index(){
		$this->form_validation->set_rules('captcha', 'captcha', 'trim|callback_check_captcha |required');	
		if ($this->form_validation->run() == false) {
			$this->load->view('templates/header');
			$this->load->view('users/login' , array('img' =>  $this->create_captcha()));
		} else{
			echo "success captcha code";
			$this->load->view('templates/footer');
		}
	}
}