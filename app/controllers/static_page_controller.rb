class StaticPageController < ApplicationController
  include SessionsHelper
  
  def home
    @message = "Welcome to our study app!"
    #@questions = Question.all
    @questions = Question.paginate(page: params[:page], per_page: 25)
    @session_loggedin = logged_in?
    @question_count = Rails.cache.fetch('question_count', expires_in: 1.minutes)
  end
end
