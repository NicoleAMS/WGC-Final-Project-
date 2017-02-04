class Country < ApplicationRecord

  has_many :locations 
  has_many :artefacts  
end
