class ArtefactsController < ApplicationController

  before_action :authenticate_user!

  def index 
    # default to all artefacts if search field blank or not a number 
    if params[:search_name].blank? || params[:search_name].to_i == 0 
      @artefacts = Artefact.all.paginate(:page => params[:page], :per_page => 12) 
    else 
      # if the number is bigger than the last id, show all artefacts 
      unless params[:search_name].to_i > Artefact.last.id.to_i 
        @artefact = Artefact.find_by(number: params[:search_name]) 
      else 
        @artefacts = Artefact.all.paginate(:page => params[:page], :per_page => 12) 
      end 
    end 
  end 

  def show
    @artefact = Artefact.find_by(id: params[:id])
  end 

end
