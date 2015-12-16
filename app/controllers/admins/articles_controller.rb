class Admins::ArticlesController < ApplicationController
	def index
		@articles = Article.all
	end

	def new	
	end

	def create
		 @article = Article.new(article_params)
		 @article.save
		 redirect_to admins_articles_path
	end

	private
  		def article_params
    		params.require(:articles).permit(:title, :content)
  		end

end

