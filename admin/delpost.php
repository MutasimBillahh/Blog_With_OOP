<?php 
include '../lib/session.php';
Session::checkSession();
?>

<?php include '../config/config.php';?>
<?php include '../lib/Database.php';?>
<?php include '../helpers/format.php';?>

<?php

$db = new Database();

?>

<?php
if (!isset($_GET['delpostid']) || $_GET['delpostid'] == NULL) {
    echo "<script>windows.location = 'postlist.php';</script>";
}else{
    $postid = $_GET['delpostid'];
    $query = "SELECT * FROM tbl_post WHERE id ='$postid'"; 
    $getdata = $db->select($query);
    if ($getdata) {
    	while ($delimg = $getdata->fetch_assoc() ) {
    		$dellink = $delimg['image'];
    		unlink($dellink);



    	}
    }




    $delquery = "DELETE FROM tbl_post WHERE id ='$postid'";
    $deldata = $db->delete($delquery);
    if ($deldata) {
      echo "<script>alert('Data Deleted Successfully.');</script>";
      echo "<script>window.location = 'postlist.php';</script>";
    }else{
    	 echo "<script> alert('Data Not Deleted Successfully.');</script>";
      echo "<script>window.location = 'postlist.php';</script>";
    }

}
?>
