class AddUserTagToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :user_tag, :text
  end
end
