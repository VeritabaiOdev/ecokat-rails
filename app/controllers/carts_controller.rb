class CartsController < ApplicationController
  before_filter :extract_shopping_cart

  def create
    @book = Book.friendly.find(params[:id])
    @shopping_cart.add(@book, @book.cost)
    redirect_to book_path(@book)
    flash[:notice] = "Item successfully added to your cart!"
  end

  def show

  end

  def remove
    @book = Book.friendly.find(params[:item])
    @shopping_cart.remove(@book, 1)
    redirect_to cart_path(@shopping_cart)
  end

  def clear
    @shopping_cart.clear
    redirect_to cart_path(@shopping_cart)
  end

end
