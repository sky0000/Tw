<?php
include '../database/connect.php';
function user_exists($conn,$username) {
$stid = oci_parse($conn, 'SELECT id FROM  users');
if (!$stid) {
    $e = oci_error($conn);
    trigger_error(htmlentities($e['message'], ENT_QUOTES), E_USER_ERROR);
}

// Perform the logic of the query
$r = oci_execute($stid);
if (!$r) {
    $e = oci_error($stid);
    trigger_error(htmlentities($e['message'], ENT_QUOTES), E_USER_ERROR);
}

// Fetch the results of the query
print "<table border='1'>\n";
while ($row = oci_fetch_array($stid, OCI_ASSOC+OCI_RETURN_NULLS)) {
    
    foreach ($row as $item) {
        $item !== null ? htmlentities($item, ENT_QUOTES) : "&nbsp;" ;
        
         if($item === $username){
         	$ok = 1;
         	return true;
         	break;
         } 

    }
   
}
if($ok != 1 )
	return false;

}
?>