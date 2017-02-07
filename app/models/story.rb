class Story < ApplicationRecord

  belongs_to :gallery
  has_many :artefacts 
  
end
