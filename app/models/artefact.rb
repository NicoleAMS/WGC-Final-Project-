class Artefact < ApplicationRecord

  belongs_to :location
  belongs_to :country 
  belongs_to :gallery 
  belongs_to :story 

  # tells rails to use the carrierwave uploader for this model
  mount_uploader :image_url, ImageUploader

  # Import an image into Carrierwave via a URL provided in the CSV
  def before_import_save(record)
    self.remote_image_url = record[:image_url] if record[:image_url].present?  
  end

end
