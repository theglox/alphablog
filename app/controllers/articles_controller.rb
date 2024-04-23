class ArticlesController < ApplicationController
  def show
    # debugger
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end
  def new
     @article = Article.new

  end
  def create
    @article = Article.new(params.require(:article).permit(:title, :description))
    if @article.save
      #utilizamos flash para generar un pop up
      flash[:notice] = "Article was created successfully."
      redirect_to @article #esto es lo mismo que redirect_to article_path(@article)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.find(params[:id])

  end
  def update
    @article = Article.find(params[:id])
    if @article.ipdate(params.require(:article).permit(:title, :description))
      flash[:notice] = "Article updated successfully"
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end

  end
end
