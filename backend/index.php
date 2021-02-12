<?php

header("Access-Control-Allow-Origin:*"); // Torna possivel a api ser consumida por outras aplicações  //Indica um arquivo do tipo JSON 
header("Content-type: application/json");

require './Models/Produto.php';

$produtos = Produto::getAll();

print_r(json_encode($produtos));