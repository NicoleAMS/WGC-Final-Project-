class GalleriesController < ApplicationController

  before_filter :authenticate_user!

  def index 
    @galleries = Gallery.all 
  end 

  def show
    @gallery = Gallery.find_by(id: params[:id])
    @stories = @gallery.stories.sort_by{|story| story[:id]}
    @number = @gallery.number 
    @previous = Gallery.where(number: (@gallery.number - 1))
    @next = Gallery.where(number: (@gallery.number + 1))
  end 

end

