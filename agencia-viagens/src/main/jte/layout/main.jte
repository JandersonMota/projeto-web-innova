@import gg.jte.Content
@param Content content
@param com.agenciaviagens.dto.Page page = null

<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Outfit:wght@400;500;600&display=swap">
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/styles.css">
    <link rel="stylesheet" href="/css/cadastro.css">
    <title>${page == null ? "INNOVA TURISMO" : page.title()}</title>
    <style>
        @media (max-width: 540px) {
            .menu-hamburger {
                display: flex;
                width: 3.5rem;
                height: 3.5rem;
            }
        }
    </style>
</head>

<body>
    <div class="fundo-conteudo">
        <!-- Menu Hambúrguer -->
        <div class="menu-hamburger" id="alterar-menu">
            <svg xmlns="http://www.w3.org/2000/svg" width="96" height="96" viewBox="0 0 24 24">
                <path fill="currentColor"
                    d="M12 2A10 10 0 0 0 2 12a10 10 0 0 0 10 10a10 10 0 0 0 10-10A10 10 0 0 0 12 2M6 7h12v2H6zm0 4h12v2H6zm0 4h12v2H6z" />
            </svg>
        </div>

        <!-- Barra Lateral -->
        <aside class="barra-lateral" id="barra-lateral">
            <div class="logo">
                <img src="/assets/backgrounds/logo-innova-tour.png" alt="Innova Turismo">
            </div>
            <nav>
                <ul>
                    <li><a href="#"><img src="/assets/icons/icone-das-hospedagens.svg" class="icone">Hospedagens</a>
                    </li>
                    <li><a href="#"><img src="/assets/icons/icone-dos-pacotes-de-viagens.svg" class="icone">Pacote</a>
                    </li>
                    <li><a href="/exibir-usuario/buscar"><img src="/assets/icons/icone-dos-funcionarios.svg" class="icone">Funcionários</a>
                    </li>
                    <li><a href="#"><img src="/assets/icons/icone-dos-clientes.svg" class="icone">Clientes</a></li>
                </ul>
            </nav>
        </aside>

        <div class="corpo-principal">
            <!-- Cabeçalho -->
            <header>
                <div class="caixa-cabecalho">
                    <h1>${page == null ? "" : page.title()}</h1> <!-- Altere aqui para a sua respectiva tela -->
                    <div class="info-usuario">
                        <img src="/assets/icons/icone-avatar.svg" class="avatar" alt="Avatar">
                        <div class="detalhes-usuario">
                            <p>Lorem Ipsum Dolo</p>
                            <small>Admin</small>
                        </div>
                    </div>
                </div>
            </header>

            <!-- Conteúdo Principal -->
            <main class="conteudo">

                <!-- ESCREVA SEU CÓDIGO AQUI -->
                ${content}

            </main>
        </div>
    </div>

    <!-- Script para ativar/desativar o menu -->
    <script>
        document.getElementById("alterar-menu").addEventListener("click", function () {
            document.getElementById("barra-lateral").classList.toggle("active");
        });
    </script>

</body>
</html>