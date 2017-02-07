class ArtefactsController < ApplicationController

  def index 
    @artefacts = Artefact.all 
  end 

  def show
    @artefact = Artefact.find_by(id: params[:id])
  end 

end