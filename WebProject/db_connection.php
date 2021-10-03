<?php

// db_connection.php

$db_server  = "localhost";
$db_user    = "root";
$db_password= "";
$database   = "web_shop";

$con = mysqli_connect($db_server, $db_user, $db_password, $database);

if(mysqli_connect_errno() > 0)
{
    echo 'problem sa spajanjem na bazu podataka: ';
    echo mysqli_connect_error();
    exit;
}

mysqli_query($con, "SET NAMES utf8");


?>