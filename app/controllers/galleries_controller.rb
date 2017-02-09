class GalleriesController < ApplicationController

  before_action :authenticate_user!

  def index 
    @galleries = Gallery.all 
  end 

  def show
    @gallery = Gallery.find_by(id: params[:id])

    # all stories that belong to the gallery 
    @stories = @gallery.stories.sort_by{|story| story[:id]}

    # for navigating to previous and next gallery 
    @previous = Gallery.where(number: (@gallery.number - 1))
    @next = Gallery.where(number: (@gallery.number + 1))
  end 

end

