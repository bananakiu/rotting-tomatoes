class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :edit, :update, :destroy]

    # GET /articles
    def index
        @articles = Article.all
    end

    # GET /articles/new
    def new
        @article = Article.new
    end

    # POST /articles
    def create
        @article = Article.new(article_params)

        if @article.save
            redirect_to @article, notice: 'Movie review was successfully created.'
        else
            render :new
        end
    end

    # GET /articles/:id
    def show
    end

    # GET /articles/:id/edit
    def edit
    end

    # PATCH /articles/:id
    def update
        if @article.update(article_params)
            redirect_to @article, notice: 'Movie review was successfully updated.'
        else
            render :edit
        end
    end

    # DELETE /articles/:id
    def destroy
        @article.destroy
        redirect_to articles_url, notice: 'Movie review was successfully destroyed.'
    end

    private
    # set to specific article
    def set_article
        @article = Article.find(params[:id])
    end

    # only allow trusted parameters through
    def article_params
        params.require(:article).permit(:movie, :review)
    end
end