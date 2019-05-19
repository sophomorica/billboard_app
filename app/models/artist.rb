class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_many :billboards, through: :songs

  def full_name
    "#{self.first_name} #{self.last_name} "
  end
  
  
end
