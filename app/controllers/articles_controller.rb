class ArticlesController < ApplicationController
  # GET /articles
  def index
    @articles = Article.all
  end

  # GET /articles/:id
  def show
    @article = Article.find(params[:id])
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
    @article = Article.find(params[:id])
  end

  # PATCH articles/:id
  def update
    article = Article.find(params[:id])
    article.update!(article_params)
    redirect_to article_path
  end

  private

  def article_params
    params.require(:article).permit(
      :title,
      :content
    )
  end
end
