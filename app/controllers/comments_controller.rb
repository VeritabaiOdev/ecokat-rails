class CommentsController < ApplicationController
  before_action :authenticate_user!
  def create
    @book = Book.friendly.find(params[:comment][:commentable_id])
    comment = @book.comments.create(comment_params)
    comment.save


    redirect_to book_path(@book)
  end


  private

  def comment_params
    params.require(:comment).permit!
  end
end
