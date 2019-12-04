class StaticPageController < ApplicationController
  include SessionsHelper
  
  def home
    @message = "Welcome to our study app!"
    #@questions = Question.all
    #TODO-sql: .includes(...)
    @questions = Question.includes(:answers).search(params[:search]).paginate(page: params[:page], per_page: 25)
    @session_loggedin = logged_in?
  end
end
