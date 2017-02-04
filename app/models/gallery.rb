class Gallery < ApplicationRecord

  has_many :stories
  has_many :artefacts 

end
