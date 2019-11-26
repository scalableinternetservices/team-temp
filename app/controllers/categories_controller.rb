class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def show
    @category = Category.find(params[:id])
    @questions = @category.questions.paginate(page: params[:page])
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
  
  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    respond_to do |format|
      format.html { redirect_to "/categories}", notice: 'Category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  private
    def category_params
      params.require(:category).permit(:name)
    end

  
end
