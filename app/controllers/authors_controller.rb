class AuthorsController < ApplicationController
  before_action :set_author, only: [:show]

  def show
    @books = @author.books
  end

  private
  def set_author
    @author = Author.friendly.find(params[:id])
  end
end
