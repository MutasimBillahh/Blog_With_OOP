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
if (!isset($_GET['sliderid']) || $_GET['sliderid'] == NULL) {
    echo "<script>windows.location = 'sliderlist.php';</script>";
}else{
    $sliderid = $_GET['sliderid'];
    $query = "SELECT * FROM tbl_slider WHERE id ='$sliderid'"; 
    $getdata = $db->select($query);
    if ($getdata) {
    	while ($delimg = $getdata->fetch_assoc() ) {
    		$dellink = $delimg['image'];
    		unlink($dellink);



    	}
    }




    $delquery = "DELETE FROM tbl_slider WHERE id ='$sliderid'";
    $deldata = $db->delete($delquery);
    if ($deldata) {
      echo "<script>alert('Slider Deleted Successfully.');</script>";
      echo "<script>window.location = 'sliderlist.php';</script>";
    }else{
    	 echo "<script> alert('Slider Not Deleted Successfully.');</script>";
      echo "<script>window.location = 'sliderlist.php';</script>";
    }

}
?>
