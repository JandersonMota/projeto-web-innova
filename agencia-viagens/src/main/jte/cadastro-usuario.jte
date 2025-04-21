@import com.agenciaviagens.dto.Page
@import com.agenciaviagens.model.Usuario

@param Usuario user

@template.layout.main(
page = new Page("Cadastro de Usuários"),
content = @`

<script src="/js/telefone-formatacao.js" defer></script>

<style>
    .caixa-conteudo {
        display: flex;
        width: 80%;
        /*flex-wrap: wrap;*/
        gap: 2em;
    }

    .lado-a-lado {
        flex-grow: 1;
    }

    .upload-de-foto {
        margin: 0;
        height: auto;
        flex-basis: 300px;
        justify-content: center;
    }

    .campos-formulario {
        margin: 0;
    }

    @media (max-width: 540px) {
        .caixa-cabecalho {
            justify-content: flex-end;
            gap: 5%;
        }

        .caixa-cabecalho h1 {
            font-size: 1.8rem;
        }

        .caixa-conteudo {
            margin-top: 20%;
            display: grid;
        }

        .menu-hamburger {
            display: flex;
            width: 3.5rem;
            height: 3.5rem;
        }

        .upload-de-foto {
            width: auto;
            height: 250px;
        }
    }
</style>

<section class="formulario-container">
    <!-- Área para Foto Expandida -->
    <div class="caixa-conteudo">
        <div class="upload-de-foto lado-a-lado">
            <span>+</span>
        </div>

        <form action="/usuario/criado" method="post">
            <div class="campos-formulario">
                <fieldset>
                    <legend>Dados Pessoais</legend>
    
                    <div class="caixa lado-a-lado">
                        <div class="caixa-input"><input type="text" placeholder="Nome *" class="input-sem-ponta" value="${user.getNome()}" required>
                        </div>
                        <div class="caixa-input"><input type="email" placeholder="E-mail *" class="input-sem-ponta"
                                value="${user.getEmail()}" required></div>
                    </div>
    
                    <div class="caixa lado-a-lado">
                        <div class="caixa-input">
                            <div class="lado-mesclado">
                                
                                <input type="tel" placeholder="Telefone *" class="telefone" value="${user.telefones.getNumero()}" required>
                                
                                <select name="tipo_contato1" class="telefone-selecao" value="${user.telefones.getTipo()}" required>
                                    <option value="" disabled selected>Selecione...</option>
                                    <option value="telefone">Phone</option>
                                    <option value="telegram">Telegram</option>
                                    <option value="whatsapp">WhatsApp</option>
                                </select>
                            </div>
                        </div>
    
                        <div class="caixa-input">
                            <div class="lado-mesclado">
                                <input type="tel" placeholder="Telefone" class="telefone">
                                <select name="tipo_contato2" class="telefone-selecao">
                                    <option value="" disabled selected>Selecione...</option>
                                    <option value="telefone">Phone</option>
                                    <option value="telegram">Telegram</option>
                                    <option value="whatsapp">WhatsApp</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>

            <a class="ancora-add-butao">
                <button class="btn-salvar">
                    <img src="/assets/icons/icone-botao-de-salvar.svg" class="icone">Salvar
                </button>
            </a>
        </form>
    </div>
</section>

`)