# Blogalizando 🌍📝

Bem-vindo ao **Blogalizando**, um projeto de blog desenvolvido em **Ruby on Rails** com a arquitetura **MVC (Model-View-Controller)**. Este projeto foi criado para gerenciar posts de um blog de forma simples e eficiente, utilizando boas práticas de desenvolvimento e segurança.

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Ruby_On_Rails_Logo.svg/512px-Ruby_On_Rails_Logo.svg.png" />

---

## 🚀 Tecnologias Utilizadas

- **Ruby**: A linguagem de programação utilizada para desenvolver o backend do projeto.
- **Ruby on Rails**: Framework full-stack utilizado para estruturar a aplicação web de forma ágil e com boas práticas de desenvolvimento.
- **Bootstrap**: Framework CSS utilizado para deixar a interface do usuário responsiva e visualmente agradável.
- **JavaScript**: Usado para adicionar interatividade na aplicação.
- **SQLite3**: Banco de dados utilizado durante o desenvolvimento.
- **PostgreSQL**: Banco de dados utilizado em produção, devido à sua robustez e capacidade de lidar com maior volume de dados.

---

## 📦 Gems Utilizadas

O projeto utiliza diversas gems para tornar a aplicação mais funcional e segura. Aqui estão algumas das principais gems:

### 1. **Devise** 🔒
   **Uso**: Implementa autenticação de usuários de forma simples e segura.
   
   **Funcionalidades**:
   - Cadastro de usuário
   - Login/logout
   - Recuperação de senha
   - Confirmação de conta

   **Benefício**: A gem facilita a criação de funcionalidades de segurança, evitando a necessidade de reinventar a roda ao lidar com autenticação.

### 2. **Pundit** 🛡️
   **Uso**: Fornece autorização baseada em políticas, controlando quem pode ou não acessar certas ações e recursos.

   **Funcionalidades**:
   - Define regras de autorização para diferentes tipos de usuários.
   - Protege ações no controle de acesso, como visualizar, editar ou excluir posts.

   **Benefício**: Facilita o gerenciamento de permissões em uma aplicação, garantindo que apenas usuários autorizados possam realizar ações específicas.

### 3. **Kaminari** 📑
   **Uso**: Implementa paginação para o conteúdo exibido na aplicação, como posts do blog.

   **Funcionalidades**:
   - Divide grandes conjuntos de dados em páginas menores e navegáveis.
   - Permite ao usuário navegar pelas páginas de posts de forma fluida e eficiente.

   **Benefício**: A gem melhora a performance da aplicação ao evitar o carregamento de todos os dados de uma vez, proporcionando uma experiência de usuário mais suave.

### 4. **Simple Form** ✍️
   **Uso**: Facilita a criação e personalização de formulários no Rails.

   **Funcionalidades**:
   - Gera automaticamente campos de formulário com base nos atributos do modelo.
   - Permite uma integração fácil com o Bootstrap para estilização de formulários.

   **Benefício**: Torna a criação de formulários mais rápida e eficiente, com suporte a várias opções de personalização e validação.

---

## ⚙️ Configuração e Instalação

### 1. Clonando o Repositório

Para clonar o repositório do projeto, execute o seguinte comando no terminal:

```bash
git clone https://github.com/seuusuario/blogalizando.git
cd blogalizando
```

### 2. Instalando as Dependências

Certifique-se de ter o **Ruby** e o **Rails** instalados em sua máquina. Caso contrário, consulte a [documentação oficial do Rails](https://guides.rubyonrails.org/getting_started.html) para instruções de instalação.

Após garantir que as dependências estejam instaladas, rode o seguinte comando para instalar as gems necessárias:

```bash
bundle install
```

### 3. Banco de Dados

Crie e migre o banco de dados com os seguintes comandos:

```bash
rails db:create
rails db:migrate
```

Durante o desenvolvimento, estamos utilizando **SQLite3** como banco de dados. Quando for para produção, o banco de dados será **PostgreSQL**, então certifique-se de configurar o PostgreSQL no ambiente de produção, conforme a [documentação do Rails](https://guides.rubyonrails.org/configuring.html#configuring-databases).

### 4. Rodando a Aplicação

Para iniciar o servidor local, basta rodar o seguinte comando:

```bash
rails server
```

A aplicação estará disponível em `http://localhost:3000`.

---

## 🧩 Funcionalidades

- **Cadastro de Usuários**: Os usuários podem se registrar, fazer login e gerenciar suas contas com a gem **Devise**.
- **Autorização**: A gem **Pundit** é utilizada para controlar o acesso às funcionalidades do blog, garantindo que apenas administradores possam editar ou excluir posts.
- **Criação de Posts**: Usuários autenticados podem criar, editar e excluir posts no blog.
- **Paginação de Posts**: A gem **Kaminari** garante que a lista de posts seja dividida em várias páginas.

---

## 📂 Estrutura do Projeto

A estrutura do projeto segue o padrão **MVC** (Model-View-Controller):

- **Models**: Contêm a lógica de dados e relacionamento entre as entidades.
- **Views**: São as páginas HTML que os usuários visualizam no navegador. Aqui é onde a interface é gerada, utilizando **Bootstrap** para estilização.
- **Controllers**: Gerenciam as interações do usuário com o sistema, processando requisições e retornando respostas adequadas.

---

## 🛠️ Como Contribuir

1. Faça um fork deste repositório.
2. Crie uma branch com sua feature: `git checkout -b minha-feature`.
3. Comite suas alterações: `git commit -am 'Adicionando nova feature'`.
4. Faça o push para a branch: `git push origin minha-feature`.
5. Abra um Pull Request.

---

## 📝 Licença

Este projeto está licenciado sob a licença [MIT](https://opensource.org/licenses/MIT).

---

## 💬 Contato

- **Autor**: Eduardo Reche Martins
- **Email**: seuemail@example.com
- **LinkedIn**: [linkedin.com/in/seulinkedin](https://linkedin.com/in/seulinkedin)
