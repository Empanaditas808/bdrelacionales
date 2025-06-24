<?php
    header("Content-Type: application/json");

    if ($_SERVER['REQUEST_METHOD'] !== 'PUT'){
        http_response_code( 405);
        echo json_encode(['error' => 'Solo metodo PUT es permitido']);
    }

    require 'conexion.php';

    $input = json_decode(file_get_contents('php://input'), true);
    $id = intval($input["id"]);
    $Nombre = $conn ->real_escape_string($input["Nombre"]);
    $Edad = intval($input['Edad']);
    $Tipo_de_apuesta = $conn ->real_escape_string($input["Tipo_de_apuesta"]);
    $Fondos = intval($input['Fondos']);
    

    $query = "UPDATE casino SET Nombre = ?,  Edad = ?, Tipo_de_apuesta = ?,  Fondos = ?, id = ?";

    $st = $conn -> prepare($query);

    if (!$st) {
        http_response_code(500);
        echo json_encode(["error"=> "Error en la consulta" . $conn->error]);
        exit();
    }

    $st->bind_param("sisii", $Nombre, $Edad, $Tipo_de_apuesta, $Fondos, $id); 

    if ($st->execute()) {
        if ($st->affected_rows > 0) {
            echo json_encode(["message" => "Persona actualizada correctamente"]);
        }else{
            http_response_code(404);
            echo json_encode(["error"=> "No se encontro la persona con id: . $id"]);
        }
    }else{
        http_response_code(500);
        echo json_encode(["error"=> "Error al ejecutar" . $st->error]);
    }
    $st->close();
    $conn->close();

?>