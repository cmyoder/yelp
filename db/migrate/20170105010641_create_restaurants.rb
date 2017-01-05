class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :description
      t.float :average_rating
      t.string :address
      t.string :website
      t.string :photo

      t.timestamps

    end
  end
end
