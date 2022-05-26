class AddTagsToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :tags, :text, array: true, default: []
  end
end
