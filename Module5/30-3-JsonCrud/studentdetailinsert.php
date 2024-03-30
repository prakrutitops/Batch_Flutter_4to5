<?php

    include('connect.php');

    $fname = $_POST["fname"];
    $lname = $_POST["lname"];
    $course = $_POST["course"];
    
    
    if($fname=="" && $lname=="" && $course=="")
    {
        echo '0';
    }
    else
    {
        $sql = "insert into studentdetails(fname,lname,course) values ('$fname','$lname','$course')";
        mysqli_query($con,$sql);
    }
    
    

?>