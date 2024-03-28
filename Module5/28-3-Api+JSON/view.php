<?php
    
    include('connect.php');
    
    $sql ="select * from cricketer";
    
    $r = mysqli_query($con,$sql);
    $response = array();
    
    while($value = mysqli_fetch_array($r))
    {
        $row["id"] = $value["id"];
        $row["fname"] = $value["fname"];
        $row["surname"] = $value["surname"];
        $row["photo"] = $value["photo"];
    
        array_push($response,$row);
        
        
    }
    echo json_encode($response);
    mysqli_close($con);
    


?>