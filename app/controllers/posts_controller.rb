class PostsController < ApplicationController
  self.per_form_csrf_tokens = true
  def index
  end

  def new
    @post = Post.new
  end

  def create
    Post.new(params[:post])
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
