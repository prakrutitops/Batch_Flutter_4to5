<?php
    
    include('connect.php');
    
    $sql ="select * from studentdetails";
    
    $r = mysqli_query($con,$sql);
    $response = array();
    
    while($value = mysqli_fetch_array($r))
    {
        $row["id"] = $value["id"];
        $row["fname"] = $value["fname"];
        $row["lname"] = $value["lname"];
        $row["course"] = $value["course"];
    
        array_push($response,$row);
        
        
    }
    echo json_encode($response);
    mysqli_close($con);
    


?>