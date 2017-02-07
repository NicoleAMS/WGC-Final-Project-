class Artefact < ApplicationRecord

  belongs_to :location
  belongs_to :country 
  belongs_to :gallery 
  belongs_to :story 

  mount_uploader :image_url, ImageUploader

end
