class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :load_user
  
  
  def load_user
    @user = params[:u] || session[:u] || "drake@seemail.cc"
    
    session[:u] = params[:u] if session[:u] != params[:u] and !params[:u].nil?
  end
  
end
