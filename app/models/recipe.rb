class Recipe < ApplicationRecord
  belongs_to :cuisine
  has_one_attached :photo

  def cook_time_min
    "#{cook_time} minutos"
  end
  
  def self.search(search)
    if search
      receita = Recipe.find_by(title: search)
      if receita
        self.where(id: receita)
      else
        Recipe.all
      end
    else
      Recipe.all
    end
  end
end
