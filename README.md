# IFBA - Programação web

- **Instituição:** IFBA - Instituto Federal da Bahia
- **Curso:** Análise e Desenvolvimento de Sistemas (ADS)
- **Disciplina:** Programação web
- **Projeto:** Criar um sistema web
- **Professor:** Felipe Gustavo de Souza Gomes
- **Semestre:** 4
- **Ano:** 2024.2

## Integrantes do Projeto

<table>
  <tr>
    <td align="center">
      <img src="https://avatars.githubusercontent.com/u/111200453?v=4" width="100px;" alt="Foto do Integrante Amanda"/><br />
      <sub><b><a href="https://github.com/Amandalopes28">Amanda Lopes</a></b></sub>
    </td>
    <td align="center">
      <img src="https://avatars.githubusercontent.com/u/80362674?v=4" width="100px;" alt="Foto do Integrante Janderson"/><br />
      <sub><b><a href="https://github.com/JandersonMota">Janderson Mota</a></b></sub>
    </td>
    <td align="center">
      <img src="https://avatars.githubusercontent.com/u/157417082?v=4" width="100px;" alt="Foto do Integrante Saulo"/><br />
      <sub><b><a href="https://github.com/SaulinhoDevs">Saulo Melo</a></b></sub>
    </td>
    <td align="center">
      <img src="https://avatars.githubusercontent.com/u/165093325?v=4" width="100px;" alt="Foto do Integrante Vinicius"/><br />
      <sub><b><a href="https://github.com/ViniciusXSantos">Vinicius Santos</a></b></sub>
    </td>
  </tr>
</table>

## 🚀 Docker
📥 Download da imagem

Baixe a imagem Docker do projeto:

🔗 https://drive.google.com/file/d/1621PRXMf38JxzXbjXWX5NvnE78q8tc1y/view?usp=drive_link

### 💻 Pré-requisitos
> Se você estiver usando o Windows 11/10 Home, será necessário habilitar o WSL2 (Subsistema do Windows para Linux). Usuários do Windows Pro podem pular para a etapa de instalação do Docker.
✅ Habilitar WSL2 (somente para Windows Home)

1. Abra o PowerShell como Administrador e execute:
  ``` powershell
  wsl --install
  ```

2. Defina o WSL2 como padrão:
  ``` powershell
  wsl --set-default-version 2
  ```

### 🐳 Instalar o Docker Desktop

Baixe e instale o Docker Desktop:

🔗 https://www.docker.com/products/docker-desktop/

> Após a instalação, abra o Docker Desktop e aguarde até que ele esteja em execução (Docker is running).
### 📦 Importar a imagem Docker

Após baixar o arquivo .tar, execute o seguinte comando no terminal:
  ``` powershell
  docker load -i agencia-viagens-image.tar
  ```
> Isso carregará a imagem do projeto no seu Docker local.


## Descrição do projeto
A In Nova Turismo é uma agência de viagens especializada em oferecer pacotes de turismo personalizados para destinos nacionais e internacionais. Este projeto tem como objetivo desenvolver um sistema web completo que permitirá à empresa gerenciar suas operações e oferecer uma experiência de compra online para seus clientes.

O sistema contará com funcionalidades que incluem:

**1. Gestão de pacotes turísticos:**

- Criação, edição e exclusão de pacotes de viagens.
- Visualização de informações detalhadas, como itinerários, valores e disponibilidade.

**2. Cadastro e gerenciamento de clientes:**

- Registro de informações pessoais dos clientes.
- Atualização de dados de contato e histórico de compras.

**3. Sistema de autenticação e autorização:**

- Login seguro para os administradores da empresa.
- Diferenciação de acessos entre administradores e usuário.

**4. Painel administrativo:**

- Controle de estoque de pacotes de viagens.
- Relatórios e análises de vendas.

**5. E-commerce de viagens:**

- Visualização de pacotes por parte dos clientes.
- Sistema de busca e filtragem de pacotes por destino, preço e data.

Além disso, o sistema integrará APIs para obter informações como cotação de moedas e clima de destinos, tornando a experiência do usuário mais rica e informativa.

## Requisitos do sistema

### Funcionais:

**1. Gerenciamento de usuários:**

- Cadastro e validação de usuários com status inicial "inativo".
- Login e recuperação de senha.
- Atualização de informações pessoais.

**2. Gestão de produtos:**

- CRUD completo para pacotes de viagens e serviços relacionados.
- Adição de imagens e descrição detalhada para cada pacote.

**3. E-commerce:**

- Página inicial com destaque para pacotes em promoção.
- Sistema de busca por destino, faixa de preço e datas disponíveis.

**4. Administração:**

- Painel para visualização e gerenciamento de vendas.
- Relatórios de desempenho.

**5. Integração com APIs externas:**

- Obtenção de dados climáticos para destinos selecionados.
- Cotação de moedas para pacotes internacionais.

### Não Funcionais:

**1. Usabilidade:**

- Interface responsiva e intuitiva.
- Design adaptado para dispositivos móveis e desktops.

**2. Segurança:**

- Senhas armazenadas com hashing seguro (e.g., bcrypt).
- Proteção contra ataques comuns, como SQL Injection e Cross-Site Scripting (XSS).

**3. Performance:**

- Respostas rápidas para operações CRUD.
- Tempo de carregamento otimizado para a interface do usuário.

**4. Disponibilidade:**

- Suporte a múltiplos usuários simultaneamente.
- Backup automático do banco de dados.

Este sistema será desenvolvido usando tecnologias modernas, com o backend em Spring Boot e o frontend utilizando HTML, CSS e JavaScript, garantindo robustez e escalabilidade.

## Estrutura do projeto

### Raiz do projeto

```
agencia-viagens/
├── frontend/                  # Frontend do sistema
├── backend/                   # Backend do sistema (Spring Boot)
├── database/                  # Scripts e backups do banco de dados
├── docker-compose.yml         # Configuração para subir os serviços (Docker)
├── README.md                  # Documentação do projeto
```

### Estrutura do frontend

```
frontend/
├── public/                    # Arquivos estáticos (imagens, ícones)
├── css/                       # Arquivos CSS personalizados
├── js/                        # Scripts JavaScript (lógica de interação)
├── pages/                     # Páginas HTML
│   ├── index.html             # Página inicial
│   ├── viagens.html           # Página de listagem de viagens
│   ├── detalhes.html          # Página de detalhes de uma viagem
│   ├── contato.html           # Página de contato
├── assets/                    # Imagens, fontes e outros ativos
│   ├── icons/                 # Ícones que representam ações, elementos ou seções da interface (SVG ou PNG)
│   ├── backgrounds/           # Imagens de fundo para design ou conteúdo visual
├── README.md                  # Documentação do frontend
```

### Estrutura do backend

```
backend/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   ├── com/agenciaviagens/
│   │   │   │   ├── controller/         # Controladores (Endpoints REST)
│   │   │   │   ├── service/            # Lógica de negócios
│   │   │   │   ├── repository/         # Repositórios (acesso ao banco)
│   │   │   │   ├── model/              # Modelos (entidades JPA)
│   │   │   │   ├── dto/                # Transferência de dados
│   │   │   │   ├── config/             # Configurações gerais (CORS, segurança)
│   │   │   │   ├── module/             # Módulos do sistema
│   │   │   │   │   ├── usuarios/       # Módulo de Usuários
│   │   │   │   │   ├── viagens/        # Módulo de Viagens
│   │   │   │   │   ├── reservas/       # Módulo de Reservas
│   │   │   │   ├── Application.java    # Classe principal do Spring Boot
│   │   │   ├── jte/                    # Diretório contendo templates JTE (Java Template Engine) usados para gerar páginas HTML de forma dinâmica no backend.
│   │   ├── resources/
│   │   │   ├── application.properties      # Configurações do Spring Boot
│   │   │   ├── static/                     # Arquivos estáticos (opcional)
├── target/                             # Diretório gerado automaticamente pelo Maven, onde são armazenados os arquivos compilados, JARs ou WARs do projeto.
├── Dockerfile                          # Configuração do Docker para o backend
├── pom.xml                             # Arquivo de configuração do Maven, onde são definidos as dependências, plugins, informações do projeto e configurações de build.
├── README.md                           # Documentação do backend
```

### Estrutura do banco de dados

```
database/                  # Scripts e backups do banco de dados
├── scripts/               # Scripts SQL de inicialização
│   ├── schema.sql         # Criação do esquema do banco
│   ├── data.sql           # Dados iniciais
├── backups/               # Backups do banco de dados
```

---

## Projeto

### Descrição do Trabalho: Desenvolvimento de Sistema de Programação Web

Desenvolver um sistema web funcional e seguro, que inclua funcionalidades de cadastro, login, gerenciamento de dados do usuário e CRUD (Create, Read, Update, Delete) de cinco entidades. O projeto será desenvolvido por uma equipe de 5 pessoas, incentivando a aplicação de boas práticas de desenvolvimento e trabalho em equipe.

Para o sistema vocês têm a liberdade de escolher qual domínio de negócio utilizar, ou seja, a ideia do sistema é com o grupo desde que siga os requisitos abaixo.


### Requisitos do Sistema

- [ ] Autenticação e Autorização:
  - [ ] Implementar sistema de **cadastro de usuários**, incluindo validação de dados:
    O usuário terá pelo menos os campos:
    - [ ] email
    - [ ] nome
    - [ ] senha
    - Outros campos podem ser colocados.
    - [ ] Usuários cadastrados iniciaram com **status inativo**.
  - [ ] Implementar funcionalidade de **login** onde o usuário deverá logar com email e senha.
    - [ ] Só usuários ativos poderão logar.
  - [ ] Implementar uma tela para o usuário validar o seu login via um código recebido por email.
    - [ ] O link para essa página deverá estar na página de login.
    - [ ] Caso um usuário não ativo tente logar, ele deverá ser redirecionado para essa página de validação.
    - [ ] Nessa página dar a possibilidade de reenvio do código de validação por email.
  - [ ] Permitir ao usuário realizar a **alteração de seus dados pessoais**, como nome, senha e e-mail.
  - [ ] Proteger o acesso às funcionalidades internas do sistema, de modo que apenas usuários logados possam acessar as telas de CRUD das entidades.
- [ ] CRUD das Entidades:
    - [ ] O sistema deverá conter **5 entidades principais**, cada uma com suas respectivas operações de CRUD:
      - Entidade 1 (exemplo, Produtos).
      - Entidade 2 (exemplo, Categorias).
      - Entidade 3 (exemplo, Pedidos).
      - Entidade 4 (exemplo, Clientes).
      - Entidade 5 (exemplo, Fornecedores).
    - [ ] Cada entidade deve ter uma **interface gráfica dedicada** para as operações de CRUD:
      - **Criação de registros** (Create).
      - **Visualização de registros** (Read).
      - **Edição de registros** (Update) (Pode ser usado o mesma tela da criação).
      - **Exclusão de registros** (Delete) (Não precisa de tela, apenas um botão de exclusão já serve).

### Regras de Negócio

1. O acesso às telas de CRUD das entidades será permitido **apenas para usuários autenticados**.
2. Cada entidade deve estar relacionada a um modelo de dados no banco de dados, incluindo validações para evitar inconsistências (e.g., campos obrigatórios, formatos específicos).
3. Os dados de autenticação e das entidades devem ser armazenados de forma segura no banco de dados.

## Especificações Técnicas

1. **Linguagens e Frameworks Sugeridos:**
- Backend: Spring Boot.
- Frontend: HTML, CSS, JavaScript e JTE (Java Template Engine). Fiquem livres para usar outros frameworks de front como taiwind ou bootstrap para a parte de estilos.
- Banco de Dados: H2.

2. **Requisitos de Segurança:**
- Utilizar **hashing de senhas** (e.g., bcrypt).

3. **Requisitos de Integração:**
- O sistema deverá conter pelo menos uma integração com um sistema externo via API. Por exemplo, preencher dados de endereço de um usuário: ao informar o cep podemos usar o API brasil para preencher outros dados como cidade, rua, estado e etc.

4. **Estrutura do Sistema:**
- Camadas de desenvolvimento separadas:
  - **Frontend** para a interface do usuário.
  - **Backend** para lógica de negócios e manipulação de dados.
  - **Banco de Dados** para persistência das informações.

### Critérios de Avaliação
1. **Funcionalidade:** O sistema deve atender aos requisitos especificados, incluindo autenticação e CRUD completo para todas as entidades.
2. **Segurança:** Implementação de boas práticas de segurança no backend e frontend.
3. **Interface:** Qualidade e usabilidade da interface de usuário.
4. **Trabalho em Equipe:** Divisão clara de tarefas e integração das partes desenvolvidas.
5. **Responsividade:** O sistema deverá ter a sua interface responsiva para se adaptar a tela do celular e do computador.

### Entrega Final:
O projeto deverá ser entregue em um repositório do GitHub. O link deverá ser postado no forms https://forms.gle/1eVCXUVJQVT4kYHH7.

Será feita uma apresentação no final do semestre, a data ainda será combinada.
