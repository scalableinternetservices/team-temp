class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def show
    @category = Category.find(params[:id])
    @questions = @category.questions.paginate(page: params[:page])
  end
  
end
