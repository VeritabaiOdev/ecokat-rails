class BooksController < ApplicationController
  before_action :set_book, only: [:show, :add_new_comment]
  before_action :comment_params, only: [:add_new_comment]

  # GET /books
  # GET /books.json
  def index
    @books = Book.all
  end

  # GET /books/1
  # GET /books/1.json
  def show
    @book.counter += 1
    @book.save
    @comments = @book.comments.recent.limit(10).all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.friendly.find(params[:id])
    end
end
