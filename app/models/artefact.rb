class Artefact < ApplicationRecord

  belongs_to :locations
  belongs_to :country 
  belongs_to :gallery 
end
