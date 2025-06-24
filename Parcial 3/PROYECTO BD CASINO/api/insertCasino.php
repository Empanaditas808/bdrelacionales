<?php
    header("Content-Type: application/json");

    if($_SERVER['REQUEST_METHOD'] !== 'POST'){
        http_response_code(405);
        echo json_encode(['error' => 'Solo metodo POST es permitido']);
    }

    require 'conexion.php';

    $data = json_decode(file_get_contents('php://input'), true);
    $Nombre = $data['Nombre']; 
    $Edad = intval($data['Edad']); 
    $Tipo_de_apuesta = $data['Tipo_de_apuesta']; 
    $Fondos = intval($data['Fondos']);


    $query = $conn->prepare("INSERT INTO casino (Nombre, Edad, Tipo_de_apuesta, Fondos) VALUES (?, ?, ?, ?)");

    if(!$query){
        http_response_code(500);
        echo json_encode(["error" => "Ocurrio un error"]);
        exit;
    }

    $query->bind_param("sisi", $Nombre, $Edad, $Tipo_de_apuesta, $Fondos);

    if($query->execute()){
        echo json_encode(["mensaje" => "Persona insertado correctamente", "id" => $query->insert_id]);
    } else{
        http_response_code(500);
        echo json_encode(["error" => "Fallo la insercion" . $query->error]);
    }
    $query->close();
    $conn->close();

?>