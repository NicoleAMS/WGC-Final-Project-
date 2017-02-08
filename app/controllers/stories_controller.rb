class StoriesController < ApplicationController

  before_filter :authenticate_user!

  def index 
    @stories = Gallery.find(params[:gallery_id]).stories 
  end 

  # def show
  #   @story = Story.find_by(id: params[:id])
  # end 

end

