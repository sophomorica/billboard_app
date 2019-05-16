class Artist < ApplicationRecord
  has_many :songs

  def full_name
    "#{self.first_name} #{self.last_name} "
  end
  
  
end
