class Planting < ApplicationRecord
  belongs_to :crop
  belongs_to :varietal, optional: true
end
