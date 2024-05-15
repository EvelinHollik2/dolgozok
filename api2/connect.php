<?php
//-- adatbázis kapcsolat létre hozása
$conn=new mysqli("localhost", "root", "", "dolgozok");
if ($conn->errno) {
    echo 'Adatbázis hiba';
    die();
}
$conn->set_charset('utf8');