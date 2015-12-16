class Admins::ArticlesController < ApplicationController
	def index
		@articles = Article.all
	end

	def new	
	end

	def create
		 @article = Article.new(article_params)
		 @article.save
		 redirect_to admins_article_path(@article)
	end

	def show
		@article = Article.find_by_id(params[:id])
	end

	private
  		def article_params
    		params.require(:articles).permit(:title, :content)
  		end

end

