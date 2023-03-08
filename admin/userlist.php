<?php include 'inc/header.php'?>
<?php include 'inc/sidebar.php'?>
        <div class="grid_10">
            <div class="box round first grid">



                <h2>User List</h2>

                <?php 

if (isset($_GET['deluser'])) {
	$deluser = $_GET['deluser'];
	$query = "DELETE FROM tbl_user WHERE id = '$deluser'";
	$deldata = $db->delete($query);

	 if ($deldata) {
                           echo "<span class= 'success'>User successfully deleted!!!!</span>";
                        }else{
                            echo "<span class= 'success'>User  Not successfully deleted!!!!</span>";
                        }

                      }


?>

                <div class="block">        
                    <table class="data display datatable" id="example">
					<thead>
						<tr>
							<th>Serial No.</th>
							<th>Name</th>
							<th>User Name</th>
							<th>Email</th>
							<th>Details</th>
							<th>Role</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<?php
						$query = "SELECT * FROM tbl_user ORDER BY id";
						$alluser = $db->select($query);
						if ($alluser) {

							$i= 0;
							while ($result = $alluser->fetch_assoc()){
								$i++;

						?>
						<tr class="even gradeC">
							<td><?php echo $i; ?></td>
							<td><?php echo $result['name']; ?></td>
							<td><?php echo $result['username']; ?></td>
							<td><?php echo $result['email']; ?></td>
							<td><?php echo $fm->textShort($result['details'],60); ?></td>
							<td>
								<?php 
							if ($result['role'] =='0') {
								echo "Admin";
							}elseif ($result['role'] =='1') {
								echo "Author";
							}elseif ($result['role'] =='2') {
								echo "Editor";
							}


							  ?>
								
							</td>

							<td>
								<a href="viewuser.php?userid=<?php echo $result['id']; ?>">View User</a> 


								<?php if (Session::get('userRole') == '0'){ ?> ||
								<a onclick="return confirm('ARE YOU SURE TO DELETE?!!!');" href="?deluser=<?php echo $result['id']; ?>" >Delete</a> 
							<?php }  ?>
							</td>
						</tr>
					<?php } } ?>

					</tbody>
				</table>
               </div>
            </div>
        </div>
        <script type="text/javascript">

        $(document).ready(function () {
            setupLeftMenu();

            $('.datatable').dataTable();
            setSidebarHeight();


        });
    </script>
<?php include 'inc/footer.php'?>
 