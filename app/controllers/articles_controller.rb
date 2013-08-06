class ArticlesController < ApplicationController
  def index
    @articles = Article.published.limit(8)	
    
    @featured = Article.featured.first
  end
  def show
    @article = Article.find(params[:id])
    @related = @article.category.articles.limit(3)
  end
end
