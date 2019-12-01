class StaticPageController < ApplicationController
  include SessionsHelper
  
  def home
    @message = "Welcome to our study app!"
    #@questions = Question.all
    @questions = Question.paginate(page: params[:page], per_page: 25)
    fresh_when(etag: @questions, last_modified: @questions.maximum(:updated_at))
    @session_loggedin = logged_in?
  end
end
