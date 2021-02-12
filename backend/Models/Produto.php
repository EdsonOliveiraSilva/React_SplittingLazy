<?php

require 'Connection.php';

class Produto 
{
  public static function getAll()
  {
    $connection = Connection::getDB();

    $stmt = $connection->query('SELECT * FROM produtos');

    return $stmt->fetchAll(PDO::FETCH_ASSOC);
  }
}