class PostsController < ApplicationController
  self.per_form_csrf_tokens = true
  def index
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params.require(:post).permit(:title, :body))
    if @post.save
      redirect_to post_path(@post)
    else
      redirect_to post_new
    end
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
