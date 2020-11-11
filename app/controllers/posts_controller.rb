class PostsController < ApplicationController

  def index
    @post = Post.all.order(id: "DESC")
  end

  def create
    Post.create(memo: params[:memo])
    redirect_to action: :index
  end

  private
  def memo_params
    params.require(:post).permit(:memo)
  end

end