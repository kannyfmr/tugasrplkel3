<div class="container-fluid">
	<div class="col-sm-3" style="float: right; margin-top: 15px;">
	<h2>Pencarian</h2>
	 <form class="navbar-form navbar-left">
        <div class="input-group">
          <input class="form-control" placeholder="Masukkan Email">
          <div class="input-group-btn">
          <a type="button" class="btn btn-danger" type="submit">Subscribe</a>
          </div>
        </div> 
      </form>
	
</div>
<h2><?php echo $post['title']; ?></h2>
<br>
<img  class="" align="center" src="<?php echo site_url(); ?>assets/images/posts/<?php echo $post['post_image']; ?>">
<div style="border: 1px;" class="post-body">
	<?php echo $post['body']; ?>
	<small> Posted on : <?php echo $post['created_at']; ?></small>
</div>
<?php if($this->session->userdata('user_id') == $post['user_id']): ?>

<a class="btn btn-default pull-left" href="<?php echo base_url(); ?>posts/edit/<?php echo $post['slug']; ?>">Edit</a>
<?php echo form_open('/posts/delete/'.$post['id']); ?>
	<input type="submit" value="delete" class="btn btn-danger">
</form>
<hr>
<?php endif; ?>
<div class="row">
<div class="col-md-6">

<hr>
</div>
</div>
APPLYING THIS JOB | <a href="" type="button" class="button putih">DIRECTION TO LOCATION</a>
<?php echo validation_errors(); ?>
<?php echo form_open('comments/create/'.$post['id']); ?>
<div class="row">
<div class="col-md-6">
	<div class="form-group">
		<label> Nama Lengakap</label>
		<input type="text" name="name" class="form-control" required placeholder="Masukkan Nama Anda">
	</div>
	<div class="form-group">
		<label> Email</label>
		<input type="text" name="email" class="form-control" required placeholder="Masukan Emailmu">
	</div>
	<div>
		<label> Deskripsi</label>
		<textarea name="body" class="form-control" rows="5" required placeholder="Deskripsikan tentang Pengalaman Bekerja Anda"></textarea><br>
		<input type="text"  name="no_hp" class="form-control" required placeholder="Masukan nomor hp"><br>
		<select name="lulusan">
			<option value="SMP">SMP</option>
			<option value="SMA">SMA</option>
			<option value="PERGURUAN TINGGI">PERGURUAN TINGGI</option>
		</select>
		<input type="hidden" name="slug" value="<?php echo $post['slug']; ?>"> <br><br>
		<button class="button green"><i class="fa fa-send"></i> AJUKAN LAMARAN</button>
	</div>
</div>
</div>
</div>