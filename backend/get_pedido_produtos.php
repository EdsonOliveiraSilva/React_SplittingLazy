<?php

require './Models/Pedido.php';

echo '<pre>';
print_r(json_encode(Pedido::getPedidosWithProdutos()));
echo '<pre>';