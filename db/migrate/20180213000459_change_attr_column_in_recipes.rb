class ChangeAttrColumnInRecipes < ActiveRecord::Migration[5.1]
  # Esta es una forma de modificar declaraciones erradas de las migraciones
  def change
    change_column :recipes, :description, :text
  end
end
