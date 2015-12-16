class HomeController < ApplicationController
  def index
    @orbits = Book.limit(4).order("RANDOM()")
    @news = Book.all.order(id: :desc).limit(4)
    @mosts = Book.all.order(counter: :desc).limit(6)
  end
end
