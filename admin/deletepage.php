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
if (!isset($_GET['delpage']) || $_GET['delpage'] == NULL) {
    echo "<script>windows.location = 'index.php';</script>";
}else{
    $pageid = $_GET['delpage'];

    $delquery = "DELETE FROM tbl_page WHERE id ='$pageid'";
    $deldata = $db->delete($delquery);
    if ($deldata) {
      echo "<script>alert('Page Deleted Successfully.');</script>";
      echo "<script>window.location = 'index.php';</script>";
    }else{
    	 echo "<script> alert('Page Not Deleted.');</script>";
      echo "<script>window.location = 'index.php';</script>";
    }

}
?>
