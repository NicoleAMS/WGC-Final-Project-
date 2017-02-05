class Artefact < ApplicationRecord

  belongs_to :locations
  belongs_to :country 
  belongs_to :gallery 

  mount_uploader :image_url, ImageUploader

end
