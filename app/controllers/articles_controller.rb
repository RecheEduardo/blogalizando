class ArticlesController < ApplicationController
  # Principio DRY (Don't Repeat Yourself) 
  # get_article será executado em todas as actions dentro do array.
  before_action :get_article, only: %i[show edit update destroy]

  def index
    current_page = (params[:page] || 1).to_i
    @articles = Article.order(created_at: :desc).page(current_page).per(3) # Uso da gem kaminari para paginação de 3 articles
  end

  def new # Inicia a criação do novo Artigo
    @article = Article.new
  end

  def create # CREATE - Recebe parâmetros do POST para o URL “/articles” com o formulário no body.
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def show; end # READ - abre a tela de visualização do Artigo

  def edit; end # Abre a tela de edição

  def update # UPDATE - Executa a edição do Artigo
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def destroy # DELETE - Executa a ação de excluir o Artigo
    @article.destroy
    redirect_to root_path
  end

  private 
  def article_params # método encapsulado para permitir apenas certos valores do model
    params.require(:article).permit(:title, :body)   
  end

  def get_article
    @article = Article.find(params[:id]) # Retorna a rota para o artigo selecionado
  end
end
