class CategoriesController < ApplicationController
  before_action :set_category, only: [:show]

  def show
    @books = @category.books
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_category
    @category = Category.friendly.find(params[:id])
  end
end
