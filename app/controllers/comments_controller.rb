class CommentsController < ApplicationController
  def create
    @comment = Comment.create(text: params[:text], article_id: params[:article_id], user_id: current_user.id)
    redirect_to "/articles/#{@comment.article.id}"
  end

  private
  def comment_params
    params.permit(:text, :article_id)
  end
end
