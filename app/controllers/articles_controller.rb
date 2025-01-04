class ArticlesController < ApplicationController
  include(Paginable)
  
  # Principio DRY (Don't Repeat Yourself)
  # set_article será executado em todas as actions dentro do array.
  before_action :authenticate_user!, except: %i[index show]
  before_action :set_article, only: %i[show edit update destroy]

  def index
    @highlights = Article.filter_by_category(params[:category_id])
                  .desc_order.first(3) # Seleciona os últimos 3 Articles para os highlights da página

    ids_highlight = @highlights.pluck(:id).join(',') # Recebe os ID's usados como parametro no @articles

    # Uso da gem Kaminari para paginação de 3 articles, excluindo a seleção dos primeiros 3 para o highlight
    @articles = Article.without_highlights(ids_highlight)
                .filter_by_category(params[:category_id])
                .desc_order.page(current_page).per(3)
                
    @categories = Category.sorted
  end

  # Inicia a criação do novo Artigo
  def new
    @article = current_user.articles.new
  end

  # CREATE - Recebe parâmetros do POST para o URL “/articles” com o formulário no body.
  def create
    @article = current_user.articles.new(article_params)
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
  def set_article
    @article = Article.find(params[:id])
    authorize @article
  end
end
