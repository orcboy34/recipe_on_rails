class CreateUnits < ActiveRecord::Migration[8.1]
  def change
    create_table :units do |t|
      t.string :name
      t.string :abbreviation

      t.timestamps
    end
  end
end
