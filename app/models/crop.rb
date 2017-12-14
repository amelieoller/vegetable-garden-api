class Crop < ApplicationRecord
   has_many :varietals
   has_many :plantings
end
