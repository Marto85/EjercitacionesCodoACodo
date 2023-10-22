let saldoInicial = 0;
let saldoActual = saldoInicial;

function consultaSaldo () {
    alert('Su saldo actual es: $' + saldoActual);
}

function retiro () {
    const montoRetiro = parseInt(prompt('Ingrese el monto a retirar: '));

    if(!isNaN(montoRetiro) && montoRetiro > 0) {
        if(montoRetiro <= saldoActual) {
            saldoActual -= montoRetiro;
            alert('Retiro exitoso, su saldo actual es: $' + saldoActual);
        } else {
            alert('Ha ingresado un monto no valido o bien usted no posee fondos suficientes para realizar el retiro. Su saldo actualmente es de: $' + saldoActual);
        }
    }
}

function realizarDeposito() {
    const montoDeposito = parseInt(prompt("Ingrese el monto a depositar:"));

    if (!isNaN(montoDeposito) && montoDeposito > 0) {
        saldoActual += montoDeposito;
        alert(`Depósito exitoso. Su saldo actual es: $${saldoActual}`);
    } else {
        alert("Monto no válido.");
    }
}

document.getElementById("consultaSaldo").addEventListener("click", consultaSaldo);
document.getElementById("retiro").addEventListener("click", retiro);
document.getElementById("deposito").addEventListener("click", realizarDeposito);
document.getElementById("salir").addEventListener("click", function() {
    alert("Gracias por utilizar el Banco Codo a Codo. Hasta luego.");
});

