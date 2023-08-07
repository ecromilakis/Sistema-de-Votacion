<?php
    $db=NewADOConnection("mysqli");
    $db->Connect("localhost","root","efrain","votacion");
    $db->setCharset ('utf8');
    $driver = 'mysqli'; $host = 'localhost'; $user = 'root'; $password = 'efrain'; $database = 'votacion';
    $limit_item = 30; 
?>