@import com.agenciaviagens.dto.Page

@template.layout.main(
page = new Page("Cadastro de Pacote"),
content = @`

 <link rel="stylesheet" href="../css/cadastro.css">
        <link rel="stylesheet" href="../css/cadastro-pacote.css">
        <title>Pacote Viagens</title>
        <style>
            @media (max-width: 540px) {
                .menu-hamburger {
                    display: flex;
                    width: 3.5rem;
                    height: 3.5rem;
                }
            }
        </style>        
  

   
        <div class="fundo-conteudo">
            <!-- Menu Hambúrguer -->
            <div class="menu-hamburger" id="alterar-menu">
                <svg xmlns="http://www.w3.org/2000/svg" width="96" height="96" viewBox="0 0 24 24">
                    <path fill="currentColor" d="M12 2A10 10 0 0 0 2 12a10 10 0 0 0 10 10a10 10 0 0 0 10-10A10 10 0 0 0 12 2M6 7h12v2H6zm0 4h12v2H6zm0 4h12v2H6z" />
                </svg>
            </div>
            
            <!-- Barra Lateral -->
            <aside class="barra-lateral" id="barra-lateral">
                <div class="logo">
                    <img src="../assets/backgrounds/logo-innova-tour.png" alt="Innova Turismo">
                </div>
                <nav>
                    <ul>
                        <li><a href="#"><img src="../assets/icons/icone-das-hospedagens.svg" class="icone"> Hospedagens</a></li>
                        <li><a href="#"><img src="../assets/icons/icone-dos-pacotes-de-viagens.svg" class="icone"> Pacote</a></li>
                        <li><a href="#"><img src="../assets/icons/icone-dos-funcionarios.svg" class="icone"> Funcionários</a></li>
                        <li><a href="#"><img src="../assets/icons/icone-dos-clientes.svg" class="icone"> Clientes</a></li>
                    </ul>
                </nav>
            </aside>

            <!-- Conteúdo Principal -->
           
                <!-- Cabeçalho -->
                
                    <div class="caixa-cabecalho">
                        <h1>Cadastro de Viagens </h1> <!-- Altere aqui para a sua respectiva tela -->
                        <div class="info-usuario">
                            <img src="../assets/icons/icone-avatar.svg" class="avatar" alt="Avatar">
                            <div class="detalhes-usuario">
                                <p>Lorem Ipsum Dolo</p>
                                <small>Admin</small>
                            </div>
                        </div>
                    </div>
                
                <!---->

                <!-- ESCREVA SEU CÓDIGO AQUI -->
                                          
                <section class="formulario-container">
                    
                    <!-- Área para Foto Expandida -->
                    <div class="caixa-conteudo">
                        <div class="envio-de-foto">
                            <input type="file" id="file-upload" class="input-file">
                    <label for="file-upload" class="file-label">
                        <span>+</span>
                        <p>Clique aqui para adicionar uma Foto</p>
                    </label>
                        </div>
                    
                                       
                    <form action="" method="post" class="campos-formulario lado-a-lado">
                        <fieldset>
                            <legend></legend>
                            <div class="caixa lado-a-lado">
                                <div class="caixa-input"><input type="text" placeholder="Insira um título"></div> 
                                <div class="caixa-input"><input type="text" placeholder="Insira uma descrição"></div>
                                <div class="caixa-input"><input type="date" placeholder="Data de partida"></div> <!-- mudar-->
                                <div class="caixa-input"><input type="date" placeholder="Data de chegada"></div> <!-- mudar-->
                            </div>
                        </fieldset>

                        <fieldset>
                            <legend></legend>
                            <div class="caixa lado-a-lado">
                                <div class="caixa-input"><input type="text" placeholder="Estado"></div>
                                <div class="caixa-input"><input type="text" placeholder="Hospedagem"></div>
                                <div class="caixa-input"><input type="text" placeholder="Passeios"></div>
                                <div class="caixa-input"><input type="text" placeholder="Translado"></div>
                                <div class="caixa-input"><input type="text" placeholder="Valor" ></div>
                            </div>
                        </fieldset>
                       
                    </form>
                </div>
                    <button class="btn-salvar">
                        <img src="../assets/icons/icone-botao-de-salvar.svg"class="icone">Salvar
                    </button>
                </section>

`)