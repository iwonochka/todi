class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.date :starting_date
      t.date :ending_date
      t.time :starting_time
      t.time :ending_time
      t.text :description
      t.string :address
      t.boolean :free
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
