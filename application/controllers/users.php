<?php 
	class Users extends CI_Controller{
		public function register(){
			$data['title'] = 'REGISTER';

			$this->form_validation->set_rules('name', 'Name', 'required');
			$this->form_validation->set_rules('username', 'Username', 'required|callback_check_username_exists');
			$this->form_validation->set_rules('email', 'Email', 'required|callback_check_email_exists');
			$this->form_validation->set_rules('password','Password', 'required');
			$this->form_validation->set_rules('password2', 'Confirm Password', ' matches[password');

			if ($this->form_validation->run() === FALSE){
				$this->load->view('templates/header');
				$this->load->view('users/register', $data);
				$this->load->view('templates/footer');
			} else {
				//Encrypt Password
				$enc_password = md5($this->input->post('password'));

				$this->User_model->register($enc_password);
				//set message

				echo $this->session->set_flashdata('user_registered', 'Pendaftaran berhasil, silahkan Melakukan Login');
				redirect('posts');
			}
		}
		// login user
		public function login(){
			$data['title'] = 'Sign In';

			$this->form_validation->set_rules('username', 'Username', 'required');
			$this->form_validation->set_rules('password','password', 'required');

			if($this->form_validation->run() === FALSE){
				$this->load->view('templates/header');
				$this->load->view('users/login', $data);
				$this->load->view('templates/footer');
			} else {

				// GET username
				$username = $this->input->post('username');
				//get and encrypt the passw ord
				$password = md5($this->input->post('password'));
				//login user
				$user_id = $this->User_model->login($username, $password);

				if($user_id){
					//create session
					$user_data = array(
						'user_id' => $user_id,
						'username' => $username,
						'logged_in' => true
					);

					$this->session->set_userdata($user_data);

				//set message

				$this->session->set_flashdata('user_loggedin','You are now loggedin');
				redirect('posts');

				} else {
					//set message
					 echo $this->session->set_flashdata('login_failed','Login is invalid');

					redirect('users/login');
				}
			} 
		}

		// log out
		public function logout(){
			//unset user data
			$this->session->unset_userdata('logged_in');
			$this->session->unset_userdata('user_id');
			$this->session->unset_userdata('username');

			echo $this->session->set_flashdata('user_loggedout', 'Berhasil Keluar');
			redirect('users/login');
		}

		//check if username exists
		function check_username_exists($username){
			$this->form_validation->set_message('check_username_exists', 'Username sudah digunakan');
			if ($this->User_model->check_username_exists($username)) {
				return true;
			} else {
				return false;
			}
		}

		function check_email_exists($email){
			$this->form_validation->set_message('check_email_exists', 'Email sudah terdaftar');
			if ($this->User_model->check_email_exists($email)) {
				return true;
			} else {
				return false;
			}
		}
		public function profile(){
			$data['title'] = 'Profile';
			$data['users'] = $this->User_model->get_profile();
			$this->load->view('templates/header');
			$this->load->view('users/profile');
			$this->load->view('templates/footer');
		}
	}