// Armar un array de productos
// Armar un array de precios
// Dar al usuario opción de elegir uno de los productos, una cantidad deseada para comprar, y que el programa devuelva el precio total

const productos = ["Galletitas", "Fideos", "Cafe", "Leche", "Marcadores"];
const precios = [500, 300, 2900, 280, 200];

document.getElementById("seleccionarProducto").addEventListener("click", function () {

    const productoElegido = parseInt(prompt("Ingrese el número del producto que desea comprar:"));

    if (productoElegido >= 1 && productoElegido <= productos.length) {

        const cantidadDeseada = parseInt(prompt("Ingrese la cantidad deseada:"));

        if (!isNaN(cantidadDeseada) && cantidadDeseada > 0) {
            
            const indiceProducto = productoElegido - 1;
            const precioUnitario = precios[indiceProducto];
            const montoTotal = precioUnitario * cantidadDeseada;

            alert(`Usted ha elegido comprar ${cantidadDeseada} ${productos[indiceProducto]}(s).\nMonto Total: $${montoTotal}`);
        } else {
            alert("La cantidad ingresada no es válida.");
        }
    } else {
        alert("El número de producto ingresado no es válido.");
    }
});
