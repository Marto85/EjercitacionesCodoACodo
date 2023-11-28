<?php

class MediosDeTransporte {
    public $tipo;
    public $color;
    public $marca;
    public $modelo;
    public $velocidadMaxima;
    public $estado;
    public $cantidadDePuertas;
    public $cantidadDeRuedas;
    public $combustible;
    public $capacidadDeCombustible;

    public function __construct($tipo, $color, $marca, $modelo, $velocidadMaxima, $estado, $cantidadDePuertas, $cantidadDeRuedas, $combustible, $capacidadDeCombustible) {
        $this->tipo = $tipo;
        $this->color = $color;
        $this->marca = $marca;
        $this->modelo = $modelo;
        $this->velocidadMaxima = $velocidadMaxima;
        $this->estado = $estado;
        $this->cantidadDePuertas = $cantidadDePuertas;
        $this->cantidadDeRuedas = $cantidadDeRuedas;
        $this->combustible = $combustible;
        $this->capacidadDeCombustible = $capacidadDeCombustible;
    }
}

$auto = new MediosDeTransporte("Auto", "rojo", "Ford", "Fiesta", 180, "Apagado", 5, 4, "Nafta", 50);
$bus = new MediosDeTransporte("Bus", "amarillo", "Mercedes Benz", "Monoblock", 120, "encendido", 2, 6, "Diesel", 100);
$avion = new MediosDeTransporte("Avion", "blanco", "Boeing", "747", 900, "encendido", 2, 18, "Kerosene", 1000);
$barco = new MediosDeTransporte("Barco", "azul", "Titanic", "Titanic", 50, "encendido", 2, 0, "Diesel", 1000);
$bicicleta = new MediosDeTransporte("Bicicleta", "verde", "Aurora", "basicona", 30, "encendido", 0, 2, "Humano", 0);



echo "Estos son los medios de transporte que hemos creado:\n";
print_r([$auto, $bus, $avion, $barco, $bicicleta]);

