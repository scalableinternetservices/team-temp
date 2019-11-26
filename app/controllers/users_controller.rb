class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def index
  end

  def show
    @user = User.find(params[:id])
    @questions = @user.questions
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      redirect_to @user
    else
      render 'new'
    end
  end
  
    # DELETE 
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_to do |format|
      format.html { redirect_to "/users}", notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def user_params
      params.fetch(:user,{}).permit(:username, :password, :password_confirmation)
    end
end
