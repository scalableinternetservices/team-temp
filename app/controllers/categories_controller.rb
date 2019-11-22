class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def show
    @category = Category.find(params[:search])
    @questions = @category.questions #.paginate(page: params[:page])
  end
  
  # POST /category
  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def search
    @category = Category.search(params[:search])
  end
  
  private
    def category_params
      params.require(:category).permit(:name)
    end

  
end
