class PagesController < ApplicationController

  # before_action :authenticate_user!, only: [:whatever]

  def home 
  end 

  def about
    render :about  
  end 
  
end
