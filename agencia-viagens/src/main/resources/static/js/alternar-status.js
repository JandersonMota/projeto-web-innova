document.addEventListener("DOMContentLoaded", function() {
    document.querySelectorAll(".ativo").forEach(button => {
        button.addEventListener("click", function() {
            if (this.textContent === "Ativado") {
                this.textContent = "Desativado";
                this.style.backgroundColor = "#e94e1b";
            } else {
                this.textContent = "Ativado";
                this.style.backgroundColor = ""; // Volta ao padrão
            }
        });
    });
});