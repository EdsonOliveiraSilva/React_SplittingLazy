<?php

require 'Connection.php';

class Pedido
{
  public static function getAllPedidos()
  {
    $connection = Connection::getDB();

    $stmt = $connection->query('SELECT * FROM pedidos');

    return $stmt->fetchAll(PDO::FETCH_ASSOC);
  }

  public static function getRequestsWithProdutos() {
    $connection = Connection::getDB();

    $stmt = $connection->query('SELECT * FROM pedidos JOIN produtos ON pedidos.produtos_id = produtos.idproduto');

    return $stmt->fetchAll(PDO::FETCH_ASSOC);
  }
}