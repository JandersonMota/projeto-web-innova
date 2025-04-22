@import com.agenciaviagens.dto.Page
@import com.agenciaviagens.dto.UsuarioDTO
@import com.agenciaviagens.model.Usuario
@import java.util.List

@param List<Usuario> usuarios
<!-- @param List<UsuarioDTO> obj -->

@template.layout.main(
page = new Page("Gerenciamento de Usuário"),
content = @`

<link rel="stylesheet" href="/css/gerenciamento-pessoa.css">
<link rel="stylesheet" href="/css/pesquisa.css">
<script src="/js/alternar-status.js" defer></script>

<div class="formulario-container">
    <section class="secao-pesquisa">
        <form action="#" method="get" class="formulario-pesquisa">
            <div class="entrada-pesquisa">
                <img src="/assets/icons/botao-de-pesquisar.svg" alt="Ícone de Pesquisa" class="icone-pesquisa">
                <input type="text" placeholder="Pesquise" name="search"
                    onkeydown="if(event.key === 'Enter'){ this.form.submit(); }">
            </div>
        </form>
        <a class="ancora-add-butao" href="/usuario/cadastro"><button class="add-butao">+</button></a>
    </section>

    <section class="cartoes-usuario">

        @if(usuarios != null)
            @for (Usuario user : usuarios)

                <div class="cartao">
                    <div class="foto"><img src="/assets/backgrounds/perfil-equipe.png" alt="Foto do usuário"></div>

                    <div class="cartao-corpo">
                        <div class="descricao">
                            <h2>${user.getNome()}</h2>
                            <p>Admistradora</p>
                        </div>

                        <a class="ancora-add-butao" href="/Usuarios/edita/${user.getIdUsuario()}"><button class="edita">Editar</button></a>
                        <a class="ancora-add-butao" href="/Usuarios/deleta/${user.getIdUsuario()}" onclick="return confirm('Deseja apagar funcionário com ID ${user.getIdUsuario()}?')"><button class="deleta">Deletar</button></a>
                        <button class="ativo">Ativado</button>
                    </div>
                </div>

            @endfor
        @endif

        <!--
        <div class="cartao">
            <div class="foto"><img src="/assets/backgrounds/perfil-equipe.png" alt="Foto do usuário"></div>

            <div class="cartao-corpo">
                <div class="descricao">
                    <h2>Bia</h2>
                    <p>Usuário</p>
                </div>

                <button class="edita">Editar</button>
                <button class="deleta">Deletar</button>
                <button class="ativo">Ativado</button>
            </div>
        </div>
        <div class="cartao">
            <div class="foto"><img src="/assets/backgrounds/perfil-equipe.png" alt="Foto do usuário"></div>

            <div class="cartao-corpo">
                <div class="descricao">
                    <h2>Carlos</h2>
                    <p>Usuário</p>
                </div>

                <button class="edita">Editar</button>
                <button class="deleta">Deletar</button>
                <button class="ativo">Ativado</button>
            </div>
        </div>
        <div class="cartao">
            <div class="foto"><img src="/assets/backgrounds/perfil-equipe.png" alt="Foto do usuário"></div>

            <div class="cartao-corpo">
                <div class="descricao">
                    <h2>Dene</h2>
                    <p>Usuário</p>
                </div>

                <button class="edita">Editar</button>
                <button class="deleta">Deletar</button>
                <button class="ativo">Ativado</button>
            </div>
        </div>
        -->
    </section>
</div>

<!-- Script para ativar/desativar o menu -->
<script>
    document.getElementById("alterar-menu").addEventListener("click", function () {
        document.getElementById("barra-lateral").classList.toggle("active");
    });
</script>

`)