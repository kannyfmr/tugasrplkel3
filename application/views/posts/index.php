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
<title><?php echo $title;  ?></title>
<div class="container">
<h2 ><?php echo $title;  ?></h2>
<br><br>
<?php  foreach ($posts as $post): ?>
	<h3><a style="text-decoration: none; color: black;" href="<?php echo site_url('/posts/'.$post['slug']); ?>"><?php echo $post['title']; ?></a></h3>
	<div class="row">
		<div class="col-md-3" style="background-color: #f3f3f3; margin-bottom: 50px; height: 250px;">
			<img class="post-thumb thumbnail" src="<?php echo site_url(); ?>assets/images/posts/<?php echo $post['post_image']; ?>">
		</div>
		<div class="col-md-4" style="background-color: #f3f3f3; height: 250px;">
		<small class="post-date"> Posted on : <?php echo $post['created_at']; ?> <span>Kategori</span> <?php echo $post['name']; ?></small><br>
		<?php echo word_limiter($post['body'], 20); ?><br><br>
			<div class="d-flex flex-column flex-md-row lead mb-3">
				<a type="button" class="button red" href=" <?php echo site_url('/posts/'.$post['slug']); ?>">LIHAT JOB</a><a href="" type="button" class="button hijau">DIRECT TO LOCATION</a>
			</div>
		</div>
	</div>
<?php endforeach; ?>
</div>
<div class="pagination">
 <?php echo $this->pagination->create_links(); ?>
</div>
