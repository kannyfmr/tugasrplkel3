<?php echo form_open('users/login'); ?>
<div class="container">
	<div class="col col-lg" style="text-align: center; margin-top: 200px;">
		<center><h2>You Have to Login to Continue</h2></center><br><br>
		<a href="<?php 	echo base_url() ?>/users/register" type="button" class="button hijau" style="width: 350px;"> Sign Up</a> Atau
		<a href="" type="button" class="button red"  data-toggle="modal" data-target="#myModal" style="width: 350px;">Login and Post</a>
	</div>
	<!--modal-->
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">
			<!--content of modal-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button green" class="close" data-dismiss="modal">&times;</button>
					<h3 class="modal-title"> Login</h3>
				</div>
				<div class="modal-body">
					 
					<label>Username</label><input type="text1" id="fname" name="username" placeholder="Username" required autofocus=""><br>
					<label>Password</label><input type="password" id="lname" name="password" placeholder="Password" required autofocus>
				</div>
				<div class="modal-footer">
					<button class="button green" type="submit"><i class="fa fa-send"></i>Log In</i></button>
				</div>
			</div>	
		</div>
	</div>
</div>
<br><br><br><br><br><br><br><br><br><br><br><br>
<?php echo form_close(); ?>