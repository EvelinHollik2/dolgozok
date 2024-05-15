<?php

header('Content-Type: application/json; charset=utf-8');
header('Access-Control-Allow-Origin: *'); // live server - CORS kikapcsolása
//$data = array('teszt' => 'valami');
//echo json_encode($data);

require_once './connect.php';
$keres = explode('/', $_SERVER['QUERY_STRING']);
switch ($keres[0]) {
    case 'dolgozok':
        switch ($_SERVER["REQUEST_METHOD"]) {
            case 'GET':
                $valasz = $conn->query("SELECT * FROM dolgozok");
                $keres = $valasz->fetch_all(MYSQLI_ASSOC);
                http_response_code(201);
                echo json_encode($keres);
                break;
            case 'POST':
                $nev = filter_input(INPUT_POST,'nev', FILTER_SANITIZE_STRING);
                $neme = $_POST['neme'];
                $reszleg = $_POST['reszleg'];
                $belepesev = filter_input(INPUT_POST,'belepesev', FILTER_SANITIZE_NUMBER_INT);
                $ber = $_POST['ber'];
                $stmt = $conn->prepare("INSERT INTO `dolgozok`(`dolgozoid`, `nev`, `neme`, `reszleg`, `belepesev`, `ber`) VALUES (NULL,?,?,?,?,?)");
                $stmt->bind_param("sssii", $nev, $neme, $reszleg, $belepesev, $ber);
                $stmt->execute();
                http_response_code(201);
                break;
            default:
                http_response_code(401);
                echo json_encode(array("hiba" => "ismeretlen kérés"));
                break;
        }
        break;

    default:
        http_response_code(401);
        echo json_encode(array("hiba" => "ismeretlen kérés"));
        break;
}
