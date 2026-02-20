class CreateExtensionsSchema < ActiveRecord::Migration[8.1]
  def change
    create_table :extensions_schemas do |t|
      t.timestamps
    end
  end
end
