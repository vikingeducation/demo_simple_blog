class CommentsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    if @comment
      redirect_to root_url
    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :content)
  end
end
