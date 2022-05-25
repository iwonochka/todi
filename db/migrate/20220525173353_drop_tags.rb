class DropTags < ActiveRecord::Migration[6.1]
  def change
    drop_table :event_tags
    drop_table :user_tags
    drop_table :tags
  end
end
