class PostsController < ApplicationController

  def index
    @post = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(memo: params[:memo])
  end

  private
  def memo_params
    params.require(:post).permit(:memo)
  end

end