class PostsController < ApplicationController

  def index
    @posts = Post.order(:created_at => :desc).includes(:comments)
    @post = Post.new #create(:author => "hahaha")
  end

  def create
    @post = Post.create(post_params)
    if @post
      redirect_to :root
    else
      render :index
    end
  end



  private

  # Whitelist those params!
  def post_params
    params.require(:post).permit(:author, :content)
  end

end
