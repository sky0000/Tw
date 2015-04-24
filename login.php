<?php
include 'core/init.php';

if ((empty($_POST) === false)) {
	$username =  $_POST['username'];
	$password = $_POST["password"];

/*
$sql = 'SELECT id FROM users WHERE id = :use';
$stid = oci_parse($conn, $sql);

$a = 'andrei';
$v = var_export($username, true);
$b = str_replace("'", "", $v);
oci_bind_by_name($stid, 'use', $b);
oci_execute($stid);

//while (oci_fetch($stid)) {
oci_fetch($stid);
    echo oci_result($stid, 'ID') ;
   
//}


oci_free_statement($stid);
oci_close($conn);
*/
	if(empty($username) || empty($password)) {
		$errors[] = 'asa se scrie ??';
	}
	else if (user_exists($conn,$username) === false)
	{
		$errors[] = 'sorry nu esti in baza de date';
		
	}
	else {
		
		
		
			


		$sql = 'SELECT id FROM users WHERE id = :use';
$stid = oci_parse($conn, $sql);

$v = var_export($username, true);
$b = str_replace("'", "", $v);
oci_bind_by_name($stid, 'use', $b);
oci_execute($stid);

//while (oci_fetch($stid)) {
oci_fetch($stid);
    $user_id = oci_result($stid, 'ID') ;
    oci_free_statement($stid);




$sql = 'SELECT password FROM users WHERE password = :pass';
$stid = oci_parse($conn, $sql);

$v = var_export($password, true);
$b = str_replace("'", "", $v);
oci_bind_by_name($stid, 'pass', $b);
oci_execute($stid);

oci_fetch($stid);
    $user_pass = oci_result($stid, 'PASSWORD') ;

oci_free_statement($stid);
oci_close($conn);


			if($password === $user_pass  && count($user_id === 1))
				{

					$_SESSION['user_id'] = $user_id;
					header('Location: firstPage.php');
					exit();
		

				}
				else {
						$errors[] = 'combinatie incorecta';
					}

	}

	//print_r($errors);
	
}
else 
				{
					$errors[] = 'nu am primit date';
				}	
include 'includes/overall/header.php';
include 'css/firsPage.css'
$output = array();
  foreach($errors as $error )
  {
  		$output[] =  '<li>' . $error . '</li>';
  } 
  ?>
  <div>
  	<?php
  echo '<ul>' . implode('', $output) . '</ul>';
?>
</div>
<?php
include 'includes/overall/footer.php'
?>
