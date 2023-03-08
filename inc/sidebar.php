<div class="sidebar clear">
	<div class="samesidebar clear">
		<h2>Categories</h2>
			<ul>

				<?php
				$query = "SELECT * FROM tbl_category";
				$category = $db->select($query);
					if ($category) {
						while ($result = $category->fetch_assoc()) {

				?>

				<li><a href="posts.php?category=<?php echo $result['id']; ?>"><?php echo $result['name'];?></a></li>
			<!-- </ul> -->

			<?php } }else{?>
				<li>No CATEGORY CREATED</li>

			<?php } ?></ul>
	</div>
			
	<div class="samesidebar clear">
		<h2>Latest articles</h2>

           
           <?php
				$query = "SELECT * FROM tbl_post LIMIT 5";
				$post = $db->select($query);
					if ($post) {
						while ($result = $post->fetch_assoc()) { ?>



		<div class="popular clear">
			<h3>
				<a href="post.php?id=<?php echo $result['id']; ?>"> <?php echo $result['title']; ?>
				<img src="admin/<?php echo $result['image']; ?>" alt="post image"/>
				</a>
			</h3>
			<h4><?php echo $fm->textShort($result['body'],100); ?></h4>

				<!-- <a href="post.php?id=<?php echo $result['id']; ?>">
					<img src="admin/<?php echo $result['image']; ?>" alt="post image"/>
				</a>
				<?php echo $fm->textShort($result['body'],100); ?>  -->
		
		</div>
					
				
		 <?php  } } else{ echo "No CATEGORY CREATED"; } ?>
			
				
	
	 </div>
</div>
		
		
