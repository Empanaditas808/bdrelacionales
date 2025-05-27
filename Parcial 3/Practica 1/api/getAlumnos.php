<?php
    header("Content-Type: application/json");
    header("Acess-Control-Allow-Origin: *");

    $usuarios=[
        ["id" => 1, "nombre" => "Angel Garcia", "correo" => "angel@gmail.com"],
        ["id" => 1, "nombre" => "Nicholas Bernal", "correo" => "Nicholas@gmail.com"],
        ["id" => 1, "nombre" => "Uriel Camacho", "correo" => "uriel@gmail.com"],
    ];

    echo json_encode($usuarios);

?>