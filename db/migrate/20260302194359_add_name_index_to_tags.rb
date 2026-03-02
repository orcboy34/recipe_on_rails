class AddNameIndexToTags < ActiveRecord::Migration[8.1]
  def change
    add_index :tags, "lower(name)", name: "index_tags_on_lower_name", unique: true
  end
end
