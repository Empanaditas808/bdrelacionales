<?php
    header("Content-Type: application/json");


    require 'conexion.php';

    $sql = "SELECT * FROM casino";
    $result = $conn->query($sql);

    $casino = [];

    if($result && $result->num_rows > 0){
        while($row = $result->fetch_assoc()){
            $casino[] = $row;
        }
    }

    $conn->close();

    header("Content-Type: application/json");
    echo json_encode($casino);
?>