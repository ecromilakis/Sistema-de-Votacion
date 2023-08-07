<?php
include "class/adodb/adodb.inc.php";
include "class/connect.php";

if(isset($_POST["region_id"]) && !empty($_POST["region_id"])){
    $query="SELECT * FROM comuna WHERE id_region = ".$_POST['region_id']." AND status = 0 ORDER BY name_comuna ASC";
    $rowCount=$db->Execute($query)->getRows();
    
    //Display states list
    if($rowCount > 0){
        foreach ($rowCount as $row) {
            echo '<option value="'.$row['idcomuna'].'">'.$row['name_comuna'].'</option>';
        }
    }else{
        echo '<option value="">Comuna no avilitada</option>';
    }
}
?>