class RemoveCuisinesFromRecipe < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :cuisines, :string
  end
end
