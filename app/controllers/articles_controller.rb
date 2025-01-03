class ArticlesController < ApplicationController
  # Principio DRY (Don't Repeat Yourself)
  # get_article será executado em todas as actions dentro do array.
  before_action :get_article, only: %i[show edit update destroy]
  before_action :authenticate_user!, only: %i[new create edit update destroy]

  def index
    @highlights = Article.desc_order.first(3) # Seleciona os últimos 3 Articles para os highlights da página

    current_page = (params[:page] || 1).to_i # Recebe: Página passada na URL pela gem Kaminari OU Página inicial da aplicação
    ids_highlight = @highlights.pluck(:id).join(',') # Recebe os ID's usados como parametro no @articles

    # Uso da gem Kaminari para paginação de 3 articles, excluindo a seleção dos primeiros 3 para o highlight
    @articles = Article.without_highlights(ids_highlight).desc_order.page(current_page).per(3) 
  end

  # Inicia a criação do novo Artigo
  def new
    @article = Article.new
  end

  # CREATE - Recebe parâmetros do POST para o URL “/articles” com o formulário no body.
  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article, notice: "Article was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # READ - abre a tela de visualização do Artigo
  def show; end

  # Abre a tela de edição
  def edit; end

  # UPDATE - Executa a edição do Artigo
  def update 
    if @article.update(article_params)
      redirect_to @article, notice: "Article was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE - Executa a ação de excluir o Artigo
  def destroy
    @article.destroy
    redirect_to root_path, notice: "Article was successfully destroyed."
  end

  private

  # método encapsulado para permitir apenas certos valores do model
  def article_params
    params.require(:article).permit(:title, :body, :category_id)
  end

  # Retorna a rota para o artigo selecionado
  def get_article
    @article = Article.find(params[:id])
  end
end
