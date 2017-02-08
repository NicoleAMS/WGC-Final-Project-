class CountriesController < ApplicationController

  before_filter :authenticate_user!

  def index 
    @countries = Country.all 
  end 

  def show
    @country = Country.find_by(id: params[:id])
    @artefacts = @country.artefacts.sort_by{|artefact| artefact[:id]}
  end 

end
