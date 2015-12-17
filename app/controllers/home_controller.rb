class HomeController < ApplicationController
  def index
    @orbits = Book.limit(4).order("RANDOM()")
    @news = Book.all.order(id: :desc).limit(4)
    @mosts = Book.all.order(counter: :desc).limit(5)
  end

  def search
    if params[:search].present?
      @book_results = Book.search(params[:search]).order("created_at DESC")
      @author_results = Author.search(params[:search]).order('created_at DESC')
    else
      @book_results = Book.all.order(id: :desc).limit(4)
      @author_results = Author.all.order(id: :desc).limit(5)
    end
  end
end
