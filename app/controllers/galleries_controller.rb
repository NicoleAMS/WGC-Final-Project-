class GalleriesController < ApplicationController

  before_action :authenticate_user!

  def index
    @galleries = Gallery.all
  end

  def show
    @gallery = Gallery.find_by(id: params[:id])
    @gallery1 = Gallery.find_by(id: 2)
    @gallery2 = Gallery.find_by(id: 1)
    @gallery3 = Gallery.find_by(id: 3)
    @gallery4 = Gallery.find_by(id: 4)
    @gallery5 = Gallery.find_by(id: 5)
    @gallery6 = Gallery.find_by(id: 6)
    @gallery7 = Gallery.find_by(id: 7)

    # all stories that belong to the gallery
    @stories = @gallery.stories.sort_by{|story| story[:id]}

    # for navigating to previous and next gallery
    @previous = Gallery.where(number: (@gallery.number - 1))
    @next = Gallery.where(number: (@gallery.number + 1))
  end

end

