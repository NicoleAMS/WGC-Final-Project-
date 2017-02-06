class StoriesController < ApplicationController

  def index 
    @stories = Gallery.find(params[:gallery_id]).stories 
  end 

  # def show
  #   @story = Story.find_by(id: params[:id])
  # end 

end

