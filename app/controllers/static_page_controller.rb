class StaticPageController < ApplicationController
  include SessionsHelper
  
  def home
    @message = "Welcome to our study app!"
    @questions = Question.search(params[:search])
    @session_loggedin = logged_in?
  end
end
