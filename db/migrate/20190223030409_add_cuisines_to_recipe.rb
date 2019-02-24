class AddCuisinesToRecipe < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :cuisines, :string
  end
end
