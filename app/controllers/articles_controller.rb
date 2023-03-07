class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show edit update destroy]
  # GET /articles
  def index
    @articles = Article.all
  end

  # GET /articles/:id
  def show
    @article
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # POST /articles
  def create
    Article.create!(article_params)
    redirect_to articles_path
  end

  # GET articles/:id/edit
  def edit
    @article
  end

  # PATCH articles/:id
  def update
    @article.update!(article_params)
    redirect_to article_path
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(
      :title,
      :content
    )
  end
end
