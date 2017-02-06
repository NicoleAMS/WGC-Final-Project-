class GalleriesController < ApplicationController

  def index 
    @galleries = Gallery.all 
  end 

  def show
    @gallery = Gallery.find_by(id: params[:id])
    @stories = @gallery.stories.sort_by{|story| story[:id]}
  end 

end

