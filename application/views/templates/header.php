<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link rel="shortcun icon" href="https://lh5.ggpht.com/8h4a-QzLFHu3pxFZ-Np8AyyUCq1G97T1_7F3ScjbBaxb6wGSdoCLHanFtnQa9kbg0d4=w300">
  <meta name="description" content="KandangScript.com">

  <!--  bootstrap css file-->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/style.css">
  <!--text editor-->
  <script src="http://cdn.ckeditor.com/4.7.3/full/ckeditor.js"></script>
  <link rel="stylesheet"  href="<?php echo base_url(); ?>assets/css/footer-basic-centered.css">
  <!-- font awesome -->
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
	
  <!-- css bootstrap file-->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/bootstrap.min.css">
  <!--javascrip file-->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <!--jquery file-->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
  body{
    font-family: 'Open Sans', sans-serif;
    background-color: #ffffff;
  }
</style>

<!-- Google Web Fonts-->
<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">

</head>

<body>

  <!-- navbar-->
	<nav class="navbar navbar-primary navbar-fixed-top" style="background-color: #d71149; color: white;height: 75px; font-family:'Open Sans', sans-serif; font-size: 16; text-align: center; box-shadow: 0px 8px 10px 0px rgba(0,0,0,0.1);">
  <div class="container-fluid" style="margin-top: 10px;" >
    <!-- Brand and toggle get grouped for better mobile display -->
      <a   class="navbar-brand" href="<?php echo base_url(); ?>"" style="color: white;" >Joker.Id</a>

    <!-- Collect the nav links, forms, and other content for toggling -->
      <ul class="nav navbar-nav">
      </ul>
      <form class="navbar-form navbar-left">
        <div class="input-group">
          <input class="form-control" placeholder="Masukkan Kata Kunci untuk di cari" style="width: 400px; height: 40px;">
          <div class="input-group-btn">
          <button type="button" class="btn btn-outline-primary" style="height: 40px; color: blue;" type="submit"><i class="glyphicon glyphicon-search"></i></button>
          </div>
        </div> 
      </form>
      <ul class="nav navbar-nav navbar-right">
       <?php if(!$this->session->userdata('logged_in')) : ?>
        <li><a href="<?php echo base_url() ?>posts"><i class="fa fa-blind"></i> TEMUKAN PEKERJAAN</a></li>
        <li><a href="<?php echo base_url(); ?>/posts/create"><i class="fa fa-search"></i>CARI PEKERJA</a></li>
         </li>
        <li><a href="<?php echo base_url(); ?>pages/fitur"><i class="fa fa-about"></i>FEATURED</a></li>
        <li><a href="<?php echo base_url() ?>users/login">LOGIN</a></li>
      <?php endif; ?>
      <?php if($this->session->userdata('logged_in')): ?>
        <li><a href="<?php echo base_url() ?>posts/create">POST JOB VACANY</a></li>
        <li class="dropdown">
          <a class="dropdown-btn"> <i class="fa fa-user"></i> MY ACCOUNT</a>
          <div class="dropdown-menu">
            <a href="">PROFILE</a>
            <a href="<?php echo base_url(); ?>users/logout">LOGOUT</a>
        </div>
        <?php endif; ?>
      </ul>
    
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>



  <div class="container-fluid">

   

	<?php if($this->session->flashdata('user_registered')): ?>
		<div class="alert alert-success fade in">
     <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><i class="fa fa-check-circle"></i> <?php echo $this->session->flashdata('user_registered'); ?>
    </div>
	<?php endif; ?>

	<?php if($this->session->flashdata('post_created')): ?>
		  <div class="alert alert-success fade in">
      <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><i class="fa fa- fa-check-circle"></i> <?php echo $this->session->flashdata('post_created'); ?> 
      </div>
	<?php endif; ?>

	<?php if($this->session->flashdata('post_updated')): ?>
		<div class="alert alert-success fade in">
      <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><i class="fa fa- fa-check-circle"></i> <?php echo $this->session->flashdata('post_updated'); ?>
    </div>
	<?php endif; ?>

	<?php if($this->session->flashdata('category_created')): ?>
		<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><div class="alert alert-success fade in">
	<?php endif; ?>

	<?php if($this->session->flashdata('post_deleted')): ?>
		<div class="alert alert-success fade in">
      <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><i class="fa fa- fa-check-circle"></i> <?php echo $this->session->flashdata('post_deleted'); ?>
    </div>
	<?php endif; ?>

  <?php if($this->session->flashdata('login_failed')): ?>
    <div class="alert alert-success fade in">
      <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><i class="fa fa- fa-check-circle"></i><?php echo $this->session->flashdata('login_failed'); ?>
    </div>
  <?php endif; ?>

  <?php if($this->session->flashdata('user_loggedin')): ?>
    <div class="alert alert-success fade in">
      <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><i class="fa fa- fa-check-circle"></i><?php echo $this->session->flashdata('user_loggedin'); ?>
    </div>
  <?php endif; ?>


  <?php if($this->session->flashdata('user_loggedout')): ?>
    <div class="alert alert-success fade in">
      <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><i class="fa fa- fa-check-circle"></i> <?php echo $this->session->flashdata('user_loggedout'); ?>
    </div>
  <?php endif; ?>

  <?php if($this->session->flashdata('category_deleted')): ?>
    <div class="alert alert-success fade in" >
     <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a> <i class="fa fa- fa-check-circle"></i> <?php echo $this->session->flashdata('category_deleted'); ?>
    </div>
  <?php endif; ?>

  
   <!-- JQuery -->
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
