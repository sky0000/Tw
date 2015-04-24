<?php
include 'database/connect.php';
session_start();
session_destroy();
oci_close($conn);
header('Location: includes/widgets/login.php');
?>
