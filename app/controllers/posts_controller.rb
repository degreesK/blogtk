class PostsController < ApplicationController
    def create
      @post = Post.create params[:post]
      if @post.errors.any?
        render 'new'
      else
        redirect_to '/posts'
      end
    end

    def new
      @post = Post.new
    end

    def index
      @posts = Post.order :created_at
    end

    def edit
      @post = Post.find params[:id]
    end

    def update
      @post = Post.find params[:id]
      @post.update params[:post]
      redirect_to "/posts"
    end

    def show
      @post = Post.find params[:id]
    end

    def destroy
      @post = Post.find params[:id]
      if @post.delete
        redirect_to posts_path
      else
        redirect_to :back
      end
    end
end
