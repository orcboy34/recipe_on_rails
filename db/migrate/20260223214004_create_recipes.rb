class CreateRecipes < ActiveRecord::Migration[8.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.text :directions

      t.timestamps
    end
  end
end
