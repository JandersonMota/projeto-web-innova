@import gg.jte.Content
@import com.agenciaviagens.dto.Page
<!--@param java.util.List<String> items -->

@template.layout.main(
    content = @``,
    page = new Page("Início")
)

<!--
@template.layout.main(
    content = @`
        <h2>Lista de itens</h2>
        <ul>
            @for(var item : items)
                <li>${item}</li>
            @endfor
        </ul>`
    , page = new Page("Página Inicial")
)
-->
