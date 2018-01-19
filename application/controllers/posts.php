<?php 
	class Posts extends CI_Controller{
		public function index($offset = 0){
			// PAGINATION CONFIG
			$config['base_url'] = base_url(). 'posts/index/';
			$config['total_rows'] = $this->db->count_all('posts');
			$config['per_page'] = 8;
			$config['uri_segment'] = 3;
			$config['attributes'] = array('class' => 'pagination-link');
			//init config
			$this->pagination->initialize($config);



			$data['title'] = 'Latest Posts';

			$data['posts'] = $this->Post_model->get_post(FALSE, $config['per_page'], $offset);
			

			$this->load->view('templates/header');
			$this->load->view('posts/index',$data);
			$this->load-> view('templates/footer');
		}
		public function view($slug = NULL){
			$data['post'] = $this->Post_model->get_post($slug);
			$post_id = $data['post']['id'];
			$data['comments'] = $this->comment_model->get_comments($post_id);

			if(empty($data['post'])) {
				show_404();
			}
			$data['title'] = $data['post']['title'];

			$this->load->view('templates/header');
			$this->load->view('posts/view',$data);
			$this->load->view('templates/footer');
		}
		public function create(){
			//check login
			if (!$this->session->userdata('logged_in')) {
				redirect('users/login');
			}
		

			$data['title'] = 'Buat Artikel';

			$data['categories'] = $this->Post_model->get_categories();

			$this->form_validation->set_rules('title', 'Title', 'required');
			$this->form_validation->set_rules('body', 'Body', 'required');
		
		if($this->form_validation->run() === FALSE) {
			$this->load->view('templates/header');
			$this->load->view('posts/create', $data);
			$this->load->view('templates/footer');	
		} else {
			//upload image
			$config['upload_path'] ='./assets/images/posts';
			$config['allowed_types'] ='gif|jpg|png|svg';
			$config['max_size'] ='2048';
			$config['max_width'] ='400px';
			$config['max_height'] ='400px';
			$this->load->library('upload', $config);

			if(!$this->upload->do_upload()){
				$errors = array('error' => $this->upload->display_errors());
				$post_image = 'noimage.jpg';
			} else {
				$data = array('upload_data' => $this->upload->data());
				$post_image = $_FILES['userfile']['name'];
			}

			$this->Post_model->create_post($post_image);

			 echo $this->session->set_flashdata('post_created','Artikel Berhasil di buat');
			redirect('posts');
		}
	}	
		public function delete($id){

		if (!$this->session->userdata('logged_in')) {
				redirect('users/login');
			}

			$this->Post_model->delete_post($id);
			
			echo $this->session->set_flashdata('post_deleted', 'Artikel Berhasil di hapus');
			redirect('posts');
		}

		public function edit($slug){
			// mengecek login
			if (!$this->session->userdata('logged_in')) {
				redirect('users/login');
			}
			
		
			$data['post'] = $this->Post_model->get_post($slug);

			//mengecek user
			if($this->session->userdata('user_id') != $this->Post_model->get_post($slug)['user_id']) {
				redirect('posts');
			}

			$data['categories'] = $this->Post_model->get_categories();
			
			if(empty($data['post'])) {
				show_404();
			}

			$data['title'] = 'Edit Posts';

			$this->load->view('templates/header');
			$this->load->view('posts/edit',$data); 
			$this->load->view('templates/footer');

		}

		public function update(){

			if (!$this->session->userdata('logged_in')) {
				redirect('users/login');
			}
			$this->Post_model->update_post();

			$this->session->set_flashdata('post_updated', 'Your post has been updated');
			redirect('posts');
		}
	}



