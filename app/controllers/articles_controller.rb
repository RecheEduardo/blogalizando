class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new # Inicia a criação do novo artigo
    @article = Article.new
  end

  def create # Recebe parâmetros do POST para o URL “/articles” com o formulário no body.
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])  
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  private 
  def article_params # método encapsulado para permitir apenas certos valores do model
    params.require(:article).permit(:title, :body)   
  end
  
end
