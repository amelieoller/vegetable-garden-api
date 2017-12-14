class Varietal < ApplicationRecord
  belongs_to :crop
  has_many :plantings  
end
