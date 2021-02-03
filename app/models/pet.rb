class Pet < ApplicationRecord
  validates :name, :race, :birthdate, :client_id, presence: :true
  has_many :pet_histories
  belongs_to :client

  def history_count
    self.pet_histories.count
  end

  def client_name
    if self.client.nil?
      "Sin dueño"
    else
      self.client.name
    end
  end

  def avg_weight
    if self.pet_histories.any?
      self.pet_histories.average(:weight)
    else
      "Sin informacion"
    end
  end

  def avg_height
    if self.pet_histories.any?
      self.pet_histories.average(:heigth)
    else
      "Sin informacion"
    end
  end

  def max_weight
    if self.pet_histories.any?
      self.pet_histories.pluck(:weight).max
    else
      "Sin informacion"
    end
  end

  def max_height
    if self.pet_histories.any?
      self.pet_histories.pluck(:heigth).max
    else
      "Sin informacion"
    end
  end

end
