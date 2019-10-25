class StaticPageController < ApplicationController
  def home
    @message = "Welcome to our study app!"
    @questions = Question.all
  end
end
