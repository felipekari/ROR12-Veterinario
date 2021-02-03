class Client < ApplicationRecord
  has_many :pets

  def pets_count
      self.pets.count
  end
end
