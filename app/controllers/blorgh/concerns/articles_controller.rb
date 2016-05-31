module Blorgh::Concerns::ArticlesController
  extend ActiveSupport::Concern

  included do
    require_dependency "blorgh/application_controller"

    before_action :set_article, only: [:show, :edit, :update, :destroy]
  end

  # GET /articles
  def index
    @articles = Blorgh::Article.all
  end

  # GET /articles/1
  def show
  end

  # GET /articles/new
  def new
    @article = Blorgh::Article.new
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  def create
    @article = Blorgh::Article.new(article_params)

    if @article.save
      redirect_to @article, notice: 'Article was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /articles/1
  def update
    if @article.update(article_params)
      redirect_to @article, notice: 'Article was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /articles/1
  def destroy
    @article.destroy
    redirect_to articles_url, notice: 'Article was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_article
    @article = Blorgh::Article.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
