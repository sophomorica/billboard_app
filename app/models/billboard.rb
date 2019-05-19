class Billboard < ApplicationRecord
  has_many :songs, through: :artists
end
