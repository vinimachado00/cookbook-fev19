class Recipe < ApplicationRecord
  belongs_to :cuisine
  has_one_attached :photo
  def cook_time_min
    "#{cook_time} minutos"
  end
end
