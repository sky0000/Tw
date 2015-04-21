<?php
include 'core/init.php';
/*if(user_exists($conn, 'vlad') === true){
	print 'exists';}
*/
if(empty($_POST) === false) {
	$username = $_POST['username'];
	$password = $_POST['password'];

	if(empty($username) || empty($password)) {
		$errors[] = 'asa se scrie ??';
	}
	else if (user_exists($conn,$username) === false)
	{
		$errors[] = 'sorry nu esti in baza de date';
		print 'sorry nu esti in baza de date';
	}
	else {
      
	}
	
	print_r($errors);
}

?>