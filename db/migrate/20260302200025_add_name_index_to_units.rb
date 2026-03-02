class AddNameIndexToUnits < ActiveRecord::Migration[8.1]
  def change
    add_index :units, "lower(name)", name: "index_units_on_lower_name", unique: true
  end
end
