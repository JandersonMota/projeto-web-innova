document.addEventListener("DOMContentLoaded", function () {
    document.querySelectorAll("input.telefone").forEach(input => {
        input.addEventListener("input", formatarTelefone);
        input.addEventListener("focus", adicionarParenteses);
    });
});

function adicionarParenteses(event) {
    let input = event.target;
    if (!input.value.startsWith("(")) {
        input.value = "(";
    }
}

function removerParentesesSeVazio(event) {
    let input = event.target;
    if (input.value === "(") {
        input.value = ""; // Remove o parêntese se nada for digitado
    }
}

function formatarTelefone(event) {
    let input = event.target;
    let numeros = input.value.replace(/\D/g, ""); // Remove tudo que não for número

    // Se não houver números, limpa o campo
    if (numeros.length === 0) {
        input.value = "";
        return;
    }

    let limiteNumeros = 10; // Por padrão, permite 10 números
    let terceiroNumero = numeros.length >= 3 ? numeros[2] : ""; // Obtém o terceiro número

    if (terceiroNumero === "9") {
        limiteNumeros = 11; // Se o terceiro número for 9, permite 11 números
    }

    // Corta o excesso de números
    numeros = numeros.substring(0, limiteNumeros);

    // Formatação do telefone
    let telefoneFormatado = "";

    if (numeros.length > 0) {
        telefoneFormatado = "(" + numeros.substring(0, 2);
    }
    if (numeros.length >= 3) {
        telefoneFormatado += ") " + terceiroNumero;

        if (terceiroNumero === "9") {
            telefoneFormatado += " "; // Adiciona espaço após o 9
        }
    }
    if (numeros.length >= 4) {
        telefoneFormatado += numeros.substring(3, terceiroNumero === "9" ? 7 : 6);
    }
    if (numeros.length >= (terceiroNumero === "9" ? 7 : 6)) {
        telefoneFormatado += "-" + numeros.substring(terceiroNumero === "9" ? 7 : 6, limiteNumeros);
    }

    // Remove espaço ou hífen se o número for apagado
    telefoneFormatado = telefoneFormatado.replace(/\s$/, "").replace(/-$/, "");

    input.value = telefoneFormatado;
}