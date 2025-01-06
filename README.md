<p align="center">
   <img src="https://readme-typing-svg.herokuapp.com?font=Century+Gothic&weight=800&size=48&pause=1000&color=F7F7F7&center=true&vCenter=true&width=435&lines=%E2%99%A6%EF%B8%8F+Blogalizando+%E2%99%A6%EF%B8%8F" alt="Typing SVG" />  
</p>

---

<h1 align="center">❗📺 NOVO UPDATE! CLIQUE NA LOGO DO RAILS ABAIXO PARA VER O VÍDEO COMPLETO DE EXPLICAÇÃO E VISUALIZAÇÃO DO PROJETO</h1>

<a href="https://www.youtube.com/watch?v=0C7U4U3IDXU" target="_blank"> <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Ruby_On_Rails_Logo.svg/512px-Ruby_On_Rails_Logo.svg.png"/> </a>

---
<h3><a href="https://blogalizando.onrender.com" target="_blank"> ✔ Link para o site</a>
<br><br>
🟥 pode ser que demore para carregar devido a hospedagem e situação do servidor Render</h3>

---

### • 💡 Tutorial para criação de contas no mailer ( uso da gem opener_web explicada no vídeo acima, minuto: 07:45 )

https://github.com/user-attachments/assets/c772c326-2c93-451b-ae55-96e6e5aafdc8

---

Bem-vindo ao **Blogalizando!**, um projeto de blog desenvolvido em **Ruby on Rails** com a arquitetura **MVC (Model-View-Controller)**. O objetivo do Blogalizando é fornecer uma aplicação web de gerenciamento de posts, com funcionalidades essenciais como cadastro e autenticação de usuários, gerenciamento de permissões de acesso e navegação otimizada através de paginação. A aplicação também segue boas práticas de desenvolvimento e segurança para garantir uma experiência robusta e agradável para os usuários.

---

# 🚀 Tecnologias Utilizadas

## O projeto foi desenvolvido com as seguintes tecnologias:

<img src="https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white" height="35"  />

A linguagem de programação principal utilizada no projeto. Ruby é uma linguagem dinâmica, de alto nível e orientada a objetos, muito conhecida pela simplicidade e elegância de sua sintaxe. Sua combinação com o Rails permite que o desenvolvimento de aplicações web seja ágil e com boa legibilidade do código. Ruby promove a produtividade do desenvolvedor com um ecossistema de bibliotecas e ferramentas bem estruturado, seguindo o príncipio CoC (Convention over Configuration).

##

<img src="https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white" height="35"  />

Framework full-stack utilizado para estruturar a aplicação. Rails adota convenções que tornam o desenvolvimento de aplicações web mais rápido e eficiente, com muitas funcionalidades prontas para uso, como o roteamento, manipulação de banco de dados, e renderização de views. A arquitetura **MVC** do Rails separa claramente a lógica de controle, visualização e acesso a dados, facilitando a manutenção e escalabilidade do sistema.

##

<img src="https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white" height="35"  />

Framework CSS utilizado para estilizar e tornar a interface da aplicação mais agradável e responsiva. O Bootstrap facilita o design da aplicação, proporcionando uma interface limpa e consistente em dispositivos móveis e desktop sem a necessidade de criar CSS do zero. Ele inclui componentes como botões, formulários, modais e grids, que são amplamente utilizados para garantir uma experiência de usuário rica e adaptável.

##

<img src="https://img.shields.io/badge/Sqlite-003B57?style=for-the-badge&logo=sqlite&logoColor=white" height="35"  />

Banco de dados utilizado durante o desenvolvimento da aplicação. SQLite é uma solução de banco de dados leve, ideal para ambientes de desenvolvimento e testes. Ele não requer uma instalação de servidor e armazena dados localmente no sistema de arquivos, facilitando a configuração do projeto em máquinas de desenvolvimento.

##

<img src="https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white" height="35"  />

Banco de dados utilizado em produção, oferecendo maior robustez e desempenho para lidar com grandes volumes de dados. O PostgreSQL é um banco de dados relacional de código aberto conhecido por sua confiabilidade, performance e conformidade com padrões SQL. Ele é ideal para ambientes de produção, onde a consistência e escalabilidade dos dados são essenciais.

---

# 📦 Gems Utilizadas

O projeto utiliza diversas gems para tornar a aplicação mais funcional, segura e otimizada. Aqui estão algumas das principais gems:

## **Devise** 🔒
   **Uso**: Implementa autenticação de usuários de forma simples e segura.

   **Funcionalidades**:
   - Cadastro de usuário
   - Login/logout
   - Recuperação de senha
   - Confirmação de conta
   - Autenticação de múltiplos modelos de usuários

   **Benefício**: O **Devise** é uma gem completa e muito utilizada no ecossistema Ruby on Rails para gerenciar autenticação de usuários. Com essa gem, podemos implementar todas as funcionalidades de segurança necessárias de forma rápida e confiável. Em vez de construir esses recursos do zero, o Devise oferece uma solução pronta para uso, com boas práticas de segurança já implementadas.

## **Pundit** 🛡️
   **Uso**: Fornece autorização baseada em políticas, controlando quem pode ou não acessar certas ações e recursos.

   **Funcionalidades**:
   - Define regras de autorização para diferentes tipos de usuários.
   - Permite criar políticas de acesso detalhadas para recursos como posts e categorias.
   - Protege ações no controle de acesso, como visualizar, editar ou excluir posts.

   **Benefício**: O **Pundit** facilita a criação de políticas de autorização para garantir que apenas usuários autorizados possam realizar certas ações na aplicação. Ele trabalha de forma simples e flexível, permitindo que você defina permissões de maneira clara e compreensível, sem sobrecarregar o código.

## **Kaminari** 📑
   **Uso**: Implementa paginação para o conteúdo exibido na aplicação, como posts do blog.

   **Funcionalidades**:
   - Divide grandes conjuntos de dados em páginas menores e navegáveis.
   - Permite ao usuário navegar pelas páginas de posts de forma fluida e eficiente.
   - Suporte a personalização do layout da paginação para melhor integrar com o design da aplicação.

   **Benefício**: A gem **Kaminari** melhora a performance da aplicação, carregando dados de forma eficiente, sem sobrecarregar o servidor com grandes volumes de informação. Ela também melhora a experiência do usuário, dividindo o conteúdo de maneira que fique mais fácil navegar, sem que a interface fique lenta ou congestionada.

## **Simple Form** ✍️
   **Uso**: Facilita a criação e personalização de formulários no Rails.

   **Funcionalidades**:
   - Gera automaticamente campos de formulário com base nos atributos do modelo.
   - Permite uma integração fácil com o Bootstrap para estilização de formulários.
   - Suporta validações e exibe erros de forma clara e visualmente atraente.

   **Benefício**: O **Simple Form** torna a criação de formulários mais rápida e eficiente, com menos código. Ele também garante que os formulários gerados sejam consistentes, responsivos e integrados com as convenções do Bootstrap. A gem elimina a necessidade de escrever HTML para cada campo manualmente, economizando tempo e esforço de desenvolvimento.

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

Esse comando instalará todas as gems listadas no arquivo `Gemfile` e permitirá que o projeto funcione corretamente.

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

- **Cadastro de Usuários**: Usuários podem se registrar, fazer login e gerenciar suas contas com a gem **Devise**. As funcionalidades de recuperação de senha e confirmação de conta são fornecidas automaticamente pelo Devise.
  
- **Autorização**: A gem **Pundit** é utilizada para controlar o acesso às funcionalidades do blog, garantindo que apenas administradores possam editar ou excluir posts. A política de acesso é definida com base nas funções dos usuários (por exemplo, admin ou visitante).

- **Criação de Posts**: Usuários autenticados podem criar, editar e excluir posts no blog. Isso é feito de forma simples e direta, com a validação dos campos fornecidos através do **Simple Form**.

- **Paginação de Posts**: A gem **Kaminari** garante que a lista de posts seja dividida em várias páginas, permitindo ao usuário navegar facilmente por uma grande quantidade de conteúdo sem prejudicar a performance.

---

## 📂 Estrutura do Projeto


# Estrutura MVC Completa - Blogalizando

Este documento oferece uma explicação detalhada e didática sobre a estrutura MVC do projeto **Blogalizando**, com foco nas entidades principais: **Usuários**, **Posts**, **Categorias** e **Comentários**. A estrutura MVC (Model-View-Controller) é fundamental no desenvolvimento de aplicações Rails, e aqui vamos explorar em profundidade como cada uma dessas entidades é tratada em termos de **Models**, **Views**, **Controllers**, **Helpers**, **Partials** e **Rotas**.

---

## 1. Modelo: **Usuário (User)**

### 1.1. Model: `user.rb`

O modelo `User` representa os usuários registrados na aplicação. A gem **Devise** é utilizada para gerenciar a autenticação, e o modelo `User` é configurado para suportar as funcionalidades padrão de cadastro, login, recuperação de senha e gerenciamento de conta.

```ruby
class User < ApplicationRecord
  # Autenticação via Devise
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  # Relacionamentos
  has_many :posts
  has_many :comments

  # Validações
  validates :email, presence: true, uniqueness: true
  validates :password, length: { minimum: 6 }
end
```

### 1.2. Funcionalidade e Relacionamentos

- **Devise**: Fornece métodos como `sign_in`, `sign_out`, `current_user` e `authenticate_user!` para gerenciar a sessão do usuário.
- **Relacionamento**: O modelo `User` possui um relacionamento **has_many** com os modelos `Post` e `Comment`, o que significa que um usuário pode ter vários posts e comentários associados.

### 1.3. Controlador: `users_controller.rb`

Embora a autenticação seja gerenciada automaticamente pelo **Devise**, se desejarmos personalizar o comportamento de visualização ou edição de dados do usuário, podemos criar um controlador `UsersController` para gerenciar essas funcionalidades.

```ruby
class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def show
    # Exibe os detalhes de um usuário
  end

  def edit
    # Exibe o formulário de edição de usuário
  end

  def update
    # Atualiza os dados do usuário
    if @user.update(user_params)
      redirect_to @user, notice: 'Usuário atualizado com sucesso.'
    else
      render :edit
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
```

### 1.4. View: `users/`

#### `show.html.erb`

A view `show` exibe informações detalhadas sobre o usuário.

```erb
<h1>Perfil de <%= @user.name %></h1>
<p>Email: <%= @user.email %></p>

<h2>Meus Posts</h2>
<% @user.posts.each do |post| %>
  <%= render partial: 'posts/post', locals: { post: post } %>
<% end %>
```

#### `edit.html.erb`

A view `edit` exibe um formulário para editar o perfil do usuário.

```erb
<%= form_for @user do |f| %>
  <%= f.label :name %>
  <%= f.text_field :name %>

  <%= f.label :email %>
  <%= f.email_field :email %>

  <%= f.submit 'Salvar alterações' %>
<% end %>
```

---

## 2. Modelo: **Post**

### 2.1. Model: `post.rb`

O modelo `Post` representa um artigo ou postagem no blog. Um post pertence a um usuário e a uma categoria. Ele também pode ter muitos comentários.

```ruby
class Post < ApplicationRecord
  # Relacionamentos
  belongs_to :user
  belongs_to :category
  has_many :comments, dependent: :destroy

  # Validações
  validates :title, presence: true
  validates :content, presence: true

  # Métodos personalizados
  def short_content
    content.truncate(150)
  end
end
```

### 2.2. Funcionalidade e Relacionamentos

- **Relacionamentos**: O modelo `Post` tem um relacionamento **belongs_to** com os modelos `User` e `Category`, o que significa que cada post pertence a um usuário e a uma categoria. Além disso, ele tem um relacionamento **has_many** com o modelo `Comment`, indicando que um post pode ter vários comentários associados.
- **Método Personalizado**: O método `short_content` serve para exibir um resumo do conteúdo do post.

### 2.3. Controlador: `posts_controller.rb`

O controlador `PostsController` gerencia as ações de criação, exibição, edição, atualização e exclusão de posts.

```ruby
class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to @post, notice: 'Post criado com sucesso.'
    else
      render :new
    end
  end

  def show
    # Exibe o post e seus comentários
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :category_id)
  end
end
```

### 2.4. View: `posts/`

#### `new.html.erb`

A view `new` exibe o formulário para criar um novo post.

```erb
<%= form_for @post do |f| %>
  <%= f.label :title %>
  <%= f.text_field :title %>

  <%= f.label :content %>
  <%= f.text_area :content %>

  <%= f.label :category %>
  <%= f.collection_select :category_id, Category.all, :id, :name %>

  <%= f.submit 'Criar Post' %>
<% end %>
```

#### `show.html.erb`

A view `show` exibe os detalhes de um post, incluindo seus comentários.

```erb
<h1><%= @post.title %></h1>
<p><%= @post.content %></p>

<h2>Comentários</h2>
<%= render partial: 'comments/comment_form', locals: { post: @post } %>
<% @post.comments.each do |comment| %>
  <%= render partial: 'comments/comment', locals: { comment: comment } %>
<% end %>
```

#### Partial: `_post.html.erb`

```erb
<div class="post">
  <h3><%= post.title %></h3>
  <p><%= post.short_content %></p>
  <%= link_to 'Leia mais', post_path(post) %>
</div>
```

---

## 3. Modelo: **Categoria (Category)**

### 3.1. Model: `category.rb`

O modelo `Category` representa uma categoria à qual os posts pertencem. Uma categoria pode ter muitos posts.

```ruby
class Category < ApplicationRecord
  has_many :posts

  validates :name, presence: true
end
```

### 3.2. Controlador: `categories_controller.rb`

Controlador para gerenciar a exibição das categorias.

```ruby
class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @posts = @category.posts
  end
end
```

### 3.3. View: `categories/`

#### `show.html.erb`

```erb
<h1>Posts em <%= @category.name %></h1>
<% @posts.each do |post| %>
  <%= render partial: 'posts/post', locals: { post: post } %>
<% end %>
```

---

## 4. Modelo: **Comentário (Comment)**

### 4.1. Model: `comment.rb`

O modelo `Comment` representa os comentários feitos pelos usuários nos posts.

```ruby
class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :content, presence: true
end
```

### 4.2. Controlador: `comments_controller.rb`

Controlador para gerenciar a criação e exibição de comentários.

```ruby
class CommentsController < ApplicationController
  before_action :set_post

  def create
    @comment = @post.comments.build(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to @post, notice: 'Comentário adicionado com sucesso.'
    else
      render 'posts/show'
    end
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
```

### 4.3. View: `comments/`

#### Partial: `_comment.html.erb`

```erb
<div class="comment">
  <p><%= comment.user.name %> disse:</p>
  <p><%= comment.content %></p>
</div>
```

#### Partial: `_comment_form.html.erb`

```erb
<%= form_for [post, post.comments.build] do |f| %>
  <%= f.label :content, "Seu comentário" %>
  <%= f.text_area :content %>
  <%= f.submit "Comentar" %>
<% end %>
```

---

## 5. Rotas

No arquivo `config/routes.rb`, as rotas são configuradas para permitir acesso a posts, categorias e comentários:

```ruby
Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :categories, only: [:show]
  resources :posts do
    resources :comments, only: [:create]
  end

  root 'posts#index'
end
```

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
