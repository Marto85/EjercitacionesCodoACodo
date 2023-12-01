<?php
require 'datos_productos.php';
?>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tienda de Bicicletas</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="./productos.css">
</head>

<body>
    <h1 data-text="Bikes & More"></h1>
    <div class="container-fluid">
        <div class="row">
            <?php
            $listado_productos = datos_productos();

            foreach ($listado_productos as $producto) {
                echo '<div class="col-lg-3 col-md-4 col-sm-6 col-12 mb-4">';
                echo '<div class="card h-100 w-100">';
                echo '<img src="' . $producto['img'] . '" class="card-img-top d-flex align-items-center"">';
                echo '<div class="card-body d-flex flex-column">';
                echo '<p class="card-text description">' . $producto['descripcion'] . '</p>';

                $precio_formateado = '$' . number_format($producto['precio'], 2, '.', ',');

                echo '<strong class="price mt-auto">' . $precio_formateado . '</strong>';
                echo '</div>';
                echo '</div>';
                echo '</div>';
            }
            ?>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>

</html>