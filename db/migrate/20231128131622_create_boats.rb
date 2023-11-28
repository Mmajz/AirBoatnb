class CreateBoats < ActiveRecord::Migration[7.1]
  def change
    create_table :boats do |t|
      t.string :location
      t.integer :price
      t.text :description
      t.string :title
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
