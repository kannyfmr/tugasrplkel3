<?php echo validation_errors() ; ?>
<title><?= $title; ?></title>
<?php echo form_open('users/register'); ?>
<br><br><br>
<div class="row">
<div class="col-md-4 col-md-offset-4 ">	
<h2 class="text-center"><?= $title; ?></h2>

	<input type="text1" name="name" placeholder="Nama Lengkap" required autofocus>
	<input type="text1" name="zipcode" placeholder="zipcode" required autofocus>
	<input type="text1" name="email" placeholder="Masukkan Email" required autofocus>
	<input type="text1" name="username" placeholder="username" required autofocus>
	<input type="password" name="password" placeholder="Masukkan Password" required autofocus>
	<input type="password" name="password" placeholder="Konfirmasi Password" required autofocus>
	<input type="file" name="userfile" size="20">
	<button type="submit" class="button btn-block"><i class="fa fa-send"></i> Mendaftar</button>
</div>
</div>
<br><br><br><br><br><br><br><br><br><br>
<?php echo form_close(); ?>
